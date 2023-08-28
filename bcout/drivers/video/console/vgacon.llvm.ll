; ModuleID = '../bcout/drivers/video/console/vgacon.llvm.bc'
source_filename = "drivers/video/console/vgacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.obs_kernel_param = type { i8*, i32 (i8*)*, i32 }
%struct.module = type opaque
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
%struct.nsproxy = type opaque
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
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
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
%struct.consw = type { %struct.module*, i8* ()*, {}*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, {}*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, {}*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }
%struct.console_font = type { i32, i32, i32, i8* }
%struct.vt_mode = type { i8, i8, i16, i16, i16 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.uni_pagedir = type opaque
%struct.uni_screen = type opaque
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.vgastate = type { i8*, i64, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
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
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.anon.66 = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.vc = type { %struct.vc_data*, %struct.work_struct }

@vgacon_text_mode_force = internal global i8 0, align 1, !dbg !0
@__setup_str_text_mode = internal constant [10 x i8] c"nomodeset\00", section ".init.rodata", align 1, !dbg !4337
@__setup_text_mode = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__setup_str_text_mode, i32 0, i32 0), i32 (i8*)* @text_mode, i32 0 }, section ".init.setup", align 8, !dbg !129
@__setup_str_no_scroll = internal constant [10 x i8] c"no-scroll\00", section ".init.rodata", align 1, !dbg !4342
@__setup_no_scroll = internal global %struct.obs_kernel_param { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__setup_str_no_scroll, i32 0, i32 0), i32 (i8*)* @no_scroll, i32 0 }, section ".init.setup", align 8, !dbg !143
@vga_con = dso_local constant { %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* } { %struct.module* null, i8* ()* @vgacon_startup, void (%struct.vc_data*, i32)* @vgacon_init, void (%struct.vc_data*)* @vgacon_deinit, void (%struct.vc_data*, i32, i32, i32, i32)* @vgacon_clear, void (%struct.vc_data*, i32, i32, i32)* @vgacon_putc, void (%struct.vc_data*, i16*, i32, i32, i32)* @vgacon_putcs, void (%struct.vc_data*, i32)* @vgacon_cursor, i1 (%struct.vc_data*, i32, i32, i32, i32)* @vgacon_scroll, i32 (%struct.vc_data*)* @vgacon_switch, i32 (%struct.vc_data*, i32, i32)* @vgacon_blank, i32 (%struct.vc_data*, %struct.console_font*, i32)* @vgacon_font_set, i32 (%struct.vc_data*, %struct.console_font*)* @vgacon_font_get, i32 (%struct.vc_data*, %struct.console_font*, i8*)* null, i32 (%struct.vc_data*, i32)* null, i32 (%struct.vc_data*, i32, i32, i32)* @vgacon_resize, void (%struct.vc_data*, i8*)* @vgacon_set_palette, void (%struct.vc_data*, i32)* @vgacon_scrolldelta, i32 (%struct.vc_data*)* @vgacon_set_origin, void (%struct.vc_data*)* @vgacon_save_screen, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)* @vgacon_build_attr, void (%struct.vc_data*, i16*, i32)* @vgacon_invert_region, i16* (%struct.vc_data*, i32)* null, i64 (%struct.vc_data*, i64, i32*, i32*)* null, void (%struct.vc_data*)* null, i32 (%struct.vc_data*)* null, i32 (%struct.vc_data*)* null }, align 8, !dbg !145
@__UNIQUE_ID_file229 = internal constant [41 x i8] c"vgacon.file=drivers/video/console/vgacon\00", section ".modinfo", align 1, !dbg !4329
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"vgacon.license=GPL\00", section ".modinfo", align 1, !dbg !4334
@.str = private unnamed_addr constant [76 x i8] c"\014You have booted with nomodeset. This means your GPU drivers are DISABLED\0A\00", align 1
@.str.1 = private unnamed_addr constant [122 x i8] c"\014Any video related functionality will be severely degraded, and you may not even be able to suspend the system properly\0A\00", align 1
@.str.2 = private unnamed_addr constant [93 x i8] c"\014Unless you actually understand what nomodeset does, you should reboot without enabling it\0A\00", align 1
@vga_hardscroll_enabled = internal global i8 0, align 1, !dbg !4344
@vga_hardscroll_user_enable = internal global i8 1, align 1, !dbg !4346
@screen_info = external dso_local global %struct.screen_info, align 1
@dummy_con = external dso_local constant %struct.consw, align 8
@conswitchp = external dso_local global %struct.consw*, align 8
@vga_video_num_lines = internal global i32 0, align 4, !dbg !4374
@vga_video_num_columns = internal global i32 0, align 4, !dbg !4376
@vgastate = internal global %struct.vgastate zeroinitializer, align 8, !dbg !4378
@vga_vram_base = internal global i64 0, section ".data..read_mostly", align 8, !dbg !4393
@vga_video_port_reg = internal global i16 0, section ".data..read_mostly", align 2, !dbg !4395
@vga_video_port_val = internal global i16 0, section ".data..read_mostly", align 2, !dbg !4397
@vgacon_startup.ega_console_resource = internal global %struct.resource { i64 944, i64 959, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4348
@.str.3 = private unnamed_addr constant [4 x i8] c"ega\00", align 1
@vga_video_type = internal global i8 0, section ".data..read_mostly", align 1, !dbg !4399
@vga_vram_size = internal global i32 0, section ".data..read_mostly", align 4, !dbg !4401
@.str.4 = private unnamed_addr constant [5 x i8] c"EGA+\00", align 1
@ioport_resource = external dso_local global %struct.resource, align 8
@vgacon_startup.mda1_console_resource = internal global %struct.resource { i64 944, i64 955, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4364
@.str.5 = private unnamed_addr constant [4 x i8] c"mda\00", align 1
@vgacon_startup.mda2_console_resource = internal global %struct.resource { i64 959, i64 959, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4366
@.str.6 = private unnamed_addr constant [5 x i8] c"*MDA\00", align 1
@vga_video_font_height = internal global i32 0, align 4, !dbg !4403
@vga_can_do_color = internal global i8 0, align 1, !dbg !4405
@vgacon_startup.ega_console_resource.7 = internal global %struct.resource { i64 960, i64 991, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4368
@.str.8 = private unnamed_addr constant [4 x i8] c"EGA\00", align 1
@vgacon_startup.vga_console_resource = internal global %struct.resource { i64 960, i64 991, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4370
@.str.9 = private unnamed_addr constant [5 x i8] c"vga+\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"VGA+\00", align 1
@color_table = external dso_local constant [0 x i8], align 1
@default_red = external dso_local global [0 x i8], align 1
@default_grn = external dso_local global [0 x i8], align 1
@default_blu = external dso_local global [0 x i8], align 1
@vgacon_startup.cga_console_resource = internal global %struct.resource { i64 980, i64 981, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i64 256, i64 0, %struct.resource* null, %struct.resource* null, %struct.resource* null }, align 8, !dbg !4372
@.str.11 = private unnamed_addr constant [4 x i8] c"cga\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"*CGA\00", align 1
@vga_vram_end = internal global i64 0, section ".data..read_mostly", align 8, !dbg !4407
@vga_default_font_height = internal global i32 0, section ".data..read_mostly", align 4, !dbg !4409
@vga_scan_lines = internal global i32 0, section ".data..read_mostly", align 4, !dbg !4411
@vgacon_xres = internal global i32 0, align 4, !dbg !4413
@vgacon_yres = internal global i32 0, align 4, !dbg !4415
@vga_init_done = internal global i8 0, align 1, !dbg !4417
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@page_offset_base = external dso_local global i64, align 8
@vga_512_chars = internal global i8 0, align 1, !dbg !4419
@vgacon_uni_pagedir = internal global %struct.uni_pagedir* null, align 8, !dbg !4421
@vgacon_refcount = internal global i32 0, align 4, !dbg !4423
@global_cursor_default = external dso_local global i32, align 4
@vga_lock = internal global %struct.raw_spinlock undef, align 1, !dbg !4425
@cursor_size_lastfrom = internal global i32 0, align 4, !dbg !4427
@cursor_size_lastto = internal global i32 0, align 4, !dbg !4429
@vga_is_gfx = internal global i8 0, align 1, !dbg !4431
@vga_rolled_over = internal global i32 0, align 4, !dbg !4433
@vga_vesa_blanked = internal global i32 0, align 4, !dbg !4435
@vga_palette_blanked = internal global i8 0, align 1, !dbg !4453
@vga_state = internal global %struct.anon.66 zeroinitializer, align 1, !dbg !4437
@vga_font_is_default = internal global i8 1, align 1, !dbg !4455
@.str.13 = private unnamed_addr constant [31 x i8] c"drivers/video/console/vgacon.c\00", align 1
@vc_cons = external dso_local global [63 x %struct.vc], align 16
@console_blanked = external dso_local global i32, align 4
@vgacon_save_screen.vga_bootup_console = internal global i32 0, align 4, !dbg !4457
@llvm.used = appending global [4 x i8*] [i8* bitcast (%struct.obs_kernel_param* @__setup_text_mode to i8*), i8* bitcast (%struct.obs_kernel_param* @__setup_no_scroll to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file229, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license230, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local zeroext i1 @vgacon_text_force() #0 !dbg !4466 {
entry:
  %0 = load i8, i8* @vgacon_text_mode_force, align 1, !dbg !4467
  %tobool = trunc i8 %0 to i1, !dbg !4467
  ret i1 %tobool, !dbg !4468
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @text_mode(i8* %str) #1 section ".init.text" !dbg !4469 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4470, metadata !DIExpression()), !dbg !4471
  store i8 1, i8* @vgacon_text_mode_force, align 1, !dbg !4472
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0)) #8, !dbg !4473
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !4474
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !4475
  ret i32 1, !dbg !4476
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @no_scroll(i8* %str) #1 section ".init.text" !dbg !4477 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !4478, metadata !DIExpression()), !dbg !4479
  store i8 0, i8* @vga_hardscroll_enabled, align 1, !dbg !4480
  store i8 0, i8* @vga_hardscroll_user_enable, align 1, !dbg !4481
  ret i32 1, !dbg !4482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @vgacon_startup() #0 !dbg !4350 {
entry:
  %retval = alloca i8*, align 8
  %display_desc = alloca i8*, align 8
  %saved1 = alloca i16, align 2
  %saved2 = alloca i16, align 2
  %p = alloca i16*, align 8
  %i = alloca i32, align 4
  %start = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %display_desc, metadata !4483, metadata !DIExpression()), !dbg !4484
  store i8* null, i8** %display_desc, align 8, !dbg !4484
  call void @llvm.dbg.declare(metadata i16* %saved1, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.declare(metadata i16* %saved2, metadata !4487, metadata !DIExpression()), !dbg !4488
  call void @llvm.dbg.declare(metadata i16** %p, metadata !4489, metadata !DIExpression()), !dbg !4490
  %0 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 11), align 1, !dbg !4491
  %conv = zext i8 %0 to i32, !dbg !4493
  %cmp = icmp eq i32 %conv, 35, !dbg !4494
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4495

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 11), align 1, !dbg !4496
  %conv2 = zext i8 %1 to i32, !dbg !4497
  %cmp3 = icmp eq i32 %conv2, 112, !dbg !4498
  br i1 %cmp3, label %if.then, label %if.end, !dbg !4499

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %no_vga, !dbg !4500

no_vga:                                           ; preds = %if.then105, %if.then93, %if.then33, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !4501), !dbg !4503
  store %struct.consw* @dummy_con, %struct.consw** @conswitchp, align 8, !dbg !4504
  %2 = load %struct.consw*, %struct.consw** @conswitchp, align 8, !dbg !4505
  %con_startup = getelementptr inbounds %struct.consw, %struct.consw* %2, i32 0, i32 1, !dbg !4506
  %3 = load i8* ()*, i8* ()** %con_startup, align 8, !dbg !4506
  %call = call i8* %3() #9, !dbg !4505
  store i8* %call, i8** %retval, align 8, !dbg !4507
  br label %return, !dbg !4507

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 10), align 1, !dbg !4508
  %conv5 = zext i8 %4 to i32, !dbg !4510
  %cmp6 = icmp eq i32 %conv5, 0, !dbg !4511
  br i1 %cmp6, label %if.then12, label %lor.lhs.false8, !dbg !4512

lor.lhs.false8:                                   ; preds = %if.end
  %5 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 5), align 1, !dbg !4513
  %conv9 = zext i8 %5 to i32, !dbg !4514
  %cmp10 = icmp eq i32 %conv9, 0, !dbg !4515
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4516

if.then12:                                        ; preds = %lor.lhs.false8, %if.end
  br label %no_vga, !dbg !4517

if.end13:                                         ; preds = %lor.lhs.false8
  %6 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4518
  %conv14 = zext i8 %6 to i32, !dbg !4520
  %cmp15 = icmp eq i32 %conv14, 13, !dbg !4521
  br i1 %cmp15, label %if.then33, label %lor.lhs.false17, !dbg !4522

lor.lhs.false17:                                  ; preds = %if.end13
  %7 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4523
  %conv18 = zext i8 %7 to i32, !dbg !4524
  %cmp19 = icmp eq i32 %conv18, 14, !dbg !4525
  br i1 %cmp19, label %if.then33, label %lor.lhs.false21, !dbg !4526

lor.lhs.false21:                                  ; preds = %lor.lhs.false17
  %8 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4527
  %conv22 = zext i8 %8 to i32, !dbg !4528
  %cmp23 = icmp eq i32 %conv22, 16, !dbg !4529
  br i1 %cmp23, label %if.then33, label %lor.lhs.false25, !dbg !4530

lor.lhs.false25:                                  ; preds = %lor.lhs.false21
  %9 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4531
  %conv26 = zext i8 %9 to i32, !dbg !4532
  %cmp27 = icmp eq i32 %conv26, 18, !dbg !4533
  br i1 %cmp27, label %if.then33, label %lor.lhs.false29, !dbg !4534

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %10 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4535
  %conv30 = zext i8 %10 to i32, !dbg !4536
  %cmp31 = icmp eq i32 %conv30, 106, !dbg !4537
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !4538

if.then33:                                        ; preds = %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false21, %lor.lhs.false17, %if.end13
  br label %no_vga, !dbg !4539

if.end34:                                         ; preds = %lor.lhs.false29
  %11 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 10), align 1, !dbg !4540
  %conv35 = zext i8 %11 to i32, !dbg !4541
  store i32 %conv35, i32* @vga_video_num_lines, align 4, !dbg !4542
  %12 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 5), align 1, !dbg !4543
  %conv36 = zext i8 %12 to i32, !dbg !4544
  store i32 %conv36, i32* @vga_video_num_columns, align 4, !dbg !4545
  store i8* null, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !4546
  %13 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 4), align 1, !dbg !4547
  %conv37 = zext i8 %13 to i32, !dbg !4549
  %cmp38 = icmp eq i32 %conv37, 7, !dbg !4550
  br i1 %cmp38, label %if.then40, label %if.else49, !dbg !4551

if.then40:                                        ; preds = %if.end34
  store i64 720896, i64* @vga_vram_base, align 8, !dbg !4552
  store i16 948, i16* @vga_video_port_reg, align 2, !dbg !4554
  store i16 949, i16* @vga_video_port_val, align 2, !dbg !4555
  %14 = load i16, i16* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 8), align 1, !dbg !4556
  %conv41 = zext i16 %14 to i32, !dbg !4558
  %and = and i32 %conv41, 255, !dbg !4559
  %cmp42 = icmp ne i32 %and, 16, !dbg !4560
  br i1 %cmp42, label %if.then44, label %if.else, !dbg !4561

if.then44:                                        ; preds = %if.then40
  store i8 32, i8* @vga_video_type, align 1, !dbg !4562
  store i32 32768, i32* @vga_vram_size, align 4, !dbg !4564
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %display_desc, align 8, !dbg !4565
  %call45 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.ega_console_resource) #9, !dbg !4566
  br label %if.end48, !dbg !4567

if.else:                                          ; preds = %if.then40
  store i8 16, i8* @vga_video_type, align 1, !dbg !4568
  store i32 8192, i32* @vga_vram_size, align 4, !dbg !4570
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %display_desc, align 8, !dbg !4571
  %call46 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.mda1_console_resource) #9, !dbg !4572
  %call47 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.mda2_console_resource) #9, !dbg !4573
  store i32 14, i32* @vga_video_font_height, align 4, !dbg !4574
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then44
  br label %if.end81, !dbg !4575

if.else49:                                        ; preds = %if.end34
  store i8 1, i8* @vga_can_do_color, align 1, !dbg !4576
  store i64 753664, i64* @vga_vram_base, align 8, !dbg !4578
  store i16 980, i16* @vga_video_port_reg, align 2, !dbg !4579
  store i16 981, i16* @vga_video_port_val, align 2, !dbg !4580
  %15 = load i16, i16* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 8), align 1, !dbg !4581
  %conv50 = zext i16 %15 to i32, !dbg !4583
  %and51 = and i32 %conv50, 255, !dbg !4584
  %cmp52 = icmp ne i32 %and51, 16, !dbg !4585
  br i1 %cmp52, label %if.then54, label %if.else78, !dbg !4586

if.then54:                                        ; preds = %if.else49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4587, metadata !DIExpression()), !dbg !4589
  store i32 32768, i32* @vga_vram_size, align 4, !dbg !4590
  %16 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 11), align 1, !dbg !4591
  %tobool = icmp ne i8 %16, 0, !dbg !4593
  br i1 %tobool, label %if.else57, label %if.then55, !dbg !4594

if.then55:                                        ; preds = %if.then54
  store i8 33, i8* @vga_video_type, align 1, !dbg !4595
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** %display_desc, align 8, !dbg !4597
  %call56 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.ega_console_resource.7) #9, !dbg !4598
  br label %if.end77, !dbg !4599

if.else57:                                        ; preds = %if.then54
  store i8 34, i8* @vga_video_type, align 1, !dbg !4600
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %display_desc, align 8, !dbg !4602
  %call58 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.vga_console_resource) #9, !dbg !4603
  store i32 0, i32* %i, align 4, !dbg !4604
  br label %for.cond, !dbg !4606

for.cond:                                         ; preds = %for.inc, %if.else57
  %17 = load i32, i32* %i, align 4, !dbg !4607
  %cmp59 = icmp slt i32 %17, 16, !dbg !4609
  br i1 %cmp59, label %for.body, label %for.end, !dbg !4610

for.body:                                         ; preds = %for.cond
  %call61 = call zeroext i8 @inb_p(i32 986) #9, !dbg !4611
  %18 = load i32, i32* %i, align 4, !dbg !4613
  %conv62 = trunc i32 %18 to i8, !dbg !4613
  call void @outb_p(i8 zeroext %conv62, i32 960) #9, !dbg !4614
  %19 = load i32, i32* %i, align 4, !dbg !4615
  %conv63 = trunc i32 %19 to i8, !dbg !4615
  call void @outb_p(i8 zeroext %conv63, i32 960) #9, !dbg !4616
  br label %for.inc, !dbg !4617

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !4618
  %inc = add i32 %20, 1, !dbg !4618
  store i32 %inc, i32* %i, align 4, !dbg !4618
  br label %for.cond, !dbg !4619, !llvm.loop !4620

for.end:                                          ; preds = %for.cond
  call void @outb_p(i8 zeroext 32, i32 960) #9, !dbg !4622
  store i32 0, i32* %i, align 4, !dbg !4623
  br label %for.cond64, !dbg !4625

for.cond64:                                       ; preds = %for.inc74, %for.end
  %21 = load i32, i32* %i, align 4, !dbg !4626
  %cmp65 = icmp slt i32 %21, 16, !dbg !4628
  br i1 %cmp65, label %for.body67, label %for.end76, !dbg !4629

for.body67:                                       ; preds = %for.cond64
  %22 = load i32, i32* %i, align 4, !dbg !4630
  %idxprom = sext i32 %22 to i64, !dbg !4632
  %arrayidx = getelementptr [0 x i8], [0 x i8]* @color_table, i64 0, i64 %idxprom, !dbg !4632
  %23 = load i8, i8* %arrayidx, align 1, !dbg !4632
  call void @outb_p(i8 zeroext %23, i32 968) #9, !dbg !4633
  %24 = load i32, i32* %i, align 4, !dbg !4634
  %idxprom68 = sext i32 %24 to i64, !dbg !4635
  %arrayidx69 = getelementptr [0 x i8], [0 x i8]* @default_red, i64 0, i64 %idxprom68, !dbg !4635
  %25 = load i8, i8* %arrayidx69, align 1, !dbg !4635
  call void @outb_p(i8 zeroext %25, i32 969) #9, !dbg !4636
  %26 = load i32, i32* %i, align 4, !dbg !4637
  %idxprom70 = sext i32 %26 to i64, !dbg !4638
  %arrayidx71 = getelementptr [0 x i8], [0 x i8]* @default_grn, i64 0, i64 %idxprom70, !dbg !4638
  %27 = load i8, i8* %arrayidx71, align 1, !dbg !4638
  call void @outb_p(i8 zeroext %27, i32 969) #9, !dbg !4639
  %28 = load i32, i32* %i, align 4, !dbg !4640
  %idxprom72 = sext i32 %28 to i64, !dbg !4641
  %arrayidx73 = getelementptr [0 x i8], [0 x i8]* @default_blu, i64 0, i64 %idxprom72, !dbg !4641
  %29 = load i8, i8* %arrayidx73, align 1, !dbg !4641
  call void @outb_p(i8 zeroext %29, i32 969) #9, !dbg !4642
  br label %for.inc74, !dbg !4643

for.inc74:                                        ; preds = %for.body67
  %30 = load i32, i32* %i, align 4, !dbg !4644
  %inc75 = add i32 %30, 1, !dbg !4644
  store i32 %inc75, i32* %i, align 4, !dbg !4644
  br label %for.cond64, !dbg !4645, !llvm.loop !4646

for.end76:                                        ; preds = %for.cond64
  br label %if.end77

if.end77:                                         ; preds = %for.end76, %if.then55
  br label %if.end80, !dbg !4648

if.else78:                                        ; preds = %if.else49
  store i8 17, i8* @vga_video_type, align 1, !dbg !4649
  store i32 8192, i32* @vga_vram_size, align 4, !dbg !4651
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %display_desc, align 8, !dbg !4652
  %call79 = call i32 @request_resource(%struct.resource* @ioport_resource, %struct.resource* @vgacon_startup.cga_console_resource) #9, !dbg !4653
  store i32 8, i32* @vga_video_font_height, align 4, !dbg !4654
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.end77
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end48
  call void @llvm.dbg.declare(metadata i64* %start, metadata !4655, metadata !DIExpression()), !dbg !4657
  %31 = load i64, i64* @vga_vram_base, align 8, !dbg !4657
  %call82 = call i8* @phys_to_virt(i64 %31) #9, !dbg !4657
  %32 = ptrtoint i8* %call82 to i64, !dbg !4657
  store i64 %32, i64* %start, align 8, !dbg !4657
  %33 = load i64, i64* %start, align 8, !dbg !4657
  store i64 %33, i64* %tmp, align 8, !dbg !4658
  %34 = load i64, i64* %tmp, align 8, !dbg !4657
  store i64 %34, i64* @vga_vram_base, align 8, !dbg !4660
  %35 = load i64, i64* @vga_vram_base, align 8, !dbg !4661
  %36 = load i32, i32* @vga_vram_size, align 4, !dbg !4662
  %conv83 = zext i32 %36 to i64, !dbg !4662
  %add = add i64 %35, %conv83, !dbg !4663
  store i64 %add, i64* @vga_vram_end, align 8, !dbg !4664
  %37 = load i64, i64* @vga_vram_base, align 8, !dbg !4665
  %38 = inttoptr i64 %37 to i16*, !dbg !4666
  store i16* %38, i16** %p, align 8, !dbg !4667
  %39 = load i16*, i16** %p, align 8, !dbg !4668
  %40 = load volatile i16, i16* %39, align 2, !dbg !4668
  store i16 %40, i16* %saved1, align 2, !dbg !4669
  %41 = load i16*, i16** %p, align 8, !dbg !4670
  %add.ptr = getelementptr i16, i16* %41, i64 1, !dbg !4670
  %42 = load volatile i16, i16* %add.ptr, align 2, !dbg !4670
  store i16 %42, i16* %saved2, align 2, !dbg !4671
  %43 = load i16*, i16** %p, align 8, !dbg !4672
  store volatile i16 -21931, i16* %43, align 2, !dbg !4672
  %44 = load i16*, i16** %p, align 8, !dbg !4673
  %add.ptr84 = getelementptr i16, i16* %44, i64 1, !dbg !4673
  store volatile i16 21930, i16* %add.ptr84, align 2, !dbg !4673
  %45 = load i16*, i16** %p, align 8, !dbg !4674
  %46 = load volatile i16, i16* %45, align 2, !dbg !4674
  %conv85 = zext i16 %46 to i32, !dbg !4674
  %cmp86 = icmp ne i32 %conv85, 43605, !dbg !4676
  br i1 %cmp86, label %if.then93, label %lor.lhs.false88, !dbg !4677

lor.lhs.false88:                                  ; preds = %if.end81
  %47 = load i16*, i16** %p, align 8, !dbg !4678
  %add.ptr89 = getelementptr i16, i16* %47, i64 1, !dbg !4678
  %48 = load volatile i16, i16* %add.ptr89, align 2, !dbg !4678
  %conv90 = zext i16 %48 to i32, !dbg !4678
  %cmp91 = icmp ne i32 %conv90, 21930, !dbg !4679
  br i1 %cmp91, label %if.then93, label %if.end95, !dbg !4680

if.then93:                                        ; preds = %lor.lhs.false88, %if.end81
  %49 = load i16, i16* %saved1, align 2, !dbg !4681
  %50 = load i16*, i16** %p, align 8, !dbg !4681
  store volatile i16 %49, i16* %50, align 2, !dbg !4681
  %51 = load i16, i16* %saved2, align 2, !dbg !4683
  %52 = load i16*, i16** %p, align 8, !dbg !4683
  %add.ptr94 = getelementptr i16, i16* %52, i64 1, !dbg !4683
  store volatile i16 %51, i16* %add.ptr94, align 2, !dbg !4683
  br label %no_vga, !dbg !4684

if.end95:                                         ; preds = %lor.lhs.false88
  %53 = load i16*, i16** %p, align 8, !dbg !4685
  store volatile i16 21930, i16* %53, align 2, !dbg !4685
  %54 = load i16*, i16** %p, align 8, !dbg !4686
  %add.ptr96 = getelementptr i16, i16* %54, i64 1, !dbg !4686
  store volatile i16 -21931, i16* %add.ptr96, align 2, !dbg !4686
  %55 = load i16*, i16** %p, align 8, !dbg !4687
  %56 = load volatile i16, i16* %55, align 2, !dbg !4687
  %conv97 = zext i16 %56 to i32, !dbg !4687
  %cmp98 = icmp ne i32 %conv97, 21930, !dbg !4689
  br i1 %cmp98, label %if.then105, label %lor.lhs.false100, !dbg !4690

lor.lhs.false100:                                 ; preds = %if.end95
  %57 = load i16*, i16** %p, align 8, !dbg !4691
  %add.ptr101 = getelementptr i16, i16* %57, i64 1, !dbg !4691
  %58 = load volatile i16, i16* %add.ptr101, align 2, !dbg !4691
  %conv102 = zext i16 %58 to i32, !dbg !4691
  %cmp103 = icmp ne i32 %conv102, 43605, !dbg !4692
  br i1 %cmp103, label %if.then105, label %if.end107, !dbg !4693

if.then105:                                       ; preds = %lor.lhs.false100, %if.end95
  %59 = load i16, i16* %saved1, align 2, !dbg !4694
  %60 = load i16*, i16** %p, align 8, !dbg !4694
  store volatile i16 %59, i16* %60, align 2, !dbg !4694
  %61 = load i16, i16* %saved2, align 2, !dbg !4696
  %62 = load i16*, i16** %p, align 8, !dbg !4696
  %add.ptr106 = getelementptr i16, i16* %62, i64 1, !dbg !4696
  store volatile i16 %61, i16* %add.ptr106, align 2, !dbg !4696
  br label %no_vga, !dbg !4697

if.end107:                                        ; preds = %lor.lhs.false100
  %63 = load i16, i16* %saved1, align 2, !dbg !4698
  %64 = load i16*, i16** %p, align 8, !dbg !4698
  store volatile i16 %63, i16* %64, align 2, !dbg !4698
  %65 = load i16, i16* %saved2, align 2, !dbg !4699
  %66 = load i16*, i16** %p, align 8, !dbg !4699
  %add.ptr108 = getelementptr i16, i16* %66, i64 1, !dbg !4699
  store volatile i16 %65, i16* %add.ptr108, align 2, !dbg !4699
  %67 = load i8, i8* @vga_video_type, align 1, !dbg !4700
  %conv109 = zext i8 %67 to i32, !dbg !4700
  %cmp110 = icmp eq i32 %conv109, 33, !dbg !4702
  br i1 %cmp110, label %if.then120, label %lor.lhs.false112, !dbg !4703

lor.lhs.false112:                                 ; preds = %if.end107
  %68 = load i8, i8* @vga_video_type, align 1, !dbg !4704
  %conv113 = zext i8 %68 to i32, !dbg !4704
  %cmp114 = icmp eq i32 %conv113, 34, !dbg !4705
  br i1 %cmp114, label %if.then120, label %lor.lhs.false116, !dbg !4706

lor.lhs.false116:                                 ; preds = %lor.lhs.false112
  %69 = load i8, i8* @vga_video_type, align 1, !dbg !4707
  %conv117 = zext i8 %69 to i32, !dbg !4707
  %cmp118 = icmp eq i32 %conv117, 32, !dbg !4708
  br i1 %cmp118, label %if.then120, label %if.end124, !dbg !4709

if.then120:                                       ; preds = %lor.lhs.false116, %lor.lhs.false112, %if.end107
  %70 = load i8, i8* @vga_hardscroll_user_enable, align 1, !dbg !4710
  %tobool121 = trunc i8 %70 to i1, !dbg !4710
  %frombool = zext i1 %tobool121 to i8, !dbg !4712
  store i8 %frombool, i8* @vga_hardscroll_enabled, align 1, !dbg !4712
  %71 = load i16, i16* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 12), align 1, !dbg !4713
  %conv122 = zext i16 %71 to i32, !dbg !4714
  store i32 %conv122, i32* @vga_default_font_height, align 4, !dbg !4715
  %72 = load i16, i16* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 12), align 1, !dbg !4716
  %conv123 = zext i16 %72 to i32, !dbg !4717
  store i32 %conv123, i32* @vga_video_font_height, align 4, !dbg !4718
  %73 = load i32, i32* @vga_video_font_height, align 4, !dbg !4719
  %74 = load i32, i32* @vga_video_num_lines, align 4, !dbg !4720
  %mul = mul i32 %73, %74, !dbg !4721
  store i32 %mul, i32* @vga_scan_lines, align 4, !dbg !4722
  br label %if.end124, !dbg !4723

if.end124:                                        ; preds = %if.then120, %lor.lhs.false116
  %75 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 5), align 1, !dbg !4724
  %conv125 = zext i8 %75 to i32, !dbg !4725
  %mul126 = mul i32 %conv125, 8, !dbg !4726
  store i32 %mul126, i32* @vgacon_xres, align 4, !dbg !4727
  %76 = load i32, i32* @vga_scan_lines, align 4, !dbg !4728
  store i32 %76, i32* @vgacon_yres, align 4, !dbg !4729
  store i8 1, i8* @vga_init_done, align 1, !dbg !4730
  %77 = load i8*, i8** %display_desc, align 8, !dbg !4731
  store i8* %77, i8** %retval, align 8, !dbg !4732
  br label %return, !dbg !4732

return:                                           ; preds = %if.end124, %no_vga
  %78 = load i8*, i8** %retval, align 8, !dbg !4733
  ret i8* %78, !dbg !4733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_init(%struct.vc_data* %c, i32 %init) #0 !dbg !4734 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %init.addr = alloca i32, align 4
  %p = alloca %struct.uni_pagedir*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !4735, metadata !DIExpression()), !dbg !4736
  store i32 %init, i32* %init.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %init.addr, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.declare(metadata %struct.uni_pagedir** %p, metadata !4739, metadata !DIExpression()), !dbg !4740
  %0 = load i8, i8* @vga_can_do_color, align 1, !dbg !4741
  %tobool = trunc i8 %0 to i1, !dbg !4741
  %conv = zext i1 %tobool to i32, !dbg !4741
  %1 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4742
  %vc_can_do_color = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i32 0, i32 36, !dbg !4743
  %2 = trunc i32 %conv to i16, !dbg !4744
  %bf.load = load i16, i16* %vc_can_do_color, align 8, !dbg !4744
  %bf.value = and i16 %2, 1, !dbg !4744
  %bf.shl = shl i16 %bf.value, 11, !dbg !4744
  %bf.clear = and i16 %bf.load, -2049, !dbg !4744
  %bf.set = or i16 %bf.clear, %bf.shl, !dbg !4744
  store i16 %bf.set, i16* %vc_can_do_color, align 8, !dbg !4744
  %bf.result.cast = zext i16 %bf.value to i32, !dbg !4744
  %3 = load i32, i32* %init.addr, align 4, !dbg !4745
  %tobool1 = icmp ne i32 %3, 0, !dbg !4745
  br i1 %tobool1, label %if.then, label %if.else, !dbg !4747

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @vga_video_num_columns, align 4, !dbg !4748
  %5 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4750
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 4, !dbg !4751
  store i32 %4, i32* %vc_cols, align 4, !dbg !4752
  %6 = load i32, i32* @vga_video_num_lines, align 4, !dbg !4753
  %7 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4754
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 5, !dbg !4755
  store i32 %6, i32* %vc_rows, align 8, !dbg !4756
  br label %if.end, !dbg !4757

if.else:                                          ; preds = %entry
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4758
  %9 = load i32, i32* @vga_video_num_columns, align 4, !dbg !4759
  %10 = load i32, i32* @vga_video_num_lines, align 4, !dbg !4760
  %call = call i32 @vc_resize(%struct.vc_data* %8, i32 %9, i32 %10) #9, !dbg !4761
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i32, i32* @vga_scan_lines, align 4, !dbg !4762
  %12 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4763
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 7, !dbg !4764
  store i32 %11, i32* %vc_scan_lines, align 8, !dbg !4765
  %13 = load i32, i32* @vga_video_font_height, align 4, !dbg !4766
  %14 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4767
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 27, !dbg !4768
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !4769
  store i32 %13, i32* %height, align 4, !dbg !4770
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4771
  %vc_complement_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 23, !dbg !4772
  store i16 30464, i16* %vc_complement_mask, align 8, !dbg !4773
  %16 = load i8, i8* @vga_512_chars, align 1, !dbg !4774
  %tobool2 = trunc i8 %16 to i1, !dbg !4774
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4776

if.then3:                                         ; preds = %if.end
  %17 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4777
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 26, !dbg !4778
  store i16 2048, i16* %vc_hi_font_mask, align 8, !dbg !4779
  br label %if.end4, !dbg !4777

if.end4:                                          ; preds = %if.then3, %if.end
  %18 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4780
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 48, !dbg !4781
  %19 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8, !dbg !4781
  %20 = load %struct.uni_pagedir*, %struct.uni_pagedir** %19, align 8, !dbg !4782
  store %struct.uni_pagedir* %20, %struct.uni_pagedir** %p, align 8, !dbg !4783
  %21 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4784
  %vc_uni_pagedir_loc5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 48, !dbg !4786
  %22 = load %struct.uni_pagedir**, %struct.uni_pagedir*** %vc_uni_pagedir_loc5, align 8, !dbg !4786
  %cmp = icmp ne %struct.uni_pagedir** %22, @vgacon_uni_pagedir, !dbg !4787
  br i1 %cmp, label %if.then7, label %if.end9, !dbg !4788

if.then7:                                         ; preds = %if.end4
  %23 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4789
  call void @con_free_unimap(%struct.vc_data* %23) #9, !dbg !4791
  %24 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4792
  %vc_uni_pagedir_loc8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 48, !dbg !4793
  store %struct.uni_pagedir** @vgacon_uni_pagedir, %struct.uni_pagedir*** %vc_uni_pagedir_loc8, align 8, !dbg !4794
  %25 = load i32, i32* @vgacon_refcount, align 4, !dbg !4795
  %inc = add i32 %25, 1, !dbg !4795
  store i32 %inc, i32* @vgacon_refcount, align 4, !dbg !4795
  br label %if.end9, !dbg !4796

if.end9:                                          ; preds = %if.then7, %if.end4
  %26 = load %struct.uni_pagedir*, %struct.uni_pagedir** @vgacon_uni_pagedir, align 8, !dbg !4797
  %tobool10 = icmp ne %struct.uni_pagedir* %26, null, !dbg !4797
  br i1 %tobool10, label %if.end14, label %land.lhs.true, !dbg !4799

land.lhs.true:                                    ; preds = %if.end9
  %27 = load %struct.uni_pagedir*, %struct.uni_pagedir** %p, align 8, !dbg !4800
  %tobool11 = icmp ne %struct.uni_pagedir* %27, null, !dbg !4800
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4801

if.then12:                                        ; preds = %land.lhs.true
  %28 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4802
  %call13 = call i32 @con_set_default_unimap(%struct.vc_data* %28) #9, !dbg !4803
  br label %if.end14, !dbg !4803

if.end14:                                         ; preds = %if.then12, %land.lhs.true, %if.end9
  %29 = load i32, i32* @global_cursor_default, align 4, !dbg !4804
  %cmp15 = icmp eq i32 %29, -1, !dbg !4806
  br i1 %cmp15, label %if.then17, label %if.end20, !dbg !4807

if.then17:                                        ; preds = %if.end14
  %30 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 6), align 1, !dbg !4808
  %conv18 = zext i8 %30 to i32, !dbg !4809
  %and = and i32 %conv18, 1, !dbg !4810
  %tobool19 = icmp ne i32 %and, 0, !dbg !4811
  %lnot = xor i1 %tobool19, true, !dbg !4811
  %lnot.ext = zext i1 %lnot to i32, !dbg !4811
  store i32 %lnot.ext, i32* @global_cursor_default, align 4, !dbg !4812
  br label %if.end20, !dbg !4813

if.end20:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !4814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_deinit(%struct.vc_data* %c) #0 !dbg !4815 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !4816, metadata !DIExpression()), !dbg !4817
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4818
  %call = call zeroext i1 @con_is_visible(%struct.vc_data* %0) #9, !dbg !4820
  br i1 %call, label %if.then, label %if.end, !dbg !4821

if.then:                                          ; preds = %entry
  %1 = load i64, i64* @vga_vram_base, align 8, !dbg !4822
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4824
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 10, !dbg !4825
  store i64 %1, i64* %vc_visible_origin, align 8, !dbg !4826
  %3 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4827
  call void @vga_set_mem_top(%struct.vc_data* %3) #9, !dbg !4828
  br label %if.end, !dbg !4829

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @vgacon_refcount, align 4, !dbg !4830
  %dec = add i32 %4, -1, !dbg !4830
  store i32 %dec, i32* @vgacon_refcount, align 4, !dbg !4830
  %tobool = icmp ne i32 %dec, 0, !dbg !4830
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !4832

if.then1:                                         ; preds = %if.end
  %5 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4833
  call void @con_free_unimap(%struct.vc_data* %5) #9, !dbg !4834
  br label %if.end2, !dbg !4834

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4835
  %vc_uni_pagedir = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 47, !dbg !4836
  %7 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4837
  %vc_uni_pagedir_loc = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 48, !dbg !4838
  store %struct.uni_pagedir** %vc_uni_pagedir, %struct.uni_pagedir*** %vc_uni_pagedir_loc, align 8, !dbg !4839
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4840
  %call3 = call i32 @con_set_default_unimap(%struct.vc_data* %8) #9, !dbg !4841
  ret void, !dbg !4842
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_clear(%struct.vc_data* %vc, i32 %sy, i32 %sx, i32 %height, i32 %width) #0 !dbg !4843 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %sy.addr = alloca i32, align 4
  %sx.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  store i32 %sy, i32* %sy.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sy.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  store i32 %sx, i32* %sx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %sx.addr, metadata !4848, metadata !DIExpression()), !dbg !4849
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !4850, metadata !DIExpression()), !dbg !4851
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !4852, metadata !DIExpression()), !dbg !4853
  ret void, !dbg !4854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_putc(%struct.vc_data* %vc, i32 %c, i32 %ypos, i32 %xpos) #0 !dbg !4855 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %c.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %xpos.addr = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !4856, metadata !DIExpression()), !dbg !4857
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  store i32 %ypos, i32* %ypos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ypos.addr, metadata !4860, metadata !DIExpression()), !dbg !4861
  store i32 %xpos, i32* %xpos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xpos.addr, metadata !4862, metadata !DIExpression()), !dbg !4863
  ret void, !dbg !4864
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_putcs(%struct.vc_data* %vc, i16* %s, i32 %count, i32 %ypos, i32 %xpos) #0 !dbg !4865 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %s.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %ypos.addr = alloca i32, align 4
  %xpos.addr = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !4866, metadata !DIExpression()), !dbg !4867
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !4868, metadata !DIExpression()), !dbg !4869
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !4870, metadata !DIExpression()), !dbg !4871
  store i32 %ypos, i32* %ypos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %ypos.addr, metadata !4872, metadata !DIExpression()), !dbg !4873
  store i32 %xpos, i32* %xpos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xpos.addr, metadata !4874, metadata !DIExpression()), !dbg !4875
  ret void, !dbg !4876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_cursor(%struct.vc_data* %c, i32 %mode) #0 !dbg !4877 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !4878, metadata !DIExpression()), !dbg !4879
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4880, metadata !DIExpression()), !dbg !4881
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4882
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 16, !dbg !4884
  %1 = load i8, i8* %vc_mode, align 4, !dbg !4884
  %conv = zext i8 %1 to i32, !dbg !4882
  %cmp = icmp ne i32 %conv, 0, !dbg !4885
  br i1 %cmp, label %if.then, label %if.end, !dbg !4886

if.then:                                          ; preds = %entry
  br label %sw.epilog88, !dbg !4887

if.end:                                           ; preds = %entry
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4888
  call void @vgacon_restore_screen(%struct.vc_data* %2) #9, !dbg !4889
  %3 = load i32, i32* %mode.addr, align 4, !dbg !4890
  switch i32 %3, label %sw.epilog88 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb10
    i32 1, label %sw.bb10
  ], !dbg !4891

sw.bb:                                            ; preds = %if.end
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4892
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 25, !dbg !4894
  %5 = load i64, i64* %vc_pos, align 8, !dbg !4894
  %6 = load i64, i64* @vga_vram_base, align 8, !dbg !4895
  %sub = sub i64 %5, %6, !dbg !4896
  %div = udiv i64 %sub, 2, !dbg !4897
  %conv2 = trunc i64 %div to i32, !dbg !4898
  call void @write_vga(i8 zeroext 14, i32 %conv2) #9, !dbg !4899
  %7 = load i8, i8* @vga_video_type, align 1, !dbg !4900
  %conv3 = zext i8 %7 to i32, !dbg !4900
  %cmp4 = icmp sge i32 %conv3, 34, !dbg !4902
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !4903

if.then6:                                         ; preds = %sw.bb
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4904
  %state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 1, !dbg !4905
  %x = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state, i32 0, i32 0, !dbg !4906
  %9 = load i32, i32* %x, align 8, !dbg !4906
  call void @vgacon_set_cursor_size(i32 %9, i32 31, i32 30) #9, !dbg !4907
  br label %if.end9, !dbg !4907

if.else:                                          ; preds = %sw.bb
  %10 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4908
  %state7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 1, !dbg !4909
  %x8 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state7, i32 0, i32 0, !dbg !4910
  %11 = load i32, i32* %x8, align 8, !dbg !4910
  call void @vgacon_set_cursor_size(i32 %11, i32 31, i32 31) #9, !dbg !4911
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %sw.epilog88, !dbg !4912

sw.bb10:                                          ; preds = %if.end, %if.end
  %12 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4913
  %vc_pos11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 25, !dbg !4914
  %13 = load i64, i64* %vc_pos11, align 8, !dbg !4914
  %14 = load i64, i64* @vga_vram_base, align 8, !dbg !4915
  %sub12 = sub i64 %13, %14, !dbg !4916
  %div13 = udiv i64 %sub12, 2, !dbg !4917
  %conv14 = trunc i64 %div13 to i32, !dbg !4918
  call void @write_vga(i8 zeroext 14, i32 %conv14) #9, !dbg !4919
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4920
  %vc_cursor_type = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 22, !dbg !4920
  %16 = load i32, i32* %vc_cursor_type, align 4, !dbg !4920
  %and = and i32 %16, 15, !dbg !4920
  switch i32 %and, label %sw.default [
    i32 2, label %sw.bb15
    i32 5, label %sw.bb31
    i32 3, label %sw.bb45
    i32 4, label %sw.bb59
    i32 1, label %sw.bb73
  ], !dbg !4921

sw.bb15:                                          ; preds = %sw.bb10
  %17 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4922
  %state16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 1, !dbg !4924
  %x17 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state16, i32 0, i32 0, !dbg !4925
  %18 = load i32, i32* %x17, align 8, !dbg !4925
  %19 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4926
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 27, !dbg !4927
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !4928
  %20 = load i32, i32* %height, align 4, !dbg !4928
  %21 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4929
  %vc_font18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 27, !dbg !4930
  %height19 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font18, i32 0, i32 1, !dbg !4931
  %22 = load i32, i32* %height19, align 4, !dbg !4931
  %cmp20 = icmp ult i32 %22, 10, !dbg !4932
  %23 = zext i1 %cmp20 to i64, !dbg !4929
  %cond = select i1 %cmp20, i32 2, i32 3, !dbg !4929
  %sub22 = sub i32 %20, %cond, !dbg !4933
  %24 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4934
  %vc_font23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 27, !dbg !4935
  %height24 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font23, i32 0, i32 1, !dbg !4936
  %25 = load i32, i32* %height24, align 4, !dbg !4936
  %26 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4937
  %vc_font25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 27, !dbg !4938
  %height26 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font25, i32 0, i32 1, !dbg !4939
  %27 = load i32, i32* %height26, align 4, !dbg !4939
  %cmp27 = icmp ult i32 %27, 10, !dbg !4940
  %28 = zext i1 %cmp27 to i64, !dbg !4937
  %cond29 = select i1 %cmp27, i32 1, i32 2, !dbg !4937
  %sub30 = sub i32 %25, %cond29, !dbg !4941
  call void @vgacon_set_cursor_size(i32 %18, i32 %sub22, i32 %sub30) #9, !dbg !4942
  br label %sw.epilog, !dbg !4943

sw.bb31:                                          ; preds = %sw.bb10
  %29 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4944
  %state32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1, !dbg !4945
  %x33 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state32, i32 0, i32 0, !dbg !4946
  %30 = load i32, i32* %x33, align 8, !dbg !4946
  %31 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4947
  %vc_font34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 27, !dbg !4948
  %height35 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font34, i32 0, i32 1, !dbg !4949
  %32 = load i32, i32* %height35, align 4, !dbg !4949
  %div36 = udiv i32 %32, 3, !dbg !4950
  %33 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4951
  %vc_font37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 27, !dbg !4952
  %height38 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font37, i32 0, i32 1, !dbg !4953
  %34 = load i32, i32* %height38, align 4, !dbg !4953
  %35 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4954
  %vc_font39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 27, !dbg !4955
  %height40 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font39, i32 0, i32 1, !dbg !4956
  %36 = load i32, i32* %height40, align 4, !dbg !4956
  %cmp41 = icmp ult i32 %36, 10, !dbg !4957
  %37 = zext i1 %cmp41 to i64, !dbg !4954
  %cond43 = select i1 %cmp41, i32 1, i32 2, !dbg !4954
  %sub44 = sub i32 %34, %cond43, !dbg !4958
  call void @vgacon_set_cursor_size(i32 %30, i32 %div36, i32 %sub44) #9, !dbg !4959
  br label %sw.epilog, !dbg !4960

sw.bb45:                                          ; preds = %sw.bb10
  %38 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4961
  %state46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1, !dbg !4962
  %x47 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state46, i32 0, i32 0, !dbg !4963
  %39 = load i32, i32* %x47, align 8, !dbg !4963
  %40 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4964
  %vc_font48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 27, !dbg !4965
  %height49 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font48, i32 0, i32 1, !dbg !4966
  %41 = load i32, i32* %height49, align 4, !dbg !4966
  %mul = mul i32 %41, 2, !dbg !4967
  %div50 = udiv i32 %mul, 3, !dbg !4968
  %42 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4969
  %vc_font51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 27, !dbg !4970
  %height52 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font51, i32 0, i32 1, !dbg !4971
  %43 = load i32, i32* %height52, align 4, !dbg !4971
  %44 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4972
  %vc_font53 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %44, i32 0, i32 27, !dbg !4973
  %height54 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font53, i32 0, i32 1, !dbg !4974
  %45 = load i32, i32* %height54, align 4, !dbg !4974
  %cmp55 = icmp ult i32 %45, 10, !dbg !4975
  %46 = zext i1 %cmp55 to i64, !dbg !4972
  %cond57 = select i1 %cmp55, i32 1, i32 2, !dbg !4972
  %sub58 = sub i32 %43, %cond57, !dbg !4976
  call void @vgacon_set_cursor_size(i32 %39, i32 %div50, i32 %sub58) #9, !dbg !4977
  br label %sw.epilog, !dbg !4978

sw.bb59:                                          ; preds = %sw.bb10
  %47 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4979
  %state60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1, !dbg !4980
  %x61 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state60, i32 0, i32 0, !dbg !4981
  %48 = load i32, i32* %x61, align 8, !dbg !4981
  %49 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4982
  %vc_font62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 27, !dbg !4983
  %height63 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font62, i32 0, i32 1, !dbg !4984
  %50 = load i32, i32* %height63, align 4, !dbg !4984
  %div64 = udiv i32 %50, 2, !dbg !4985
  %51 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4986
  %vc_font65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 27, !dbg !4987
  %height66 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font65, i32 0, i32 1, !dbg !4988
  %52 = load i32, i32* %height66, align 4, !dbg !4988
  %53 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !4989
  %vc_font67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %53, i32 0, i32 27, !dbg !4990
  %height68 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font67, i32 0, i32 1, !dbg !4991
  %54 = load i32, i32* %height68, align 4, !dbg !4991
  %cmp69 = icmp ult i32 %54, 10, !dbg !4992
  %55 = zext i1 %cmp69 to i64, !dbg !4989
  %cond71 = select i1 %cmp69, i32 1, i32 2, !dbg !4989
  %sub72 = sub i32 %52, %cond71, !dbg !4993
  call void @vgacon_set_cursor_size(i32 %48, i32 %div64, i32 %sub72) #9, !dbg !4994
  br label %sw.epilog, !dbg !4995

sw.bb73:                                          ; preds = %sw.bb10
  %56 = load i8, i8* @vga_video_type, align 1, !dbg !4996
  %conv74 = zext i8 %56 to i32, !dbg !4996
  %cmp75 = icmp sge i32 %conv74, 34, !dbg !4998
  br i1 %cmp75, label %if.then77, label %if.else80, !dbg !4999

if.then77:                                        ; preds = %sw.bb73
  %57 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5000
  %state78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 1, !dbg !5001
  %x79 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state78, i32 0, i32 0, !dbg !5002
  %58 = load i32, i32* %x79, align 8, !dbg !5002
  call void @vgacon_set_cursor_size(i32 %58, i32 31, i32 30) #9, !dbg !5003
  br label %if.end83, !dbg !5003

if.else80:                                        ; preds = %sw.bb73
  %59 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5004
  %state81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 1, !dbg !5005
  %x82 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state81, i32 0, i32 0, !dbg !5006
  %60 = load i32, i32* %x82, align 8, !dbg !5006
  call void @vgacon_set_cursor_size(i32 %60, i32 31, i32 31) #9, !dbg !5007
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then77
  br label %sw.epilog, !dbg !5008

sw.default:                                       ; preds = %sw.bb10
  %61 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5009
  %state84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 1, !dbg !5010
  %x85 = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state84, i32 0, i32 0, !dbg !5011
  %62 = load i32, i32* %x85, align 8, !dbg !5011
  %63 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5012
  %vc_font86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 27, !dbg !5013
  %height87 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font86, i32 0, i32 1, !dbg !5014
  %64 = load i32, i32* %height87, align 4, !dbg !5014
  call void @vgacon_set_cursor_size(i32 %62, i32 1, i32 %64) #9, !dbg !5015
  br label %sw.epilog, !dbg !5016

sw.epilog:                                        ; preds = %sw.default, %if.end83, %sw.bb59, %sw.bb45, %sw.bb31, %sw.bb15
  br label %sw.epilog88, !dbg !5017

sw.epilog88:                                      ; preds = %if.then, %if.end, %sw.epilog, %if.end9
  ret void, !dbg !5018
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @vgacon_scroll(%struct.vc_data* %c, i32 %t, i32 %b, i32 %dir, i32 %lines) #0 !dbg !5019 {
entry:
  %retval = alloca i1, align 1
  %c.addr = alloca %struct.vc_data*, align 8
  %t.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %dir.addr = alloca i32, align 4
  %lines.addr = alloca i32, align 4
  %oldo = alloca i64, align 8
  %delta = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  store i32 %t, i32* %t.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %t.addr, metadata !5022, metadata !DIExpression()), !dbg !5023
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !5024, metadata !DIExpression()), !dbg !5025
  store i32 %dir, i32* %dir.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %dir.addr, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i32 %lines, i32* %lines.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lines.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata i64* %oldo, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %delta, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load i32, i32* %t.addr, align 4, !dbg !5034
  %tobool = icmp ne i32 %0, 0, !dbg !5034
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5036

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %b.addr, align 4, !dbg !5037
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5038
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 5, !dbg !5039
  %3 = load i32, i32* %vc_rows, align 8, !dbg !5039
  %cmp = icmp ne i32 %1, %3, !dbg !5040
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !5041

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %4 = load i8, i8* @vga_is_gfx, align 1, !dbg !5042
  %tobool2 = trunc i8 %4 to i1, !dbg !5042
  br i1 %tobool2, label %if.then, label %lor.lhs.false3, !dbg !5043

lor.lhs.false3:                                   ; preds = %lor.lhs.false1
  %5 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5044
  %vc_mode = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 16, !dbg !5045
  %6 = load i8, i8* %vc_mode, align 4, !dbg !5045
  %conv = zext i8 %6 to i32, !dbg !5044
  %cmp4 = icmp ne i32 %conv, 0, !dbg !5046
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5047

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false1, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !5048
  br label %return, !dbg !5048

if.end:                                           ; preds = %lor.lhs.false3
  %7 = load i8, i8* @vga_hardscroll_enabled, align 1, !dbg !5049
  %tobool6 = trunc i8 %7 to i1, !dbg !5049
  br i1 %tobool6, label %lor.lhs.false7, label %if.then11, !dbg !5051

lor.lhs.false7:                                   ; preds = %if.end
  %8 = load i32, i32* %lines.addr, align 4, !dbg !5052
  %9 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5053
  %vc_rows8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 5, !dbg !5054
  %10 = load i32, i32* %vc_rows8, align 8, !dbg !5054
  %div = udiv i32 %10, 2, !dbg !5055
  %cmp9 = icmp uge i32 %8, %div, !dbg !5056
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !5057

if.then11:                                        ; preds = %lor.lhs.false7, %if.end
  store i1 false, i1* %retval, align 1, !dbg !5058
  br label %return, !dbg !5058

if.end12:                                         ; preds = %lor.lhs.false7
  %11 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5059
  call void @vgacon_restore_screen(%struct.vc_data* %11) #9, !dbg !5060
  %12 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5061
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 8, !dbg !5062
  %13 = load i64, i64* %vc_origin, align 8, !dbg !5062
  store i64 %13, i64* %oldo, align 8, !dbg !5063
  %14 = load i32, i32* %lines.addr, align 4, !dbg !5064
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5065
  %vc_size_row = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 6, !dbg !5066
  %16 = load i32, i32* %vc_size_row, align 4, !dbg !5066
  %mul = mul i32 %14, %16, !dbg !5067
  store i32 %mul, i32* %delta, align 4, !dbg !5068
  %17 = load i32, i32* %dir.addr, align 4, !dbg !5069
  %cmp13 = icmp eq i32 %17, 0, !dbg !5071
  br i1 %cmp13, label %if.then15, label %if.else35, !dbg !5072

if.then15:                                        ; preds = %if.end12
  %18 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5073
  %vc_scr_end = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 9, !dbg !5076
  %19 = load i64, i64* %vc_scr_end, align 8, !dbg !5076
  %20 = load i32, i32* %delta, align 4, !dbg !5077
  %conv16 = zext i32 %20 to i64, !dbg !5077
  %add = add i64 %19, %conv16, !dbg !5078
  %21 = load i64, i64* @vga_vram_end, align 8, !dbg !5079
  %cmp17 = icmp uge i64 %add, %21, !dbg !5080
  br i1 %cmp17, label %if.then19, label %if.else, !dbg !5081

if.then19:                                        ; preds = %if.then15
  %22 = load i64, i64* @vga_vram_base, align 8, !dbg !5082
  %23 = inttoptr i64 %22 to i16*, !dbg !5084
  %24 = load i64, i64* %oldo, align 8, !dbg !5085
  %25 = load i32, i32* %delta, align 4, !dbg !5086
  %conv20 = zext i32 %25 to i64, !dbg !5086
  %add21 = add i64 %24, %conv20, !dbg !5087
  %26 = inttoptr i64 %add21 to i16*, !dbg !5088
  %27 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5089
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %27, i32 0, i32 15, !dbg !5090
  %28 = load i32, i32* %vc_screenbuf_size, align 8, !dbg !5090
  %29 = load i32, i32* %delta, align 4, !dbg !5091
  %sub = sub i32 %28, %29, !dbg !5092
  call void @scr_memcpyw(i16* %23, i16* %26, i32 %sub) #9, !dbg !5093
  %30 = load i64, i64* @vga_vram_base, align 8, !dbg !5094
  %31 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5095
  %vc_origin22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 8, !dbg !5096
  store i64 %30, i64* %vc_origin22, align 8, !dbg !5097
  %32 = load i64, i64* %oldo, align 8, !dbg !5098
  %33 = load i64, i64* @vga_vram_base, align 8, !dbg !5099
  %sub23 = sub i64 %32, %33, !dbg !5100
  %conv24 = trunc i64 %sub23 to i32, !dbg !5098
  store i32 %conv24, i32* @vga_rolled_over, align 4, !dbg !5101
  br label %if.end28, !dbg !5102

if.else:                                          ; preds = %if.then15
  %34 = load i32, i32* %delta, align 4, !dbg !5103
  %conv25 = zext i32 %34 to i64, !dbg !5103
  %35 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5104
  %vc_origin26 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 8, !dbg !5105
  %36 = load i64, i64* %vc_origin26, align 8, !dbg !5106
  %add27 = add i64 %36, %conv25, !dbg !5106
  store i64 %add27, i64* %vc_origin26, align 8, !dbg !5106
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then19
  %37 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5107
  %vc_origin29 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 8, !dbg !5108
  %38 = load i64, i64* %vc_origin29, align 8, !dbg !5108
  %39 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5109
  %vc_screenbuf_size30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 15, !dbg !5110
  %40 = load i32, i32* %vc_screenbuf_size30, align 8, !dbg !5110
  %conv31 = zext i32 %40 to i64, !dbg !5109
  %add32 = add i64 %38, %conv31, !dbg !5111
  %41 = load i32, i32* %delta, align 4, !dbg !5112
  %conv33 = zext i32 %41 to i64, !dbg !5112
  %sub34 = sub i64 %add32, %conv33, !dbg !5113
  %42 = inttoptr i64 %sub34 to i16*, !dbg !5114
  %43 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5115
  %vc_video_erase_char = getelementptr inbounds %struct.vc_data, %struct.vc_data* %43, i32 0, i32 28, !dbg !5116
  %44 = load i16, i16* %vc_video_erase_char, align 8, !dbg !5116
  %45 = load i32, i32* %delta, align 4, !dbg !5117
  call void @scr_memsetw(i16* %42, i16 zeroext %44, i32 %45) #9, !dbg !5118
  br label %if.end64, !dbg !5119

if.else35:                                        ; preds = %if.end12
  %46 = load i64, i64* %oldo, align 8, !dbg !5120
  %47 = load i32, i32* %delta, align 4, !dbg !5123
  %conv36 = zext i32 %47 to i64, !dbg !5123
  %sub37 = sub i64 %46, %conv36, !dbg !5124
  %48 = load i64, i64* @vga_vram_base, align 8, !dbg !5125
  %cmp38 = icmp ult i64 %sub37, %48, !dbg !5126
  br i1 %cmp38, label %if.then40, label %if.else52, !dbg !5127

if.then40:                                        ; preds = %if.else35
  %49 = load i64, i64* @vga_vram_end, align 8, !dbg !5128
  %50 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5130
  %vc_screenbuf_size41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 15, !dbg !5131
  %51 = load i32, i32* %vc_screenbuf_size41, align 8, !dbg !5131
  %conv42 = zext i32 %51 to i64, !dbg !5130
  %sub43 = sub i64 %49, %conv42, !dbg !5132
  %52 = load i32, i32* %delta, align 4, !dbg !5133
  %conv44 = zext i32 %52 to i64, !dbg !5133
  %add45 = add i64 %sub43, %conv44, !dbg !5134
  %53 = inttoptr i64 %add45 to i16*, !dbg !5135
  %54 = load i64, i64* %oldo, align 8, !dbg !5136
  %55 = inttoptr i64 %54 to i16*, !dbg !5137
  %56 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5138
  %vc_screenbuf_size46 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 15, !dbg !5139
  %57 = load i32, i32* %vc_screenbuf_size46, align 8, !dbg !5139
  %58 = load i32, i32* %delta, align 4, !dbg !5140
  %sub47 = sub i32 %57, %58, !dbg !5141
  call void @scr_memmovew(i16* %53, i16* %55, i32 %sub47) #9, !dbg !5142
  %59 = load i64, i64* @vga_vram_end, align 8, !dbg !5143
  %60 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5144
  %vc_screenbuf_size48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %60, i32 0, i32 15, !dbg !5145
  %61 = load i32, i32* %vc_screenbuf_size48, align 8, !dbg !5145
  %conv49 = zext i32 %61 to i64, !dbg !5144
  %sub50 = sub i64 %59, %conv49, !dbg !5146
  %62 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5147
  %vc_origin51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %62, i32 0, i32 8, !dbg !5148
  store i64 %sub50, i64* %vc_origin51, align 8, !dbg !5149
  store i32 0, i32* @vga_rolled_over, align 4, !dbg !5150
  br label %if.end56, !dbg !5151

if.else52:                                        ; preds = %if.else35
  %63 = load i32, i32* %delta, align 4, !dbg !5152
  %conv53 = zext i32 %63 to i64, !dbg !5152
  %64 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5153
  %vc_origin54 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %64, i32 0, i32 8, !dbg !5154
  %65 = load i64, i64* %vc_origin54, align 8, !dbg !5155
  %sub55 = sub i64 %65, %conv53, !dbg !5155
  store i64 %sub55, i64* %vc_origin54, align 8, !dbg !5155
  br label %if.end56

if.end56:                                         ; preds = %if.else52, %if.then40
  %66 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5156
  %vc_origin57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 8, !dbg !5157
  %67 = load i64, i64* %vc_origin57, align 8, !dbg !5157
  %68 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5158
  %vc_screenbuf_size58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 15, !dbg !5159
  %69 = load i32, i32* %vc_screenbuf_size58, align 8, !dbg !5159
  %conv59 = zext i32 %69 to i64, !dbg !5158
  %add60 = add i64 %67, %conv59, !dbg !5160
  %70 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5161
  %vc_scr_end61 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 9, !dbg !5162
  store i64 %add60, i64* %vc_scr_end61, align 8, !dbg !5163
  %71 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5164
  %vc_origin62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 8, !dbg !5165
  %72 = load i64, i64* %vc_origin62, align 8, !dbg !5165
  %73 = inttoptr i64 %72 to i16*, !dbg !5166
  %74 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5167
  %vc_video_erase_char63 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %74, i32 0, i32 28, !dbg !5168
  %75 = load i16, i16* %vc_video_erase_char63, align 8, !dbg !5168
  %76 = load i32, i32* %delta, align 4, !dbg !5169
  call void @scr_memsetw(i16* %73, i16 zeroext %75, i32 %76) #9, !dbg !5170
  br label %if.end64

if.end64:                                         ; preds = %if.end56, %if.end28
  %77 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5171
  %vc_origin65 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 8, !dbg !5172
  %78 = load i64, i64* %vc_origin65, align 8, !dbg !5172
  %79 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5173
  %vc_screenbuf_size66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 15, !dbg !5174
  %80 = load i32, i32* %vc_screenbuf_size66, align 8, !dbg !5174
  %conv67 = zext i32 %80 to i64, !dbg !5173
  %add68 = add i64 %78, %conv67, !dbg !5175
  %81 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5176
  %vc_scr_end69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 9, !dbg !5177
  store i64 %add68, i64* %vc_scr_end69, align 8, !dbg !5178
  %82 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5179
  %vc_origin70 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %82, i32 0, i32 8, !dbg !5180
  %83 = load i64, i64* %vc_origin70, align 8, !dbg !5180
  %84 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5181
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %84, i32 0, i32 10, !dbg !5182
  store i64 %83, i64* %vc_visible_origin, align 8, !dbg !5183
  %85 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5184
  call void @vga_set_mem_top(%struct.vc_data* %85) #9, !dbg !5185
  %86 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5186
  %vc_pos = getelementptr inbounds %struct.vc_data, %struct.vc_data* %86, i32 0, i32 25, !dbg !5187
  %87 = load i64, i64* %vc_pos, align 8, !dbg !5187
  %88 = load i64, i64* %oldo, align 8, !dbg !5188
  %sub71 = sub i64 %87, %88, !dbg !5189
  %89 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5190
  %vc_origin72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 8, !dbg !5191
  %90 = load i64, i64* %vc_origin72, align 8, !dbg !5191
  %add73 = add i64 %sub71, %90, !dbg !5192
  %91 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5193
  %vc_pos74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %91, i32 0, i32 25, !dbg !5194
  store i64 %add73, i64* %vc_pos74, align 8, !dbg !5195
  store i1 true, i1* %retval, align 1, !dbg !5196
  br label %return, !dbg !5196

return:                                           ; preds = %if.end64, %if.then11, %if.then
  %92 = load i1, i1* %retval, align 1, !dbg !5197
  ret i1 %92, !dbg !5197
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_switch(%struct.vc_data* %c) #0 !dbg !5198 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %rows = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5199, metadata !DIExpression()), !dbg !5200
  call void @llvm.dbg.declare(metadata i32* %x, metadata !5201, metadata !DIExpression()), !dbg !5202
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5203
  %vc_cols = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 4, !dbg !5204
  %1 = load i32, i32* %vc_cols, align 4, !dbg !5204
  %mul = mul i32 %1, 8, !dbg !5205
  store i32 %mul, i32* %x, align 4, !dbg !5202
  call void @llvm.dbg.declare(metadata i32* %y, metadata !5206, metadata !DIExpression()), !dbg !5207
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5208
  %vc_rows = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 5, !dbg !5209
  %3 = load i32, i32* %vc_rows, align 8, !dbg !5209
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5210
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 27, !dbg !5211
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !5212
  %5 = load i32, i32* %height, align 4, !dbg !5212
  %mul1 = mul i32 %3, %5, !dbg !5213
  store i32 %mul1, i32* %y, align 4, !dbg !5207
  call void @llvm.dbg.declare(metadata i32* %rows, metadata !5214, metadata !DIExpression()), !dbg !5215
  %6 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 10), align 1, !dbg !5216
  %conv = zext i8 %6 to i32, !dbg !5217
  %7 = load i32, i32* @vga_default_font_height, align 4, !dbg !5218
  %mul2 = mul i32 %conv, %7, !dbg !5219
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5220
  %vc_font3 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 27, !dbg !5221
  %height4 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font3, i32 0, i32 1, !dbg !5222
  %9 = load i32, i32* %height4, align 4, !dbg !5222
  %div = udiv i32 %mul2, %9, !dbg !5223
  store i32 %div, i32* %rows, align 4, !dbg !5215
  %10 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5224
  %vc_cols5 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 4, !dbg !5225
  %11 = load i32, i32* %vc_cols5, align 4, !dbg !5225
  store i32 %11, i32* @vga_video_num_columns, align 4, !dbg !5226
  %12 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5227
  %vc_rows6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 5, !dbg !5228
  %13 = load i32, i32* %vc_rows6, align 8, !dbg !5228
  store i32 %13, i32* @vga_video_num_lines, align 4, !dbg !5229
  %14 = load i8, i8* @vga_is_gfx, align 1, !dbg !5230
  %tobool = trunc i8 %14 to i1, !dbg !5230
  br i1 %tobool, label %if.end24, label %if.then, !dbg !5232

if.then:                                          ; preds = %entry
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5233
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 8, !dbg !5235
  %16 = load i64, i64* %vc_origin, align 8, !dbg !5235
  %17 = inttoptr i64 %16 to i16*, !dbg !5236
  %18 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5237
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 14, !dbg !5238
  %19 = load i16*, i16** %vc_screenbuf, align 8, !dbg !5238
  %20 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5239
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 15, !dbg !5240
  %21 = load i32, i32* %vc_screenbuf_size, align 8, !dbg !5240
  %22 = load i32, i32* @vga_vram_size, align 4, !dbg !5241
  %cmp = icmp ugt i32 %21, %22, !dbg !5242
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5239

cond.true:                                        ; preds = %if.then
  %23 = load i32, i32* @vga_vram_size, align 4, !dbg !5243
  br label %cond.end, !dbg !5239

cond.false:                                       ; preds = %if.then
  %24 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5244
  %vc_screenbuf_size8 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 15, !dbg !5245
  %25 = load i32, i32* %vc_screenbuf_size8, align 8, !dbg !5245
  br label %cond.end, !dbg !5239

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %25, %cond.false ], !dbg !5239
  call void @scr_memcpyw(i16* %17, i16* %19, i32 %cond) #9, !dbg !5246
  %26 = load i32, i32* @vgacon_xres, align 4, !dbg !5247
  %27 = load i32, i32* %x, align 4, !dbg !5249
  %cmp9 = icmp ne i32 %26, %27, !dbg !5250
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false, !dbg !5251

lor.lhs.false:                                    ; preds = %cond.end
  %28 = load i32, i32* @vgacon_yres, align 4, !dbg !5252
  %29 = load i32, i32* %y, align 4, !dbg !5253
  %cmp11 = icmp ne i32 %28, %29, !dbg !5254
  br i1 %cmp11, label %land.lhs.true, label %if.end, !dbg !5255

land.lhs.true:                                    ; preds = %lor.lhs.false, %cond.end
  %30 = load i32, i32* @vga_video_num_columns, align 4, !dbg !5256
  %rem = urem i32 %30, 2, !dbg !5257
  %tobool13 = icmp ne i32 %rem, 0, !dbg !5257
  br i1 %tobool13, label %if.end, label %land.lhs.true14, !dbg !5258

land.lhs.true14:                                  ; preds = %land.lhs.true
  %31 = load i32, i32* @vga_video_num_columns, align 4, !dbg !5259
  %32 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 5), align 1, !dbg !5260
  %conv15 = zext i8 %32 to i32, !dbg !5261
  %cmp16 = icmp ule i32 %31, %conv15, !dbg !5262
  br i1 %cmp16, label %land.lhs.true18, label %if.end, !dbg !5263

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %33 = load i32, i32* @vga_video_num_lines, align 4, !dbg !5264
  %34 = load i32, i32* %rows, align 4, !dbg !5265
  %cmp19 = icmp ule i32 %33, %34, !dbg !5266
  br i1 %cmp19, label %if.then21, label %if.end, !dbg !5267

if.then21:                                        ; preds = %land.lhs.true18
  %35 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5268
  %36 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5269
  %vc_cols22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 4, !dbg !5270
  %37 = load i32, i32* %vc_cols22, align 4, !dbg !5270
  %38 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5271
  %vc_rows23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 5, !dbg !5272
  %39 = load i32, i32* %vc_rows23, align 8, !dbg !5272
  %call = call i32 @vgacon_doresize(%struct.vc_data* %35, i32 %37, i32 %39) #9, !dbg !5273
  br label %if.end, !dbg !5273

if.end:                                           ; preds = %if.then21, %land.lhs.true18, %land.lhs.true14, %land.lhs.true, %lor.lhs.false
  br label %if.end24, !dbg !5274

if.end24:                                         ; preds = %if.end, %entry
  ret i32 0, !dbg !5275
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_blank(%struct.vc_data* %c, i32 %blank, i32 %mode_switch) #0 !dbg !5276 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.vc_data*, align 8
  %blank.addr = alloca i32, align 4
  %mode_switch.addr = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5277, metadata !DIExpression()), !dbg !5278
  store i32 %blank, i32* %blank.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %blank.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  store i32 %mode_switch, i32* %mode_switch.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode_switch.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load i32, i32* %blank.addr, align 4, !dbg !5283
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 -1, label %sw.bb4
  ], !dbg !5284

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* @vga_vesa_blanked, align 4, !dbg !5285
  %tobool = icmp ne i32 %1, 0, !dbg !5285
  br i1 %tobool, label %if.then, label %if.end, !dbg !5288

if.then:                                          ; preds = %sw.bb
  call void @vga_vesa_unblank(%struct.vgastate* @vgastate) #9, !dbg !5289
  store i32 0, i32* @vga_vesa_blanked, align 4, !dbg !5291
  br label %if.end, !dbg !5292

if.end:                                           ; preds = %if.then, %sw.bb
  %2 = load i8, i8* @vga_palette_blanked, align 1, !dbg !5293
  %tobool1 = trunc i8 %2 to i1, !dbg !5293
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !5295

if.then2:                                         ; preds = %if.end
  %3 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5296
  call void @vga_set_palette(%struct.vc_data* %3, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @color_table, i64 0, i64 0)) #9, !dbg !5298
  store i8 0, i8* @vga_palette_blanked, align 1, !dbg !5299
  store i32 0, i32* %retval, align 4, !dbg !5300
  br label %return, !dbg !5300

if.end3:                                          ; preds = %if.end
  store i8 0, i8* @vga_is_gfx, align 1, !dbg !5301
  store i32 1, i32* %retval, align 4, !dbg !5302
  br label %return, !dbg !5302

sw.bb4:                                           ; preds = %entry, %entry
  %4 = load i32, i32* %mode_switch.addr, align 4, !dbg !5303
  %tobool5 = icmp ne i32 %4, 0, !dbg !5303
  br i1 %tobool5, label %if.end8, label %land.lhs.true, !dbg !5305

land.lhs.true:                                    ; preds = %sw.bb4
  %5 = load i8, i8* @vga_video_type, align 1, !dbg !5306
  %conv = zext i8 %5 to i32, !dbg !5306
  %cmp = icmp eq i32 %conv, 34, !dbg !5307
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !5308

if.then7:                                         ; preds = %land.lhs.true
  call void @vga_pal_blank(%struct.vgastate* @vgastate) #9, !dbg !5309
  store i8 1, i8* @vga_palette_blanked, align 1, !dbg !5311
  store i32 0, i32* %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

if.end8:                                          ; preds = %land.lhs.true, %sw.bb4
  %6 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5313
  %call = call i32 @vgacon_set_origin(%struct.vc_data* %6) #9, !dbg !5314
  %7 = load i64, i64* @vga_vram_base, align 8, !dbg !5315
  %8 = inttoptr i64 %7 to i8*, !dbg !5316
  %9 = bitcast i8* %8 to i16*, !dbg !5316
  %10 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5317
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %10, i32 0, i32 15, !dbg !5318
  %11 = load i32, i32* %vc_screenbuf_size, align 8, !dbg !5318
  call void @scr_memsetw(i16* %9, i16 zeroext 32, i32 %11) #9, !dbg !5319
  %12 = load i32, i32* %mode_switch.addr, align 4, !dbg !5320
  %tobool9 = icmp ne i32 %12, 0, !dbg !5320
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5322

if.then10:                                        ; preds = %if.end8
  store i8 1, i8* @vga_is_gfx, align 1, !dbg !5323
  br label %if.end11, !dbg !5324

if.end11:                                         ; preds = %if.then10, %if.end8
  store i32 1, i32* %retval, align 4, !dbg !5325
  br label %return, !dbg !5325

sw.default:                                       ; preds = %entry
  %13 = load i8, i8* @vga_video_type, align 1, !dbg !5326
  %conv12 = zext i8 %13 to i32, !dbg !5326
  %cmp13 = icmp eq i32 %conv12, 34, !dbg !5328
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5329

if.then15:                                        ; preds = %sw.default
  %14 = load i32, i32* %blank.addr, align 4, !dbg !5330
  %sub = sub i32 %14, 1, !dbg !5332
  call void @vga_vesa_blank(%struct.vgastate* @vgastate, i32 %sub) #9, !dbg !5333
  %15 = load i32, i32* %blank.addr, align 4, !dbg !5334
  store i32 %15, i32* @vga_vesa_blanked, align 4, !dbg !5335
  br label %if.end16, !dbg !5336

if.end16:                                         ; preds = %if.then15, %sw.default
  store i32 0, i32* %retval, align 4, !dbg !5337
  br label %return, !dbg !5337

return:                                           ; preds = %if.end16, %if.end11, %if.then7, %if.end3, %if.then2
  %16 = load i32, i32* %retval, align 4, !dbg !5338
  ret i32 %16, !dbg !5338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_font_set(%struct.vc_data* %c, %struct.console_font* %font, i32 %flags) #0 !dbg !5339 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.vc_data*, align 8
  %font.addr = alloca %struct.console_font*, align 8
  %flags.addr = alloca i32, align 4
  %charcount = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5340, metadata !DIExpression()), !dbg !5341
  store %struct.console_font* %font, %struct.console_font** %font.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console_font** %font.addr, metadata !5342, metadata !DIExpression()), !dbg !5343
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5344, metadata !DIExpression()), !dbg !5345
  call void @llvm.dbg.declare(metadata i32* %charcount, metadata !5346, metadata !DIExpression()), !dbg !5347
  %0 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5348
  %charcount1 = getelementptr inbounds %struct.console_font, %struct.console_font* %0, i32 0, i32 2, !dbg !5349
  %1 = load i32, i32* %charcount1, align 8, !dbg !5349
  store i32 %1, i32* %charcount, align 4, !dbg !5347
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5350, metadata !DIExpression()), !dbg !5351
  %2 = load i8, i8* @vga_video_type, align 1, !dbg !5352
  %conv = zext i8 %2 to i32, !dbg !5352
  %cmp = icmp slt i32 %conv, 32, !dbg !5354
  br i1 %cmp, label %if.then, label %if.end, !dbg !5355

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end:                                           ; preds = %entry
  %3 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5357
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %3, i32 0, i32 0, !dbg !5359
  %4 = load i32, i32* %width, align 8, !dbg !5359
  %cmp3 = icmp ne i32 %4, 8, !dbg !5360
  br i1 %cmp3, label %if.then9, label %lor.lhs.false, !dbg !5361

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, i32* %charcount, align 4, !dbg !5362
  %cmp5 = icmp ne i32 %5, 256, !dbg !5363
  br i1 %cmp5, label %land.lhs.true, label %if.end10, !dbg !5364

land.lhs.true:                                    ; preds = %lor.lhs.false
  %6 = load i32, i32* %charcount, align 4, !dbg !5365
  %cmp7 = icmp ne i32 %6, 512, !dbg !5366
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !5367

if.then9:                                         ; preds = %land.lhs.true, %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end10:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5369
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %7, i32 0, i32 3, !dbg !5370
  %8 = load i8*, i8** %data, align 8, !dbg !5370
  %9 = load i32, i32* %charcount, align 4, !dbg !5371
  %cmp11 = icmp eq i32 %9, 512, !dbg !5372
  %call = call i32 @vgacon_do_font_op(%struct.vgastate* @vgastate, i8* %8, i32 1, i1 zeroext %cmp11) #9, !dbg !5373
  store i32 %call, i32* %rc, align 4, !dbg !5374
  %10 = load i32, i32* %rc, align 4, !dbg !5375
  %tobool = icmp ne i32 %10, 0, !dbg !5375
  br i1 %tobool, label %if.then13, label %if.end14, !dbg !5377

if.then13:                                        ; preds = %if.end10
  %11 = load i32, i32* %rc, align 4, !dbg !5378
  store i32 %11, i32* %retval, align 4, !dbg !5379
  br label %return, !dbg !5379

if.end14:                                         ; preds = %if.end10
  %12 = load i32, i32* %flags.addr, align 4, !dbg !5380
  %and = and i32 %12, 1, !dbg !5382
  %tobool15 = icmp ne i32 %and, 0, !dbg !5382
  br i1 %tobool15, label %if.end18, label %if.then16, !dbg !5383

if.then16:                                        ; preds = %if.end14
  %13 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5384
  %14 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5385
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %14, i32 0, i32 1, !dbg !5386
  %15 = load i32, i32* %height, align 4, !dbg !5386
  %call17 = call i32 @vgacon_adjust_height(%struct.vc_data* %13, i32 %15) #9, !dbg !5387
  store i32 %call17, i32* %rc, align 4, !dbg !5388
  br label %if.end18, !dbg !5389

if.end18:                                         ; preds = %if.then16, %if.end14
  %16 = load i32, i32* %rc, align 4, !dbg !5390
  store i32 %16, i32* %retval, align 4, !dbg !5391
  br label %return, !dbg !5391

return:                                           ; preds = %if.end18, %if.then13, %if.then9, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !5392
  ret i32 %17, !dbg !5392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_font_get(%struct.vc_data* %c, %struct.console_font* %font) #0 !dbg !5393 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.vc_data*, align 8
  %font.addr = alloca %struct.console_font*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  store %struct.console_font* %font, %struct.console_font** %font.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.console_font** %font.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  %0 = load i8, i8* @vga_video_type, align 1, !dbg !5398
  %conv = zext i8 %0 to i32, !dbg !5398
  %cmp = icmp slt i32 %conv, 32, !dbg !5400
  br i1 %cmp, label %if.then, label %if.end, !dbg !5401

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5402
  br label %return, !dbg !5402

if.end:                                           ; preds = %entry
  %1 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5403
  %width = getelementptr inbounds %struct.console_font, %struct.console_font* %1, i32 0, i32 0, !dbg !5404
  store i32 8, i32* %width, align 8, !dbg !5405
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5406
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 27, !dbg !5407
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !5408
  %3 = load i32, i32* %height, align 4, !dbg !5408
  %4 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5409
  %height2 = getelementptr inbounds %struct.console_font, %struct.console_font* %4, i32 0, i32 1, !dbg !5410
  store i32 %3, i32* %height2, align 4, !dbg !5411
  %5 = load i8, i8* @vga_512_chars, align 1, !dbg !5412
  %tobool = trunc i8 %5 to i1, !dbg !5412
  %6 = zext i1 %tobool to i64, !dbg !5412
  %cond = select i1 %tobool, i32 512, i32 256, !dbg !5412
  %7 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5413
  %charcount = getelementptr inbounds %struct.console_font, %struct.console_font* %7, i32 0, i32 2, !dbg !5414
  store i32 %cond, i32* %charcount, align 8, !dbg !5415
  %8 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5416
  %data = getelementptr inbounds %struct.console_font, %struct.console_font* %8, i32 0, i32 3, !dbg !5418
  %9 = load i8*, i8** %data, align 8, !dbg !5418
  %tobool4 = icmp ne i8* %9, null, !dbg !5416
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5419

if.then5:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5420
  br label %return, !dbg !5420

if.end6:                                          ; preds = %if.end
  %10 = load %struct.console_font*, %struct.console_font** %font.addr, align 8, !dbg !5421
  %data7 = getelementptr inbounds %struct.console_font, %struct.console_font* %10, i32 0, i32 3, !dbg !5422
  %11 = load i8*, i8** %data7, align 8, !dbg !5422
  %12 = load i8, i8* @vga_512_chars, align 1, !dbg !5423
  %tobool8 = trunc i8 %12 to i1, !dbg !5423
  %call = call i32 @vgacon_do_font_op(%struct.vgastate* @vgastate, i8* %11, i32 0, i1 zeroext %tobool8) #9, !dbg !5424
  store i32 %call, i32* %retval, align 4, !dbg !5425
  br label %return, !dbg !5425

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !5426
  ret i32 %13, !dbg !5426
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_resize(%struct.vc_data* %c, i32 %width, i32 %height, i32 %user) #0 !dbg !5427 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.vc_data*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %user.addr = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !5432, metadata !DIExpression()), !dbg !5433
  store i32 %user, i32* %user.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %user.addr, metadata !5434, metadata !DIExpression()), !dbg !5435
  %0 = load i32, i32* %width.addr, align 4, !dbg !5436
  %shl = shl i32 %0, 1, !dbg !5438
  %1 = load i32, i32* %height.addr, align 4, !dbg !5439
  %mul = mul i32 %shl, %1, !dbg !5440
  %2 = load i32, i32* @vga_vram_size, align 4, !dbg !5441
  %cmp = icmp ugt i32 %mul, %2, !dbg !5442
  br i1 %cmp, label %if.then, label %if.end, !dbg !5443

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %width.addr, align 4, !dbg !5445
  %rem = urem i32 %3, 2, !dbg !5447
  %tobool = icmp ne i32 %rem, 0, !dbg !5447
  br i1 %tobool, label %if.then9, label %lor.lhs.false, !dbg !5448

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %width.addr, align 4, !dbg !5449
  %5 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 5), align 1, !dbg !5450
  %conv = zext i8 %5 to i32, !dbg !5451
  %cmp1 = icmp ugt i32 %4, %conv, !dbg !5452
  br i1 %cmp1, label %if.then9, label %lor.lhs.false3, !dbg !5453

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %6 = load i32, i32* %height.addr, align 4, !dbg !5454
  %7 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 10), align 1, !dbg !5455
  %conv4 = zext i8 %7 to i32, !dbg !5456
  %8 = load i32, i32* @vga_default_font_height, align 4, !dbg !5457
  %mul5 = mul i32 %conv4, %8, !dbg !5458
  %9 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5459
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 27, !dbg !5460
  %height6 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !5461
  %10 = load i32, i32* %height6, align 4, !dbg !5461
  %div = udiv i32 %mul5, %10, !dbg !5462
  %cmp7 = icmp ugt i32 %6, %div, !dbg !5463
  br i1 %cmp7, label %if.then9, label %if.end11, !dbg !5464

if.then9:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  %11 = load i32, i32* %user.addr, align 4, !dbg !5465
  %tobool10 = icmp ne i32 %11, 0, !dbg !5466
  %12 = zext i1 %tobool10 to i64, !dbg !5466
  %cond = select i1 %tobool10, i32 0, i32 -22, !dbg !5466
  store i32 %cond, i32* %retval, align 4, !dbg !5467
  br label %return, !dbg !5467

if.end11:                                         ; preds = %lor.lhs.false3
  %13 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5468
  %call = call zeroext i1 @con_is_visible(%struct.vc_data* %13) #9, !dbg !5470
  br i1 %call, label %land.lhs.true, label %if.end16, !dbg !5471

land.lhs.true:                                    ; preds = %if.end11
  %14 = load i8, i8* @vga_is_gfx, align 1, !dbg !5472
  %tobool13 = trunc i8 %14 to i1, !dbg !5472
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !5473

if.then14:                                        ; preds = %land.lhs.true
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5474
  %16 = load i32, i32* %width.addr, align 4, !dbg !5475
  %17 = load i32, i32* %height.addr, align 4, !dbg !5476
  %call15 = call i32 @vgacon_doresize(%struct.vc_data* %15, i32 %16, i32 %17) #9, !dbg !5477
  br label %if.end16, !dbg !5477

if.end16:                                         ; preds = %if.then14, %land.lhs.true, %if.end11
  store i32 0, i32* %retval, align 4, !dbg !5478
  br label %return, !dbg !5478

return:                                           ; preds = %if.end16, %if.then9, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5479
  ret i32 %18, !dbg !5479
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_set_palette(%struct.vc_data* %vc, i8* %table) #0 !dbg !5480 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %table.addr = alloca i8*, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !5481, metadata !DIExpression()), !dbg !5482
  store i8* %table, i8** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table.addr, metadata !5483, metadata !DIExpression()), !dbg !5484
  %0 = load i8, i8* @vga_video_type, align 1, !dbg !5485
  %conv = zext i8 %0 to i32, !dbg !5485
  %cmp = icmp ne i32 %conv, 34, !dbg !5487
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5488

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8, i8* @vga_palette_blanked, align 1, !dbg !5489
  %tobool = trunc i8 %1 to i1, !dbg !5489
  br i1 %tobool, label %if.then, label %lor.lhs.false3, !dbg !5490

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5491
  %call = call zeroext i1 @con_is_visible(%struct.vc_data* %2) #9, !dbg !5492
  br i1 %call, label %if.end, label %if.then, !dbg !5493

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  br label %return, !dbg !5494

if.end:                                           ; preds = %lor.lhs.false3
  %3 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !5495
  %4 = load i8*, i8** %table.addr, align 8, !dbg !5496
  call void @vga_set_palette(%struct.vc_data* %3, i8* %4) #9, !dbg !5497
  br label %return, !dbg !5498

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_scrolldelta(%struct.vc_data* %c, i32 %lines) #0 !dbg !5499 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %lines.addr = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5500, metadata !DIExpression()), !dbg !5501
  store i32 %lines, i32* %lines.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lines.addr, metadata !5502, metadata !DIExpression()), !dbg !5503
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5504
  %1 = load i32, i32* %lines.addr, align 4, !dbg !5505
  %2 = load i32, i32* @vga_rolled_over, align 4, !dbg !5506
  %3 = load i64, i64* @vga_vram_base, align 8, !dbg !5507
  %4 = inttoptr i64 %3 to i8*, !dbg !5508
  %5 = load i32, i32* @vga_vram_size, align 4, !dbg !5509
  call void @vc_scrolldelta_helper(%struct.vc_data* %0, i32 %1, i32 %2, i8* %4, i32 %5) #9, !dbg !5510
  %6 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5511
  call void @vga_set_mem_top(%struct.vc_data* %6) #9, !dbg !5512
  ret void, !dbg !5513
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_set_origin(%struct.vc_data* %c) #0 !dbg !5514 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5515, metadata !DIExpression()), !dbg !5516
  %0 = load i8, i8* @vga_is_gfx, align 1, !dbg !5517
  %tobool = trunc i8 %0 to i1, !dbg !5517
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !5519

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* @console_blanked, align 4, !dbg !5520
  %tobool1 = icmp ne i32 %1, 0, !dbg !5520
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !5521

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i8, i8* @vga_palette_blanked, align 1, !dbg !5522
  %tobool2 = trunc i8 %2 to i1, !dbg !5522
  br i1 %tobool2, label %if.end, label %if.then, !dbg !5523

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !5524
  br label %return, !dbg !5524

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load i64, i64* @vga_vram_base, align 8, !dbg !5525
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5526
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 10, !dbg !5527
  store i64 %3, i64* %vc_visible_origin, align 8, !dbg !5528
  %5 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5529
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 8, !dbg !5530
  store i64 %3, i64* %vc_origin, align 8, !dbg !5531
  %6 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5532
  call void @vga_set_mem_top(%struct.vc_data* %6) #9, !dbg !5533
  store i32 0, i32* @vga_rolled_over, align 4, !dbg !5534
  store i32 1, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !5536
  ret i32 %7, !dbg !5536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_save_screen(%struct.vc_data* %c) #0 !dbg !4459 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  %0 = load i32, i32* @vgacon_save_screen.vga_bootup_console, align 4, !dbg !5539
  %tobool = icmp ne i32 %0, 0, !dbg !5539
  br i1 %tobool, label %if.end, label %if.then, !dbg !5541

if.then:                                          ; preds = %entry
  store i32 1, i32* @vgacon_save_screen.vga_bootup_console, align 4, !dbg !5542
  %1 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 0), align 1, !dbg !5544
  %conv = zext i8 %1 to i32, !dbg !5545
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5546
  %state = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 1, !dbg !5547
  %x = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state, i32 0, i32 0, !dbg !5548
  store i32 %conv, i32* %x, align 8, !dbg !5549
  %3 = load i8, i8* getelementptr inbounds (%struct.screen_info, %struct.screen_info* @screen_info, i32 0, i32 1), align 1, !dbg !5550
  %conv1 = zext i8 %3 to i32, !dbg !5551
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5552
  %state2 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 1, !dbg !5553
  %y = getelementptr inbounds %struct.vc_state, %struct.vc_state* %state2, i32 0, i32 1, !dbg !5554
  store i32 %conv1, i32* %y, align 4, !dbg !5555
  br label %if.end, !dbg !5556

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* @vga_is_gfx, align 1, !dbg !5557
  %tobool3 = trunc i8 %5 to i1, !dbg !5557
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !5559

if.then4:                                         ; preds = %if.end
  %6 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5560
  %vc_screenbuf = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 14, !dbg !5561
  %7 = load i16*, i16** %vc_screenbuf, align 8, !dbg !5561
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5562
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 8, !dbg !5563
  %9 = load i64, i64* %vc_origin, align 8, !dbg !5563
  %10 = inttoptr i64 %9 to i16*, !dbg !5564
  %11 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5565
  %vc_screenbuf_size = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 15, !dbg !5566
  %12 = load i32, i32* %vc_screenbuf_size, align 8, !dbg !5566
  %13 = load i32, i32* @vga_vram_size, align 4, !dbg !5567
  %cmp = icmp ugt i32 %12, %13, !dbg !5568
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5565

cond.true:                                        ; preds = %if.then4
  %14 = load i32, i32* @vga_vram_size, align 4, !dbg !5569
  br label %cond.end, !dbg !5565

cond.false:                                       ; preds = %if.then4
  %15 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5570
  %vc_screenbuf_size6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 15, !dbg !5571
  %16 = load i32, i32* %vc_screenbuf_size6, align 8, !dbg !5571
  br label %cond.end, !dbg !5565

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %16, %cond.false ], !dbg !5565
  call void @scr_memcpyw(i16* %7, i16* %10, i32 %cond) #9, !dbg !5572
  br label %if.end7, !dbg !5572

if.end7:                                          ; preds = %cond.end, %if.end
  ret void, !dbg !5573
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vgacon_build_attr(%struct.vc_data* %c, i8 zeroext %color, i32 %intensity, i1 zeroext %blink, i1 zeroext %underline, i1 zeroext %reverse, i1 zeroext %italic) #0 !dbg !5574 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %color.addr = alloca i8, align 1
  %intensity.addr = alloca i32, align 4
  %blink.addr = alloca i8, align 1
  %underline.addr = alloca i8, align 1
  %reverse.addr = alloca i8, align 1
  %italic.addr = alloca i8, align 1
  %attr = alloca i8, align 1
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5575, metadata !DIExpression()), !dbg !5576
  store i8 %color, i8* %color.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %color.addr, metadata !5577, metadata !DIExpression()), !dbg !5578
  store i32 %intensity, i32* %intensity.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intensity.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  %frombool = zext i1 %blink to i8
  store i8 %frombool, i8* %blink.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %blink.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  %frombool1 = zext i1 %underline to i8
  store i8 %frombool1, i8* %underline.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %underline.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  %frombool2 = zext i1 %reverse to i8
  store i8 %frombool2, i8* %reverse.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reverse.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  %frombool3 = zext i1 %italic to i8
  store i8 %frombool3, i8* %italic.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %italic.addr, metadata !5587, metadata !DIExpression()), !dbg !5588
  call void @llvm.dbg.declare(metadata i8* %attr, metadata !5589, metadata !DIExpression()), !dbg !5590
  %0 = load i8, i8* %color.addr, align 1, !dbg !5591
  store i8 %0, i8* %attr, align 1, !dbg !5590
  %1 = load i8, i8* @vga_can_do_color, align 1, !dbg !5592
  %tobool = trunc i8 %1 to i1, !dbg !5592
  br i1 %tobool, label %if.then, label %if.end25, !dbg !5594

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %italic.addr, align 1, !dbg !5595
  %tobool4 = trunc i8 %2 to i1, !dbg !5595
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5598

if.then5:                                         ; preds = %if.then
  %3 = load i8, i8* %attr, align 1, !dbg !5599
  %conv = zext i8 %3 to i32, !dbg !5599
  %and = and i32 %conv, 240, !dbg !5600
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5601
  %vc_itcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %4, i32 0, i32 20, !dbg !5602
  %5 = load i8, i8* %vc_itcolor, align 8, !dbg !5602
  %conv6 = zext i8 %5 to i32, !dbg !5601
  %or = or i32 %and, %conv6, !dbg !5603
  %conv7 = trunc i32 %or to i8, !dbg !5604
  store i8 %conv7, i8* %attr, align 1, !dbg !5605
  br label %if.end24, !dbg !5606

if.else:                                          ; preds = %if.then
  %6 = load i8, i8* %underline.addr, align 1, !dbg !5607
  %tobool8 = trunc i8 %6 to i1, !dbg !5607
  br i1 %tobool8, label %if.then9, label %if.else15, !dbg !5609

if.then9:                                         ; preds = %if.else
  %7 = load i8, i8* %attr, align 1, !dbg !5610
  %conv10 = zext i8 %7 to i32, !dbg !5610
  %and11 = and i32 %conv10, 240, !dbg !5611
  %8 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5612
  %vc_ulcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %8, i32 0, i32 19, !dbg !5613
  %9 = load i8, i8* %vc_ulcolor, align 1, !dbg !5613
  %conv12 = zext i8 %9 to i32, !dbg !5612
  %or13 = or i32 %and11, %conv12, !dbg !5614
  %conv14 = trunc i32 %or13 to i8, !dbg !5615
  store i8 %conv14, i8* %attr, align 1, !dbg !5616
  br label %if.end23, !dbg !5617

if.else15:                                        ; preds = %if.else
  %10 = load i32, i32* %intensity.addr, align 4, !dbg !5618
  %cmp = icmp eq i32 %10, 0, !dbg !5620
  br i1 %cmp, label %if.then17, label %if.end, !dbg !5621

if.then17:                                        ; preds = %if.else15
  %11 = load i8, i8* %attr, align 1, !dbg !5622
  %conv18 = zext i8 %11 to i32, !dbg !5622
  %and19 = and i32 %conv18, 240, !dbg !5623
  %12 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5624
  %vc_halfcolor = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 21, !dbg !5625
  %13 = load i8, i8* %vc_halfcolor, align 1, !dbg !5625
  %conv20 = zext i8 %13 to i32, !dbg !5624
  %or21 = or i32 %and19, %conv20, !dbg !5626
  %conv22 = trunc i32 %or21 to i8, !dbg !5627
  store i8 %conv22, i8* %attr, align 1, !dbg !5628
  br label %if.end, !dbg !5629

if.end:                                           ; preds = %if.then17, %if.else15
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then9
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then5
  br label %if.end25, !dbg !5630

if.end25:                                         ; preds = %if.end24, %entry
  %14 = load i8, i8* %reverse.addr, align 1, !dbg !5631
  %tobool26 = trunc i8 %14 to i1, !dbg !5631
  br i1 %tobool26, label %if.then27, label %if.end36, !dbg !5633

if.then27:                                        ; preds = %if.end25
  %15 = load i8, i8* %attr, align 1, !dbg !5634
  %conv28 = zext i8 %15 to i32, !dbg !5635
  %and29 = and i32 %conv28, 136, !dbg !5636
  %16 = load i8, i8* %attr, align 1, !dbg !5637
  %conv30 = zext i8 %16 to i32, !dbg !5638
  %shr = ashr i32 %conv30, 4, !dbg !5639
  %17 = load i8, i8* %attr, align 1, !dbg !5640
  %conv31 = zext i8 %17 to i32, !dbg !5641
  %shl = shl i32 %conv31, 4, !dbg !5642
  %or32 = or i32 %shr, %shl, !dbg !5643
  %and33 = and i32 %or32, 119, !dbg !5644
  %or34 = or i32 %and29, %and33, !dbg !5645
  %conv35 = trunc i32 %or34 to i8, !dbg !5646
  store i8 %conv35, i8* %attr, align 1, !dbg !5647
  br label %if.end36, !dbg !5648

if.end36:                                         ; preds = %if.then27, %if.end25
  %18 = load i8, i8* %blink.addr, align 1, !dbg !5649
  %tobool37 = trunc i8 %18 to i1, !dbg !5649
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !5651

if.then38:                                        ; preds = %if.end36
  %19 = load i8, i8* %attr, align 1, !dbg !5652
  %conv39 = zext i8 %19 to i32, !dbg !5652
  %xor = xor i32 %conv39, 128, !dbg !5652
  %conv40 = trunc i32 %xor to i8, !dbg !5652
  store i8 %conv40, i8* %attr, align 1, !dbg !5652
  br label %if.end41, !dbg !5653

if.end41:                                         ; preds = %if.then38, %if.end36
  %20 = load i32, i32* %intensity.addr, align 4, !dbg !5654
  %cmp42 = icmp eq i32 %20, 2, !dbg !5656
  br i1 %cmp42, label %if.then44, label %if.end48, !dbg !5657

if.then44:                                        ; preds = %if.end41
  %21 = load i8, i8* %attr, align 1, !dbg !5658
  %conv45 = zext i8 %21 to i32, !dbg !5658
  %xor46 = xor i32 %conv45, 8, !dbg !5658
  %conv47 = trunc i32 %xor46 to i8, !dbg !5658
  store i8 %conv47, i8* %attr, align 1, !dbg !5658
  br label %if.end48, !dbg !5659

if.end48:                                         ; preds = %if.then44, %if.end41
  %22 = load i8, i8* @vga_can_do_color, align 1, !dbg !5660
  %tobool49 = trunc i8 %22 to i1, !dbg !5660
  br i1 %tobool49, label %if.end75, label %if.then50, !dbg !5662

if.then50:                                        ; preds = %if.end48
  %23 = load i8, i8* %italic.addr, align 1, !dbg !5663
  %tobool51 = trunc i8 %23 to i1, !dbg !5663
  br i1 %tobool51, label %if.then52, label %if.else57, !dbg !5666

if.then52:                                        ; preds = %if.then50
  %24 = load i8, i8* %attr, align 1, !dbg !5667
  %conv53 = zext i8 %24 to i32, !dbg !5667
  %and54 = and i32 %conv53, 248, !dbg !5668
  %or55 = or i32 %and54, 2, !dbg !5669
  %conv56 = trunc i32 %or55 to i8, !dbg !5670
  store i8 %conv56, i8* %attr, align 1, !dbg !5671
  br label %if.end74, !dbg !5672

if.else57:                                        ; preds = %if.then50
  %25 = load i8, i8* %underline.addr, align 1, !dbg !5673
  %tobool58 = trunc i8 %25 to i1, !dbg !5673
  br i1 %tobool58, label %if.then59, label %if.else64, !dbg !5675

if.then59:                                        ; preds = %if.else57
  %26 = load i8, i8* %attr, align 1, !dbg !5676
  %conv60 = zext i8 %26 to i32, !dbg !5676
  %and61 = and i32 %conv60, 248, !dbg !5677
  %or62 = or i32 %and61, 1, !dbg !5678
  %conv63 = trunc i32 %or62 to i8, !dbg !5679
  store i8 %conv63, i8* %attr, align 1, !dbg !5680
  br label %if.end73, !dbg !5681

if.else64:                                        ; preds = %if.else57
  %27 = load i32, i32* %intensity.addr, align 4, !dbg !5682
  %cmp65 = icmp eq i32 %27, 0, !dbg !5684
  br i1 %cmp65, label %if.then67, label %if.end72, !dbg !5685

if.then67:                                        ; preds = %if.else64
  %28 = load i8, i8* %attr, align 1, !dbg !5686
  %conv68 = zext i8 %28 to i32, !dbg !5686
  %and69 = and i32 %conv68, 240, !dbg !5687
  %or70 = or i32 %and69, 8, !dbg !5688
  %conv71 = trunc i32 %or70 to i8, !dbg !5689
  store i8 %conv71, i8* %attr, align 1, !dbg !5690
  br label %if.end72, !dbg !5691

if.end72:                                         ; preds = %if.then67, %if.else64
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then59
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then52
  br label %if.end75, !dbg !5692

if.end75:                                         ; preds = %if.end74, %if.end48
  %29 = load i8, i8* %attr, align 1, !dbg !5693
  ret i8 %29, !dbg !5694
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_invert_region(%struct.vc_data* %c, i16* %p, i32 %count) #0 !dbg !5695 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %p.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  %col = alloca i8, align 1
  %a = alloca i16, align 2
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5696, metadata !DIExpression()), !dbg !5697
  store i16* %p, i16** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %p.addr, metadata !5698, metadata !DIExpression()), !dbg !5699
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !5700, metadata !DIExpression()), !dbg !5701
  call void @llvm.dbg.declare(metadata i8* %col, metadata !5702, metadata !DIExpression()), !dbg !5704
  %0 = load i8, i8* @vga_can_do_color, align 1, !dbg !5705
  %tobool = trunc i8 %0 to i1, !dbg !5705
  %frombool = zext i1 %tobool to i8, !dbg !5704
  store i8 %frombool, i8* %col, align 1, !dbg !5704
  br label %while.cond, !dbg !5706

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %count.addr, align 4, !dbg !5707
  %dec = add i32 %1, -1, !dbg !5707
  store i32 %dec, i32* %count.addr, align 4, !dbg !5707
  %tobool1 = icmp ne i32 %1, 0, !dbg !5706
  br i1 %tobool1, label %while.body, label %while.end, !dbg !5706

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i16* %a, metadata !5708, metadata !DIExpression()), !dbg !5710
  %2 = load i16*, i16** %p.addr, align 8, !dbg !5711
  %3 = load i16, i16* %2, align 2, !dbg !5711
  store i16 %3, i16* %a, align 2, !dbg !5710
  %4 = load i8, i8* %col, align 1, !dbg !5712
  %tobool2 = trunc i8 %4 to i1, !dbg !5712
  br i1 %tobool2, label %if.then, label %if.else, !dbg !5714

if.then:                                          ; preds = %while.body
  %5 = load i16, i16* %a, align 2, !dbg !5715
  %conv = zext i16 %5 to i32, !dbg !5716
  %and = and i32 %conv, 35071, !dbg !5717
  %6 = load i16, i16* %a, align 2, !dbg !5718
  %conv3 = zext i16 %6 to i32, !dbg !5719
  %and4 = and i32 %conv3, 28672, !dbg !5720
  %shr = ashr i32 %and4, 4, !dbg !5721
  %or = or i32 %and, %shr, !dbg !5722
  %7 = load i16, i16* %a, align 2, !dbg !5723
  %conv5 = zext i16 %7 to i32, !dbg !5724
  %and6 = and i32 %conv5, 1792, !dbg !5725
  %shl = shl i32 %and6, 4, !dbg !5726
  %or7 = or i32 %or, %shl, !dbg !5727
  %conv8 = trunc i32 %or7 to i16, !dbg !5728
  store i16 %conv8, i16* %a, align 2, !dbg !5729
  br label %if.end, !dbg !5730

if.else:                                          ; preds = %while.body
  %8 = load i16, i16* %a, align 2, !dbg !5731
  %conv9 = zext i16 %8 to i32, !dbg !5731
  %and10 = and i32 %conv9, 1792, !dbg !5732
  %cmp = icmp eq i32 %and10, 256, !dbg !5733
  %9 = zext i1 %cmp to i64, !dbg !5734
  %cond = select i1 %cmp, i32 28672, i32 30464, !dbg !5734
  %10 = load i16, i16* %a, align 2, !dbg !5735
  %conv12 = zext i16 %10 to i32, !dbg !5735
  %xor = xor i32 %conv12, %cond, !dbg !5735
  %conv13 = trunc i32 %xor to i16, !dbg !5735
  store i16 %conv13, i16* %a, align 2, !dbg !5735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load i16, i16* %a, align 2, !dbg !5736
  %12 = load i16*, i16** %p.addr, align 8, !dbg !5736
  %incdec.ptr = getelementptr i16, i16* %12, i32 1, !dbg !5736
  store i16* %incdec.ptr, i16** %p.addr, align 8, !dbg !5736
  store i16 %11, i16* %12, align 2, !dbg !5736
  br label %while.cond, !dbg !5706, !llvm.loop !5737

while.end:                                        ; preds = %while.cond
  ret void, !dbg !5739
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone
declare dso_local i32 @request_resource(%struct.resource*, %struct.resource*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb_p(i32 %port) #0 !dbg !5740 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5744, metadata !DIExpression()), !dbg !5745
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5746, metadata !DIExpression()), !dbg !5745
  %0 = load i32, i32* %port.addr, align 4, !dbg !5745
  %call = call zeroext i8 @inb(i32 %0) #9, !dbg !5745
  store i8 %call, i8* %value, align 1, !dbg !5745
  call void @slow_down_io() #9, !dbg !5745
  %1 = load i8, i8* %value, align 1, !dbg !5745
  ret i8 %1, !dbg !5745
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb_p(i8 zeroext %value, i32 %port) #0 !dbg !5747 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5750, metadata !DIExpression()), !dbg !5751
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5752, metadata !DIExpression()), !dbg !5751
  %0 = load i8, i8* %value.addr, align 1, !dbg !5751
  %1 = load i32, i32* %port.addr, align 4, !dbg !5751
  call void @outb(i8 zeroext %0, i32 %1) #9, !dbg !5751
  call void @slow_down_io() #9, !dbg !5751
  ret void, !dbg !5751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @phys_to_virt(i64 %address) #0 !dbg !5753 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, i64* %address.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %address.addr, metadata !5756, metadata !DIExpression()), !dbg !5757
  %0 = load i64, i64* %address.addr, align 8, !dbg !5758
  %1 = load i64, i64* @page_offset_base, align 8, !dbg !5758
  %add = add i64 %0, %1, !dbg !5758
  %2 = inttoptr i64 %add to i8*, !dbg !5758
  ret i8* %2, !dbg !5759
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !5760 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5761, metadata !DIExpression()), !dbg !5762
  call void @llvm.dbg.declare(metadata i8* %value, metadata !5763, metadata !DIExpression()), !dbg !5762
  %0 = load i32, i32* %port.addr, align 4, !dbg !5762
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #6, !dbg !5762, !srcloc !5764
  store i8 %1, i8* %value, align 1, !dbg !5762
  %2 = load i8, i8* %value, align 1, !dbg !5762
  ret i8 %2, !dbg !5762
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @slow_down_io() #0 !dbg !5765 {
entry:
  %0 = load void ()*, void ()** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 2, i32 0), align 8, !dbg !5767
  call void %0() #9, !dbg !5768
  ret void, !dbg !5769
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outb(i8 zeroext %value, i32 %port) #0 !dbg !5770 {
entry:
  %value.addr = alloca i8, align 1
  %port.addr = alloca i32, align 4
  store i8 %value, i8* %value.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %value.addr, metadata !5771, metadata !DIExpression()), !dbg !5772
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5773, metadata !DIExpression()), !dbg !5772
  %0 = load i8, i8* %value.addr, align 1, !dbg !5772
  %1 = load i32, i32* %port.addr, align 4, !dbg !5772
  call void asm sideeffect "outb ${0:b}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i8 %0, i32 %1) #6, !dbg !5772, !srcloc !5774
  ret void, !dbg !5772
}

; Function Attrs: noredzone
declare dso_local i32 @vc_resize(%struct.vc_data*, i32, i32) #4

; Function Attrs: noredzone
declare dso_local void @con_free_unimap(%struct.vc_data*) #4

; Function Attrs: noredzone
declare dso_local i32 @con_set_default_unimap(%struct.vc_data*) #4

; Function Attrs: noredzone
declare dso_local zeroext i1 @con_is_visible(%struct.vc_data*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_set_mem_top(%struct.vc_data* %c) #0 !dbg !5775 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5776, metadata !DIExpression()), !dbg !5777
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5778
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 10, !dbg !5779
  %1 = load i64, i64* %vc_visible_origin, align 8, !dbg !5779
  %2 = load i64, i64* @vga_vram_base, align 8, !dbg !5780
  %sub = sub i64 %1, %2, !dbg !5781
  %div = udiv i64 %sub, 2, !dbg !5782
  %conv = trunc i64 %div to i32, !dbg !5783
  call void @write_vga(i8 zeroext 12, i32 %conv) #9, !dbg !5784
  ret void, !dbg !5785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @write_vga(i8 zeroext %reg, i32 %val) #0 !dbg !5786 {
entry:
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i32, align 4
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy4 = alloca i64, align 8
  %__dummy25 = alloca i64, align 8
  %tmp8 = alloca i32, align 4
  %__dummy26 = alloca i64, align 8
  %__dummy227 = alloca i64, align 8
  %tmp30 = alloca i32, align 4
  %__dummy34 = alloca i64, align 8
  %__dummy235 = alloca i64, align 8
  %tmp38 = alloca i32, align 4
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !5791, metadata !DIExpression()), !dbg !5792
  call void @llvm.dbg.declare(metadata i32* %v1, metadata !5793, metadata !DIExpression()), !dbg !5794
  call void @llvm.dbg.declare(metadata i32* %v2, metadata !5795, metadata !DIExpression()), !dbg !5796
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5797, metadata !DIExpression()), !dbg !5798
  br label %do.body, !dbg !5799

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5800, metadata !DIExpression()), !dbg !5803
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5804, metadata !DIExpression()), !dbg !5803
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !5803
  %conv = zext i1 %cmp to i32, !dbg !5803
  store i32 1, i32* %tmp, align 4, !dbg !5803
  %0 = load i32, i32* %tmp, align 4, !dbg !5803
  br label %do.body1, !dbg !5805

do.body1:                                         ; preds = %do.body
  br label %do.body2, !dbg !5806

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !5808

do.body3:                                         ; preds = %do.body2
  call void @llvm.dbg.declare(metadata i64* %__dummy4, metadata !5810, metadata !DIExpression()), !dbg !5813
  call void @llvm.dbg.declare(metadata i64* %__dummy25, metadata !5814, metadata !DIExpression()), !dbg !5813
  %cmp6 = icmp eq i64* %__dummy4, %__dummy25, !dbg !5813
  %conv7 = zext i1 %cmp6 to i32, !dbg !5813
  store i32 1, i32* %tmp8, align 4, !dbg !5813
  %1 = load i32, i32* %tmp8, align 4, !dbg !5813
  %call = call i64 @arch_local_irq_save() #9, !dbg !5815
  store i64 %call, i64* %flags, align 8, !dbg !5815
  br label %do.end, !dbg !5815

do.end:                                           ; preds = %do.body3
  br label %do.end9, !dbg !5808

do.end9:                                          ; preds = %do.end
  br label %do.body10, !dbg !5806

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5816, !srcloc !5818
  br label %do.body11, !dbg !5816

do.body11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5819

do.end12:                                         ; preds = %do.body11
  br label %do.end13, !dbg !5816

do.end13:                                         ; preds = %do.end12
  br label %do.end14, !dbg !5806

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !5805

do.end15:                                         ; preds = %do.end14
  %2 = load i8, i8* %reg.addr, align 1, !dbg !5821
  %conv16 = zext i8 %2 to i32, !dbg !5821
  %3 = load i32, i32* %val.addr, align 4, !dbg !5822
  %and = and i32 %3, 65280, !dbg !5823
  %add = add i32 %conv16, %and, !dbg !5824
  store i32 %add, i32* %v1, align 4, !dbg !5825
  %4 = load i8, i8* %reg.addr, align 1, !dbg !5826
  %conv17 = zext i8 %4 to i32, !dbg !5826
  %add18 = add i32 %conv17, 1, !dbg !5827
  %5 = load i32, i32* %val.addr, align 4, !dbg !5828
  %shl = shl i32 %5, 8, !dbg !5829
  %and19 = and i32 %shl, 65280, !dbg !5830
  %add20 = add i32 %add18, %and19, !dbg !5831
  store i32 %add20, i32* %v2, align 4, !dbg !5832
  %6 = load i32, i32* %v1, align 4, !dbg !5833
  %conv21 = trunc i32 %6 to i16, !dbg !5833
  %7 = load i16, i16* @vga_video_port_reg, align 2, !dbg !5834
  %conv22 = zext i16 %7 to i32, !dbg !5834
  call void @outw(i16 zeroext %conv21, i32 %conv22) #9, !dbg !5835
  %8 = load i32, i32* %v2, align 4, !dbg !5836
  %conv23 = trunc i32 %8 to i16, !dbg !5836
  %9 = load i16, i16* @vga_video_port_reg, align 2, !dbg !5837
  %conv24 = zext i16 %9 to i32, !dbg !5837
  call void @outw(i16 zeroext %conv23, i32 %conv24) #9, !dbg !5838
  br label %do.body25, !dbg !5839

do.body25:                                        ; preds = %do.end15
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !5840, metadata !DIExpression()), !dbg !5843
  call void @llvm.dbg.declare(metadata i64* %__dummy227, metadata !5844, metadata !DIExpression()), !dbg !5843
  %cmp28 = icmp eq i64* %__dummy26, %__dummy227, !dbg !5843
  %conv29 = zext i1 %cmp28 to i32, !dbg !5843
  store i32 1, i32* %tmp30, align 4, !dbg !5843
  %10 = load i32, i32* %tmp30, align 4, !dbg !5843
  br label %do.body31, !dbg !5845

do.body31:                                        ; preds = %do.body25
  br label %do.body32, !dbg !5846

do.body32:                                        ; preds = %do.body31
  br label %do.body33, !dbg !5848

do.body33:                                        ; preds = %do.body32
  call void @llvm.dbg.declare(metadata i64* %__dummy34, metadata !5850, metadata !DIExpression()), !dbg !5853
  call void @llvm.dbg.declare(metadata i64* %__dummy235, metadata !5854, metadata !DIExpression()), !dbg !5853
  %cmp36 = icmp eq i64* %__dummy34, %__dummy235, !dbg !5853
  %conv37 = zext i1 %cmp36 to i32, !dbg !5853
  store i32 1, i32* %tmp38, align 4, !dbg !5853
  %11 = load i32, i32* %tmp38, align 4, !dbg !5853
  %12 = load i64, i64* %flags, align 8, !dbg !5855
  call void @arch_local_irq_restore(i64 %12) #9, !dbg !5855
  br label %do.end39, !dbg !5855

do.end39:                                         ; preds = %do.body33
  br label %do.end40, !dbg !5848

do.end40:                                         ; preds = %do.end39
  br label %do.body41, !dbg !5846

do.body41:                                        ; preds = %do.end40
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5856, !srcloc !5858
  br label %do.body42, !dbg !5856

do.body42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !5859

do.end43:                                         ; preds = %do.body42
  br label %do.end44, !dbg !5856

do.end44:                                         ; preds = %do.end43
  br label %do.end45, !dbg !5846

do.end45:                                         ; preds = %do.end44
  br label %do.end46, !dbg !5845

do.end46:                                         ; preds = %do.end45
  ret void, !dbg !5861
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !5862 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !5865, metadata !DIExpression()), !dbg !5866
  %call = call i64 @arch_local_save_flags() #9, !dbg !5867
  store i64 %call, i64* %f, align 8, !dbg !5868
  call void @arch_local_irq_disable() #9, !dbg !5869
  %0 = load i64, i64* %f, align 8, !dbg !5870
  ret i64 %0, !dbg !5871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @outw(i16 zeroext %value, i32 %port) #0 !dbg !5872 {
entry:
  %value.addr = alloca i16, align 2
  %port.addr = alloca i32, align 4
  store i16 %value, i16* %value.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %value.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !5877, metadata !DIExpression()), !dbg !5876
  %0 = load i16, i16* %value.addr, align 2, !dbg !5876
  %1 = load i32, i32* %port.addr, align 4, !dbg !5876
  call void asm sideeffect "outw ${0:w}, ${1:w}", "{ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %1) #6, !dbg !5876, !srcloc !5878
  ret void, !dbg !5876
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !5879 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5884, metadata !DIExpression()), !dbg !5886
  %0 = load i64, i64* %__edi, align 8, !dbg !5886
  store i64 %0, i64* %__edi, align 8, !dbg !5886
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5887, metadata !DIExpression()), !dbg !5886
  %1 = load i64, i64* %__esi, align 8, !dbg !5886
  store i64 %1, i64* %__esi, align 8, !dbg !5886
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5888, metadata !DIExpression()), !dbg !5886
  %2 = load i64, i64* %__edx, align 8, !dbg !5886
  store i64 %2, i64* %__edx, align 8, !dbg !5886
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5889, metadata !DIExpression()), !dbg !5886
  %3 = load i64, i64* %__ecx, align 8, !dbg !5886
  store i64 %3, i64* %__ecx, align 8, !dbg !5886
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5890, metadata !DIExpression()), !dbg !5886
  %4 = load i64, i64* %__eax, align 8, !dbg !5886
  store i64 %4, i64* %__eax, align 8, !dbg !5886
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !5886
  %6 = call i64 @llvm.read_register.i64(metadata !4460), !dbg !5886
  %7 = load i64, i64* %f.addr, align 8, !dbg !5886
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #6, !dbg !5886, !srcloc !5891
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !5886
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !5886
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5886
  call void @llvm.write_register.i64(metadata !4460, i64 %asmresult1), !dbg !5886
  ret void, !dbg !5892
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !5893 {
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
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !5894, metadata !DIExpression()), !dbg !5896
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5897, metadata !DIExpression()), !dbg !5896
  %0 = load i64, i64* %__edi, align 8, !dbg !5896
  store i64 %0, i64* %__edi, align 8, !dbg !5896
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5898, metadata !DIExpression()), !dbg !5896
  %1 = load i64, i64* %__esi, align 8, !dbg !5896
  store i64 %1, i64* %__esi, align 8, !dbg !5896
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5899, metadata !DIExpression()), !dbg !5896
  %2 = load i64, i64* %__edx, align 8, !dbg !5896
  store i64 %2, i64* %__edx, align 8, !dbg !5896
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5900, metadata !DIExpression()), !dbg !5896
  %3 = load i64, i64* %__ecx, align 8, !dbg !5896
  store i64 %3, i64* %__ecx, align 8, !dbg !5896
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5901, metadata !DIExpression()), !dbg !5896
  %4 = load i64, i64* %__eax, align 8, !dbg !5896
  store i64 %4, i64* %__eax, align 8, !dbg !5896
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !5896
  %6 = call i64 @llvm.read_register.i64(metadata !4460), !dbg !5902
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #6, !dbg !5902, !srcloc !5905
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5902
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5902
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5902
  call void @llvm.write_register.i64(metadata !4460, i64 %asmresult1), !dbg !5902
  %8 = load i64, i64* %__eax, align 8, !dbg !5902
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !5906, metadata !DIExpression()), !dbg !5908
  store i64 -1, i64* %__mask, align 8, !dbg !5908
  %9 = load i64, i64* %__mask, align 8, !dbg !5908
  store i64 %9, i64* %tmp, align 8, !dbg !5908
  %10 = load i64, i64* %tmp, align 8, !dbg !5908
  %and = and i64 %8, %10, !dbg !5902
  store i64 %and, i64* %__ret, align 8, !dbg !5902
  %11 = load i64, i64* %__ret, align 8, !dbg !5896
  store i64 %11, i64* %tmp2, align 8, !dbg !5909
  %12 = load i64, i64* %tmp2, align 8, !dbg !5896
  ret i64 %12, !dbg !5910
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !5911 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !5912, metadata !DIExpression()), !dbg !5914
  %0 = load i64, i64* %__edi, align 8, !dbg !5914
  store i64 %0, i64* %__edi, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !5915, metadata !DIExpression()), !dbg !5914
  %1 = load i64, i64* %__esi, align 8, !dbg !5914
  store i64 %1, i64* %__esi, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !5916, metadata !DIExpression()), !dbg !5914
  %2 = load i64, i64* %__edx, align 8, !dbg !5914
  store i64 %2, i64* %__edx, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !5917, metadata !DIExpression()), !dbg !5914
  %3 = load i64, i64* %__ecx, align 8, !dbg !5914
  store i64 %3, i64* %__ecx, align 8, !dbg !5914
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !5918, metadata !DIExpression()), !dbg !5914
  %4 = load i64, i64* %__eax, align 8, !dbg !5914
  store i64 %4, i64* %__eax, align 8, !dbg !5914
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !5914
  %6 = call i64 @llvm.read_register.i64(metadata !4460), !dbg !5914
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #6, !dbg !5914, !srcloc !5919
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !5914
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !5914
  store i64 %asmresult, i64* %__eax, align 8, !dbg !5914
  call void @llvm.write_register.i64(metadata !4460, i64 %asmresult1), !dbg !5914
  ret void, !dbg !5920
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_restore_screen(%struct.vc_data* %c) #0 !dbg !5921 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !5922, metadata !DIExpression()), !dbg !5923
  %0 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5924
  %vc_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 8, !dbg !5926
  %1 = load i64, i64* %vc_origin, align 8, !dbg !5926
  %2 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5927
  %vc_visible_origin = getelementptr inbounds %struct.vc_data, %struct.vc_data* %2, i32 0, i32 10, !dbg !5928
  %3 = load i64, i64* %vc_visible_origin, align 8, !dbg !5928
  %cmp = icmp ne i64 %1, %3, !dbg !5929
  br i1 %cmp, label %if.then, label %if.end, !dbg !5930

if.then:                                          ; preds = %entry
  %4 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !5931
  call void @vgacon_scrolldelta(%struct.vc_data* %4, i32 0) #9, !dbg !5932
  br label %if.end, !dbg !5932

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5933
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vgacon_set_cursor_size(i32 %xpos, i32 %from, i32 %to) #0 !dbg !5934 {
entry:
  %xpos.addr = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %curs = alloca i32, align 4
  %cure = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__dummy40 = alloca i64, align 8
  %__dummy241 = alloca i64, align 8
  %tmp44 = alloca i32, align 4
  %__dummy48 = alloca i64, align 8
  %__dummy249 = alloca i64, align 8
  %tmp52 = alloca i32, align 4
  store i32 %xpos, i32* %xpos.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %xpos.addr, metadata !5937, metadata !DIExpression()), !dbg !5938
  store i32 %from, i32* %from.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %from.addr, metadata !5939, metadata !DIExpression()), !dbg !5940
  store i32 %to, i32* %to.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %to.addr, metadata !5941, metadata !DIExpression()), !dbg !5942
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !5943, metadata !DIExpression()), !dbg !5944
  call void @llvm.dbg.declare(metadata i32* %curs, metadata !5945, metadata !DIExpression()), !dbg !5946
  call void @llvm.dbg.declare(metadata i32* %cure, metadata !5947, metadata !DIExpression()), !dbg !5948
  %0 = load i32, i32* %from.addr, align 4, !dbg !5949
  %1 = load i32, i32* @cursor_size_lastfrom, align 4, !dbg !5951
  %cmp = icmp eq i32 %0, %1, !dbg !5952
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5953

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %to.addr, align 4, !dbg !5954
  %3 = load i32, i32* @cursor_size_lastto, align 4, !dbg !5955
  %cmp1 = icmp eq i32 %2, %3, !dbg !5956
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5957

if.then:                                          ; preds = %land.lhs.true
  br label %do.end60, !dbg !5958

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %from.addr, align 4, !dbg !5959
  store i32 %4, i32* @cursor_size_lastfrom, align 4, !dbg !5960
  %5 = load i32, i32* %to.addr, align 4, !dbg !5961
  store i32 %5, i32* @cursor_size_lastto, align 4, !dbg !5962
  br label %do.body, !dbg !5963

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !5964, metadata !DIExpression()), !dbg !5967
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !5968, metadata !DIExpression()), !dbg !5967
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !5967
  %conv = zext i1 %cmp2 to i32, !dbg !5967
  store i32 1, i32* %tmp, align 4, !dbg !5967
  %6 = load i32, i32* %tmp, align 4, !dbg !5967
  br label %do.body3, !dbg !5969

do.body3:                                         ; preds = %do.body
  br label %do.body4, !dbg !5970

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !5972

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !5974, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !5978, metadata !DIExpression()), !dbg !5977
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !5977
  %conv9 = zext i1 %cmp8 to i32, !dbg !5977
  store i32 1, i32* %tmp10, align 4, !dbg !5977
  %7 = load i32, i32* %tmp10, align 4, !dbg !5977
  %call = call i64 @arch_local_irq_save() #9, !dbg !5979
  store i64 %call, i64* %flags, align 8, !dbg !5979
  br label %do.end, !dbg !5979

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !5972

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !5970

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !5980, !srcloc !5982
  br label %do.body13, !dbg !5980

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5983

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !5980

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !5970

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !5969

do.end17:                                         ; preds = %do.end16
  %8 = load i8, i8* @vga_video_type, align 1, !dbg !5985
  %conv18 = zext i8 %8 to i32, !dbg !5985
  %cmp19 = icmp sge i32 %conv18, 34, !dbg !5987
  br i1 %cmp19, label %if.then21, label %if.else, !dbg !5988

if.then21:                                        ; preds = %do.end17
  %9 = load i16, i16* @vga_video_port_reg, align 2, !dbg !5989
  %conv22 = zext i16 %9 to i32, !dbg !5989
  call void @outb_p(i8 zeroext 10, i32 %conv22) #9, !dbg !5991
  %10 = load i16, i16* @vga_video_port_val, align 2, !dbg !5992
  %conv23 = zext i16 %10 to i32, !dbg !5992
  %call24 = call zeroext i8 @inb_p(i32 %conv23) #9, !dbg !5993
  %conv25 = zext i8 %call24 to i32, !dbg !5993
  store i32 %conv25, i32* %curs, align 4, !dbg !5994
  %11 = load i16, i16* @vga_video_port_reg, align 2, !dbg !5995
  %conv26 = zext i16 %11 to i32, !dbg !5995
  call void @outb_p(i8 zeroext 11, i32 %conv26) #9, !dbg !5996
  %12 = load i16, i16* @vga_video_port_val, align 2, !dbg !5997
  %conv27 = zext i16 %12 to i32, !dbg !5997
  %call28 = call zeroext i8 @inb_p(i32 %conv27) #9, !dbg !5998
  %conv29 = zext i8 %call28 to i32, !dbg !5998
  store i32 %conv29, i32* %cure, align 4, !dbg !5999
  br label %if.end30, !dbg !6000

if.else:                                          ; preds = %do.end17
  store i32 0, i32* %curs, align 4, !dbg !6001
  store i32 0, i32* %cure, align 4, !dbg !6003
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then21
  %13 = load i32, i32* %curs, align 4, !dbg !6004
  %and = and i32 %13, 192, !dbg !6005
  %14 = load i32, i32* %from.addr, align 4, !dbg !6006
  %or = or i32 %and, %14, !dbg !6007
  store i32 %or, i32* %curs, align 4, !dbg !6008
  %15 = load i32, i32* %cure, align 4, !dbg !6009
  %and31 = and i32 %15, 224, !dbg !6010
  %16 = load i32, i32* %to.addr, align 4, !dbg !6011
  %or32 = or i32 %and31, %16, !dbg !6012
  store i32 %or32, i32* %cure, align 4, !dbg !6013
  %17 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6014
  %conv33 = zext i16 %17 to i32, !dbg !6014
  call void @outb_p(i8 zeroext 10, i32 %conv33) #9, !dbg !6015
  %18 = load i32, i32* %curs, align 4, !dbg !6016
  %conv34 = trunc i32 %18 to i8, !dbg !6016
  %19 = load i16, i16* @vga_video_port_val, align 2, !dbg !6017
  %conv35 = zext i16 %19 to i32, !dbg !6017
  call void @outb_p(i8 zeroext %conv34, i32 %conv35) #9, !dbg !6018
  %20 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6019
  %conv36 = zext i16 %20 to i32, !dbg !6019
  call void @outb_p(i8 zeroext 11, i32 %conv36) #9, !dbg !6020
  %21 = load i32, i32* %cure, align 4, !dbg !6021
  %conv37 = trunc i32 %21 to i8, !dbg !6021
  %22 = load i16, i16* @vga_video_port_val, align 2, !dbg !6022
  %conv38 = zext i16 %22 to i32, !dbg !6022
  call void @outb_p(i8 zeroext %conv37, i32 %conv38) #9, !dbg !6023
  br label %do.body39, !dbg !6024

do.body39:                                        ; preds = %if.end30
  call void @llvm.dbg.declare(metadata i64* %__dummy40, metadata !6025, metadata !DIExpression()), !dbg !6028
  call void @llvm.dbg.declare(metadata i64* %__dummy241, metadata !6029, metadata !DIExpression()), !dbg !6028
  %cmp42 = icmp eq i64* %__dummy40, %__dummy241, !dbg !6028
  %conv43 = zext i1 %cmp42 to i32, !dbg !6028
  store i32 1, i32* %tmp44, align 4, !dbg !6028
  %23 = load i32, i32* %tmp44, align 4, !dbg !6028
  br label %do.body45, !dbg !6030

do.body45:                                        ; preds = %do.body39
  br label %do.body46, !dbg !6031

do.body46:                                        ; preds = %do.body45
  br label %do.body47, !dbg !6033

do.body47:                                        ; preds = %do.body46
  call void @llvm.dbg.declare(metadata i64* %__dummy48, metadata !6035, metadata !DIExpression()), !dbg !6038
  call void @llvm.dbg.declare(metadata i64* %__dummy249, metadata !6039, metadata !DIExpression()), !dbg !6038
  %cmp50 = icmp eq i64* %__dummy48, %__dummy249, !dbg !6038
  %conv51 = zext i1 %cmp50 to i32, !dbg !6038
  store i32 1, i32* %tmp52, align 4, !dbg !6038
  %24 = load i32, i32* %tmp52, align 4, !dbg !6038
  %25 = load i64, i64* %flags, align 8, !dbg !6040
  call void @arch_local_irq_restore(i64 %25) #9, !dbg !6040
  br label %do.end53, !dbg !6040

do.end53:                                         ; preds = %do.body47
  br label %do.end54, !dbg !6033

do.end54:                                         ; preds = %do.end53
  br label %do.body55, !dbg !6031

do.body55:                                        ; preds = %do.end54
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6041, !srcloc !6043
  br label %do.body56, !dbg !6041

do.body56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !6044

do.end57:                                         ; preds = %do.body56
  br label %do.end58, !dbg !6041

do.end58:                                         ; preds = %do.end57
  br label %do.end59, !dbg !6031

do.end59:                                         ; preds = %do.end58
  br label %do.end60, !dbg !6030

do.end60:                                         ; preds = %if.then, %do.end59
  ret void, !dbg !6046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @scr_memcpyw(i16* %d, i16* %s, i32 %count) #0 !dbg !6047 {
entry:
  %d.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  store i16* %d, i16** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %d.addr, metadata !6053, metadata !DIExpression()), !dbg !6054
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6055, metadata !DIExpression()), !dbg !6056
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6057, metadata !DIExpression()), !dbg !6058
  %0 = load i16*, i16** %d.addr, align 8, !dbg !6059
  %1 = bitcast i16* %0 to i8*, !dbg !6060
  %2 = load i16*, i16** %s.addr, align 8, !dbg !6061
  %3 = bitcast i16* %2 to i8*, !dbg !6060
  %4 = load i32, i32* %count.addr, align 4, !dbg !6062
  %conv = zext i32 %4 to i64, !dbg !6062
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %3, i64 %conv, i1 false), !dbg !6060
  ret void, !dbg !6063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @scr_memsetw(i16* %s, i16 zeroext %c, i32 %count) #0 !dbg !6064 {
entry:
  %s.addr = alloca i16*, align 8
  %c.addr = alloca i16, align 2
  %count.addr = alloca i32, align 4
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6067, metadata !DIExpression()), !dbg !6068
  store i16 %c, i16* %c.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %c.addr, metadata !6069, metadata !DIExpression()), !dbg !6070
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6071, metadata !DIExpression()), !dbg !6072
  %0 = load i16*, i16** %s.addr, align 8, !dbg !6073
  %1 = load i16, i16* %c.addr, align 2, !dbg !6074
  %2 = load i32, i32* %count.addr, align 4, !dbg !6075
  %div = udiv i32 %2, 2, !dbg !6076
  %conv = zext i32 %div to i64, !dbg !6075
  %call = call i8* @memset16(i16* %0, i16 zeroext %1, i64 %conv) #9, !dbg !6077
  ret void, !dbg !6078
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @scr_memmovew(i16* %d, i16* %s, i32 %count) #0 !dbg !6079 {
entry:
  %d.addr = alloca i16*, align 8
  %s.addr = alloca i16*, align 8
  %count.addr = alloca i32, align 4
  store i16* %d, i16** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %d.addr, metadata !6080, metadata !DIExpression()), !dbg !6081
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6082, metadata !DIExpression()), !dbg !6083
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6084, metadata !DIExpression()), !dbg !6085
  %0 = load i16*, i16** %d.addr, align 8, !dbg !6086
  %1 = bitcast i16* %0 to i8*, !dbg !6087
  %2 = load i16*, i16** %s.addr, align 8, !dbg !6088
  %3 = bitcast i16* %2 to i8*, !dbg !6087
  %4 = load i32, i32* %count.addr, align 4, !dbg !6089
  %conv = zext i32 %4 to i64, !dbg !6089
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %3, i64 %conv, i1 false), !dbg !6087
  ret void, !dbg !6090
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @memset16(i16* %s, i16 zeroext %v, i64 %n) #0 !dbg !6091 {
entry:
  %s.addr = alloca i16*, align 8
  %v.addr = alloca i16, align 2
  %n.addr = alloca i64, align 8
  %d0 = alloca i64, align 8
  %d1 = alloca i64, align 8
  store i16* %s, i16** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %s.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  store i16 %v, i16* %v.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %v.addr, metadata !6099, metadata !DIExpression()), !dbg !6100
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  call void @llvm.dbg.declare(metadata i64* %d0, metadata !6103, metadata !DIExpression()), !dbg !6104
  call void @llvm.dbg.declare(metadata i64* %d1, metadata !6105, metadata !DIExpression()), !dbg !6106
  %0 = load i16, i16* %v.addr, align 2, !dbg !6107
  %1 = load i16*, i16** %s.addr, align 8, !dbg !6108
  %2 = load i64, i64* %n.addr, align 8, !dbg !6109
  %3 = call { i64, i64 } asm sideeffect "rep\0A\09stosw", "=&{cx},=&{di},{ax},1,0,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %1, i64 %2) #6, !dbg !6110, !srcloc !6111
  %asmresult = extractvalue { i64, i64 } %3, 0, !dbg !6110
  %asmresult1 = extractvalue { i64, i64 } %3, 1, !dbg !6110
  store i64 %asmresult, i64* %d0, align 8, !dbg !6110
  store i64 %asmresult1, i64* %d1, align 8, !dbg !6110
  %4 = load i16*, i16** %s.addr, align 8, !dbg !6112
  %5 = bitcast i16* %4 to i8*, !dbg !6112
  ret i8* %5, !dbg !6113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_doresize(%struct.vc_data* %c, i32 %width, i32 %height) #0 !dbg !6114 {
entry:
  %c.addr = alloca %struct.vc_data*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %scanlines = alloca i32, align 4
  %scanlines_lo = alloca i8, align 1
  %r7 = alloca i8, align 1
  %vsync_end = alloca i8, align 1
  %mode = alloca i8, align 1
  %max_scan = alloca i8, align 1
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__dummy87 = alloca i64, align 8
  %__dummy288 = alloca i64, align 8
  %tmp91 = alloca i32, align 4
  %__dummy95 = alloca i64, align 8
  %__dummy296 = alloca i64, align 8
  %tmp99 = alloca i32, align 4
  store %struct.vc_data* %c, %struct.vc_data** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  store i32 %width, i32* %width.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %width.addr, metadata !6119, metadata !DIExpression()), !dbg !6120
  store i32 %height, i32* %height.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %height.addr, metadata !6121, metadata !DIExpression()), !dbg !6122
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !6123, metadata !DIExpression()), !dbg !6124
  call void @llvm.dbg.declare(metadata i32* %scanlines, metadata !6125, metadata !DIExpression()), !dbg !6126
  %0 = load i32, i32* %height.addr, align 4, !dbg !6127
  %1 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !6128
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1, i32 0, i32 27, !dbg !6129
  %height1 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !6130
  %2 = load i32, i32* %height1, align 4, !dbg !6130
  %mul = mul i32 %0, %2, !dbg !6131
  store i32 %mul, i32* %scanlines, align 4, !dbg !6126
  call void @llvm.dbg.declare(metadata i8* %scanlines_lo, metadata !6132, metadata !DIExpression()), !dbg !6133
  store i8 0, i8* %scanlines_lo, align 1, !dbg !6133
  call void @llvm.dbg.declare(metadata i8* %r7, metadata !6134, metadata !DIExpression()), !dbg !6135
  store i8 0, i8* %r7, align 1, !dbg !6135
  call void @llvm.dbg.declare(metadata i8* %vsync_end, metadata !6136, metadata !DIExpression()), !dbg !6137
  store i8 0, i8* %vsync_end, align 1, !dbg !6137
  call void @llvm.dbg.declare(metadata i8* %mode, metadata !6138, metadata !DIExpression()), !dbg !6139
  call void @llvm.dbg.declare(metadata i8* %max_scan, metadata !6140, metadata !DIExpression()), !dbg !6141
  br label %do.body, !dbg !6142

do.body:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !6143, metadata !DIExpression()), !dbg !6146
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !6147, metadata !DIExpression()), !dbg !6146
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !6146
  %conv = zext i1 %cmp to i32, !dbg !6146
  store i32 1, i32* %tmp, align 4, !dbg !6146
  %3 = load i32, i32* %tmp, align 4, !dbg !6146
  br label %do.body2, !dbg !6148

do.body2:                                         ; preds = %do.body
  br label %do.body3, !dbg !6149

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !6151

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !6153, metadata !DIExpression()), !dbg !6156
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !6157, metadata !DIExpression()), !dbg !6156
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !6156
  %conv8 = zext i1 %cmp7 to i32, !dbg !6156
  store i32 1, i32* %tmp9, align 4, !dbg !6156
  %4 = load i32, i32* %tmp9, align 4, !dbg !6156
  %call = call i64 @arch_local_irq_save() #9, !dbg !6158
  store i64 %call, i64* %flags, align 8, !dbg !6158
  br label %do.end, !dbg !6158

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !6151

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !6149

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6159, !srcloc !6161
  br label %do.body12, !dbg !6159

do.body12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6162

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !6159

do.end14:                                         ; preds = %do.end13
  br label %do.end15, !dbg !6149

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6148

do.end16:                                         ; preds = %do.end15
  %5 = load i32, i32* %width.addr, align 4, !dbg !6164
  %mul17 = mul i32 %5, 8, !dbg !6165
  store i32 %mul17, i32* @vgacon_xres, align 4, !dbg !6166
  %6 = load i32, i32* %height.addr, align 4, !dbg !6167
  %7 = load %struct.vc_data*, %struct.vc_data** %c.addr, align 8, !dbg !6168
  %vc_font18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 27, !dbg !6169
  %height19 = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font18, i32 0, i32 1, !dbg !6170
  %8 = load i32, i32* %height19, align 4, !dbg !6170
  %mul20 = mul i32 %6, %8, !dbg !6171
  store i32 %mul20, i32* @vgacon_yres, align 4, !dbg !6172
  %9 = load i8, i8* @vga_video_type, align 1, !dbg !6173
  %conv21 = zext i8 %9 to i32, !dbg !6173
  %cmp22 = icmp sge i32 %conv21, 34, !dbg !6175
  br i1 %cmp22, label %if.then, label %if.end66, !dbg !6176

if.then:                                          ; preds = %do.end16
  %10 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6177
  %conv24 = zext i16 %10 to i32, !dbg !6177
  call void @outb_p(i8 zeroext 9, i32 %conv24) #9, !dbg !6179
  %11 = load i16, i16* @vga_video_port_val, align 2, !dbg !6180
  %conv25 = zext i16 %11 to i32, !dbg !6180
  %call26 = call zeroext i8 @inb_p(i32 %conv25) #9, !dbg !6181
  store i8 %call26, i8* %max_scan, align 1, !dbg !6182
  %12 = load i8, i8* %max_scan, align 1, !dbg !6183
  %conv27 = zext i8 %12 to i32, !dbg !6183
  %and = and i32 %conv27, 128, !dbg !6185
  %tobool = icmp ne i32 %and, 0, !dbg !6185
  br i1 %tobool, label %if.then28, label %if.end, !dbg !6186

if.then28:                                        ; preds = %if.then
  %13 = load i32, i32* %scanlines, align 4, !dbg !6187
  %shl = shl i32 %13, 1, !dbg !6187
  store i32 %shl, i32* %scanlines, align 4, !dbg !6187
  br label %if.end, !dbg !6188

if.end:                                           ; preds = %if.then28, %if.then
  %14 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6189
  %conv29 = zext i16 %14 to i32, !dbg !6189
  call void @outb_p(i8 zeroext 23, i32 %conv29) #9, !dbg !6190
  %15 = load i16, i16* @vga_video_port_val, align 2, !dbg !6191
  %conv30 = zext i16 %15 to i32, !dbg !6191
  %call31 = call zeroext i8 @inb_p(i32 %conv30) #9, !dbg !6192
  store i8 %call31, i8* %mode, align 1, !dbg !6193
  %16 = load i8, i8* %mode, align 1, !dbg !6194
  %conv32 = zext i8 %16 to i32, !dbg !6194
  %and33 = and i32 %conv32, 4, !dbg !6196
  %tobool34 = icmp ne i32 %and33, 0, !dbg !6196
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !6197

if.then35:                                        ; preds = %if.end
  %17 = load i32, i32* %scanlines, align 4, !dbg !6198
  %shr = lshr i32 %17, 1, !dbg !6198
  store i32 %shr, i32* %scanlines, align 4, !dbg !6198
  br label %if.end36, !dbg !6199

if.end36:                                         ; preds = %if.then35, %if.end
  %18 = load i32, i32* %scanlines, align 4, !dbg !6200
  %sub = sub i32 %18, 1, !dbg !6200
  store i32 %sub, i32* %scanlines, align 4, !dbg !6200
  %19 = load i32, i32* %scanlines, align 4, !dbg !6201
  %and37 = and i32 %19, 255, !dbg !6202
  %conv38 = trunc i32 %and37 to i8, !dbg !6201
  store i8 %conv38, i8* %scanlines_lo, align 1, !dbg !6203
  %20 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6204
  %conv39 = zext i16 %20 to i32, !dbg !6204
  call void @outb_p(i8 zeroext 7, i32 %conv39) #9, !dbg !6205
  %21 = load i16, i16* @vga_video_port_val, align 2, !dbg !6206
  %conv40 = zext i16 %21 to i32, !dbg !6206
  %call41 = call zeroext i8 @inb_p(i32 %conv40) #9, !dbg !6207
  %conv42 = zext i8 %call41 to i32, !dbg !6207
  %and43 = and i32 %conv42, -67, !dbg !6208
  %conv44 = trunc i32 %and43 to i8, !dbg !6207
  store i8 %conv44, i8* %r7, align 1, !dbg !6209
  %22 = load i32, i32* %scanlines, align 4, !dbg !6210
  %and45 = and i32 %22, 256, !dbg !6212
  %tobool46 = icmp ne i32 %and45, 0, !dbg !6212
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !6213

if.then47:                                        ; preds = %if.end36
  %23 = load i8, i8* %r7, align 1, !dbg !6214
  %conv48 = zext i8 %23 to i32, !dbg !6214
  %or = or i32 %conv48, 2, !dbg !6214
  %conv49 = trunc i32 %or to i8, !dbg !6214
  store i8 %conv49, i8* %r7, align 1, !dbg !6214
  br label %if.end50, !dbg !6215

if.end50:                                         ; preds = %if.then47, %if.end36
  %24 = load i32, i32* %scanlines, align 4, !dbg !6216
  %and51 = and i32 %24, 512, !dbg !6218
  %tobool52 = icmp ne i32 %and51, 0, !dbg !6218
  br i1 %tobool52, label %if.then53, label %if.end57, !dbg !6219

if.then53:                                        ; preds = %if.end50
  %25 = load i8, i8* %r7, align 1, !dbg !6220
  %conv54 = zext i8 %25 to i32, !dbg !6220
  %or55 = or i32 %conv54, 64, !dbg !6220
  %conv56 = trunc i32 %or55 to i8, !dbg !6220
  store i8 %conv56, i8* %r7, align 1, !dbg !6220
  br label %if.end57, !dbg !6221

if.end57:                                         ; preds = %if.then53, %if.end50
  %26 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6222
  %conv58 = zext i16 %26 to i32, !dbg !6222
  call void @outb_p(i8 zeroext 17, i32 %conv58) #9, !dbg !6223
  %27 = load i16, i16* @vga_video_port_val, align 2, !dbg !6224
  %conv59 = zext i16 %27 to i32, !dbg !6224
  %call60 = call zeroext i8 @inb_p(i32 %conv59) #9, !dbg !6225
  store i8 %call60, i8* %vsync_end, align 1, !dbg !6226
  %28 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6227
  %conv61 = zext i16 %28 to i32, !dbg !6227
  call void @outb_p(i8 zeroext 17, i32 %conv61) #9, !dbg !6228
  %29 = load i8, i8* %vsync_end, align 1, !dbg !6229
  %conv62 = zext i8 %29 to i32, !dbg !6229
  %and63 = and i32 %conv62, -129, !dbg !6230
  %conv64 = trunc i32 %and63 to i8, !dbg !6229
  %30 = load i16, i16* @vga_video_port_val, align 2, !dbg !6231
  %conv65 = zext i16 %30 to i32, !dbg !6231
  call void @outb_p(i8 zeroext %conv64, i32 %conv65) #9, !dbg !6232
  br label %if.end66, !dbg !6233

if.end66:                                         ; preds = %if.end57, %do.end16
  %31 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6234
  %conv67 = zext i16 %31 to i32, !dbg !6234
  call void @outb_p(i8 zeroext 1, i32 %conv67) #9, !dbg !6235
  %32 = load i32, i32* %width.addr, align 4, !dbg !6236
  %sub68 = sub i32 %32, 1, !dbg !6237
  %conv69 = trunc i32 %sub68 to i8, !dbg !6236
  %33 = load i16, i16* @vga_video_port_val, align 2, !dbg !6238
  %conv70 = zext i16 %33 to i32, !dbg !6238
  call void @outb_p(i8 zeroext %conv69, i32 %conv70) #9, !dbg !6239
  %34 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6240
  %conv71 = zext i16 %34 to i32, !dbg !6240
  call void @outb_p(i8 zeroext 19, i32 %conv71) #9, !dbg !6241
  %35 = load i32, i32* %width.addr, align 4, !dbg !6242
  %shr72 = lshr i32 %35, 1, !dbg !6243
  %conv73 = trunc i32 %shr72 to i8, !dbg !6242
  %36 = load i16, i16* @vga_video_port_val, align 2, !dbg !6244
  %conv74 = zext i16 %36 to i32, !dbg !6244
  call void @outb_p(i8 zeroext %conv73, i32 %conv74) #9, !dbg !6245
  %37 = load i8, i8* @vga_video_type, align 1, !dbg !6246
  %conv75 = zext i8 %37 to i32, !dbg !6246
  %cmp76 = icmp sge i32 %conv75, 34, !dbg !6248
  br i1 %cmp76, label %if.then78, label %if.end85, !dbg !6249

if.then78:                                        ; preds = %if.end66
  %38 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6250
  %conv79 = zext i16 %38 to i32, !dbg !6250
  call void @outb_p(i8 zeroext 18, i32 %conv79) #9, !dbg !6252
  %39 = load i8, i8* %scanlines_lo, align 1, !dbg !6253
  %40 = load i16, i16* @vga_video_port_val, align 2, !dbg !6254
  %conv80 = zext i16 %40 to i32, !dbg !6254
  call void @outb_p(i8 zeroext %39, i32 %conv80) #9, !dbg !6255
  %41 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6256
  %conv81 = zext i16 %41 to i32, !dbg !6256
  call void @outb_p(i8 zeroext 7, i32 %conv81) #9, !dbg !6257
  %42 = load i8, i8* %r7, align 1, !dbg !6258
  %43 = load i16, i16* @vga_video_port_val, align 2, !dbg !6259
  %conv82 = zext i16 %43 to i32, !dbg !6259
  call void @outb_p(i8 zeroext %42, i32 %conv82) #9, !dbg !6260
  %44 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6261
  %conv83 = zext i16 %44 to i32, !dbg !6261
  call void @outb_p(i8 zeroext 17, i32 %conv83) #9, !dbg !6262
  %45 = load i8, i8* %vsync_end, align 1, !dbg !6263
  %46 = load i16, i16* @vga_video_port_val, align 2, !dbg !6264
  %conv84 = zext i16 %46 to i32, !dbg !6264
  call void @outb_p(i8 zeroext %45, i32 %conv84) #9, !dbg !6265
  br label %if.end85, !dbg !6266

if.end85:                                         ; preds = %if.then78, %if.end66
  br label %do.body86, !dbg !6267

do.body86:                                        ; preds = %if.end85
  call void @llvm.dbg.declare(metadata i64* %__dummy87, metadata !6268, metadata !DIExpression()), !dbg !6271
  call void @llvm.dbg.declare(metadata i64* %__dummy288, metadata !6272, metadata !DIExpression()), !dbg !6271
  %cmp89 = icmp eq i64* %__dummy87, %__dummy288, !dbg !6271
  %conv90 = zext i1 %cmp89 to i32, !dbg !6271
  store i32 1, i32* %tmp91, align 4, !dbg !6271
  %47 = load i32, i32* %tmp91, align 4, !dbg !6271
  br label %do.body92, !dbg !6273

do.body92:                                        ; preds = %do.body86
  br label %do.body93, !dbg !6274

do.body93:                                        ; preds = %do.body92
  br label %do.body94, !dbg !6276

do.body94:                                        ; preds = %do.body93
  call void @llvm.dbg.declare(metadata i64* %__dummy95, metadata !6278, metadata !DIExpression()), !dbg !6281
  call void @llvm.dbg.declare(metadata i64* %__dummy296, metadata !6282, metadata !DIExpression()), !dbg !6281
  %cmp97 = icmp eq i64* %__dummy95, %__dummy296, !dbg !6281
  %conv98 = zext i1 %cmp97 to i32, !dbg !6281
  store i32 1, i32* %tmp99, align 4, !dbg !6281
  %48 = load i32, i32* %tmp99, align 4, !dbg !6281
  %49 = load i64, i64* %flags, align 8, !dbg !6283
  call void @arch_local_irq_restore(i64 %49) #9, !dbg !6283
  br label %do.end100, !dbg !6283

do.end100:                                        ; preds = %do.body94
  br label %do.end101, !dbg !6276

do.end101:                                        ; preds = %do.end100
  br label %do.body102, !dbg !6274

do.body102:                                       ; preds = %do.end101
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6284, !srcloc !6286
  br label %do.body103, !dbg !6284

do.body103:                                       ; preds = %do.body102
  br label %do.end104, !dbg !6287

do.end104:                                        ; preds = %do.body103
  br label %do.end105, !dbg !6284

do.end105:                                        ; preds = %do.end104
  br label %do.end106, !dbg !6274

do.end106:                                        ; preds = %do.end105
  br label %do.end107, !dbg !6273

do.end107:                                        ; preds = %do.end106
  ret i32 0, !dbg !6289
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_vesa_unblank(%struct.vgastate* %state) #0 !dbg !6290 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !6294, metadata !DIExpression()), !dbg !6295
  br label %do.body, !dbg !6296

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6297

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #9, !dbg !6299
  br label %do.end, !dbg !6299

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6297

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6301, !srcloc !6303
  br label %do.body3, !dbg !6301

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6304

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !6301

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !6297

do.end6:                                          ; preds = %do.end5
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6306
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 0, !dbg !6307
  %1 = load i8*, i8** %vgabase, align 8, !dbg !6307
  %2 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 2), align 1, !dbg !6308
  call void @vga_w(i8* %1, i16 zeroext 962, i8 zeroext %2) #9, !dbg !6309
  %3 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6310
  %conv = zext i16 %3 to i32, !dbg !6310
  call void @outb_p(i8 zeroext 0, i32 %conv) #9, !dbg !6311
  %4 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 3), align 1, !dbg !6312
  %5 = load i16, i16* @vga_video_port_val, align 2, !dbg !6313
  %conv7 = zext i16 %5 to i32, !dbg !6313
  call void @outb_p(i8 zeroext %4, i32 %conv7) #9, !dbg !6314
  %6 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6315
  %conv8 = zext i16 %6 to i32, !dbg !6315
  call void @outb_p(i8 zeroext 1, i32 %conv8) #9, !dbg !6316
  %7 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 4), align 1, !dbg !6317
  %8 = load i16, i16* @vga_video_port_val, align 2, !dbg !6318
  %conv9 = zext i16 %8 to i32, !dbg !6318
  call void @outb_p(i8 zeroext %7, i32 %conv9) #9, !dbg !6319
  %9 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6320
  %conv10 = zext i16 %9 to i32, !dbg !6320
  call void @outb_p(i8 zeroext 4, i32 %conv10) #9, !dbg !6321
  %10 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 5), align 1, !dbg !6322
  %11 = load i16, i16* @vga_video_port_val, align 2, !dbg !6323
  %conv11 = zext i16 %11 to i32, !dbg !6323
  call void @outb_p(i8 zeroext %10, i32 %conv11) #9, !dbg !6324
  %12 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6325
  %conv12 = zext i16 %12 to i32, !dbg !6325
  call void @outb_p(i8 zeroext 5, i32 %conv12) #9, !dbg !6326
  %13 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 6), align 1, !dbg !6327
  %14 = load i16, i16* @vga_video_port_val, align 2, !dbg !6328
  %conv13 = zext i16 %14 to i32, !dbg !6328
  call void @outb_p(i8 zeroext %13, i32 %conv13) #9, !dbg !6329
  %15 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6330
  %conv14 = zext i16 %15 to i32, !dbg !6330
  call void @outb_p(i8 zeroext 7, i32 %conv14) #9, !dbg !6331
  %16 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 7), align 1, !dbg !6332
  %17 = load i16, i16* @vga_video_port_val, align 2, !dbg !6333
  %conv15 = zext i16 %17 to i32, !dbg !6333
  call void @outb_p(i8 zeroext %16, i32 %conv15) #9, !dbg !6334
  %18 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6335
  %conv16 = zext i16 %18 to i32, !dbg !6335
  call void @outb_p(i8 zeroext 16, i32 %conv16) #9, !dbg !6336
  %19 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 8), align 1, !dbg !6337
  %20 = load i16, i16* @vga_video_port_val, align 2, !dbg !6338
  %conv17 = zext i16 %20 to i32, !dbg !6338
  call void @outb_p(i8 zeroext %19, i32 %conv17) #9, !dbg !6339
  %21 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6340
  %conv18 = zext i16 %21 to i32, !dbg !6340
  call void @outb_p(i8 zeroext 17, i32 %conv18) #9, !dbg !6341
  %22 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 9), align 1, !dbg !6342
  %23 = load i16, i16* @vga_video_port_val, align 2, !dbg !6343
  %conv19 = zext i16 %23 to i32, !dbg !6343
  call void @outb_p(i8 zeroext %22, i32 %conv19) #9, !dbg !6344
  %24 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6345
  %conv20 = zext i16 %24 to i32, !dbg !6345
  call void @outb_p(i8 zeroext 23, i32 %conv20) #9, !dbg !6346
  %25 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 10), align 1, !dbg !6347
  %26 = load i16, i16* @vga_video_port_val, align 2, !dbg !6348
  %conv21 = zext i16 %26 to i32, !dbg !6348
  call void @outb_p(i8 zeroext %25, i32 %conv21) #9, !dbg !6349
  %27 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6350
  %vgabase22 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %27, i32 0, i32 0, !dbg !6351
  %28 = load i8*, i8** %vgabase22, align 8, !dbg !6351
  %29 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 11), align 1, !dbg !6352
  call void @vga_wseq(i8* %28, i8 zeroext 1, i8 zeroext %29) #9, !dbg !6353
  %30 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6354
  %vgabase23 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %30, i32 0, i32 0, !dbg !6355
  %31 = load i8*, i8** %vgabase23, align 8, !dbg !6355
  %32 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 0), align 1, !dbg !6356
  call void @vga_w(i8* %31, i16 zeroext 964, i8 zeroext %32) #9, !dbg !6357
  %33 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 1), align 1, !dbg !6358
  %34 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6359
  %conv24 = zext i16 %34 to i32, !dbg !6359
  call void @outb_p(i8 zeroext %33, i32 %conv24) #9, !dbg !6360
  br label %do.body25, !dbg !6361

do.body25:                                        ; preds = %do.end6
  br label %do.body26, !dbg !6362

do.body26:                                        ; preds = %do.body25
  call void @arch_local_irq_enable() #9, !dbg !6364
  br label %do.end27, !dbg !6364

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !6362

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6366, !srcloc !6368
  br label %do.body29, !dbg !6366

do.body29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !6369

do.end30:                                         ; preds = %do.body29
  br label %do.end31, !dbg !6366

do.end31:                                         ; preds = %do.end30
  br label %do.end32, !dbg !6362

do.end32:                                         ; preds = %do.end31
  ret void, !dbg !6371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_set_palette(%struct.vc_data* %vc, i8* %table) #0 !dbg !6372 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %table.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !6373, metadata !DIExpression()), !dbg !6374
  store i8* %table, i8** %table.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %table.addr, metadata !6375, metadata !DIExpression()), !dbg !6376
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6377, metadata !DIExpression()), !dbg !6378
  call void @llvm.dbg.declare(metadata i32* %j, metadata !6379, metadata !DIExpression()), !dbg !6380
  %0 = load i8*, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !6381
  call void @vga_w(i8* %0, i16 zeroext 966, i8 zeroext -1) #9, !dbg !6382
  store i32 0, i32* %j, align 4, !dbg !6383
  store i32 0, i32* %i, align 4, !dbg !6385
  br label %for.cond, !dbg !6386

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !6387
  %cmp = icmp slt i32 %1, 16, !dbg !6389
  br i1 %cmp, label %for.body, label %for.end, !dbg !6390

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !6391
  %3 = load i8*, i8** %table.addr, align 8, !dbg !6393
  %4 = load i32, i32* %i, align 4, !dbg !6394
  %idxprom = sext i32 %4 to i64, !dbg !6393
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !6393
  %5 = load i8, i8* %arrayidx, align 1, !dbg !6393
  call void @vga_w(i8* %2, i16 zeroext 968, i8 zeroext %5) #9, !dbg !6395
  %6 = load i8*, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !6396
  %7 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6397
  %vc_palette = getelementptr inbounds %struct.vc_data, %struct.vc_data* %7, i32 0, i32 40, !dbg !6398
  %8 = load i32, i32* %j, align 4, !dbg !6399
  %inc = add i32 %8, 1, !dbg !6399
  store i32 %inc, i32* %j, align 4, !dbg !6399
  %idxprom1 = sext i32 %8 to i64, !dbg !6397
  %arrayidx2 = getelementptr [48 x i8], [48 x i8]* %vc_palette, i64 0, i64 %idxprom1, !dbg !6397
  %9 = load i8, i8* %arrayidx2, align 1, !dbg !6397
  %conv = zext i8 %9 to i32, !dbg !6397
  %shr = ashr i32 %conv, 2, !dbg !6400
  %conv3 = trunc i32 %shr to i8, !dbg !6397
  call void @vga_w(i8* %6, i16 zeroext 969, i8 zeroext %conv3) #9, !dbg !6401
  %10 = load i8*, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !6402
  %11 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6403
  %vc_palette4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %11, i32 0, i32 40, !dbg !6404
  %12 = load i32, i32* %j, align 4, !dbg !6405
  %inc5 = add i32 %12, 1, !dbg !6405
  store i32 %inc5, i32* %j, align 4, !dbg !6405
  %idxprom6 = sext i32 %12 to i64, !dbg !6403
  %arrayidx7 = getelementptr [48 x i8], [48 x i8]* %vc_palette4, i64 0, i64 %idxprom6, !dbg !6403
  %13 = load i8, i8* %arrayidx7, align 1, !dbg !6403
  %conv8 = zext i8 %13 to i32, !dbg !6403
  %shr9 = ashr i32 %conv8, 2, !dbg !6406
  %conv10 = trunc i32 %shr9 to i8, !dbg !6403
  call void @vga_w(i8* %10, i16 zeroext 969, i8 zeroext %conv10) #9, !dbg !6407
  %14 = load i8*, i8** getelementptr inbounds (%struct.vgastate, %struct.vgastate* @vgastate, i32 0, i32 0), align 8, !dbg !6408
  %15 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !6409
  %vc_palette11 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 40, !dbg !6410
  %16 = load i32, i32* %j, align 4, !dbg !6411
  %inc12 = add i32 %16, 1, !dbg !6411
  store i32 %inc12, i32* %j, align 4, !dbg !6411
  %idxprom13 = sext i32 %16 to i64, !dbg !6409
  %arrayidx14 = getelementptr [48 x i8], [48 x i8]* %vc_palette11, i64 0, i64 %idxprom13, !dbg !6409
  %17 = load i8, i8* %arrayidx14, align 1, !dbg !6409
  %conv15 = zext i8 %17 to i32, !dbg !6409
  %shr16 = ashr i32 %conv15, 2, !dbg !6412
  %conv17 = trunc i32 %shr16 to i8, !dbg !6409
  call void @vga_w(i8* %14, i16 zeroext 969, i8 zeroext %conv17) #9, !dbg !6413
  br label %for.inc, !dbg !6414

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !6415
  %inc18 = add i32 %18, 1, !dbg !6415
  store i32 %inc18, i32* %i, align 4, !dbg !6415
  br label %for.cond, !dbg !6416, !llvm.loop !6417

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6419
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_pal_blank(%struct.vgastate* %state) #0 !dbg !6420 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %i = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !6421, metadata !DIExpression()), !dbg !6422
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6423, metadata !DIExpression()), !dbg !6424
  %0 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6425
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %0, i32 0, i32 0, !dbg !6426
  %1 = load i8*, i8** %vgabase, align 8, !dbg !6426
  call void @vga_w(i8* %1, i16 zeroext 966, i8 zeroext -1) #9, !dbg !6427
  store i32 0, i32* %i, align 4, !dbg !6428
  br label %for.cond, !dbg !6430

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !6431
  %cmp = icmp slt i32 %2, 16, !dbg !6433
  br i1 %cmp, label %for.body, label %for.end, !dbg !6434

for.body:                                         ; preds = %for.cond
  %3 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6435
  %vgabase1 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %3, i32 0, i32 0, !dbg !6437
  %4 = load i8*, i8** %vgabase1, align 8, !dbg !6437
  %5 = load i32, i32* %i, align 4, !dbg !6438
  %conv = trunc i32 %5 to i8, !dbg !6438
  call void @vga_w(i8* %4, i16 zeroext 968, i8 zeroext %conv) #9, !dbg !6439
  %6 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6440
  %vgabase2 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %6, i32 0, i32 0, !dbg !6441
  %7 = load i8*, i8** %vgabase2, align 8, !dbg !6441
  call void @vga_w(i8* %7, i16 zeroext 969, i8 zeroext 0) #9, !dbg !6442
  %8 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6443
  %vgabase3 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %8, i32 0, i32 0, !dbg !6444
  %9 = load i8*, i8** %vgabase3, align 8, !dbg !6444
  call void @vga_w(i8* %9, i16 zeroext 969, i8 zeroext 0) #9, !dbg !6445
  %10 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6446
  %vgabase4 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %10, i32 0, i32 0, !dbg !6447
  %11 = load i8*, i8** %vgabase4, align 8, !dbg !6447
  call void @vga_w(i8* %11, i16 zeroext 969, i8 zeroext 0) #9, !dbg !6448
  br label %for.inc, !dbg !6449

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !6450
  %inc = add i32 %12, 1, !dbg !6450
  store i32 %inc, i32* %i, align 4, !dbg !6450
  br label %for.cond, !dbg !6451, !llvm.loop !6452

for.end:                                          ; preds = %for.cond
  ret void, !dbg !6454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_vesa_blank(%struct.vgastate* %state, i32 %mode) #0 !dbg !6455 {
entry:
  %state.addr = alloca %struct.vgastate*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !6458, metadata !DIExpression()), !dbg !6459
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !6460, metadata !DIExpression()), !dbg !6461
  %0 = load i32, i32* @vga_vesa_blanked, align 4, !dbg !6462
  %tobool = icmp ne i32 %0, 0, !dbg !6462
  br i1 %tobool, label %if.end, label %if.then, !dbg !6464

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6465

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !6467

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #9, !dbg !6469
  br label %do.end, !dbg !6469

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6467

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6471, !srcloc !6473
  br label %do.body3, !dbg !6471

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6474

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !6471

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !6467

do.end6:                                          ; preds = %do.end5
  %1 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6476
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %1, i32 0, i32 0, !dbg !6477
  %2 = load i8*, i8** %vgabase, align 8, !dbg !6477
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 964) #9, !dbg !6478
  store i8 %call, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 0), align 1, !dbg !6479
  %3 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6480
  %conv = zext i16 %3 to i32, !dbg !6480
  %call7 = call zeroext i8 @inb_p(i32 %conv) #9, !dbg !6481
  store i8 %call7, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 1), align 1, !dbg !6482
  %4 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6483
  %vgabase8 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %4, i32 0, i32 0, !dbg !6484
  %5 = load i8*, i8** %vgabase8, align 8, !dbg !6484
  %call9 = call zeroext i8 @vga_r(i8* %5, i16 zeroext 972) #9, !dbg !6485
  store i8 %call9, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 2), align 1, !dbg !6486
  br label %do.body10, !dbg !6487

do.body10:                                        ; preds = %do.end6
  br label %do.body11, !dbg !6488

do.body11:                                        ; preds = %do.body10
  call void @arch_local_irq_enable() #9, !dbg !6490
  br label %do.end12, !dbg !6490

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !6488

do.body13:                                        ; preds = %do.end12
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6492, !srcloc !6494
  br label %do.body14, !dbg !6492

do.body14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6495

do.end15:                                         ; preds = %do.body14
  br label %do.end16, !dbg !6492

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !6488

do.end17:                                         ; preds = %do.end16
  %6 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6497
  %conv18 = zext i16 %6 to i32, !dbg !6497
  call void @outb_p(i8 zeroext 0, i32 %conv18) #9, !dbg !6498
  %7 = load i16, i16* @vga_video_port_val, align 2, !dbg !6499
  %conv19 = zext i16 %7 to i32, !dbg !6499
  %call20 = call zeroext i8 @inb_p(i32 %conv19) #9, !dbg !6500
  store i8 %call20, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 3), align 1, !dbg !6501
  %8 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6502
  %conv21 = zext i16 %8 to i32, !dbg !6502
  call void @outb_p(i8 zeroext 1, i32 %conv21) #9, !dbg !6503
  %9 = load i16, i16* @vga_video_port_val, align 2, !dbg !6504
  %conv22 = zext i16 %9 to i32, !dbg !6504
  %call23 = call zeroext i8 @inb_p(i32 %conv22) #9, !dbg !6505
  store i8 %call23, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 4), align 1, !dbg !6506
  %10 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6507
  %conv24 = zext i16 %10 to i32, !dbg !6507
  call void @outb_p(i8 zeroext 4, i32 %conv24) #9, !dbg !6508
  %11 = load i16, i16* @vga_video_port_val, align 2, !dbg !6509
  %conv25 = zext i16 %11 to i32, !dbg !6509
  %call26 = call zeroext i8 @inb_p(i32 %conv25) #9, !dbg !6510
  store i8 %call26, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 5), align 1, !dbg !6511
  %12 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6512
  %conv27 = zext i16 %12 to i32, !dbg !6512
  call void @outb_p(i8 zeroext 5, i32 %conv27) #9, !dbg !6513
  %13 = load i16, i16* @vga_video_port_val, align 2, !dbg !6514
  %conv28 = zext i16 %13 to i32, !dbg !6514
  %call29 = call zeroext i8 @inb_p(i32 %conv28) #9, !dbg !6515
  store i8 %call29, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 6), align 1, !dbg !6516
  %14 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6517
  %conv30 = zext i16 %14 to i32, !dbg !6517
  call void @outb_p(i8 zeroext 7, i32 %conv30) #9, !dbg !6518
  %15 = load i16, i16* @vga_video_port_val, align 2, !dbg !6519
  %conv31 = zext i16 %15 to i32, !dbg !6519
  %call32 = call zeroext i8 @inb_p(i32 %conv31) #9, !dbg !6520
  store i8 %call32, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 7), align 1, !dbg !6521
  %16 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6522
  %conv33 = zext i16 %16 to i32, !dbg !6522
  call void @outb_p(i8 zeroext 16, i32 %conv33) #9, !dbg !6523
  %17 = load i16, i16* @vga_video_port_val, align 2, !dbg !6524
  %conv34 = zext i16 %17 to i32, !dbg !6524
  %call35 = call zeroext i8 @inb_p(i32 %conv34) #9, !dbg !6525
  store i8 %call35, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 8), align 1, !dbg !6526
  %18 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6527
  %conv36 = zext i16 %18 to i32, !dbg !6527
  call void @outb_p(i8 zeroext 17, i32 %conv36) #9, !dbg !6528
  %19 = load i16, i16* @vga_video_port_val, align 2, !dbg !6529
  %conv37 = zext i16 %19 to i32, !dbg !6529
  %call38 = call zeroext i8 @inb_p(i32 %conv37) #9, !dbg !6530
  store i8 %call38, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 9), align 1, !dbg !6531
  %20 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6532
  %conv39 = zext i16 %20 to i32, !dbg !6532
  call void @outb_p(i8 zeroext 23, i32 %conv39) #9, !dbg !6533
  %21 = load i16, i16* @vga_video_port_val, align 2, !dbg !6534
  %conv40 = zext i16 %21 to i32, !dbg !6534
  %call41 = call zeroext i8 @inb_p(i32 %conv40) #9, !dbg !6535
  store i8 %call41, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 10), align 1, !dbg !6536
  %22 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6537
  %vgabase42 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %22, i32 0, i32 0, !dbg !6538
  %23 = load i8*, i8** %vgabase42, align 8, !dbg !6538
  %call43 = call zeroext i8 @vga_rseq(i8* %23, i8 zeroext 1) #9, !dbg !6539
  store i8 %call43, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 11), align 1, !dbg !6540
  br label %if.end, !dbg !6541

if.end:                                           ; preds = %do.end17, %entry
  br label %do.body44, !dbg !6542

do.body44:                                        ; preds = %if.end
  br label %do.body45, !dbg !6543

do.body45:                                        ; preds = %do.body44
  call void @arch_local_irq_disable() #9, !dbg !6545
  br label %do.end46, !dbg !6545

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !6543

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6547, !srcloc !6549
  br label %do.body48, !dbg !6547

do.body48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !6550

do.end49:                                         ; preds = %do.body48
  br label %do.end50, !dbg !6547

do.end50:                                         ; preds = %do.end49
  br label %do.end51, !dbg !6543

do.end51:                                         ; preds = %do.end50
  %24 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6552
  %vgabase52 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %24, i32 0, i32 0, !dbg !6553
  %25 = load i8*, i8** %vgabase52, align 8, !dbg !6553
  %26 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 11), align 1, !dbg !6554
  %conv53 = zext i8 %26 to i32, !dbg !6555
  %or = or i32 %conv53, 32, !dbg !6556
  %conv54 = trunc i32 %or to i8, !dbg !6555
  call void @vga_wseq(i8* %25, i8 zeroext 1, i8 zeroext %conv54) #9, !dbg !6557
  %27 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 2), align 1, !dbg !6558
  %conv55 = zext i8 %27 to i32, !dbg !6560
  %and = and i32 %conv55, 128, !dbg !6561
  %cmp = icmp eq i32 %and, 128, !dbg !6562
  br i1 %cmp, label %if.then57, label %if.end62, !dbg !6563

if.then57:                                        ; preds = %do.end51
  %28 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6564
  %vgabase58 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %28, i32 0, i32 0, !dbg !6565
  %29 = load i8*, i8** %vgabase58, align 8, !dbg !6565
  %30 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 2), align 1, !dbg !6566
  %conv59 = zext i8 %30 to i32, !dbg !6567
  %and60 = and i32 %conv59, 239, !dbg !6568
  %conv61 = trunc i32 %and60 to i8, !dbg !6567
  call void @vga_w(i8* %29, i16 zeroext 962, i8 zeroext %conv61) #9, !dbg !6569
  br label %if.end62, !dbg !6569

if.end62:                                         ; preds = %if.then57, %do.end51
  %31 = load i32, i32* %mode.addr, align 4, !dbg !6570
  %and63 = and i32 %31, 1, !dbg !6572
  %tobool64 = icmp ne i32 %and63, 0, !dbg !6572
  br i1 %tobool64, label %if.then65, label %if.end75, !dbg !6573

if.then65:                                        ; preds = %if.end62
  %32 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6574
  %conv66 = zext i16 %32 to i32, !dbg !6574
  call void @outb_p(i8 zeroext 16, i32 %conv66) #9, !dbg !6576
  %33 = load i16, i16* @vga_video_port_val, align 2, !dbg !6577
  %conv67 = zext i16 %33 to i32, !dbg !6577
  call void @outb_p(i8 zeroext -1, i32 %conv67) #9, !dbg !6578
  %34 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6579
  %conv68 = zext i16 %34 to i32, !dbg !6579
  call void @outb_p(i8 zeroext 17, i32 %conv68) #9, !dbg !6580
  %35 = load i16, i16* @vga_video_port_val, align 2, !dbg !6581
  %conv69 = zext i16 %35 to i32, !dbg !6581
  call void @outb_p(i8 zeroext 64, i32 %conv69) #9, !dbg !6582
  %36 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6583
  %conv70 = zext i16 %36 to i32, !dbg !6583
  call void @outb_p(i8 zeroext 7, i32 %conv70) #9, !dbg !6584
  %37 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 7), align 1, !dbg !6585
  %conv71 = zext i8 %37 to i32, !dbg !6586
  %or72 = or i32 %conv71, 132, !dbg !6587
  %conv73 = trunc i32 %or72 to i8, !dbg !6586
  %38 = load i16, i16* @vga_video_port_val, align 2, !dbg !6588
  %conv74 = zext i16 %38 to i32, !dbg !6588
  call void @outb_p(i8 zeroext %conv73, i32 %conv74) #9, !dbg !6589
  br label %if.end75, !dbg !6590

if.end75:                                         ; preds = %if.then65, %if.end62
  %39 = load i32, i32* %mode.addr, align 4, !dbg !6591
  %and76 = and i32 %39, 2, !dbg !6593
  %tobool77 = icmp ne i32 %and76, 0, !dbg !6593
  br i1 %tobool77, label %if.then78, label %if.end83, !dbg !6594

if.then78:                                        ; preds = %if.end75
  %40 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6595
  %conv79 = zext i16 %40 to i32, !dbg !6595
  call void @outb_p(i8 zeroext 4, i32 %conv79) #9, !dbg !6597
  %41 = load i16, i16* @vga_video_port_val, align 2, !dbg !6598
  %conv80 = zext i16 %41 to i32, !dbg !6598
  call void @outb_p(i8 zeroext -1, i32 %conv80) #9, !dbg !6599
  %42 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6600
  %conv81 = zext i16 %42 to i32, !dbg !6600
  call void @outb_p(i8 zeroext 5, i32 %conv81) #9, !dbg !6601
  %43 = load i16, i16* @vga_video_port_val, align 2, !dbg !6602
  %conv82 = zext i16 %43 to i32, !dbg !6602
  call void @outb_p(i8 zeroext 0, i32 %conv82) #9, !dbg !6603
  br label %if.end83, !dbg !6604

if.end83:                                         ; preds = %if.then78, %if.end75
  %44 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6605
  %vgabase84 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %44, i32 0, i32 0, !dbg !6606
  %45 = load i8*, i8** %vgabase84, align 8, !dbg !6606
  %46 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 0), align 1, !dbg !6607
  call void @vga_w(i8* %45, i16 zeroext 964, i8 zeroext %46) #9, !dbg !6608
  %47 = load i8, i8* getelementptr inbounds (%struct.anon.66, %struct.anon.66* @vga_state, i32 0, i32 1), align 1, !dbg !6609
  %48 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6610
  %conv85 = zext i16 %48 to i32, !dbg !6610
  call void @outb_p(i8 zeroext %47, i32 %conv85) #9, !dbg !6611
  br label %do.body86, !dbg !6612

do.body86:                                        ; preds = %if.end83
  br label %do.body87, !dbg !6613

do.body87:                                        ; preds = %do.body86
  call void @arch_local_irq_enable() #9, !dbg !6615
  br label %do.end88, !dbg !6615

do.end88:                                         ; preds = %do.body87
  br label %do.body89, !dbg !6613

do.body89:                                        ; preds = %do.end88
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6617, !srcloc !6619
  br label %do.body90, !dbg !6617

do.body90:                                        ; preds = %do.body89
  br label %do.end91, !dbg !6620

do.end91:                                         ; preds = %do.body90
  br label %do.end92, !dbg !6617

do.end92:                                         ; preds = %do.end91
  br label %do.end93, !dbg !6613

do.end93:                                         ; preds = %do.end92
  ret void, !dbg !6622
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !6623 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6626, metadata !DIExpression()), !dbg !6627
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6628, metadata !DIExpression()), !dbg !6629
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6630, metadata !DIExpression()), !dbg !6631
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6632
  %tobool = icmp ne i8* %0, null, !dbg !6632
  br i1 %tobool, label %if.then, label %if.else, !dbg !6634

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6635
  %2 = load i16, i16* %port.addr, align 2, !dbg !6636
  %3 = load i8, i8* %val.addr, align 1, !dbg !6637
  call void @vga_mm_w(i8* %1, i16 zeroext %2, i8 zeroext %3) #9, !dbg !6638
  br label %if.end, !dbg !6638

if.else:                                          ; preds = %entry
  %4 = load i16, i16* %port.addr, align 2, !dbg !6639
  %5 = load i8, i8* %val.addr, align 1, !dbg !6640
  call void @vga_io_w(i16 zeroext %4, i8 zeroext %5) #9, !dbg !6641
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6642
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wseq(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6643 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6646, metadata !DIExpression()), !dbg !6647
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6648, metadata !DIExpression()), !dbg !6649
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6650, metadata !DIExpression()), !dbg !6651
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6652
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6653
  %2 = load i8, i8* %val.addr, align 1, !dbg !6654
  call void @vga_w_fast(i8* %0, i16 zeroext 964, i8 zeroext %1, i8 zeroext %2) #9, !dbg !6655
  ret void, !dbg !6656
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_enable() #0 !dbg !6657 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !6658, metadata !DIExpression()), !dbg !6660
  %0 = load i64, i64* %__edi, align 8, !dbg !6660
  store i64 %0, i64* %__edi, align 8, !dbg !6660
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !6661, metadata !DIExpression()), !dbg !6660
  %1 = load i64, i64* %__esi, align 8, !dbg !6660
  store i64 %1, i64* %__esi, align 8, !dbg !6660
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !6662, metadata !DIExpression()), !dbg !6660
  %2 = load i64, i64* %__edx, align 8, !dbg !6660
  store i64 %2, i64* %__edx, align 8, !dbg !6660
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !6663, metadata !DIExpression()), !dbg !6660
  %3 = load i64, i64* %__ecx, align 8, !dbg !6660
  store i64 %3, i64* %__ecx, align 8, !dbg !6660
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !6664, metadata !DIExpression()), !dbg !6660
  %4 = load i64, i64* %__eax, align 8, !dbg !6660
  store i64 %4, i64* %__eax, align 8, !dbg !6660
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), align 8, !dbg !6660
  %6 = call i64 @llvm.read_register.i64(metadata !4460), !dbg !6660
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 39, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 3, i32 0), i32 1, i64 %6) #6, !dbg !6660, !srcloc !6665
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !6660
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !6660
  store i64 %asmresult, i64* %__eax, align 8, !dbg !6660
  call void @llvm.write_register.i64(metadata !4460, i64 %asmresult1), !dbg !6660
  ret void, !dbg !6666
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w(i8* %regbase, i16 zeroext %port, i8 zeroext %val) #0 !dbg !6667 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6668, metadata !DIExpression()), !dbg !6669
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6670, metadata !DIExpression()), !dbg !6671
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6672, metadata !DIExpression()), !dbg !6673
  %0 = load i8, i8* %val.addr, align 1, !dbg !6674
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6675
  %2 = load i16, i16* %port.addr, align 2, !dbg !6676
  %conv = zext i16 %2 to i32, !dbg !6676
  %idx.ext = sext i32 %conv to i64, !dbg !6677
  %add.ptr = getelementptr i8, i8* %1, i64 %idx.ext, !dbg !6677
  call void @writeb(i8 zeroext %0, i8* %add.ptr) #9, !dbg !6678
  ret void, !dbg !6679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w(i16 zeroext %port, i8 zeroext %val) #0 !dbg !6680 {
entry:
  %port.addr = alloca i16, align 2
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6683, metadata !DIExpression()), !dbg !6684
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6685, metadata !DIExpression()), !dbg !6686
  %0 = load i8, i8* %val.addr, align 1, !dbg !6687
  %1 = load i16, i16* %port.addr, align 2, !dbg !6688
  %conv = zext i16 %1 to i32, !dbg !6688
  call void @outb_p(i8 zeroext %0, i32 %conv) #9, !dbg !6689
  ret void, !dbg !6690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writeb(i8 zeroext %val, i8* %addr) #0 !dbg !6691 {
entry:
  %val.addr = alloca i8, align 1
  %addr.addr = alloca i8*, align 8
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6696, metadata !DIExpression()), !dbg !6697
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6698, metadata !DIExpression()), !dbg !6697
  %0 = load i8, i8* %val.addr, align 1, !dbg !6697
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6697
  call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 %0, i8* %1) #6, !dbg !6697, !srcloc !6699
  ret void, !dbg !6697
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6700 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6703, metadata !DIExpression()), !dbg !6704
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6705, metadata !DIExpression()), !dbg !6706
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6709, metadata !DIExpression()), !dbg !6710
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6711
  %tobool = icmp ne i8* %0, null, !dbg !6711
  br i1 %tobool, label %if.then, label %if.else, !dbg !6713

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6714
  %2 = load i16, i16* %port.addr, align 2, !dbg !6715
  %3 = load i8, i8* %reg.addr, align 1, !dbg !6716
  %4 = load i8, i8* %val.addr, align 1, !dbg !6717
  call void @vga_mm_w_fast(i8* %1, i16 zeroext %2, i8 zeroext %3, i8 zeroext %4) #9, !dbg !6718
  br label %if.end, !dbg !6718

if.else:                                          ; preds = %entry
  %5 = load i16, i16* %port.addr, align 2, !dbg !6719
  %6 = load i8, i8* %reg.addr, align 1, !dbg !6720
  %7 = load i8, i8* %val.addr, align 1, !dbg !6721
  call void @vga_io_w_fast(i16 zeroext %5, i8 zeroext %6, i8 zeroext %7) #9, !dbg !6722
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_mm_w_fast(i8* %regbase, i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6724 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6725, metadata !DIExpression()), !dbg !6726
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6727, metadata !DIExpression()), !dbg !6728
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6729, metadata !DIExpression()), !dbg !6730
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6731, metadata !DIExpression()), !dbg !6732
  %0 = load i8, i8* %val.addr, align 1, !dbg !6733
  %conv = zext i8 %0 to i32, !dbg !6733
  %shl = shl i32 %conv, 8, !dbg !6733
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6733
  %conv1 = zext i8 %1 to i32, !dbg !6733
  %or = or i32 %shl, %conv1, !dbg !6733
  %conv2 = trunc i32 %or to i16, !dbg !6733
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !6734
  %3 = load i16, i16* %port.addr, align 2, !dbg !6735
  %conv3 = zext i16 %3 to i32, !dbg !6735
  %idx.ext = sext i32 %conv3 to i64, !dbg !6736
  %add.ptr = getelementptr i8, i8* %2, i64 %idx.ext, !dbg !6736
  call void @writew(i16 zeroext %conv2, i8* %add.ptr) #9, !dbg !6737
  ret void, !dbg !6738
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_io_w_fast(i16 zeroext %port, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !6739 {
entry:
  %port.addr = alloca i16, align 2
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6742, metadata !DIExpression()), !dbg !6743
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6744, metadata !DIExpression()), !dbg !6745
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !6746, metadata !DIExpression()), !dbg !6747
  %0 = load i8, i8* %val.addr, align 1, !dbg !6748
  %conv = zext i8 %0 to i32, !dbg !6748
  %shl = shl i32 %conv, 8, !dbg !6748
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6748
  %conv1 = zext i8 %1 to i32, !dbg !6748
  %or = or i32 %shl, %conv1, !dbg !6748
  %conv2 = trunc i32 %or to i16, !dbg !6748
  %2 = load i16, i16* %port.addr, align 2, !dbg !6749
  %conv3 = zext i16 %2 to i32, !dbg !6749
  call void @outw(i16 zeroext %conv2, i32 %conv3) #9, !dbg !6750
  ret void, !dbg !6751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writew(i16 zeroext %val, i8* %addr) #0 !dbg !6752 {
entry:
  %val.addr = alloca i16, align 2
  %addr.addr = alloca i8*, align 8
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !6755, metadata !DIExpression()), !dbg !6756
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6757, metadata !DIExpression()), !dbg !6756
  %0 = load i16, i16* %val.addr, align 2, !dbg !6756
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !6756
  %2 = bitcast i8* %1 to i16*, !dbg !6756
  call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %0, i16* %2) #6, !dbg !6756, !srcloc !6758
  ret void, !dbg !6756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_r(i8* %regbase, i16 zeroext %port) #0 !dbg !6759 {
entry:
  %retval = alloca i8, align 1
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6762, metadata !DIExpression()), !dbg !6763
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6764, metadata !DIExpression()), !dbg !6765
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6766
  %tobool = icmp ne i8* %0, null, !dbg !6766
  br i1 %tobool, label %if.then, label %if.else, !dbg !6768

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %regbase.addr, align 8, !dbg !6769
  %2 = load i16, i16* %port.addr, align 2, !dbg !6770
  %call = call zeroext i8 @vga_mm_r(i8* %1, i16 zeroext %2) #9, !dbg !6771
  store i8 %call, i8* %retval, align 1, !dbg !6772
  br label %return, !dbg !6772

if.else:                                          ; preds = %entry
  %3 = load i16, i16* %port.addr, align 2, !dbg !6773
  %call1 = call zeroext i8 @vga_io_r(i16 zeroext %3) #9, !dbg !6774
  store i8 %call1, i8* %retval, align 1, !dbg !6775
  br label %return, !dbg !6775

return:                                           ; preds = %if.else, %if.then
  %4 = load i8, i8* %retval, align 1, !dbg !6776
  ret i8 %4, !dbg !6776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_rseq(i8* %regbase, i8 zeroext %reg) #0 !dbg !6777 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6780, metadata !DIExpression()), !dbg !6781
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6782, metadata !DIExpression()), !dbg !6783
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6784
  %1 = load i8, i8* %reg.addr, align 1, !dbg !6785
  call void @vga_w(i8* %0, i16 zeroext 964, i8 zeroext %1) #9, !dbg !6786
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !6787
  %call = call zeroext i8 @vga_r(i8* %2, i16 zeroext 965) #9, !dbg !6788
  ret i8 %call, !dbg !6789
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_mm_r(i8* %regbase, i16 zeroext %port) #0 !dbg !6790 {
entry:
  %regbase.addr = alloca i8*, align 8
  %port.addr = alloca i16, align 2
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !6791, metadata !DIExpression()), !dbg !6792
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6793, metadata !DIExpression()), !dbg !6794
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !6795
  %1 = load i16, i16* %port.addr, align 2, !dbg !6796
  %conv = zext i16 %1 to i32, !dbg !6796
  %idx.ext = sext i32 %conv to i64, !dbg !6797
  %add.ptr = getelementptr i8, i8* %0, i64 %idx.ext, !dbg !6797
  %call = call zeroext i8 @readb(i8* %add.ptr) #9, !dbg !6798
  ret i8 %call, !dbg !6799
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @vga_io_r(i16 zeroext %port) #0 !dbg !6800 {
entry:
  %port.addr = alloca i16, align 2
  store i16 %port, i16* %port.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %port.addr, metadata !6803, metadata !DIExpression()), !dbg !6804
  %0 = load i16, i16* %port.addr, align 2, !dbg !6805
  %conv = zext i16 %0 to i32, !dbg !6805
  %call = call zeroext i8 @inb_p(i32 %conv) #9, !dbg !6806
  ret i8 %call, !dbg !6807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @readb(i8* %addr) #0 !dbg !6808 {
entry:
  %addr.addr = alloca i8*, align 8
  %ret = alloca i8, align 1
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !6813, metadata !DIExpression()), !dbg !6814
  call void @llvm.dbg.declare(metadata i8* %ret, metadata !6815, metadata !DIExpression()), !dbg !6814
  %0 = load i8*, i8** %addr.addr, align 8, !dbg !6814
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %0) #6, !dbg !6814, !srcloc !6816
  store i8 %1, i8* %ret, align 1, !dbg !6814
  %2 = load i8, i8* %ret, align 1, !dbg !6814
  ret i8 %2, !dbg !6814
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_do_font_op(%struct.vgastate* %state, i8* %arg, i32 %set, i1 zeroext %ch512) #0 !dbg !6817 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.vgastate*, align 8
  %arg.addr = alloca i8*, align 8
  %set.addr = alloca i32, align 4
  %ch512.addr = alloca i8, align 1
  %video_port_status = alloca i16, align 2
  %font_select = alloca i32, align 4
  %beg = alloca i32, align 4
  %i = alloca i32, align 4
  %charmap = alloca i8*, align 8
  %clear_attribs = alloca i8, align 1
  %start = alloca i64, align 8
  %tmp = alloca i64, align 8
  %start4 = alloca i64, align 8
  %tmp6 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %tmp82 = alloca i32, align 4
  %c = alloca %struct.vc_data*, align 8
  store %struct.vgastate* %state, %struct.vgastate** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vgastate** %state.addr, metadata !6820, metadata !DIExpression()), !dbg !6821
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6822, metadata !DIExpression()), !dbg !6823
  store i32 %set, i32* %set.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %set.addr, metadata !6824, metadata !DIExpression()), !dbg !6825
  %frombool = zext i1 %ch512 to i8
  store i8 %frombool, i8* %ch512.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %ch512.addr, metadata !6826, metadata !DIExpression()), !dbg !6827
  call void @llvm.dbg.declare(metadata i16* %video_port_status, metadata !6828, metadata !DIExpression()), !dbg !6829
  %0 = load i16, i16* @vga_video_port_reg, align 2, !dbg !6830
  %conv = zext i16 %0 to i32, !dbg !6830
  %add = add i32 %conv, 6, !dbg !6831
  %conv1 = trunc i32 %add to i16, !dbg !6830
  store i16 %conv1, i16* %video_port_status, align 2, !dbg !6829
  call void @llvm.dbg.declare(metadata i32* %font_select, metadata !6832, metadata !DIExpression()), !dbg !6833
  store i32 0, i32* %font_select, align 4, !dbg !6833
  call void @llvm.dbg.declare(metadata i32* %beg, metadata !6834, metadata !DIExpression()), !dbg !6835
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6836, metadata !DIExpression()), !dbg !6837
  call void @llvm.dbg.declare(metadata i8** %charmap, metadata !6838, metadata !DIExpression()), !dbg !6839
  call void @llvm.dbg.declare(metadata i8* %clear_attribs, metadata !6840, metadata !DIExpression()), !dbg !6841
  store i8 0, i8* %clear_attribs, align 1, !dbg !6841
  %1 = load i8, i8* @vga_video_type, align 1, !dbg !6842
  %conv2 = zext i8 %1 to i32, !dbg !6842
  %cmp = icmp ne i32 %conv2, 32, !dbg !6844
  br i1 %cmp, label %if.then, label %if.else, !dbg !6845

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %start, metadata !6846, metadata !DIExpression()), !dbg !6849
  %call = call i8* @phys_to_virt(i64 655360) #9, !dbg !6849
  %2 = ptrtoint i8* %call to i64, !dbg !6849
  store i64 %2, i64* %start, align 8, !dbg !6849
  %3 = load i64, i64* %start, align 8, !dbg !6849
  store i64 %3, i64* %tmp, align 8, !dbg !6850
  %4 = load i64, i64* %tmp, align 8, !dbg !6849
  %5 = inttoptr i64 %4 to i8*, !dbg !6852
  store i8* %5, i8** %charmap, align 8, !dbg !6853
  store i32 14, i32* %beg, align 4, !dbg !6854
  br label %if.end, !dbg !6855

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %start4, metadata !6856, metadata !DIExpression()), !dbg !6859
  %call5 = call i8* @phys_to_virt(i64 655360) #9, !dbg !6859
  %6 = ptrtoint i8* %call5 to i64, !dbg !6859
  store i64 %6, i64* %start4, align 8, !dbg !6859
  %7 = load i64, i64* %start4, align 8, !dbg !6859
  store i64 %7, i64* %tmp6, align 8, !dbg !6860
  %8 = load i64, i64* %tmp6, align 8, !dbg !6859
  %9 = inttoptr i64 %8 to i8*, !dbg !6862
  store i8* %9, i8** %charmap, align 8, !dbg !6863
  store i32 10, i32* %beg, align 4, !dbg !6864
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i8*, i8** %arg.addr, align 8, !dbg !6865
  %tobool = icmp ne i8* %10, null, !dbg !6865
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !6867

if.then7:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !6868
  br label %return, !dbg !6868

if.end8:                                          ; preds = %if.end
  store i8 0, i8* @vga_font_is_default, align 1, !dbg !6869
  %11 = load i8, i8* %ch512.addr, align 1, !dbg !6870
  %tobool9 = trunc i8 %11 to i1, !dbg !6870
  %12 = zext i1 %tobool9 to i64, !dbg !6870
  %cond = select i1 %tobool9, i32 4, i32 0, !dbg !6870
  store i32 %cond, i32* %font_select, align 4, !dbg !6871
  br label %do.body, !dbg !6872

do.body:                                          ; preds = %if.end8
  br label %do.body11, !dbg !6873

do.body11:                                        ; preds = %do.body
  call void @arch_local_irq_disable() #9, !dbg !6875
  br label %do.end, !dbg !6875

do.end:                                           ; preds = %do.body11
  br label %do.body12, !dbg !6873

do.body12:                                        ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6877, !srcloc !6879
  br label %do.body13, !dbg !6877

do.body13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6880

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !6877

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !6873

do.end16:                                         ; preds = %do.end15
  %13 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6882
  %vgabase = getelementptr inbounds %struct.vgastate, %struct.vgastate* %13, i32 0, i32 0, !dbg !6883
  %14 = load i8*, i8** %vgabase, align 8, !dbg !6883
  call void @vga_wseq(i8* %14, i8 zeroext 0, i8 zeroext 1) #9, !dbg !6884
  %15 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6885
  %vgabase17 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %15, i32 0, i32 0, !dbg !6886
  %16 = load i8*, i8** %vgabase17, align 8, !dbg !6886
  call void @vga_wseq(i8* %16, i8 zeroext 2, i8 zeroext 4) #9, !dbg !6887
  %17 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6888
  %vgabase18 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %17, i32 0, i32 0, !dbg !6889
  %18 = load i8*, i8** %vgabase18, align 8, !dbg !6889
  call void @vga_wseq(i8* %18, i8 zeroext 4, i8 zeroext 7) #9, !dbg !6890
  %19 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6891
  %vgabase19 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %19, i32 0, i32 0, !dbg !6892
  %20 = load i8*, i8** %vgabase19, align 8, !dbg !6892
  call void @vga_wseq(i8* %20, i8 zeroext 0, i8 zeroext 3) #9, !dbg !6893
  %21 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6894
  %vgabase20 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %21, i32 0, i32 0, !dbg !6895
  %22 = load i8*, i8** %vgabase20, align 8, !dbg !6895
  call void @vga_wgfx(i8* %22, i8 zeroext 4, i8 zeroext 2) #9, !dbg !6896
  %23 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6897
  %vgabase21 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %23, i32 0, i32 0, !dbg !6898
  %24 = load i8*, i8** %vgabase21, align 8, !dbg !6898
  call void @vga_wgfx(i8* %24, i8 zeroext 5, i8 zeroext 0) #9, !dbg !6899
  %25 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !6900
  %vgabase22 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %25, i32 0, i32 0, !dbg !6901
  %26 = load i8*, i8** %vgabase22, align 8, !dbg !6901
  call void @vga_wgfx(i8* %26, i8 zeroext 6, i8 zeroext 0) #9, !dbg !6902
  br label %do.body23, !dbg !6903

do.body23:                                        ; preds = %do.end16
  br label %do.body24, !dbg !6904

do.body24:                                        ; preds = %do.body23
  call void @arch_local_irq_enable() #9, !dbg !6906
  br label %do.end25, !dbg !6906

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !6904

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !6908, !srcloc !6910
  br label %do.body27, !dbg !6908

do.body27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !6911

do.end28:                                         ; preds = %do.body27
  br label %do.end29, !dbg !6908

do.end29:                                         ; preds = %do.end28
  br label %do.end30, !dbg !6904

do.end30:                                         ; preds = %do.end29
  %27 = load i8*, i8** %arg.addr, align 8, !dbg !6913
  %tobool31 = icmp ne i8* %27, null, !dbg !6913
  br i1 %tobool31, label %if.then32, label %if.end89, !dbg !6915

if.then32:                                        ; preds = %do.end30
  %28 = load i32, i32* %set.addr, align 4, !dbg !6916
  %tobool33 = icmp ne i32 %28, 0, !dbg !6916
  br i1 %tobool33, label %if.then34, label %if.else39, !dbg !6919

if.then34:                                        ; preds = %if.then32
  store i32 0, i32* %i, align 4, !dbg !6920
  br label %for.cond, !dbg !6922

for.cond:                                         ; preds = %for.inc, %if.then34
  %29 = load i32, i32* %i, align 4, !dbg !6923
  %cmp35 = icmp slt i32 %29, 8192, !dbg !6925
  br i1 %cmp35, label %for.body, label %for.end, !dbg !6926

for.body:                                         ; preds = %for.cond
  %30 = load i8*, i8** %arg.addr, align 8, !dbg !6927
  %31 = load i32, i32* %i, align 4, !dbg !6927
  %idxprom = sext i32 %31 to i64, !dbg !6927
  %arrayidx = getelementptr i8, i8* %30, i64 %idxprom, !dbg !6927
  %32 = load i8, i8* %arrayidx, align 1, !dbg !6927
  %33 = load i8*, i8** %charmap, align 8, !dbg !6927
  %34 = load i32, i32* %i, align 4, !dbg !6927
  %idx.ext = sext i32 %34 to i64, !dbg !6927
  %add.ptr = getelementptr i8, i8* %33, i64 %idx.ext, !dbg !6927
  store i8 %32, i8* %add.ptr, align 1, !dbg !6927
  call void @___might_sleep(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 930, i32 0) #9, !dbg !6929
  %call38 = call i32 @_cond_resched() #9, !dbg !6929
  store i32 %call38, i32* %tmp37, align 4, !dbg !6929
  %35 = load i32, i32* %tmp37, align 4, !dbg !6929
  br label %for.inc, !dbg !6931

for.inc:                                          ; preds = %for.body
  %36 = load i32, i32* %i, align 4, !dbg !6932
  %inc = add i32 %36, 1, !dbg !6932
  store i32 %inc, i32* %i, align 4, !dbg !6932
  br label %for.cond, !dbg !6933, !llvm.loop !6934

for.end:                                          ; preds = %for.cond
  br label %if.end53, !dbg !6935

if.else39:                                        ; preds = %if.then32
  store i32 0, i32* %i, align 4, !dbg !6936
  br label %for.cond40, !dbg !6938

for.cond40:                                       ; preds = %for.inc50, %if.else39
  %37 = load i32, i32* %i, align 4, !dbg !6939
  %cmp41 = icmp slt i32 %37, 8192, !dbg !6941
  br i1 %cmp41, label %for.body43, label %for.end52, !dbg !6942

for.body43:                                       ; preds = %for.cond40
  %38 = load i8*, i8** %charmap, align 8, !dbg !6943
  %39 = load i32, i32* %i, align 4, !dbg !6943
  %idx.ext44 = sext i32 %39 to i64, !dbg !6943
  %add.ptr45 = getelementptr i8, i8* %38, i64 %idx.ext44, !dbg !6943
  %40 = load i8, i8* %add.ptr45, align 1, !dbg !6943
  %41 = load i8*, i8** %arg.addr, align 8, !dbg !6945
  %42 = load i32, i32* %i, align 4, !dbg !6946
  %idxprom46 = sext i32 %42 to i64, !dbg !6945
  %arrayidx47 = getelementptr i8, i8* %41, i64 %idxprom46, !dbg !6945
  store i8 %40, i8* %arrayidx47, align 1, !dbg !6947
  call void @___might_sleep(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 935, i32 0) #9, !dbg !6948
  %call49 = call i32 @_cond_resched() #9, !dbg !6948
  store i32 %call49, i32* %tmp48, align 4, !dbg !6948
  %43 = load i32, i32* %tmp48, align 4, !dbg !6948
  br label %for.inc50, !dbg !6950

for.inc50:                                        ; preds = %for.body43
  %44 = load i32, i32* %i, align 4, !dbg !6951
  %inc51 = add i32 %44, 1, !dbg !6951
  store i32 %inc51, i32* %i, align 4, !dbg !6951
  br label %for.cond40, !dbg !6952, !llvm.loop !6953

for.end52:                                        ; preds = %for.cond40
  br label %if.end53

if.end53:                                         ; preds = %for.end52, %for.end
  %45 = load i8, i8* %ch512.addr, align 1, !dbg !6955
  %tobool54 = trunc i8 %45 to i1, !dbg !6955
  br i1 %tobool54, label %if.then55, label %if.end88, !dbg !6957

if.then55:                                        ; preds = %if.end53
  %46 = load i8*, i8** %charmap, align 8, !dbg !6958
  %add.ptr56 = getelementptr i8, i8* %46, i64 16384, !dbg !6958
  store i8* %add.ptr56, i8** %charmap, align 8, !dbg !6958
  %47 = load i8*, i8** %arg.addr, align 8, !dbg !6960
  %add.ptr57 = getelementptr i8, i8* %47, i64 8192, !dbg !6960
  store i8* %add.ptr57, i8** %arg.addr, align 8, !dbg !6960
  %48 = load i32, i32* %set.addr, align 4, !dbg !6961
  %tobool58 = icmp ne i32 %48, 0, !dbg !6961
  br i1 %tobool58, label %if.then59, label %if.else73, !dbg !6963

if.then59:                                        ; preds = %if.then55
  store i32 0, i32* %i, align 4, !dbg !6964
  br label %for.cond60, !dbg !6966

for.cond60:                                       ; preds = %for.inc70, %if.then59
  %49 = load i32, i32* %i, align 4, !dbg !6967
  %cmp61 = icmp slt i32 %49, 8192, !dbg !6969
  br i1 %cmp61, label %for.body63, label %for.end72, !dbg !6970

for.body63:                                       ; preds = %for.cond60
  %50 = load i8*, i8** %arg.addr, align 8, !dbg !6971
  %51 = load i32, i32* %i, align 4, !dbg !6971
  %idxprom64 = sext i32 %51 to i64, !dbg !6971
  %arrayidx65 = getelementptr i8, i8* %50, i64 %idxprom64, !dbg !6971
  %52 = load i8, i8* %arrayidx65, align 1, !dbg !6971
  %53 = load i8*, i8** %charmap, align 8, !dbg !6971
  %54 = load i32, i32* %i, align 4, !dbg !6971
  %idx.ext66 = sext i32 %54 to i64, !dbg !6971
  %add.ptr67 = getelementptr i8, i8* %53, i64 %idx.ext66, !dbg !6971
  store i8 %52, i8* %add.ptr67, align 1, !dbg !6971
  call void @___might_sleep(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 949, i32 0) #9, !dbg !6973
  %call69 = call i32 @_cond_resched() #9, !dbg !6973
  store i32 %call69, i32* %tmp68, align 4, !dbg !6973
  %55 = load i32, i32* %tmp68, align 4, !dbg !6973
  br label %for.inc70, !dbg !6975

for.inc70:                                        ; preds = %for.body63
  %56 = load i32, i32* %i, align 4, !dbg !6976
  %inc71 = add i32 %56, 1, !dbg !6976
  store i32 %inc71, i32* %i, align 4, !dbg !6976
  br label %for.cond60, !dbg !6977, !llvm.loop !6978

for.end72:                                        ; preds = %for.cond60
  br label %if.end87, !dbg !6979

if.else73:                                        ; preds = %if.then55
  store i32 0, i32* %i, align 4, !dbg !6980
  br label %for.cond74, !dbg !6982

for.cond74:                                       ; preds = %for.inc84, %if.else73
  %57 = load i32, i32* %i, align 4, !dbg !6983
  %cmp75 = icmp slt i32 %57, 8192, !dbg !6985
  br i1 %cmp75, label %for.body77, label %for.end86, !dbg !6986

for.body77:                                       ; preds = %for.cond74
  %58 = load i8*, i8** %charmap, align 8, !dbg !6987
  %59 = load i32, i32* %i, align 4, !dbg !6987
  %idx.ext78 = sext i32 %59 to i64, !dbg !6987
  %add.ptr79 = getelementptr i8, i8* %58, i64 %idx.ext78, !dbg !6987
  %60 = load i8, i8* %add.ptr79, align 1, !dbg !6987
  %61 = load i8*, i8** %arg.addr, align 8, !dbg !6989
  %62 = load i32, i32* %i, align 4, !dbg !6990
  %idxprom80 = sext i32 %62 to i64, !dbg !6989
  %arrayidx81 = getelementptr i8, i8* %61, i64 %idxprom80, !dbg !6989
  store i8 %60, i8* %arrayidx81, align 1, !dbg !6991
  call void @___might_sleep(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 954, i32 0) #9, !dbg !6992
  %call83 = call i32 @_cond_resched() #9, !dbg !6992
  store i32 %call83, i32* %tmp82, align 4, !dbg !6992
  %63 = load i32, i32* %tmp82, align 4, !dbg !6992
  br label %for.inc84, !dbg !6994

for.inc84:                                        ; preds = %for.body77
  %64 = load i32, i32* %i, align 4, !dbg !6995
  %inc85 = add i32 %64, 1, !dbg !6995
  store i32 %inc85, i32* %i, align 4, !dbg !6995
  br label %for.cond74, !dbg !6996, !llvm.loop !6997

for.end86:                                        ; preds = %for.cond74
  br label %if.end87

if.end87:                                         ; preds = %for.end86, %for.end72
  br label %if.end88, !dbg !6999

if.end88:                                         ; preds = %if.end87, %if.end53
  br label %if.end89, !dbg !7000

if.end89:                                         ; preds = %if.end88, %do.end30
  br label %do.body90, !dbg !7001

do.body90:                                        ; preds = %if.end89
  br label %do.body91, !dbg !7002

do.body91:                                        ; preds = %do.body90
  call void @arch_local_irq_disable() #9, !dbg !7004
  br label %do.end92, !dbg !7004

do.end92:                                         ; preds = %do.body91
  br label %do.body93, !dbg !7002

do.body93:                                        ; preds = %do.end92
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7006, !srcloc !7008
  br label %do.body94, !dbg !7006

do.body94:                                        ; preds = %do.body93
  br label %do.end95, !dbg !7009

do.end95:                                         ; preds = %do.body94
  br label %do.end96, !dbg !7006

do.end96:                                         ; preds = %do.end95
  br label %do.end97, !dbg !7002

do.end97:                                         ; preds = %do.end96
  %65 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7011
  %vgabase98 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %65, i32 0, i32 0, !dbg !7012
  %66 = load i8*, i8** %vgabase98, align 8, !dbg !7012
  call void @vga_wseq(i8* %66, i8 zeroext 0, i8 zeroext 1) #9, !dbg !7013
  %67 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7014
  %vgabase99 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %67, i32 0, i32 0, !dbg !7015
  %68 = load i8*, i8** %vgabase99, align 8, !dbg !7015
  call void @vga_wseq(i8* %68, i8 zeroext 2, i8 zeroext 3) #9, !dbg !7016
  %69 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7017
  %vgabase100 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %69, i32 0, i32 0, !dbg !7018
  %70 = load i8*, i8** %vgabase100, align 8, !dbg !7018
  call void @vga_wseq(i8* %70, i8 zeroext 4, i8 zeroext 3) #9, !dbg !7019
  %71 = load i32, i32* %set.addr, align 4, !dbg !7020
  %tobool101 = icmp ne i32 %71, 0, !dbg !7020
  br i1 %tobool101, label %if.then102, label %if.end105, !dbg !7022

if.then102:                                       ; preds = %do.end97
  %72 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7023
  %vgabase103 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %72, i32 0, i32 0, !dbg !7024
  %73 = load i8*, i8** %vgabase103, align 8, !dbg !7024
  %74 = load i32, i32* %font_select, align 4, !dbg !7025
  %conv104 = trunc i32 %74 to i8, !dbg !7025
  call void @vga_wseq(i8* %73, i8 zeroext 3, i8 zeroext %conv104) #9, !dbg !7026
  br label %if.end105, !dbg !7026

if.end105:                                        ; preds = %if.then102, %do.end97
  %75 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7027
  %vgabase106 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %75, i32 0, i32 0, !dbg !7028
  %76 = load i8*, i8** %vgabase106, align 8, !dbg !7028
  call void @vga_wseq(i8* %76, i8 zeroext 0, i8 zeroext 3) #9, !dbg !7029
  %77 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7030
  %vgabase107 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %77, i32 0, i32 0, !dbg !7031
  %78 = load i8*, i8** %vgabase107, align 8, !dbg !7031
  call void @vga_wgfx(i8* %78, i8 zeroext 4, i8 zeroext 0) #9, !dbg !7032
  %79 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7033
  %vgabase108 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %79, i32 0, i32 0, !dbg !7034
  %80 = load i8*, i8** %vgabase108, align 8, !dbg !7034
  call void @vga_wgfx(i8* %80, i8 zeroext 5, i8 zeroext 16) #9, !dbg !7035
  %81 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7036
  %vgabase109 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %81, i32 0, i32 0, !dbg !7037
  %82 = load i8*, i8** %vgabase109, align 8, !dbg !7037
  %83 = load i32, i32* %beg, align 4, !dbg !7038
  %conv110 = trunc i32 %83 to i8, !dbg !7038
  call void @vga_wgfx(i8* %82, i8 zeroext 6, i8 zeroext %conv110) #9, !dbg !7039
  %84 = load i32, i32* %set.addr, align 4, !dbg !7040
  %tobool111 = icmp ne i32 %84, 0, !dbg !7042
  br i1 %tobool111, label %land.lhs.true, label %if.end131, !dbg !7043

land.lhs.true:                                    ; preds = %if.end105
  %85 = load i8, i8* %ch512.addr, align 1, !dbg !7044
  %tobool112 = trunc i8 %85 to i1, !dbg !7044
  %conv113 = zext i1 %tobool112 to i32, !dbg !7044
  %86 = load i8, i8* @vga_512_chars, align 1, !dbg !7045
  %tobool114 = trunc i8 %86 to i1, !dbg !7045
  %conv115 = zext i1 %tobool114 to i32, !dbg !7045
  %cmp116 = icmp ne i32 %conv113, %conv115, !dbg !7046
  br i1 %cmp116, label %if.then118, label %if.end131, !dbg !7047

if.then118:                                       ; preds = %land.lhs.true
  %87 = load i8, i8* %ch512.addr, align 1, !dbg !7048
  %tobool119 = trunc i8 %87 to i1, !dbg !7048
  %frombool120 = zext i1 %tobool119 to i8, !dbg !7050
  store i8 %frombool120, i8* @vga_512_chars, align 1, !dbg !7050
  %88 = load i16, i16* %video_port_status, align 2, !dbg !7051
  %conv121 = zext i16 %88 to i32, !dbg !7051
  %call122 = call zeroext i8 @inb_p(i32 %conv121) #9, !dbg !7052
  %89 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7053
  %vgabase123 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %89, i32 0, i32 0, !dbg !7054
  %90 = load i8*, i8** %vgabase123, align 8, !dbg !7054
  %91 = load i8, i8* %ch512.addr, align 1, !dbg !7055
  %tobool124 = trunc i8 %91 to i1, !dbg !7055
  %92 = zext i1 %tobool124 to i64, !dbg !7055
  %cond126 = select i1 %tobool124, i32 7, i32 15, !dbg !7055
  %conv127 = trunc i32 %cond126 to i8, !dbg !7055
  call void @vga_wattr(i8* %90, i8 zeroext 18, i8 zeroext %conv127) #9, !dbg !7056
  %93 = load i16, i16* %video_port_status, align 2, !dbg !7057
  %conv128 = zext i16 %93 to i32, !dbg !7057
  %call129 = call zeroext i8 @inb_p(i32 %conv128) #9, !dbg !7058
  %94 = load %struct.vgastate*, %struct.vgastate** %state.addr, align 8, !dbg !7059
  %vgabase130 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %94, i32 0, i32 0, !dbg !7060
  %95 = load i8*, i8** %vgabase130, align 8, !dbg !7060
  call void @vga_wattr(i8* %95, i8 zeroext 32, i8 zeroext 0) #9, !dbg !7061
  store i8 1, i8* %clear_attribs, align 1, !dbg !7062
  br label %if.end131, !dbg !7063

if.end131:                                        ; preds = %if.then118, %land.lhs.true, %if.end105
  br label %do.body132, !dbg !7064

do.body132:                                       ; preds = %if.end131
  br label %do.body133, !dbg !7065

do.body133:                                       ; preds = %do.body132
  call void @arch_local_irq_enable() #9, !dbg !7067
  br label %do.end134, !dbg !7067

do.end134:                                        ; preds = %do.body133
  br label %do.body135, !dbg !7065

do.body135:                                       ; preds = %do.end134
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7069, !srcloc !7071
  br label %do.body136, !dbg !7069

do.body136:                                       ; preds = %do.body135
  br label %do.end137, !dbg !7072

do.end137:                                        ; preds = %do.body136
  br label %do.end138, !dbg !7069

do.end138:                                        ; preds = %do.end137
  br label %do.end139, !dbg !7065

do.end139:                                        ; preds = %do.end138
  %96 = load i8, i8* %clear_attribs, align 1, !dbg !7074
  %tobool140 = trunc i8 %96 to i1, !dbg !7074
  br i1 %tobool140, label %if.then141, label %if.end162, !dbg !7076

if.then141:                                       ; preds = %do.end139
  store i32 0, i32* %i, align 4, !dbg !7077
  br label %for.cond142, !dbg !7080

for.cond142:                                      ; preds = %for.inc159, %if.then141
  %97 = load i32, i32* %i, align 4, !dbg !7081
  %cmp143 = icmp slt i32 %97, 63, !dbg !7083
  br i1 %cmp143, label %for.body145, label %for.end161, !dbg !7084

for.body145:                                      ; preds = %for.cond142
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c, metadata !7085, metadata !DIExpression()), !dbg !7087
  %98 = load i32, i32* %i, align 4, !dbg !7088
  %idxprom146 = sext i32 %98 to i64, !dbg !7089
  %arrayidx147 = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom146, !dbg !7089
  %d = getelementptr inbounds %struct.vc, %struct.vc* %arrayidx147, i32 0, i32 0, !dbg !7090
  %99 = load %struct.vc_data*, %struct.vc_data** %d, align 8, !dbg !7090
  store %struct.vc_data* %99, %struct.vc_data** %c, align 8, !dbg !7087
  %100 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7091
  %tobool148 = icmp ne %struct.vc_data* %100, null, !dbg !7091
  br i1 %tobool148, label %land.lhs.true149, label %if.end158, !dbg !7093

land.lhs.true149:                                 ; preds = %for.body145
  %101 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7094
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 13, !dbg !7095
  %102 = load %struct.consw*, %struct.consw** %vc_sw, align 8, !dbg !7095
  %cmp150 = icmp eq %struct.consw* %102, bitcast ({ %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }* @vga_con to %struct.consw*), !dbg !7096
  br i1 %cmp150, label %if.then152, label %if.end158, !dbg !7097

if.then152:                                       ; preds = %land.lhs.true149
  %103 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7098
  %vc_hi_font_mask = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 26, !dbg !7100
  store i16 0, i16* %vc_hi_font_mask, align 8, !dbg !7101
  %104 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7102
  call void @clear_buffer_attributes(%struct.vc_data* %104) #9, !dbg !7103
  %105 = load i8, i8* %ch512.addr, align 1, !dbg !7104
  %tobool153 = trunc i8 %105 to i1, !dbg !7104
  %106 = zext i1 %tobool153 to i64, !dbg !7104
  %cond155 = select i1 %tobool153, i32 2048, i32 0, !dbg !7104
  %conv156 = trunc i32 %cond155 to i16, !dbg !7104
  %107 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7105
  %vc_hi_font_mask157 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 26, !dbg !7106
  store i16 %conv156, i16* %vc_hi_font_mask157, align 8, !dbg !7107
  br label %if.end158, !dbg !7108

if.end158:                                        ; preds = %if.then152, %land.lhs.true149, %for.body145
  br label %for.inc159, !dbg !7109

for.inc159:                                       ; preds = %if.end158
  %108 = load i32, i32* %i, align 4, !dbg !7110
  %inc160 = add i32 %108, 1, !dbg !7110
  store i32 %inc160, i32* %i, align 4, !dbg !7110
  br label %for.cond142, !dbg !7111, !llvm.loop !7112

for.end161:                                       ; preds = %for.cond142
  br label %if.end162, !dbg !7114

if.end162:                                        ; preds = %for.end161, %do.end139
  store i32 0, i32* %retval, align 4, !dbg !7115
  br label %return, !dbg !7115

return:                                           ; preds = %if.end162, %if.then7
  %109 = load i32, i32* %retval, align 4, !dbg !7116
  ret i32 %109, !dbg !7116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @vgacon_adjust_height(%struct.vc_data* %vc, i32 %fontheight) #0 !dbg !7117 {
entry:
  %vc.addr = alloca %struct.vc_data*, align 8
  %fontheight.addr = alloca i32, align 4
  %ovr = alloca i8, align 1
  %vde = alloca i8, align 1
  %fsr = alloca i8, align 1
  %rows = alloca i32, align 4
  %maxscan = alloca i32, align 4
  %i = alloca i32, align 4
  %c = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %vc, %struct.vc_data** %vc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vc_data** %vc.addr, metadata !7120, metadata !DIExpression()), !dbg !7121
  store i32 %fontheight, i32* %fontheight.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fontheight.addr, metadata !7122, metadata !DIExpression()), !dbg !7123
  call void @llvm.dbg.declare(metadata i8* %ovr, metadata !7124, metadata !DIExpression()), !dbg !7125
  call void @llvm.dbg.declare(metadata i8* %vde, metadata !7126, metadata !DIExpression()), !dbg !7127
  call void @llvm.dbg.declare(metadata i8* %fsr, metadata !7128, metadata !DIExpression()), !dbg !7129
  call void @llvm.dbg.declare(metadata i32* %rows, metadata !7130, metadata !DIExpression()), !dbg !7131
  call void @llvm.dbg.declare(metadata i32* %maxscan, metadata !7132, metadata !DIExpression()), !dbg !7133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !7134, metadata !DIExpression()), !dbg !7135
  %0 = load %struct.vc_data*, %struct.vc_data** %vc.addr, align 8, !dbg !7136
  %vc_scan_lines = getelementptr inbounds %struct.vc_data, %struct.vc_data* %0, i32 0, i32 7, !dbg !7137
  %1 = load i32, i32* %vc_scan_lines, align 8, !dbg !7137
  %2 = load i32, i32* %fontheight.addr, align 4, !dbg !7138
  %div = udiv i32 %1, %2, !dbg !7139
  store i32 %div, i32* %rows, align 4, !dbg !7140
  %3 = load i32, i32* %rows, align 4, !dbg !7141
  %4 = load i32, i32* %fontheight.addr, align 4, !dbg !7142
  %mul = mul i32 %3, %4, !dbg !7143
  %sub = sub i32 %mul, 1, !dbg !7144
  store i32 %sub, i32* %maxscan, align 4, !dbg !7145
  br label %do.body, !dbg !7146

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7147

do.body1:                                         ; preds = %do.body
  call void @arch_local_irq_disable() #9, !dbg !7149
  br label %do.end, !dbg !7149

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !7147

do.body2:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7151, !srcloc !7153
  br label %do.body3, !dbg !7151

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !7154

do.end4:                                          ; preds = %do.body3
  br label %do.end5, !dbg !7151

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !7147

do.end6:                                          ; preds = %do.end5
  %5 = load i16, i16* @vga_video_port_reg, align 2, !dbg !7156
  %conv = zext i16 %5 to i32, !dbg !7156
  call void @outb_p(i8 zeroext 7, i32 %conv) #9, !dbg !7157
  %6 = load i16, i16* @vga_video_port_val, align 2, !dbg !7158
  %conv7 = zext i16 %6 to i32, !dbg !7158
  %call = call zeroext i8 @inb_p(i32 %conv7) #9, !dbg !7159
  store i8 %call, i8* %ovr, align 1, !dbg !7160
  %7 = load i16, i16* @vga_video_port_reg, align 2, !dbg !7161
  %conv8 = zext i16 %7 to i32, !dbg !7161
  call void @outb_p(i8 zeroext 9, i32 %conv8) #9, !dbg !7162
  %8 = load i16, i16* @vga_video_port_val, align 2, !dbg !7163
  %conv9 = zext i16 %8 to i32, !dbg !7163
  %call10 = call zeroext i8 @inb_p(i32 %conv9) #9, !dbg !7164
  store i8 %call10, i8* %fsr, align 1, !dbg !7165
  br label %do.body11, !dbg !7166

do.body11:                                        ; preds = %do.end6
  br label %do.body12, !dbg !7167

do.body12:                                        ; preds = %do.body11
  call void @arch_local_irq_enable() #9, !dbg !7169
  br label %do.end13, !dbg !7169

do.end13:                                         ; preds = %do.body12
  br label %do.body14, !dbg !7167

do.body14:                                        ; preds = %do.end13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7171, !srcloc !7173
  br label %do.body15, !dbg !7171

do.body15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !7174

do.end16:                                         ; preds = %do.body15
  br label %do.end17, !dbg !7171

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !7167

do.end18:                                         ; preds = %do.end17
  %9 = load i32, i32* %maxscan, align 4, !dbg !7176
  %and = and i32 %9, 255, !dbg !7177
  %conv19 = trunc i32 %and to i8, !dbg !7176
  store i8 %conv19, i8* %vde, align 1, !dbg !7178
  %10 = load i8, i8* %ovr, align 1, !dbg !7179
  %conv20 = zext i8 %10 to i32, !dbg !7179
  %and21 = and i32 %conv20, 189, !dbg !7180
  %11 = load i32, i32* %maxscan, align 4, !dbg !7181
  %and22 = and i32 %11, 256, !dbg !7182
  %shr = ashr i32 %and22, 7, !dbg !7183
  %add = add i32 %and21, %shr, !dbg !7184
  %12 = load i32, i32* %maxscan, align 4, !dbg !7185
  %and23 = and i32 %12, 512, !dbg !7186
  %shr24 = ashr i32 %and23, 3, !dbg !7187
  %add25 = add i32 %add, %shr24, !dbg !7188
  %conv26 = trunc i32 %add25 to i8, !dbg !7189
  store i8 %conv26, i8* %ovr, align 1, !dbg !7190
  %13 = load i8, i8* %fsr, align 1, !dbg !7191
  %conv27 = zext i8 %13 to i32, !dbg !7191
  %and28 = and i32 %conv27, 224, !dbg !7192
  %14 = load i32, i32* %fontheight.addr, align 4, !dbg !7193
  %sub29 = sub i32 %14, 1, !dbg !7194
  %add30 = add i32 %and28, %sub29, !dbg !7195
  %conv31 = trunc i32 %add30 to i8, !dbg !7196
  store i8 %conv31, i8* %fsr, align 1, !dbg !7197
  br label %do.body32, !dbg !7198

do.body32:                                        ; preds = %do.end18
  br label %do.body33, !dbg !7199

do.body33:                                        ; preds = %do.body32
  call void @arch_local_irq_disable() #9, !dbg !7201
  br label %do.end34, !dbg !7201

do.end34:                                         ; preds = %do.body33
  br label %do.body35, !dbg !7199

do.body35:                                        ; preds = %do.end34
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7203, !srcloc !7205
  br label %do.body36, !dbg !7203

do.body36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !7206

do.end37:                                         ; preds = %do.body36
  br label %do.end38, !dbg !7203

do.end38:                                         ; preds = %do.end37
  br label %do.end39, !dbg !7199

do.end39:                                         ; preds = %do.end38
  %15 = load i16, i16* @vga_video_port_reg, align 2, !dbg !7208
  %conv40 = zext i16 %15 to i32, !dbg !7208
  call void @outb_p(i8 zeroext 7, i32 %conv40) #9, !dbg !7209
  %16 = load i8, i8* %ovr, align 1, !dbg !7210
  %17 = load i16, i16* @vga_video_port_val, align 2, !dbg !7211
  %conv41 = zext i16 %17 to i32, !dbg !7211
  call void @outb_p(i8 zeroext %16, i32 %conv41) #9, !dbg !7212
  %18 = load i16, i16* @vga_video_port_reg, align 2, !dbg !7213
  %conv42 = zext i16 %18 to i32, !dbg !7213
  call void @outb_p(i8 zeroext 9, i32 %conv42) #9, !dbg !7214
  %19 = load i8, i8* %fsr, align 1, !dbg !7215
  %20 = load i16, i16* @vga_video_port_val, align 2, !dbg !7216
  %conv43 = zext i16 %20 to i32, !dbg !7216
  call void @outb_p(i8 zeroext %19, i32 %conv43) #9, !dbg !7217
  %21 = load i16, i16* @vga_video_port_reg, align 2, !dbg !7218
  %conv44 = zext i16 %21 to i32, !dbg !7218
  call void @outb_p(i8 zeroext 18, i32 %conv44) #9, !dbg !7219
  %22 = load i8, i8* %vde, align 1, !dbg !7220
  %23 = load i16, i16* @vga_video_port_val, align 2, !dbg !7221
  %conv45 = zext i16 %23 to i32, !dbg !7221
  call void @outb_p(i8 zeroext %22, i32 %conv45) #9, !dbg !7222
  br label %do.body46, !dbg !7223

do.body46:                                        ; preds = %do.end39
  br label %do.body47, !dbg !7224

do.body47:                                        ; preds = %do.body46
  call void @arch_local_irq_enable() #9, !dbg !7226
  br label %do.end48, !dbg !7226

do.end48:                                         ; preds = %do.body47
  br label %do.body49, !dbg !7224

do.body49:                                        ; preds = %do.end48
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #6, !dbg !7228, !srcloc !7230
  br label %do.body50, !dbg !7228

do.body50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !7231

do.end51:                                         ; preds = %do.body50
  br label %do.end52, !dbg !7228

do.end52:                                         ; preds = %do.end51
  br label %do.end53, !dbg !7224

do.end53:                                         ; preds = %do.end52
  %24 = load i32, i32* %fontheight.addr, align 4, !dbg !7233
  store i32 %24, i32* @vga_video_font_height, align 4, !dbg !7234
  store i32 0, i32* %i, align 4, !dbg !7235
  br label %for.cond, !dbg !7237

for.cond:                                         ; preds = %for.inc, %do.end53
  %25 = load i32, i32* %i, align 4, !dbg !7238
  %cmp = icmp slt i32 %25, 63, !dbg !7240
  br i1 %cmp, label %for.body, label %for.end, !dbg !7241

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.vc_data** %c, metadata !7242, metadata !DIExpression()), !dbg !7244
  %26 = load i32, i32* %i, align 4, !dbg !7245
  %idxprom = sext i32 %26 to i64, !dbg !7246
  %arrayidx = getelementptr [63 x %struct.vc], [63 x %struct.vc]* @vc_cons, i64 0, i64 %idxprom, !dbg !7246
  %d = getelementptr inbounds %struct.vc, %struct.vc* %arrayidx, i32 0, i32 0, !dbg !7247
  %27 = load %struct.vc_data*, %struct.vc_data** %d, align 8, !dbg !7247
  store %struct.vc_data* %27, %struct.vc_data** %c, align 8, !dbg !7244
  %28 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7248
  %tobool = icmp ne %struct.vc_data* %28, null, !dbg !7248
  br i1 %tobool, label %land.lhs.true, label %if.end62, !dbg !7250

land.lhs.true:                                    ; preds = %for.body
  %29 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7251
  %vc_sw = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 13, !dbg !7252
  %30 = load %struct.consw*, %struct.consw** %vc_sw, align 8, !dbg !7252
  %cmp55 = icmp eq %struct.consw* %30, bitcast ({ %struct.module*, i8* ()*, void (%struct.vc_data*, i32)*, void (%struct.vc_data*)*, void (%struct.vc_data*, i32, i32, i32, i32)*, void (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i16*, i32, i32, i32)*, void (%struct.vc_data*, i32)*, i1 (%struct.vc_data*, i32, i32, i32, i32)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*, i32, i32)*, i32 (%struct.vc_data*, %struct.console_font*, i32)*, i32 (%struct.vc_data*, %struct.console_font*)*, i32 (%struct.vc_data*, %struct.console_font*, i8*)*, i32 (%struct.vc_data*, i32)*, i32 (%struct.vc_data*, i32, i32, i32)*, void (%struct.vc_data*, i8*)*, void (%struct.vc_data*, i32)*, i32 (%struct.vc_data*)*, void (%struct.vc_data*)*, i8 (%struct.vc_data*, i8, i32, i1, i1, i1, i1)*, void (%struct.vc_data*, i16*, i32)*, i16* (%struct.vc_data*, i32)*, i64 (%struct.vc_data*, i64, i32*, i32*)*, void (%struct.vc_data*)*, i32 (%struct.vc_data*)*, i32 (%struct.vc_data*)* }* @vga_con to %struct.consw*), !dbg !7253
  br i1 %cmp55, label %if.then, label %if.end62, !dbg !7254

if.then:                                          ; preds = %land.lhs.true
  %31 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7255
  %call57 = call zeroext i1 @con_is_visible(%struct.vc_data* %31) #9, !dbg !7258
  br i1 %call57, label %if.then58, label %if.end, !dbg !7259

if.then58:                                        ; preds = %if.then
  store i32 0, i32* @cursor_size_lastfrom, align 4, !dbg !7260
  store i32 0, i32* @cursor_size_lastto, align 4, !dbg !7262
  %32 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7263
  %vc_sw59 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 13, !dbg !7264
  %33 = load %struct.consw*, %struct.consw** %vc_sw59, align 8, !dbg !7264
  %con_cursor = getelementptr inbounds %struct.consw, %struct.consw* %33, i32 0, i32 7, !dbg !7265
  %con_cursor60 = bitcast {}** %con_cursor to void (%struct.vc_data*, i32)**, !dbg !7265
  %34 = load void (%struct.vc_data*, i32)*, void (%struct.vc_data*, i32)** %con_cursor60, align 8, !dbg !7265
  %35 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7266
  call void %34(%struct.vc_data* %35, i32 1) #9, !dbg !7263
  br label %if.end, !dbg !7267

if.end:                                           ; preds = %if.then58, %if.then
  %36 = load i32, i32* %fontheight.addr, align 4, !dbg !7268
  %37 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7269
  %vc_font = getelementptr inbounds %struct.vc_data, %struct.vc_data* %37, i32 0, i32 27, !dbg !7270
  %height = getelementptr inbounds %struct.console_font, %struct.console_font* %vc_font, i32 0, i32 1, !dbg !7271
  store i32 %36, i32* %height, align 4, !dbg !7272
  %38 = load %struct.vc_data*, %struct.vc_data** %c, align 8, !dbg !7273
  %39 = load i32, i32* %rows, align 4, !dbg !7274
  %call61 = call i32 @vc_resize(%struct.vc_data* %38, i32 0, i32 %39) #9, !dbg !7275
  br label %if.end62, !dbg !7276

if.end62:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc, !dbg !7277

for.inc:                                          ; preds = %if.end62
  %40 = load i32, i32* %i, align 4, !dbg !7278
  %inc = add i32 %40, 1, !dbg !7278
  store i32 %inc, i32* %i, align 4, !dbg !7278
  br label %for.cond, !dbg !7279, !llvm.loop !7280

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !7282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wgfx(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !7283 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !7284, metadata !DIExpression()), !dbg !7285
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !7286, metadata !DIExpression()), !dbg !7287
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !7288, metadata !DIExpression()), !dbg !7289
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !7290
  %1 = load i8, i8* %reg.addr, align 1, !dbg !7291
  %2 = load i8, i8* %val.addr, align 1, !dbg !7292
  call void @vga_w_fast(i8* %0, i16 zeroext 974, i8 zeroext %1, i8 zeroext %2) #9, !dbg !7293
  ret void, !dbg !7294
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @___might_sleep(i8* %file, i32 %line, i32 %preempt_offset) #0 !dbg !7295 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %preempt_offset.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !7299, metadata !DIExpression()), !dbg !7300
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !7301, metadata !DIExpression()), !dbg !7302
  store i32 %preempt_offset, i32* %preempt_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preempt_offset.addr, metadata !7303, metadata !DIExpression()), !dbg !7304
  ret void, !dbg !7305
}

; Function Attrs: noredzone
declare dso_local i32 @_cond_resched() #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @vga_wattr(i8* %regbase, i8 zeroext %reg, i8 zeroext %val) #0 !dbg !7306 {
entry:
  %regbase.addr = alloca i8*, align 8
  %reg.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store i8* %regbase, i8** %regbase.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %regbase.addr, metadata !7307, metadata !DIExpression()), !dbg !7308
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !7311, metadata !DIExpression()), !dbg !7312
  %0 = load i8*, i8** %regbase.addr, align 8, !dbg !7313
  %1 = load i8, i8* %reg.addr, align 1, !dbg !7314
  call void @vga_w(i8* %0, i16 zeroext 960, i8 zeroext %1) #9, !dbg !7315
  %2 = load i8*, i8** %regbase.addr, align 8, !dbg !7316
  %3 = load i8, i8* %val.addr, align 1, !dbg !7317
  call void @vga_w(i8* %2, i16 zeroext 960, i8 zeroext %3) #9, !dbg !7318
  ret void, !dbg !7319
}

; Function Attrs: noredzone
declare dso_local void @clear_buffer_attributes(%struct.vc_data*) #4

; Function Attrs: noredzone
declare dso_local void @vc_scrolldelta_helper(%struct.vc_data*, i32, i32, i8*, i32) #4

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4460}
!llvm.module.flags = !{!4461, !4462, !4463, !4464}
!llvm.ident = !{!4465}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vgacon_text_mode_force", scope: !2, file: !3, line: 102, type: !521, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !128, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/video/console/vgacon.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !100, !105}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !14, line: 546, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !20, line: 65, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !25, line: 16, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !31, line: 59, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36}
!33 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !38, line: 54, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !44, line: 296, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!45 = !{!46, !47, !48, !49, !50, !51}
!46 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!47 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!48 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!49 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!50 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!51 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !53, line: 9, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57, !58, !59}
!55 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!58 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!59 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !61, line: 26, baseType: !7, size: 32, elements: !62)
!61 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!62 = !{!63, !64, !65}
!63 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!64 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!65 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !67, line: 44, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !73, line: 343, baseType: !7, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!74 = !{!75, !76, !77, !78}
!75 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!78 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !80, line: 524, baseType: !7, size: 32, elements: !81)
!80 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!81 = !{!82, !83, !84, !85, !86}
!82 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!86 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !80, line: 502, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "vc_intensity", file: !94, line: 26, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/console_struct.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "VCI_HALF_BRIGHT", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "VCI_NORMAL", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "VCI_BOLD", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "VCI_MASK", value: 3, isUnsigned: true)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "con_scroll", file: !101, line: 27, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/console.h", directory: "/home/lizy2001/genbc/linux")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "SM_UP", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "SM_DOWN", value: 1, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!110 = !{!111, !112, !113, !120, !121, !124, !126}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !116, line: 19, baseType: !117)
!116 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !118, line: 24, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !123)
!123 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !{!129, !143, !145, !4329, !4334, !0, !4337, !4342, !4344, !4346, !4348, !4364, !4366, !4368, !4370, !4372, !4374, !4376, !4378, !4393, !4395, !4397, !4399, !4401, !4403, !4405, !4407, !4409, !4411, !4413, !4415, !4417, !4419, !4421, !4423, !4425, !4427, !4429, !4431, !4433, !4435, !4437, !4453, !4455, !4457}
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__setup_text_mode", scope: !2, file: !3, line: 124, type: !131, isLocal: true, isDefinition: true, align: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !132, line: 241, size: 192, elements: !133)
!132 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!133 = !{!134, !137, !142}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !131, file: !132, line: 242, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !131, file: !132, line: 243, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !126}
!141 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !131, file: !132, line: 244, baseType: !141, size: 32, offset: 128)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(name: "__setup_no_scroll", scope: !2, file: !3, line: 137, type: !131, isLocal: true, isDefinition: true, align: 64)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "vga_con", scope: !2, file: !3, line: 1214, type: !147, isLocal: false, isDefinition: true)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "consw", file: !101, line: 44, size: 1728, elements: !149)
!149 = !{!150, !154, !158, !4249, !4253, !4257, !4261, !4267, !4268, !4272, !4276, !4280, !4285, !4289, !4293, !4297, !4301, !4305, !4306, !4307, !4308, !4312, !4316, !4322, !4326, !4327, !4328}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !148, file: !101, line: 45, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !153, line: 76, flags: DIFlagFwdDecl)
!153 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!154 = !DIDerivedType(tag: DW_TAG_member, name: "con_startup", scope: !148, file: !101, line: 46, baseType: !155, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!135}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "con_init", scope: !148, file: !101, line: 47, baseType: !159, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162, !141}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_data", file: !94, line: 94, size: 5952, elements: !164)
!164 = !{!165, !4148, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4175, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4197, !4198, !4199, !4200, !4202, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4230, !4234, !4235, !4236, !4237, !4238, !4239, !4241, !4244, !4246}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !163, file: !94, line: 95, baseType: !166, size: 2432)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !167, line: 230, size: 2432, elements: !168)
!167 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/lizy2001/genbc/linux")
!168 = !{!169, !257, !4098, !4099, !4121, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !166, file: !167, line: 231, baseType: !170, size: 1024)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !167, line: 85, size: 1024, elements: !171)
!171 = !{!172, !195, !222, !244, !249, !250, !254, !255, !256}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !170, file: !167, line: 86, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !167, line: 58, size: 256, elements: !175)
!175 = !{!176, !186, !187, !188, !189, !190, !191}
!176 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !167, line: 59, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !167, line: 59, size: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !167, line: 60, baseType: !173, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !177, file: !167, line: 61, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !182, line: 58, size: 64, elements: !183)
!182 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !182, line: 59, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !174, file: !167, line: 63, baseType: !141, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !174, file: !167, line: 64, baseType: !141, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !174, file: !167, line: 65, baseType: !141, size: 32, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !174, file: !167, line: 66, baseType: !141, size: 32, offset: 160)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !167, line: 67, baseType: !141, size: 32, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !174, file: !167, line: 69, baseType: !192, offset: 256)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: -1)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !170, file: !167, line: 87, baseType: !196, size: 256, offset: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !197, line: 102, size: 256, elements: !198)
!197 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !210, !216}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !196, file: !197, line: 103, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !201, line: 13, baseType: !202)
!201 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !203, line: 175, baseType: !204)
!203 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 173, size: 64, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !204, file: !203, line: 174, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !116, line: 22, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !118, line: 30, baseType: !209)
!209 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !196, file: !197, line: 104, baseType: !211, size: 128, offset: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !203, line: 178, size: 128, elements: !212)
!212 = !{!213, !215}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !203, line: 179, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !211, file: !203, line: 179, baseType: !214, size: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !196, file: !197, line: 105, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !197, line: 21, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{null, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !170, file: !167, line: 88, baseType: !223, size: 192, offset: 320)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !224, line: 53, size: 192, elements: !225)
!224 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!225 = !{!226, !227, !243}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !223, file: !224, line: 54, baseType: !200, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !223, file: !224, line: 55, baseType: !228, offset: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !229, line: 83, baseType: !230)
!229 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !229, line: 71, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, scope: !230, file: !229, line: 72, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !230, file: !229, line: 72, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !233, file: !229, line: 73, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !229, line: 20, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !236, file: !229, line: 21, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !240, line: 25, baseType: !241)
!240 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 25, elements: !242)
!242 = !{}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !223, file: !224, line: 59, baseType: !211, size: 128, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !170, file: !167, line: 89, baseType: !245, size: 32, offset: 512)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !203, line: 168, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 166, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !246, file: !203, line: 167, baseType: !141, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !170, file: !167, line: 90, baseType: !174, size: 256, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !170, file: !167, line: 91, baseType: !251, size: 64, offset: 832)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !182, line: 54, size: 64, elements: !252)
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !251, file: !182, line: 55, baseType: !185, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !170, file: !167, line: 92, baseType: !245, size: 32, offset: 896)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !170, file: !167, line: 93, baseType: !141, size: 32, offset: 928)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !170, file: !167, line: 94, baseType: !173, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !166, file: !167, line: 232, baseType: !258, size: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !167, line: 285, size: 5056, elements: !260)
!260 = !{!261, !262, !272, !3820, !3996, !3997, !3998, !4007, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !259, file: !167, line: 286, baseType: !141, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !259, file: !167, line: 287, baseType: !263, size: 32, offset: 32)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !264, line: 19, size: 32, elements: !265)
!264 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !263, file: !264, line: 20, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !268, line: 113, baseType: !269)
!268 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !268, line: 111, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !269, file: !268, line: 112, baseType: !245, size: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !259, file: !167, line: 288, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !275)
!275 = !{!276, !3392, !3393, !3396, !3397, !3448, !3521, !3522, !3523, !3524, !3525, !3534, !3639, !3652, !3655, !3656, !3660, !3662, !3663, !3664, !3668, !3674, !3675, !3678, !3682, !3772, !3773, !3774, !3775, !3776, !3808, !3809, !3810, !3813, !3816, !3817, !3818, !3819}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !274, file: !73, line: 462, baseType: !277, size: 512)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !278, line: 64, size: 512, elements: !279)
!278 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!279 = !{!280, !281, !282, !284, !328, !3259, !3386, !3387, !3388, !3389, !3390, !3391}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !278, line: 65, baseType: !135, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !277, file: !278, line: 66, baseType: !211, size: 128, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !277, file: !278, line: 67, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !277, file: !278, line: 68, baseType: !285, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !278, line: 192, size: 704, elements: !287)
!287 = !{!288, !289, !290, !291}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !286, file: !278, line: 193, baseType: !211, size: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !286, file: !278, line: 194, baseType: !228, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !286, file: !278, line: 195, baseType: !277, size: 512, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !286, file: !278, line: 196, baseType: !292, size: 64, offset: 640)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !278, line: 156, size: 192, elements: !295)
!295 = !{!296, !301, !306}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !294, file: !278, line: 157, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!141, !285, !283}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !278, line: 158, baseType: !302, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!135, !285, !283}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !294, file: !278, line: 159, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!141, !285, !283, !311}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !278, line: 148, size: 20736, elements: !313)
!313 = !{!314, !318, !322, !323, !327}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !312, file: !278, line: 149, baseType: !315, size: 192)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 192, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 3)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !312, file: !278, line: 150, baseType: !319, size: 4096, offset: 192)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 4096, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !312, file: !278, line: 151, baseType: !141, size: 32, offset: 4288)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !312, file: !278, line: 152, baseType: !324, size: 16384, offset: 4320)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 2048)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !312, file: !278, line: 153, baseType: !141, size: 32, offset: 20704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !277, file: !278, line: 69, baseType: !329, size: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !278, line: 138, size: 448, elements: !331)
!331 = !{!332, !336, !364, !366, !3221, !3249, !3253}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !330, file: !278, line: 139, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !283}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !330, file: !278, line: 140, baseType: !337, size: 64, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !340, line: 230, size: 128, elements: !341)
!340 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!341 = !{!342, !357}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !339, file: !340, line: 231, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !283, !351, !126}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !203, line: 60, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !348, line: 73, baseType: !349)
!348 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !348, line: 15, baseType: !350)
!350 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !340, line: 30, size: 128, elements: !353)
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !352, file: !340, line: 31, baseType: !135, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !352, file: !340, line: 32, baseType: !356, size: 16, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !203, line: 19, baseType: !119)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !339, file: !340, line: 232, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{!346, !283, !351, !135, !361}
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !203, line: 55, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !348, line: 72, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !348, line: 16, baseType: !112)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !330, file: !278, line: 141, baseType: !365, size: 64, offset: 128)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !330, file: !278, line: 142, baseType: !367, size: 64, offset: 192)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !340, line: 84, size: 320, elements: !371)
!371 = !{!372, !373, !377, !3218, !3219}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !340, line: 85, baseType: !135, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !370, file: !340, line: 86, baseType: !374, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!356, !283, !351, !141}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !370, file: !340, line: 88, baseType: !378, size: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!356, !283, !381, !141}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !340, line: 168, size: 448, elements: !383)
!383 = !{!384, !385, !386, !387, !3213, !3214}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !382, file: !340, line: 169, baseType: !352, size: 128)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !382, file: !340, line: 170, baseType: !361, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !382, file: !340, line: 171, baseType: !111, size: 64, offset: 192)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !382, file: !340, line: 172, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!346, !391, !283, !381, !126, !562, !361}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !393)
!393 = !{!394, !407, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3196, !3197, !3206, !3207, !3208, !3209, !3210, !3211, !3212}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !392, file: !44, line: 920, baseType: !395, size: 128)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !44, line: 917, size: 128, elements: !396)
!396 = !{!397, !398}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !395, file: !44, line: 918, baseType: !181, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !395, file: !44, line: 919, baseType: !399, size: 128, align: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !203, line: 216, size: 128, align: 64, elements: !400)
!400 = !{!401, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !399, file: !203, line: 217, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !399, file: !203, line: 218, baseType: !404, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !402}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !392, file: !44, line: 921, baseType: !408, size: 128, offset: 128)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !409, line: 8, size: 128, elements: !410)
!409 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !415}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !408, file: !409, line: 9, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !414, line: 18, flags: DIFlagFwdDecl)
!414 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!415 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !408, file: !409, line: 10, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !414, line: 89, size: 1536, elements: !418)
!418 = !{!419, !420, !430, !438, !439, !459, !3146, !3148, !3160, !3161, !3162, !3163, !3164, !3170, !3171, !3172}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !417, file: !414, line: 91, baseType: !7, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !417, file: !414, line: 92, baseType: !421, size: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !422, line: 277, baseType: !423)
!422 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !422, line: 277, size: 32, elements: !424)
!424 = !{!425}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !423, file: !422, line: 277, baseType: !426, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !422, line: 70, baseType: !427)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !422, line: 65, size: 32, elements: !428)
!428 = !{!429}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !427, file: !422, line: 66, baseType: !7, size: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !417, file: !414, line: 93, baseType: !431, size: 128, offset: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !432, line: 38, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !431, file: !432, line: 39, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !431, file: !432, line: 39, baseType: !437, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !417, file: !414, line: 94, baseType: !416, size: 64, offset: 192)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !417, file: !414, line: 95, baseType: !440, size: 128, offset: 256)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !414, line: 47, size: 128, elements: !441)
!441 = !{!442, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !414, line: 48, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !440, file: !414, line: 48, size: 64, elements: !444)
!444 = !{!445, !452}
!445 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !414, line: 49, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !443, file: !414, line: 49, size: 64, elements: !447)
!447 = !{!448, !451}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !446, file: !414, line: 50, baseType: !449, size: 32)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !116, line: 21, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !118, line: 27, baseType: !7)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !446, file: !414, line: 50, baseType: !449, size: 32, offset: 32)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !443, file: !414, line: 52, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !116, line: 23, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !118, line: 31, baseType: !455)
!455 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !440, file: !414, line: 54, baseType: !457, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !417, file: !414, line: 96, baseType: !460, size: 64, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !462)
!462 = !{!463, !464, !465, !473, !480, !481, !627, !2850, !2851, !2852, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !3114, !3122, !3123, !3124, !3142, !3143, !3144, !3145}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !461, file: !44, line: 611, baseType: !356, size: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !461, file: !44, line: 612, baseType: !119, size: 16, offset: 16)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !461, file: !44, line: 613, baseType: !466, size: 32, offset: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !467, line: 23, baseType: !468)
!467 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 21, size: 32, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !468, file: !467, line: 22, baseType: !471, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !203, line: 32, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !348, line: 49, baseType: !7)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !461, file: !44, line: 614, baseType: !474, size: 32, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !467, line: 28, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !467, line: 26, size: 32, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !475, file: !467, line: 27, baseType: !478, size: 32)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !203, line: 33, baseType: !479)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !348, line: 50, baseType: !7)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !461, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !461, file: !44, line: 622, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !485)
!485 = !{!486, !490, !503, !507, !513, !517, !523, !527, !531, !535, !539, !540, !546, !550, !574, !603, !607, !613, !618, !622, !623}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !484, file: !44, line: 1865, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!416, !460, !416, !7}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !484, file: !44, line: 1866, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!135, !416, !460, !494}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !496, line: 10, size: 128, elements: !497)
!496 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!497 = !{!498, !502}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !495, file: !496, line: 11, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !111}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !495, file: !496, line: 12, baseType: !111, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !484, file: !44, line: 1867, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!141, !460, !141}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !484, file: !44, line: 1868, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !460, !141}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !484, file: !44, line: 1870, baseType: !514, size: 64, offset: 256)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!141, !416, !126, !141}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !484, file: !44, line: 1872, baseType: !518, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!141, !460, !416, !356, !521}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !203, line: 30, baseType: !522)
!522 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !484, file: !44, line: 1873, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!141, !416, !460, !416}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !484, file: !44, line: 1874, baseType: !528, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!141, !460, !416}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !484, file: !44, line: 1875, baseType: !532, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!141, !460, !416, !135}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !484, file: !44, line: 1876, baseType: !536, size: 64, offset: 576)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!141, !460, !416, !356}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !484, file: !44, line: 1877, baseType: !528, size: 64, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !484, file: !44, line: 1878, baseType: !541, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!141, !460, !416, !356, !544}
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !203, line: 16, baseType: !545)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !203, line: 13, baseType: !449)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !484, file: !44, line: 1879, baseType: !547, size: 64, offset: 768)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!141, !460, !416, !460, !416, !7}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !484, file: !44, line: 1881, baseType: !551, size: 64, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!141, !416, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !556)
!556 = !{!557, !558, !559, !560, !561, !564, !571, !572, !573}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !555, file: !44, line: 220, baseType: !7, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !555, file: !44, line: 221, baseType: !356, size: 16, offset: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !555, file: !44, line: 222, baseType: !466, size: 32, offset: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !555, file: !44, line: 223, baseType: !474, size: 32, offset: 96)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !555, file: !44, line: 224, baseType: !562, size: 64, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !203, line: 46, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !348, line: 88, baseType: !209)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !555, file: !44, line: 225, baseType: !565, size: 128, offset: 192)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !566, line: 13, size: 128, elements: !567)
!566 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!567 = !{!568, !570}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !565, file: !566, line: 14, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !566, line: 8, baseType: !208)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !565, file: !566, line: 15, baseType: !350, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !555, file: !44, line: 226, baseType: !565, size: 128, offset: 320)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !555, file: !44, line: 227, baseType: !565, size: 128, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !555, file: !44, line: 234, baseType: !391, size: 64, offset: 576)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !484, file: !44, line: 1882, baseType: !575, size: 64, offset: 896)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!141, !578, !580, !449, !7}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !582, line: 22, size: 1152, elements: !583)
!582 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!583 = !{!584, !585, !586, !587, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !581, file: !582, line: 23, baseType: !449, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !581, file: !582, line: 24, baseType: !356, size: 16, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !581, file: !582, line: 25, baseType: !7, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !581, file: !582, line: 26, baseType: !588, size: 32, offset: 96)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !203, line: 104, baseType: !449)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !581, file: !582, line: 27, baseType: !453, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !581, file: !582, line: 28, baseType: !453, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !581, file: !582, line: 37, baseType: !453, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !581, file: !582, line: 38, baseType: !544, size: 32, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !581, file: !582, line: 39, baseType: !544, size: 32, offset: 352)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !581, file: !582, line: 40, baseType: !466, size: 32, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !581, file: !582, line: 41, baseType: !474, size: 32, offset: 416)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !581, file: !582, line: 42, baseType: !562, size: 64, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !581, file: !582, line: 43, baseType: !565, size: 128, offset: 512)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !581, file: !582, line: 44, baseType: !565, size: 128, offset: 640)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !581, file: !582, line: 45, baseType: !565, size: 128, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !581, file: !582, line: 46, baseType: !565, size: 128, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !581, file: !582, line: 47, baseType: !453, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !581, file: !582, line: 48, baseType: !453, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !484, file: !44, line: 1883, baseType: !604, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!346, !416, !126, !361}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !484, file: !44, line: 1884, baseType: !608, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!141, !460, !611, !453, !453}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !484, file: !44, line: 1886, baseType: !614, size: 64, offset: 1088)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!141, !460, !617, !141}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !484, file: !44, line: 1887, baseType: !619, size: 64, offset: 1152)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!141, !460, !416, !391, !7, !356}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !484, file: !44, line: 1890, baseType: !536, size: 64, offset: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !484, file: !44, line: 1891, baseType: !624, size: 64, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!141, !460, !511, !141}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !461, file: !44, line: 623, baseType: !628, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !630)
!630 = !{!631, !632, !633, !634, !635, !636, !683, !2457, !2539, !2622, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2638, !2642, !2643, !2646, !2647, !2650, !2651, !2652, !2693, !2720, !2721, !2722, !2723, !2724, !2725, !2728, !2730, !2737, !2738, !2740, !2741, !2742, !2801, !2802, !2817, !2818, !2819, !2820, !2821, !2824, !2825, !2826, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !629, file: !44, line: 1417, baseType: !211, size: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !629, file: !44, line: 1418, baseType: !544, size: 32, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !629, file: !44, line: 1419, baseType: !123, size: 8, offset: 160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !629, file: !44, line: 1420, baseType: !112, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !629, file: !44, line: 1421, baseType: !562, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !629, file: !44, line: 1422, baseType: !637, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !639)
!639 = !{!640, !641, !642, !649, !653, !657, !661, !662, !663, !673, !676, !677, !678, !680, !681, !682}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !638, file: !44, line: 2229, baseType: !135, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !638, file: !44, line: 2230, baseType: !141, size: 32, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !638, file: !44, line: 2238, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{!141, !646}
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !648, line: 28, flags: DIFlagFwdDecl)
!648 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!649 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !638, file: !44, line: 2239, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !652)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !638, file: !44, line: 2240, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!416, !637, !141, !135, !111}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !638, file: !44, line: 2242, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !628}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !44, line: 2243, baseType: !151, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !638, file: !44, line: 2244, baseType: !637, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !638, file: !44, line: 2245, baseType: !664, size: 64, offset: 512)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !203, line: 182, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !664, file: !203, line: 183, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !203, line: 186, size: 128, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !203, line: 187, baseType: !667, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !668, file: !203, line: 187, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !638, file: !44, line: 2247, baseType: !674, offset: 576)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !675, line: 187, elements: !242)
!675 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!676 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !638, file: !44, line: 2248, baseType: !674, offset: 576)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !638, file: !44, line: 2249, baseType: !674, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !638, file: !44, line: 2250, baseType: !679, offset: 576)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, elements: !316)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !638, file: !44, line: 2252, baseType: !674, offset: 576)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !638, file: !44, line: 2253, baseType: !674, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !638, file: !44, line: 2254, baseType: !674, offset: 576)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !629, file: !44, line: 1423, baseType: !684, size: 64, offset: 384)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !686)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !687)
!687 = !{!688, !692, !696, !697, !701, !707, !711, !712, !713, !717, !721, !722, !723, !724, !730, !735, !736, !779, !780, !781, !782, !2441, !2456}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !686, file: !44, line: 1936, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!460, !628}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !686, file: !44, line: 1937, baseType: !693, size: 64, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{null, !460}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !686, file: !44, line: 1938, baseType: !693, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !686, file: !44, line: 1940, baseType: !698, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !460, !141}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !686, file: !44, line: 1941, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!141, !460, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !686, file: !44, line: 1942, baseType: !708, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!141, !460}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !686, file: !44, line: 1943, baseType: !693, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !686, file: !44, line: 1944, baseType: !658, size: 64, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !686, file: !44, line: 1945, baseType: !714, size: 64, offset: 512)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!141, !628, !141}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !686, file: !44, line: 1946, baseType: !718, size: 64, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!141, !628}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !686, file: !44, line: 1947, baseType: !718, size: 64, offset: 640)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !686, file: !44, line: 1948, baseType: !718, size: 64, offset: 704)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !686, file: !44, line: 1949, baseType: !718, size: 64, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !686, file: !44, line: 1950, baseType: !725, size: 64, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!141, !416, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !686, file: !44, line: 1951, baseType: !731, size: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!141, !628, !734, !126}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !686, file: !44, line: 1952, baseType: !658, size: 64, offset: 960)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !686, file: !44, line: 1954, baseType: !737, size: 64, offset: 1024)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!141, !740, !416}
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !742, line: 16, size: 896, elements: !743)
!742 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!743 = !{!744, !745, !746, !747, !748, !749, !750, !751, !752, !774, !775, !778}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !741, file: !742, line: 17, baseType: !126, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !741, file: !742, line: 18, baseType: !361, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !741, file: !742, line: 19, baseType: !361, size: 64, offset: 128)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !741, file: !742, line: 20, baseType: !361, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !741, file: !742, line: 21, baseType: !361, size: 64, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !741, file: !742, line: 22, baseType: !562, size: 64, offset: 320)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !741, file: !742, line: 23, baseType: !562, size: 64, offset: 384)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !741, file: !742, line: 24, baseType: !223, size: 192, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !741, file: !742, line: 25, baseType: !753, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !742, line: 31, size: 256, elements: !756)
!756 = !{!757, !762, !766, !770}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !755, file: !742, line: 32, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!111, !740, !761}
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !755, file: !742, line: 33, baseType: !763, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{null, !740, !111}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !742, line: 34, baseType: !767, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!111, !740, !111, !761}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !755, file: !742, line: 35, baseType: !771, size: 64, offset: 192)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!141, !740, !111}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !741, file: !742, line: 26, baseType: !141, size: 32, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !741, file: !742, line: 27, baseType: !776, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !741, file: !742, line: 28, baseType: !111, size: 64, offset: 832)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !686, file: !44, line: 1955, baseType: !737, size: 64, offset: 1088)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !686, file: !44, line: 1956, baseType: !737, size: 64, offset: 1152)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !686, file: !44, line: 1957, baseType: !737, size: 64, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !686, file: !44, line: 1963, baseType: !783, size: 64, offset: 1280)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!141, !628, !786, !809}
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !788, line: 68, size: 512, align: 128, elements: !789)
!788 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !791, !2433, !2440}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !787, file: !788, line: 69, baseType: !112, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !788, line: 77, baseType: !792, size: 320, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !788, line: 77, size: 320, elements: !793)
!793 = !{!794, !969, !974, !1002, !1010, !1016, !2364, !2432}
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 78, baseType: !795, size: 320)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 78, size: 320, elements: !796)
!796 = !{!797, !798, !967, !968}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !795, file: !788, line: 84, baseType: !211, size: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !795, file: !788, line: 86, baseType: !799, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !801)
!801 = !{!802, !803, !811, !812, !813, !828, !837, !838, !839, !840, !960, !961, !964, !965, !966}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !800, file: !44, line: 452, baseType: !460, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !800, file: !44, line: 453, baseType: !804, size: 128, offset: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !805, line: 292, size: 128, elements: !806)
!805 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !808, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !804, file: !805, line: 293, baseType: !228)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !804, file: !805, line: 295, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !203, line: 148, baseType: !7)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !804, file: !805, line: 296, baseType: !111, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !800, file: !44, line: 454, baseType: !809, size: 32, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !800, file: !44, line: 455, baseType: !245, size: 32, offset: 224)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !800, file: !44, line: 460, baseType: !814, size: 128, offset: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !815, line: 125, size: 128, elements: !816)
!815 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!816 = !{!817, !827}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !814, file: !815, line: 126, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !815, line: 31, size: 64, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !818, file: !815, line: 32, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !815, line: 24, size: 192, align: 64, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !822, file: !815, line: 25, baseType: !112, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !822, file: !815, line: 26, baseType: !821, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !822, file: !815, line: 27, baseType: !821, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !814, file: !815, line: 127, baseType: !821, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !800, file: !44, line: 461, baseType: !829, size: 256, offset: 384)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !830, line: 35, size: 256, elements: !831)
!830 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!831 = !{!832, !833, !834, !836}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !829, file: !830, line: 36, baseType: !200, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !829, file: !830, line: 42, baseType: !200, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !829, file: !830, line: 46, baseType: !835, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !229, line: 29, baseType: !236)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !829, file: !830, line: 47, baseType: !211, size: 128, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !800, file: !44, line: 462, baseType: !112, size: 64, offset: 640)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !800, file: !44, line: 463, baseType: !112, size: 64, offset: 704)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !800, file: !44, line: 464, baseType: !112, size: 64, offset: 768)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !800, file: !44, line: 465, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !844)
!844 = !{!845, !849, !853, !857, !861, !865, !871, !877, !881, !886, !890, !894, !898, !924, !928, !934, !935, !936, !940, !945, !949, !956}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !843, file: !44, line: 368, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!141, !786, !705}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !843, file: !44, line: 369, baseType: !850, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!141, !391, !786}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !843, file: !44, line: 372, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!141, !799, !705}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !843, file: !44, line: 375, baseType: !858, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!141, !786}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !843, file: !44, line: 381, baseType: !862, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!141, !391, !799, !214, !7}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !843, file: !44, line: 383, baseType: !866, size: 64, offset: 320)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !843, file: !44, line: 385, baseType: !872, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{!141, !391, !799, !562, !7, !7, !875, !876}
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !843, file: !44, line: 388, baseType: !878, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!141, !391, !799, !562, !7, !7, !786, !111}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !843, file: !44, line: 393, baseType: !882, size: 64, offset: 512)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!885, !799, !885}
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !203, line: 125, baseType: !453)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !843, file: !44, line: 394, baseType: !887, size: 64, offset: 576)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{null, !786, !7, !7}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !843, file: !44, line: 395, baseType: !891, size: 64, offset: 640)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{!141, !786, !809}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !843, file: !44, line: 396, baseType: !895, size: 64, offset: 704)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !786}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !843, file: !44, line: 397, baseType: !899, size: 64, offset: 768)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DISubroutineType(types: !901)
!901 = !{!346, !902, !922}
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !904)
!904 = !{!905, !906, !907, !911, !912, !913, !914, !915}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !903, file: !44, line: 321, baseType: !391, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !903, file: !44, line: 326, baseType: !562, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !903, file: !44, line: 327, baseType: !908, size: 64, offset: 128)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DISubroutineType(types: !910)
!910 = !{null, !902, !350, !350}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !903, file: !44, line: 328, baseType: !111, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !903, file: !44, line: 329, baseType: !141, size: 32, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !903, file: !44, line: 330, baseType: !115, size: 16, offset: 288)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !903, file: !44, line: 331, baseType: !115, size: 16, offset: 304)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !44, line: 332, baseType: !916, size: 64, offset: 320)
!916 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !44, line: 332, size: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !916, file: !44, line: 333, baseType: !7, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !916, file: !44, line: 334, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !843, file: !44, line: 402, baseType: !925, size: 64, offset: 832)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!141, !799, !786, !786, !5}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !843, file: !44, line: 404, baseType: !929, size: 64, offset: 896)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!521, !786, !932}
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !933, line: 305, baseType: !7)
!933 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !843, file: !44, line: 405, baseType: !895, size: 64, offset: 960)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !843, file: !44, line: 406, baseType: !858, size: 64, offset: 1024)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !843, file: !44, line: 407, baseType: !937, size: 64, offset: 1088)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!141, !786, !112, !112}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !843, file: !44, line: 409, baseType: !941, size: 64, offset: 1152)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !786, !944, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !843, file: !44, line: 410, baseType: !946, size: 64, offset: 1216)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!141, !799, !786}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !843, file: !44, line: 413, baseType: !950, size: 64, offset: 1280)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!141, !953, !391, !955}
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !843, file: !44, line: 415, baseType: !957, size: 64, offset: 1344)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !391}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !44, line: 466, baseType: !112, size: 64, offset: 896)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !800, file: !44, line: 467, baseType: !962, size: 32, offset: 960)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !963, line: 8, baseType: !449)
!963 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !800, file: !44, line: 468, baseType: !228, offset: 992)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !800, file: !44, line: 469, baseType: !211, size: 128, offset: 1024)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !800, file: !44, line: 470, baseType: !111, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !795, file: !788, line: 87, baseType: !112, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !795, file: !788, line: 94, baseType: !112, size: 64, offset: 256)
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 96, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 96, size: 64, elements: !971)
!971 = !{!972}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !970, file: !788, line: 101, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !203, line: 143, baseType: !453)
!974 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 103, baseType: !975, size: 320)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 103, size: 320, elements: !976)
!976 = !{!977, !987, !990, !991}
!977 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !788, line: 104, baseType: !978, size: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !788, line: 104, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !978, file: !788, line: 105, baseType: !211, size: 128)
!981 = !DIDerivedType(tag: DW_TAG_member, scope: !978, file: !788, line: 106, baseType: !982, size: 128)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !978, file: !788, line: 106, size: 128, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !982, file: !788, line: 107, baseType: !786, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !982, file: !788, line: 109, baseType: !141, size: 32, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !982, file: !788, line: 110, baseType: !141, size: 32, offset: 96)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !975, file: !788, line: 117, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !788, line: 117, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !975, file: !788, line: 119, baseType: !111, size: 64, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !975, file: !788, line: 120, baseType: !992, size: 64, offset: 256)
!992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !975, file: !788, line: 120, size: 64, elements: !993)
!993 = !{!994, !995, !996}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !992, file: !788, line: 121, baseType: !111, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !992, file: !788, line: 122, baseType: !112, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !788, line: 123, baseType: !997, size: 32)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !992, file: !788, line: 123, size: 32, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !997, file: !788, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !997, file: !788, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !997, file: !788, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 130, baseType: !1003, size: 192)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 130, size: 192, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1008, !1009}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1003, file: !788, line: 131, baseType: !112, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1003, file: !788, line: 134, baseType: !123, size: 8, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1003, file: !788, line: 135, baseType: !123, size: 8, offset: 72)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1003, file: !788, line: 136, baseType: !245, size: 32, offset: 96)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1003, file: !788, line: 137, baseType: !7, size: 32, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 139, baseType: !1011, size: 256)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 139, size: 256, elements: !1012)
!1012 = !{!1013, !1014, !1015}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1011, file: !788, line: 140, baseType: !112, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1011, file: !788, line: 141, baseType: !245, size: 32, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1011, file: !788, line: 143, baseType: !211, size: 128, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 145, baseType: !1017, size: 256)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 145, size: 256, elements: !1018)
!1018 = !{!1019, !1020, !1023, !1024, !2363}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1017, file: !788, line: 146, baseType: !112, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1017, file: !788, line: 147, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1022, line: 509, baseType: !786)
!1022 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1017, file: !788, line: 148, baseType: !112, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !788, line: 149, baseType: !1025, size: 64, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1017, file: !788, line: 149, size: 64, elements: !1026)
!1026 = !{!1027, !2362}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1025, file: !788, line: 150, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !788, line: 388, size: 7296, elements: !1030)
!1030 = !{!1031, !2361}
!1031 = !DIDerivedType(tag: DW_TAG_member, scope: !1029, file: !788, line: 389, baseType: !1032, size: 7296)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1029, file: !788, line: 389, size: 7296, elements: !1033)
!1033 = !{!1034, !1152, !1153, !1154, !1158, !1159, !1160, !1161, !1162, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1203, !1211, !1214, !1254, !1255, !2345, !2346, !2349, !2350, !2351, !2354, !2355, !2356, !2359, !2360}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1032, file: !788, line: 390, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !788, line: 305, size: 1472, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1052, !1053, !1058, !1059, !1062, !1146, !1147, !1148, !1149, !1150}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1036, file: !788, line: 308, baseType: !112, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1036, file: !788, line: 309, baseType: !112, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1036, file: !788, line: 313, baseType: !1035, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1036, file: !788, line: 313, baseType: !1035, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1036, file: !788, line: 315, baseType: !822, size: 192, align: 64, offset: 256)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1036, file: !788, line: 323, baseType: !112, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1036, file: !788, line: 327, baseType: !1028, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1036, file: !788, line: 333, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1022, line: 284, baseType: !1047)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1022, line: 284, size: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1047, file: !1022, line: 284, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1051, line: 19, baseType: !112)
!1051 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1036, file: !788, line: 334, baseType: !112, size: 64, offset: 640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1036, file: !788, line: 343, baseType: !1054, size: 256, offset: 704)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1036, file: !788, line: 340, size: 256, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1054, file: !788, line: 341, baseType: !822, size: 192, align: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1054, file: !788, line: 342, baseType: !112, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1036, file: !788, line: 351, baseType: !211, size: 128, offset: 960)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1036, file: !788, line: 353, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !788, line: 353, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1036, file: !788, line: 356, baseType: !1063, size: 64, offset: 1152)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1066)
!1066 = !{!1067, !1071, !1072, !1076, !1080, !1120, !1124, !1128, !1132, !1133, !1134, !1138, !1142}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1065, file: !14, line: 558, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !1035}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1065, file: !14, line: 559, baseType: !1068, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1065, file: !14, line: 560, baseType: !1073, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!141, !1035, !112}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1065, file: !14, line: 561, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!141, !1035}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1065, file: !14, line: 562, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !788, line: 682, baseType: !7)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1100, !1107, !1113, !1114, !1115, !1117, !1119}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1086, file: !14, line: 509, baseType: !1035, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1086, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1086, file: !14, line: 511, baseType: !809, size: 32, offset: 96)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1086, file: !14, line: 512, baseType: !112, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1086, file: !14, line: 513, baseType: !112, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1086, file: !14, line: 514, baseType: !1094, size: 64, offset: 256)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1022, line: 385, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 385, size: 64, elements: !1097)
!1097 = !{!1098}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1096, file: !1022, line: 385, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1051, line: 15, baseType: !112)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1086, file: !14, line: 516, baseType: !1101, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1022, line: 359, baseType: !1103)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 359, size: 64, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1103, file: !1022, line: 359, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1051, line: 16, baseType: !112)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1086, file: !14, line: 519, baseType: !1108, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1051, line: 21, baseType: !1109)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1051, line: 21, size: 64, elements: !1110)
!1110 = !{!1111}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1109, file: !1051, line: 21, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1051, line: 14, baseType: !112)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1086, file: !14, line: 521, baseType: !786, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1086, file: !14, line: 522, baseType: !786, size: 64, offset: 512)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1086, file: !14, line: 528, baseType: !1116, size: 64, offset: 576)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1086, file: !14, line: 532, baseType: !1118, size: 64, offset: 640)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1086, file: !14, line: 536, baseType: !1021, size: 64, offset: 704)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1065, file: !14, line: 563, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!1084, !1085, !13}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1065, file: !14, line: 565, baseType: !1125, size: 64, offset: 384)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{null, !1085, !112, !112}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1065, file: !14, line: 567, baseType: !1129, size: 64, offset: 448)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DISubroutineType(types: !1131)
!1131 = !{!112, !1035}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1065, file: !14, line: 571, baseType: !1081, size: 64, offset: 512)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1065, file: !14, line: 574, baseType: !1081, size: 64, offset: 576)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1065, file: !14, line: 579, baseType: !1135, size: 64, offset: 640)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!141, !1035, !112, !111, !141, !141}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1065, file: !14, line: 585, baseType: !1139, size: 64, offset: 704)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!135, !1035}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1065, file: !14, line: 615, baseType: !1143, size: 64, offset: 768)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!786, !1035, !112}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1036, file: !788, line: 359, baseType: !112, size: 64, offset: 1216)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1036, file: !788, line: 361, baseType: !391, size: 64, offset: 1280)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1036, file: !788, line: 362, baseType: !111, size: 64, offset: 1344)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1036, file: !788, line: 365, baseType: !200, size: 64, offset: 1408)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1036, file: !788, line: 373, baseType: !1151, offset: 1472)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !788, line: 296, elements: !242)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1032, file: !788, line: 391, baseType: !818, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1032, file: !788, line: 392, baseType: !453, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1032, file: !788, line: 394, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!112, !391, !112, !112, !112, !112}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1032, file: !788, line: 398, baseType: !112, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1032, file: !788, line: 399, baseType: !112, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1032, file: !788, line: 405, baseType: !112, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1032, file: !788, line: 406, baseType: !112, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1032, file: !788, line: 407, baseType: !1163, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1022, line: 286, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 286, size: 64, elements: !1166)
!1166 = !{!1167}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1165, file: !1022, line: 286, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1051, line: 18, baseType: !112)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1032, file: !788, line: 416, baseType: !245, size: 32, offset: 576)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1032, file: !788, line: 428, baseType: !245, size: 32, offset: 608)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1032, file: !788, line: 437, baseType: !245, size: 32, offset: 640)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1032, file: !788, line: 447, baseType: !245, size: 32, offset: 672)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1032, file: !788, line: 450, baseType: !200, size: 64, offset: 704)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1032, file: !788, line: 452, baseType: !141, size: 32, offset: 768)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1032, file: !788, line: 454, baseType: !228, offset: 800)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1032, file: !788, line: 457, baseType: !829, size: 256, offset: 832)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1032, file: !788, line: 459, baseType: !211, size: 128, offset: 1088)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1032, file: !788, line: 466, baseType: !112, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1032, file: !788, line: 467, baseType: !112, size: 64, offset: 1280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1032, file: !788, line: 469, baseType: !112, size: 64, offset: 1344)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1032, file: !788, line: 470, baseType: !112, size: 64, offset: 1408)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1032, file: !788, line: 471, baseType: !202, size: 64, offset: 1472)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1032, file: !788, line: 472, baseType: !112, size: 64, offset: 1536)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1032, file: !788, line: 473, baseType: !112, size: 64, offset: 1600)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1032, file: !788, line: 474, baseType: !112, size: 64, offset: 1664)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1032, file: !788, line: 475, baseType: !112, size: 64, offset: 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1032, file: !788, line: 477, baseType: !228, offset: 1792)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1032, file: !788, line: 478, baseType: !112, size: 64, offset: 1792)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1032, file: !788, line: 478, baseType: !112, size: 64, offset: 1856)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1032, file: !788, line: 478, baseType: !112, size: 64, offset: 1920)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1032, file: !788, line: 478, baseType: !112, size: 64, offset: 1984)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1032, file: !788, line: 479, baseType: !112, size: 64, offset: 2048)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1032, file: !788, line: 479, baseType: !112, size: 64, offset: 2112)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1032, file: !788, line: 479, baseType: !112, size: 64, offset: 2176)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1032, file: !788, line: 480, baseType: !112, size: 64, offset: 2240)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1032, file: !788, line: 480, baseType: !112, size: 64, offset: 2304)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1032, file: !788, line: 480, baseType: !112, size: 64, offset: 2368)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1032, file: !788, line: 480, baseType: !112, size: 64, offset: 2432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1032, file: !788, line: 482, baseType: !1200, size: 2816, offset: 2496)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2816, elements: !1201)
!1201 = !{!1202}
!1202 = !DISubrange(count: 44)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1032, file: !788, line: 488, baseType: !1204, size: 256, offset: 5312)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1205, line: 60, size: 256, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1204, file: !1205, line: 61, baseType: !1208, size: 256)
!1208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !1209)
!1209 = !{!1210}
!1210 = !DISubrange(count: 4)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1032, file: !788, line: 490, baseType: !1212, size: 64, offset: 5568)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !788, line: 490, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1032, file: !788, line: 493, baseType: !1215, size: 896, offset: 5632)
!1215 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1216, line: 53, baseType: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1216, line: 13, size: 896, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1225, !1226, !1227, !1228, !1248, !1249, !1250}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1217, file: !1216, line: 18, baseType: !453, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1217, file: !1216, line: 28, baseType: !202, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1217, file: !1216, line: 31, baseType: !829, size: 256, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1217, file: !1216, line: 32, baseType: !1223, size: 64, offset: 384)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1216, line: 32, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1217, file: !1216, line: 37, baseType: !119, size: 16, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1217, file: !1216, line: 40, baseType: !223, size: 192, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1217, file: !1216, line: 41, baseType: !111, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1217, file: !1216, line: 42, baseType: !1229, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1231)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1232, line: 13, size: 896, elements: !1233)
!1232 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !{!1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1231, file: !1232, line: 14, baseType: !111, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1231, file: !1232, line: 15, baseType: !112, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1231, file: !1232, line: 17, baseType: !112, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1231, file: !1232, line: 17, baseType: !112, size: 64, offset: 192)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1231, file: !1232, line: 19, baseType: !350, size: 64, offset: 256)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1231, file: !1232, line: 21, baseType: !350, size: 64, offset: 320)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1231, file: !1232, line: 22, baseType: !350, size: 64, offset: 384)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1231, file: !1232, line: 23, baseType: !350, size: 64, offset: 448)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1231, file: !1232, line: 24, baseType: !350, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1231, file: !1232, line: 25, baseType: !350, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1231, file: !1232, line: 26, baseType: !350, size: 64, offset: 640)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1231, file: !1232, line: 27, baseType: !350, size: 64, offset: 704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1231, file: !1232, line: 28, baseType: !350, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1231, file: !1232, line: 29, baseType: !350, size: 64, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1217, file: !1216, line: 44, baseType: !245, size: 32, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1217, file: !1216, line: 50, baseType: !115, size: 16, offset: 864)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1217, file: !1216, line: 51, baseType: !1251, size: 16, offset: 880)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !116, line: 18, baseType: !1252)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !118, line: 23, baseType: !1253)
!1253 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !788, line: 495, baseType: !112, size: 64, offset: 6528)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1032, file: !788, line: 497, baseType: !1256, size: 64, offset: 6592)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !788, line: 381, size: 384, elements: !1258)
!1258 = !{!1259, !1260, !2344}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1257, file: !788, line: 382, baseType: !245, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1257, file: !788, line: 383, baseType: !1261, size: 128, offset: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !788, line: 376, size: 128, elements: !1262)
!1262 = !{!1263, !2342}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1261, file: !788, line: 377, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1266, line: 640, size: 48640, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1274, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1289, !1307, !1318, !1403, !1404, !1405, !1416, !1417, !1419, !1420, !1421, !1422, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1501, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1539, !1541, !1542, !1543, !1555, !1556, !1557, !1558, !1559, !1560, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1584, !1589, !1773, !1774, !1775, !1776, !1780, !1783, !1786, !1789, !1792, !1796, !1895, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1941, !1942, !1943, !1944, !1945, !1950, !1951, !1952, !1955, !1956, !1959, !1962, !1965, !1968, !2000, !2003, !2004, !2083, !2084, !2087, !2088, !2091, !2092, !2093, !2097, !2098, !2099, !2112, !2113, !2114, !2124, !2129, !2132, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1265, file: !1266, line: 646, baseType: !1269, size: 128)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1270, line: 56, size: 128, elements: !1271)
!1270 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !{!1272, !1273}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1269, file: !1270, line: 57, baseType: !112, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1269, file: !1270, line: 58, baseType: !449, size: 32, offset: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1265, file: !1266, line: 649, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !350)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1265, file: !1266, line: 657, baseType: !111, size: 64, offset: 192)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1265, file: !1266, line: 658, baseType: !267, size: 32, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1265, file: !1266, line: 660, baseType: !7, size: 32, offset: 288)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1265, file: !1266, line: 661, baseType: !7, size: 32, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1265, file: !1266, line: 684, baseType: !141, size: 32, offset: 352)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1265, file: !1266, line: 686, baseType: !141, size: 32, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1265, file: !1266, line: 687, baseType: !141, size: 32, offset: 416)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1265, file: !1266, line: 688, baseType: !141, size: 32, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1265, file: !1266, line: 689, baseType: !7, size: 32, offset: 480)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1265, file: !1266, line: 691, baseType: !1286, size: 64, offset: 512)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1288)
!1288 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1266, line: 691, flags: DIFlagFwdDecl)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1265, file: !1266, line: 692, baseType: !1290, size: 832, offset: 576)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1266, line: 451, size: 832, elements: !1291)
!1291 = !{!1292, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1290, file: !1266, line: 453, baseType: !1293, size: 128)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1266, line: 325, size: 128, elements: !1294)
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1293, file: !1266, line: 326, baseType: !112, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1293, file: !1266, line: 327, baseType: !449, size: 32, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1290, file: !1266, line: 454, baseType: !822, size: 192, align: 64, offset: 128)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1290, file: !1266, line: 455, baseType: !211, size: 128, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1290, file: !1266, line: 456, baseType: !7, size: 32, offset: 448)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1290, file: !1266, line: 458, baseType: !453, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1290, file: !1266, line: 459, baseType: !453, size: 64, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1290, file: !1266, line: 460, baseType: !453, size: 64, offset: 640)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1290, file: !1266, line: 461, baseType: !453, size: 64, offset: 704)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1290, file: !1266, line: 463, baseType: !453, size: 64, offset: 768)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1290, file: !1266, line: 465, baseType: !1306, offset: 832)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1266, line: 415, elements: !242)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1265, file: !1266, line: 693, baseType: !1308, size: 384, offset: 1408)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1266, line: 489, size: 384, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1308, file: !1266, line: 490, baseType: !211, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1308, file: !1266, line: 491, baseType: !112, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1308, file: !1266, line: 492, baseType: !112, size: 64, offset: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1308, file: !1266, line: 493, baseType: !7, size: 32, offset: 256)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1308, file: !1266, line: 494, baseType: !119, size: 16, offset: 288)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1308, file: !1266, line: 495, baseType: !119, size: 16, offset: 304)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1308, file: !1266, line: 497, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1265, file: !1266, line: 697, baseType: !1319, size: 1792, offset: 1792)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1266, line: 507, size: 1792, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1400, !1401}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1319, file: !1266, line: 508, baseType: !822, size: 192, align: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1319, file: !1266, line: 515, baseType: !453, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1319, file: !1266, line: 516, baseType: !453, size: 64, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1319, file: !1266, line: 517, baseType: !453, size: 64, offset: 320)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1319, file: !1266, line: 518, baseType: !453, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1319, file: !1266, line: 519, baseType: !453, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1319, file: !1266, line: 526, baseType: !207, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1319, file: !1266, line: 527, baseType: !453, size: 64, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1319, file: !1266, line: 528, baseType: !7, size: 32, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1319, file: !1266, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1319, file: !1266, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1319, file: !1266, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1319, file: !1266, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1319, file: !1266, line: 563, baseType: !1335, size: 512, offset: 704)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1336)
!1336 = !{!1337, !1345, !1346, !1351, !1394, !1397, !1398, !1399}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1335, file: !20, line: 119, baseType: !1338, size: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1339, line: 9, size: 256, elements: !1340)
!1339 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1338, file: !1339, line: 10, baseType: !822, size: 192, align: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1338, file: !1339, line: 11, baseType: !1343, size: 64, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1344, line: 29, baseType: !207)
!1344 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1335, file: !20, line: 120, baseType: !1343, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1335, file: !20, line: 121, baseType: !1347, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!19, !1350}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1335, file: !20, line: 122, baseType: !1352, size: 64, offset: 384)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1354)
!1354 = !{!1355, !1375, !1376, !1379, !1384, !1385, !1389, !1393}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1353, file: !20, line: 160, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1358)
!1358 = !{!1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1357, file: !20, line: 215, baseType: !835)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1357, file: !20, line: 216, baseType: !7, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1357, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1357, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1357, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1357, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1357, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1357, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1357, file: !20, line: 233, baseType: !1343, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1357, file: !20, line: 234, baseType: !1350, size: 64, offset: 192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1357, file: !20, line: 235, baseType: !1343, size: 64, offset: 256)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1357, file: !20, line: 236, baseType: !1350, size: 64, offset: 320)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1357, file: !20, line: 237, baseType: !1372, size: 4096, offset: 512)
!1372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1353, size: 4096, elements: !1373)
!1373 = !{!1374}
!1374 = !DISubrange(count: 8)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1353, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1353, file: !20, line: 162, baseType: !1377, size: 32, offset: 96)
!1377 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !203, line: 27, baseType: !1378)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !348, line: 96, baseType: !141)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1353, file: !20, line: 163, baseType: !1380, size: 32, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !422, line: 276, baseType: !1381)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !422, line: 276, size: 32, elements: !1382)
!1382 = !{!1383}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1381, file: !422, line: 276, baseType: !426, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1353, file: !20, line: 164, baseType: !1350, size: 64, offset: 192)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1353, file: !20, line: 165, baseType: !1386, size: 128, offset: 256)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1339, line: 14, size: 128, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1386, file: !1339, line: 15, baseType: !814, size: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1353, file: !20, line: 166, baseType: !1390, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1343}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1353, file: !20, line: 167, baseType: !1343, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1335, file: !20, line: 123, baseType: !1395, size: 8, offset: 448)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !116, line: 17, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !118, line: 21, baseType: !123)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1335, file: !20, line: 124, baseType: !1395, size: 8, offset: 456)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1335, file: !20, line: 125, baseType: !1395, size: 8, offset: 464)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1335, file: !20, line: 126, baseType: !1395, size: 8, offset: 472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1319, file: !1266, line: 572, baseType: !1335, size: 512, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1319, file: !1266, line: 580, baseType: !1402, size: 64, offset: 1728)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1265, file: !1266, line: 721, baseType: !7, size: 32, offset: 3584)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1265, file: !1266, line: 722, baseType: !141, size: 32, offset: 3616)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1265, file: !1266, line: 723, baseType: !1406, size: 64, offset: 3648)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1409, line: 17, baseType: !1410)
!1409 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1409, line: 17, size: 64, elements: !1411)
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1410, file: !1409, line: 17, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 64, elements: !1414)
!1414 = !{!1415}
!1415 = !DISubrange(count: 1)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1265, file: !1266, line: 724, baseType: !1408, size: 64, offset: 3712)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1265, file: !1266, line: 749, baseType: !1418, offset: 3776)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1266, line: 290, elements: !242)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1265, file: !1266, line: 751, baseType: !211, size: 128, offset: 3776)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1265, file: !1266, line: 757, baseType: !1028, size: 64, offset: 3904)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1265, file: !1266, line: 758, baseType: !1028, size: 64, offset: 3968)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1265, file: !1266, line: 761, baseType: !1423, size: 320, offset: 4032)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1205, line: 34, size: 320, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1423, file: !1205, line: 35, baseType: !453, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1423, file: !1205, line: 36, baseType: !1427, size: 256, offset: 64)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 256, elements: !1209)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1265, file: !1266, line: 766, baseType: !141, size: 32, offset: 4352)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1265, file: !1266, line: 767, baseType: !141, size: 32, offset: 4384)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1265, file: !1266, line: 768, baseType: !141, size: 32, offset: 4416)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1265, file: !1266, line: 770, baseType: !141, size: 32, offset: 4448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1265, file: !1266, line: 772, baseType: !112, size: 64, offset: 4480)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1265, file: !1266, line: 775, baseType: !7, size: 32, offset: 4544)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1265, file: !1266, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1265, file: !1266, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1265, file: !1266, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1265, file: !1266, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1265, file: !1266, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1265, file: !1266, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1265, file: !1266, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1265, file: !1266, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1265, file: !1266, line: 831, baseType: !112, size: 64, offset: 4672)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1265, file: !1266, line: 833, baseType: !1444, size: 384, offset: 4736)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1445)
!1445 = !{!1446, !1451}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1444, file: !25, line: 26, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!350, !1450}
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !25, line: 27, baseType: !1452, size: 320, offset: 64)
!1452 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1444, file: !25, line: 27, size: 320, elements: !1453)
!1453 = !{!1454, !1464, !1491}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1452, file: !25, line: 36, baseType: !1455, size: 320)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 29, size: 320, elements: !1456)
!1456 = !{!1457, !1459, !1460, !1461, !1462, !1463}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1455, file: !25, line: 30, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1455, file: !25, line: 31, baseType: !449, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1455, file: !25, line: 32, baseType: !449, size: 32, offset: 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1455, file: !25, line: 33, baseType: !449, size: 32, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1455, file: !25, line: 34, baseType: !453, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1455, file: !25, line: 35, baseType: !1458, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1452, file: !25, line: 46, baseType: !1465, size: 192)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 38, size: 192, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1490}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1465, file: !25, line: 39, baseType: !1377, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1465, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !25, line: 41, baseType: !1470, size: 64, offset: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !25, line: 41, size: 64, elements: !1471)
!1471 = !{!1472, !1480}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1470, file: !25, line: 42, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1475, line: 7, size: 128, elements: !1476)
!1475 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1476 = !{!1477, !1479}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1474, file: !1475, line: 8, baseType: !1478, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !348, line: 93, baseType: !209)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1474, file: !1475, line: 9, baseType: !209, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1470, file: !25, line: 43, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1483, line: 7, size: 64, elements: !1484)
!1483 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1484 = !{!1485, !1489}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1482, file: !1483, line: 8, baseType: !1486, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1483, line: 5, baseType: !1487)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !116, line: 20, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !118, line: 26, baseType: !141)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1482, file: !1483, line: 9, baseType: !1487, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1465, file: !25, line: 45, baseType: !453, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1452, file: !25, line: 54, baseType: !1492, size: 256)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1452, file: !25, line: 48, size: 256, elements: !1493)
!1493 = !{!1494, !1497, !1498, !1499, !1500}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1492, file: !25, line: 49, baseType: !1495, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1492, file: !25, line: 50, baseType: !141, size: 32, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1492, file: !25, line: 51, baseType: !141, size: 32, offset: 96)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1492, file: !25, line: 52, baseType: !112, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1492, file: !25, line: 53, baseType: !112, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1265, file: !1266, line: 835, baseType: !1502, size: 32, offset: 5120)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !203, line: 22, baseType: !1503)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !348, line: 28, baseType: !141)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1265, file: !1266, line: 836, baseType: !1502, size: 32, offset: 5152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1265, file: !1266, line: 840, baseType: !112, size: 64, offset: 5184)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1265, file: !1266, line: 849, baseType: !1264, size: 64, offset: 5248)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1265, file: !1266, line: 852, baseType: !1264, size: 64, offset: 5312)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1265, file: !1266, line: 857, baseType: !211, size: 128, offset: 5376)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1265, file: !1266, line: 858, baseType: !211, size: 128, offset: 5504)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1265, file: !1266, line: 859, baseType: !1264, size: 64, offset: 5632)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1265, file: !1266, line: 867, baseType: !211, size: 128, offset: 5696)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1265, file: !1266, line: 868, baseType: !211, size: 128, offset: 5824)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1265, file: !1266, line: 871, baseType: !1514, size: 64, offset: 5952)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1516)
!1516 = !{!1517, !1518, !1519, !1520, !1522, !1523, !1530, !1531}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1515, file: !53, line: 61, baseType: !267, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1515, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1515, file: !53, line: 63, baseType: !228, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1515, file: !53, line: 65, baseType: !1521, size: 256, offset: 64)
!1521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !664, size: 256, elements: !1209)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1515, file: !53, line: 66, baseType: !664, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1515, file: !53, line: 68, baseType: !1524, size: 128, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1525, line: 40, baseType: !1526)
!1525 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1525, line: 36, size: 128, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1526, file: !1525, line: 37, baseType: !228)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1526, file: !1525, line: 38, baseType: !211, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1515, file: !53, line: 69, baseType: !399, size: 128, align: 64, offset: 512)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1515, file: !53, line: 70, baseType: !1532, size: 128, offset: 640)
!1532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1533, size: 128, elements: !1414)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1533, file: !53, line: 55, baseType: !141, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1533, file: !53, line: 56, baseType: !1537, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1265, file: !1266, line: 872, baseType: !1540, size: 512, offset: 6016)
!1540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 512, elements: !1209)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1265, file: !1266, line: 873, baseType: !211, size: 128, offset: 6528)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1265, file: !1266, line: 874, baseType: !211, size: 128, offset: 6656)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1265, file: !1266, line: 876, baseType: !1544, size: 64, offset: 6784)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1546, line: 26, size: 192, elements: !1547)
!1546 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1547 = !{!1548, !1549}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1545, file: !1546, line: 27, baseType: !7, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1545, file: !1546, line: 28, baseType: !1550, size: 128, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1551, line: 43, size: 128, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1551, line: 44, baseType: !835)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1550, file: !1551, line: 45, baseType: !211, size: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1265, file: !1266, line: 879, baseType: !734, size: 64, offset: 6848)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1265, file: !1266, line: 882, baseType: !734, size: 64, offset: 6912)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1265, file: !1266, line: 884, baseType: !453, size: 64, offset: 6976)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1265, file: !1266, line: 885, baseType: !453, size: 64, offset: 7040)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1265, file: !1266, line: 890, baseType: !453, size: 64, offset: 7104)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1265, file: !1266, line: 891, baseType: !1561, size: 128, offset: 7168)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1266, line: 242, size: 128, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1561, file: !1266, line: 244, baseType: !453, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1561, file: !1266, line: 245, baseType: !453, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1561, file: !1266, line: 246, baseType: !835, offset: 128)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1265, file: !1266, line: 900, baseType: !112, size: 64, offset: 7296)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1265, file: !1266, line: 901, baseType: !112, size: 64, offset: 7360)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1265, file: !1266, line: 904, baseType: !453, size: 64, offset: 7424)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1265, file: !1266, line: 907, baseType: !453, size: 64, offset: 7488)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1265, file: !1266, line: 910, baseType: !112, size: 64, offset: 7552)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1265, file: !1266, line: 911, baseType: !112, size: 64, offset: 7616)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1265, file: !1266, line: 914, baseType: !1573, size: 640, offset: 7680)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1574, line: 123, size: 640, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1582, !1583}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1573, file: !1574, line: 124, baseType: !1577, size: 576)
!1577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1578, size: 576, elements: !316)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1574, line: 108, size: 192, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1578, file: !1574, line: 109, baseType: !453, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1578, file: !1574, line: 110, baseType: !1386, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1573, file: !1574, line: 125, baseType: !7, size: 32, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1573, file: !1574, line: 126, baseType: !7, size: 32, offset: 608)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1265, file: !1266, line: 917, baseType: !1585, size: 192, offset: 8320)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1574, line: 134, size: 192, elements: !1586)
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1585, file: !1574, line: 135, baseType: !399, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1585, file: !1574, line: 136, baseType: !7, size: 32, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1265, file: !1266, line: 923, baseType: !1590, size: 64, offset: 8512)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1593, line: 111, size: 1280, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1614, !1615, !1616, !1617, !1618, !1619, !1726, !1727, !1728, !1729, !1755, !1758, !1768}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1592, file: !1593, line: 112, baseType: !245, size: 32)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1592, file: !1593, line: 120, baseType: !466, size: 32, offset: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1592, file: !1593, line: 121, baseType: !474, size: 32, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1592, file: !1593, line: 122, baseType: !466, size: 32, offset: 96)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1592, file: !1593, line: 123, baseType: !474, size: 32, offset: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1592, file: !1593, line: 124, baseType: !466, size: 32, offset: 160)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1592, file: !1593, line: 125, baseType: !474, size: 32, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1592, file: !1593, line: 126, baseType: !466, size: 32, offset: 224)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1592, file: !1593, line: 127, baseType: !474, size: 32, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1592, file: !1593, line: 128, baseType: !7, size: 32, offset: 288)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1592, file: !1593, line: 129, baseType: !1606, size: 64, offset: 320)
!1606 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1607, line: 26, baseType: !1608)
!1607 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1607, line: 24, size: 64, elements: !1609)
!1609 = !{!1610}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1608, file: !1607, line: 25, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !450, size: 64, elements: !1612)
!1612 = !{!1613}
!1613 = !DISubrange(count: 2)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1592, file: !1593, line: 130, baseType: !1606, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1592, file: !1593, line: 131, baseType: !1606, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1592, file: !1593, line: 132, baseType: !1606, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1592, file: !1593, line: 133, baseType: !1606, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1592, file: !1593, line: 135, baseType: !123, size: 8, offset: 640)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1592, file: !1593, line: 137, baseType: !1620, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1622, line: 189, size: 1664, elements: !1623)
!1622 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1623 = !{!1624, !1625, !1628, !1633, !1634, !1637, !1638, !1643, !1644, !1645, !1646, !1648, !1649, !1650, !1651, !1652, !1690, !1711}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1621, file: !1622, line: 190, baseType: !267, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1621, file: !1622, line: 191, baseType: !1626, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1622, line: 28, baseType: !1627)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !203, line: 98, baseType: !1487)
!1628 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 192, baseType: !1629, size: 192, offset: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 192, size: 192, elements: !1630)
!1630 = !{!1631, !1632}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1629, file: !1622, line: 193, baseType: !211, size: 128)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1629, file: !1622, line: 194, baseType: !822, size: 192, align: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1621, file: !1622, line: 199, baseType: !829, size: 256, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1621, file: !1622, line: 200, baseType: !1635, size: 64, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1622, line: 200, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1621, file: !1622, line: 201, baseType: !111, size: 64, offset: 576)
!1638 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 202, baseType: !1639, size: 64, offset: 640)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 202, size: 64, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1639, file: !1622, line: 203, baseType: !569, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1639, file: !1622, line: 204, baseType: !569, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1621, file: !1622, line: 206, baseType: !569, size: 64, offset: 704)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1621, file: !1622, line: 207, baseType: !466, size: 32, offset: 768)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1621, file: !1622, line: 208, baseType: !474, size: 32, offset: 800)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1621, file: !1622, line: 209, baseType: !1647, size: 32, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1622, line: 31, baseType: !588)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1621, file: !1622, line: 210, baseType: !119, size: 16, offset: 864)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1621, file: !1622, line: 211, baseType: !119, size: 16, offset: 880)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1621, file: !1622, line: 215, baseType: !1253, size: 16, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1621, file: !1622, line: 222, baseType: !112, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 239, baseType: !1653, size: 320, offset: 1024)
!1653 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 239, size: 320, elements: !1654)
!1654 = !{!1655, !1682}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1653, file: !1622, line: 240, baseType: !1656, size: 320)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1622, line: 108, size: 320, elements: !1657)
!1657 = !{!1658, !1659, !1671, !1674, !1681}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1656, file: !1622, line: 110, baseType: !112, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1622, line: 111, baseType: !1660, size: 64, offset: 64)
!1660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1656, file: !1622, line: 111, size: 64, elements: !1661)
!1661 = !{!1662, !1670}
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1660, file: !1622, line: 112, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1660, file: !1622, line: 112, size: 64, elements: !1664)
!1664 = !{!1665, !1666}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1663, file: !1622, line: 114, baseType: !115, size: 16)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1663, file: !1622, line: 115, baseType: !1667, size: 48, offset: 16)
!1667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 48, elements: !1668)
!1668 = !{!1669}
!1669 = !DISubrange(count: 6)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1660, file: !1622, line: 121, baseType: !112, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1656, file: !1622, line: 123, baseType: !1672, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1622, line: 96, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1656, file: !1622, line: 124, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1622, line: 102, size: 192, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1676, file: !1622, line: 103, baseType: !399, size: 128, align: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1676, file: !1622, line: 104, baseType: !267, size: 32, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1676, file: !1622, line: 105, baseType: !521, size: 8, offset: 160)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1656, file: !1622, line: 125, baseType: !135, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1622, line: 241, baseType: !1683, size: 320)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1653, file: !1622, line: 241, size: 320, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1683, file: !1622, line: 242, baseType: !112, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1683, file: !1622, line: 243, baseType: !112, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1683, file: !1622, line: 244, baseType: !1672, size: 64, offset: 128)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1683, file: !1622, line: 245, baseType: !1675, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1683, file: !1622, line: 246, baseType: !126, size: 64, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !1622, line: 254, baseType: !1691, size: 256, offset: 1344)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !1622, line: 254, size: 256, elements: !1692)
!1692 = !{!1693, !1699}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1691, file: !1622, line: 255, baseType: !1694, size: 256)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1622, line: 128, size: 256, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1694, file: !1622, line: 129, baseType: !111, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1694, file: !1622, line: 130, baseType: !1698, size: 256)
!1698 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !1209)
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1691, file: !1622, line: 256, baseType: !1700, size: 256)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1691, file: !1622, line: 256, size: 256, elements: !1701)
!1701 = !{!1702, !1703}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1700, file: !1622, line: 258, baseType: !211, size: 128)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1700, file: !1622, line: 259, baseType: !1704, size: 128, offset: 128)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1705, line: 22, size: 128, elements: !1706)
!1705 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1706 = !{!1707, !1710}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1704, file: !1705, line: 23, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1705, line: 23, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1704, file: !1705, line: 24, baseType: !112, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1621, file: !1622, line: 274, baseType: !1712, size: 64, offset: 1600)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1622, line: 170, size: 192, elements: !1714)
!1714 = !{!1715, !1724, !1725}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1713, file: !1622, line: 171, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1622, line: 165, baseType: !1717)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!141, !1620, !1720, !1722, !1620}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1713, file: !1622, line: 172, baseType: !1620, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1713, file: !1622, line: 173, baseType: !1672, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1592, file: !1593, line: 138, baseType: !1620, size: 64, offset: 768)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1592, file: !1593, line: 139, baseType: !1620, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1592, file: !1593, line: 140, baseType: !1620, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1592, file: !1593, line: 145, baseType: !1730, size: 64, offset: 960)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1732, line: 13, size: 896, elements: !1733)
!1732 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !{!1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1731, file: !1732, line: 14, baseType: !267, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1731, file: !1732, line: 15, baseType: !245, size: 32, offset: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1731, file: !1732, line: 16, baseType: !245, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1731, file: !1732, line: 21, baseType: !200, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1731, file: !1732, line: 27, baseType: !112, size: 64, offset: 192)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1731, file: !1732, line: 28, baseType: !112, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1731, file: !1732, line: 29, baseType: !200, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1731, file: !1732, line: 32, baseType: !668, size: 128, offset: 384)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1731, file: !1732, line: 33, baseType: !466, size: 32, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1731, file: !1732, line: 37, baseType: !200, size: 64, offset: 576)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1731, file: !1732, line: 44, baseType: !1745, size: 256, offset: 640)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1746, line: 15, size: 256, elements: !1747)
!1746 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1747 = !{!1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1745, file: !1746, line: 16, baseType: !835)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1745, file: !1746, line: 18, baseType: !141, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1745, file: !1746, line: 19, baseType: !141, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1745, file: !1746, line: 20, baseType: !141, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1745, file: !1746, line: 21, baseType: !141, size: 32, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1745, file: !1746, line: 22, baseType: !112, size: 64, offset: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1745, file: !1746, line: 23, baseType: !112, size: 64, offset: 192)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1592, file: !1593, line: 146, baseType: !1756, size: 64, offset: 1024)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !467, line: 18, flags: DIFlagFwdDecl)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1592, file: !1593, line: 147, baseType: !1759, size: 64, offset: 1088)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1593, line: 25, size: 64, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1760, file: !1593, line: 26, baseType: !245, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1760, file: !1593, line: 27, baseType: !141, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1760, file: !1593, line: 28, baseType: !1765, offset: 64)
!1765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !474, elements: !1766)
!1766 = !{!1767}
!1767 = !DISubrange(count: 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, scope: !1592, file: !1593, line: 149, baseType: !1769, size: 128, offset: 1152)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1592, file: !1593, line: 149, size: 128, elements: !1770)
!1770 = !{!1771, !1772}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1769, file: !1593, line: 150, baseType: !141, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1769, file: !1593, line: 151, baseType: !399, size: 128, align: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1265, file: !1266, line: 926, baseType: !1590, size: 64, offset: 8576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1265, file: !1266, line: 929, baseType: !1590, size: 64, offset: 8640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1265, file: !1266, line: 933, baseType: !1620, size: 64, offset: 8704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1265, file: !1266, line: 943, baseType: !1777, size: 128, offset: 8768)
!1777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !1778)
!1778 = !{!1779}
!1779 = !DISubrange(count: 16)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1265, file: !1266, line: 945, baseType: !1781, size: 64, offset: 8896)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1266, line: 49, flags: DIFlagFwdDecl)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1265, file: !1266, line: 956, baseType: !1784, size: 64, offset: 8960)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1266, line: 45, flags: DIFlagFwdDecl)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1265, file: !1266, line: 959, baseType: !1787, size: 64, offset: 9024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1266, line: 959, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1265, file: !1266, line: 962, baseType: !1790, size: 64, offset: 9088)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1266, line: 66, flags: DIFlagFwdDecl)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1265, file: !1266, line: 966, baseType: !1793, size: 64, offset: 9152)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1795, line: 35, flags: DIFlagFwdDecl)
!1795 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1265, file: !1266, line: 969, baseType: !1797, size: 64, offset: 9216)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1799, line: 82, size: 7296, elements: !1800)
!1799 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1800 = !{!1801, !1802, !1803, !1804, !1805, !1806, !1807, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1836, !1845, !1846, !1848, !1849, !1850, !1851, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1881, !1882, !1889, !1890, !1891, !1892, !1893, !1894}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1798, file: !1799, line: 83, baseType: !267, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1798, file: !1799, line: 84, baseType: !245, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1798, file: !1799, line: 85, baseType: !141, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1798, file: !1799, line: 86, baseType: !211, size: 128, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1798, file: !1799, line: 88, baseType: !1524, size: 128, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1798, file: !1799, line: 91, baseType: !1264, size: 64, offset: 384)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1798, file: !1799, line: 94, baseType: !1808, size: 192, offset: 448)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1809, line: 30, size: 192, elements: !1810)
!1809 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1812}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1808, file: !1809, line: 31, baseType: !211, size: 128)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1808, file: !1809, line: 32, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1814, line: 25, baseType: !1815)
!1814 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 23, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1815, file: !1814, line: 24, baseType: !1413, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1798, file: !1799, line: 97, baseType: !664, size: 64, offset: 640)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1798, file: !1799, line: 100, baseType: !141, size: 32, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1798, file: !1799, line: 106, baseType: !141, size: 32, offset: 736)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1798, file: !1799, line: 107, baseType: !1264, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1798, file: !1799, line: 110, baseType: !141, size: 32, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !1799, line: 111, baseType: !7, size: 32, offset: 864)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1798, file: !1799, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1798, file: !1799, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1798, file: !1799, line: 128, baseType: !141, size: 32, offset: 928)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1798, file: !1799, line: 129, baseType: !211, size: 128, offset: 960)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1798, file: !1799, line: 132, baseType: !1335, size: 512, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1798, file: !1799, line: 133, baseType: !1343, size: 64, offset: 1600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1798, file: !1799, line: 140, baseType: !1831, size: 256, offset: 1664)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1832, size: 256, elements: !1612)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1799, line: 38, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1832, file: !1799, line: 39, baseType: !453, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1832, file: !1799, line: 40, baseType: !453, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1798, file: !1799, line: 146, baseType: !1837, size: 192, offset: 1920)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1799, line: 66, size: 192, elements: !1838)
!1838 = !{!1839}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1837, file: !1799, line: 67, baseType: !1840, size: 192)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1799, line: 47, size: 192, elements: !1841)
!1841 = !{!1842, !1843, !1844}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1840, file: !1799, line: 48, baseType: !202, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1840, file: !1799, line: 49, baseType: !202, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1840, file: !1799, line: 50, baseType: !202, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1798, file: !1799, line: 150, baseType: !1573, size: 640, offset: 2112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1798, file: !1799, line: 153, baseType: !1847, size: 256, offset: 2752)
!1847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1514, size: 256, elements: !1209)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1798, file: !1799, line: 159, baseType: !1514, size: 64, offset: 3008)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1798, file: !1799, line: 162, baseType: !141, size: 32, offset: 3072)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1798, file: !1799, line: 164, baseType: !258, size: 64, offset: 3136)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1798, file: !1799, line: 175, baseType: !1852, size: 32, offset: 3200)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !422, line: 805, baseType: !1853)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !422, line: 798, size: 32, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1853, file: !422, line: 803, baseType: !421, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1853, file: !422, line: 804, baseType: !228, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1798, file: !1799, line: 176, baseType: !453, size: 64, offset: 3264)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1798, file: !1799, line: 176, baseType: !453, size: 64, offset: 3328)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1798, file: !1799, line: 176, baseType: !453, size: 64, offset: 3392)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1798, file: !1799, line: 176, baseType: !453, size: 64, offset: 3456)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1798, file: !1799, line: 177, baseType: !453, size: 64, offset: 3520)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1798, file: !1799, line: 178, baseType: !453, size: 64, offset: 3584)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1798, file: !1799, line: 179, baseType: !1561, size: 128, offset: 3648)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1798, file: !1799, line: 180, baseType: !112, size: 64, offset: 3776)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1798, file: !1799, line: 180, baseType: !112, size: 64, offset: 3840)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1798, file: !1799, line: 180, baseType: !112, size: 64, offset: 3904)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1798, file: !1799, line: 180, baseType: !112, size: 64, offset: 3968)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1798, file: !1799, line: 181, baseType: !112, size: 64, offset: 4032)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1798, file: !1799, line: 181, baseType: !112, size: 64, offset: 4096)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1798, file: !1799, line: 181, baseType: !112, size: 64, offset: 4160)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1798, file: !1799, line: 181, baseType: !112, size: 64, offset: 4224)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1798, file: !1799, line: 182, baseType: !112, size: 64, offset: 4288)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1798, file: !1799, line: 182, baseType: !112, size: 64, offset: 4352)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1798, file: !1799, line: 182, baseType: !112, size: 64, offset: 4416)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1798, file: !1799, line: 182, baseType: !112, size: 64, offset: 4480)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1798, file: !1799, line: 183, baseType: !112, size: 64, offset: 4544)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1798, file: !1799, line: 183, baseType: !112, size: 64, offset: 4608)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1798, file: !1799, line: 184, baseType: !1879, offset: 4672)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1880, line: 12, elements: !242)
!1880 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1798, file: !1799, line: 192, baseType: !455, size: 64, offset: 4672)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1798, file: !1799, line: 203, baseType: !1883, size: 2048, offset: 4736)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 2048, elements: !1778)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1885, line: 43, size: 128, elements: !1886)
!1885 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1884, file: !1885, line: 44, baseType: !363, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1884, file: !1885, line: 45, baseType: !363, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1798, file: !1799, line: 220, baseType: !521, size: 8, offset: 6784)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1798, file: !1799, line: 221, baseType: !1253, size: 16, offset: 6800)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1798, file: !1799, line: 222, baseType: !1253, size: 16, offset: 6816)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1798, file: !1799, line: 224, baseType: !1028, size: 64, offset: 6848)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1798, file: !1799, line: 227, baseType: !223, size: 192, offset: 6912)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1798, file: !1799, line: 233, baseType: !223, size: 192, offset: 7104)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1265, file: !1266, line: 970, baseType: !1896, size: 64, offset: 9280)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1799, line: 20, size: 16576, elements: !1898)
!1898 = !{!1899, !1900, !1901, !1902}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1897, file: !1799, line: 21, baseType: !228)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1897, file: !1799, line: 22, baseType: !267, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1897, file: !1799, line: 23, baseType: !1524, size: 128, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1897, file: !1799, line: 24, baseType: !1903, size: 16384, offset: 192)
!1903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1904, size: 16384, elements: !320)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1809, line: 49, size: 256, elements: !1905)
!1905 = !{!1906}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1904, file: !1809, line: 50, baseType: !1907, size: 256)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1809, line: 35, size: 256, elements: !1908)
!1908 = !{!1909, !1916, !1917, !1923}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1907, file: !1809, line: 37, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1911, line: 19, baseType: !1912)
!1911 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1911, line: 18, baseType: !1914)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !141}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1907, file: !1809, line: 38, baseType: !112, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1907, file: !1809, line: 44, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1911, line: 22, baseType: !1919)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1911, line: 21, baseType: !1921)
!1921 = !DISubroutineType(types: !1922)
!1922 = !{null}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1907, file: !1809, line: 46, baseType: !1813, size: 64, offset: 192)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1265, file: !1266, line: 971, baseType: !1813, size: 64, offset: 9344)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1265, file: !1266, line: 972, baseType: !1813, size: 64, offset: 9408)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1265, file: !1266, line: 974, baseType: !1813, size: 64, offset: 9472)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1265, file: !1266, line: 975, baseType: !1808, size: 192, offset: 9536)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1265, file: !1266, line: 976, baseType: !112, size: 64, offset: 9728)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1265, file: !1266, line: 977, baseType: !361, size: 64, offset: 9792)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1265, file: !1266, line: 978, baseType: !7, size: 32, offset: 9856)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1265, file: !1266, line: 980, baseType: !402, size: 64, offset: 9920)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1265, file: !1266, line: 989, baseType: !1933, size: 128, offset: 9984)
!1933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1934, line: 35, size: 128, elements: !1935)
!1934 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1935 = !{!1936, !1937, !1938}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1933, file: !1934, line: 36, baseType: !141, size: 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1933, file: !1934, line: 37, baseType: !245, size: 32, offset: 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1933, file: !1934, line: 38, baseType: !1939, size: 64, offset: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1934, line: 23, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1265, file: !1266, line: 992, baseType: !453, size: 64, offset: 10112)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1265, file: !1266, line: 993, baseType: !453, size: 64, offset: 10176)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1265, file: !1266, line: 996, baseType: !228, offset: 10240)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1265, file: !1266, line: 999, baseType: !835, offset: 10240)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1265, file: !1266, line: 1001, baseType: !1946, size: 64, offset: 10240)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1266, line: 636, size: 64, elements: !1947)
!1947 = !{!1948}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1946, file: !1266, line: 637, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1265, file: !1266, line: 1005, baseType: !814, size: 128, offset: 10304)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1265, file: !1266, line: 1007, baseType: !1264, size: 64, offset: 10432)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1265, file: !1266, line: 1009, baseType: !1953, size: 64, offset: 10496)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1266, line: 1009, flags: DIFlagFwdDecl)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1265, file: !1266, line: 1043, baseType: !111, size: 64, offset: 10560)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1265, file: !1266, line: 1046, baseType: !1957, size: 64, offset: 10624)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1266, line: 41, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1265, file: !1266, line: 1050, baseType: !1960, size: 64, offset: 10688)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1266, line: 42, flags: DIFlagFwdDecl)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1265, file: !1266, line: 1054, baseType: !1963, size: 64, offset: 10752)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1266, line: 55, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1265, file: !1266, line: 1056, baseType: !1966, size: 64, offset: 10816)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1266, line: 40, flags: DIFlagFwdDecl)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1265, file: !1266, line: 1058, baseType: !1969, size: 64, offset: 10880)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1971, line: 99, size: 704, elements: !1972)
!1971 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1972 = !{!1973, !1974, !1975, !1976, !1977, !1978, !1979, !1998, !1999}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1970, file: !1971, line: 100, baseType: !200, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1970, file: !1971, line: 101, baseType: !245, size: 32, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1970, file: !1971, line: 102, baseType: !245, size: 32, offset: 96)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1971, line: 105, baseType: !228, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1970, file: !1971, line: 107, baseType: !119, size: 16, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1970, file: !1971, line: 109, baseType: !804, size: 128, offset: 192)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1970, file: !1971, line: 110, baseType: !1980, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1971, line: 73, size: 448, elements: !1982)
!1982 = !{!1983, !1986, !1987, !1992, !1997}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1981, file: !1971, line: 74, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1971, line: 74, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1981, file: !1971, line: 75, baseType: !1969, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1971, line: 83, baseType: !1988, size: 128, offset: 128)
!1988 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !1971, line: 83, size: 128, elements: !1989)
!1989 = !{!1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1988, file: !1971, line: 84, baseType: !211, size: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1988, file: !1971, line: 85, baseType: !988, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, scope: !1981, file: !1971, line: 87, baseType: !1993, size: 128, offset: 256)
!1993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1981, file: !1971, line: 87, size: 128, elements: !1994)
!1994 = !{!1995, !1996}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1993, file: !1971, line: 88, baseType: !668, size: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1993, file: !1971, line: 89, baseType: !399, size: 128, align: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1981, file: !1971, line: 92, baseType: !7, size: 32, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1970, file: !1971, line: 111, baseType: !664, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1970, file: !1971, line: 113, baseType: !196, size: 256, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1265, file: !1266, line: 1061, baseType: !2001, size: 64, offset: 10944)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1266, line: 43, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1265, file: !1266, line: 1064, baseType: !112, size: 64, offset: 11008)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1265, file: !1266, line: 1065, baseType: !2005, size: 64, offset: 11072)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1809, line: 14, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1809, line: 12, size: 384, elements: !2008)
!2008 = !{!2009}
!2009 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1809, line: 13, baseType: !2010, size: 384)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2007, file: !1809, line: 13, size: 384, elements: !2011)
!2011 = !{!2012, !2013, !2014, !2015}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2010, file: !1809, line: 13, baseType: !141, size: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2010, file: !1809, line: 13, baseType: !141, size: 32, offset: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2010, file: !1809, line: 13, baseType: !141, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2010, file: !1809, line: 13, baseType: !2016, size: 256, offset: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2017, line: 32, size: 256, elements: !2018)
!2017 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2018 = !{!2019, !2024, !2037, !2043, !2052, !2072, !2077}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2016, file: !2017, line: 37, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 34, size: 64, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2020, file: !2017, line: 35, baseType: !1503, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2020, file: !2017, line: 36, baseType: !472, size: 32, offset: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2016, file: !2017, line: 45, baseType: !2025, size: 192)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 40, size: 192, elements: !2026)
!2026 = !{!2027, !2029, !2030, !2036}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2025, file: !2017, line: 41, baseType: !2028, size: 32)
!2028 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !348, line: 95, baseType: !141)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2025, file: !2017, line: 42, baseType: !141, size: 32, offset: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2025, file: !2017, line: 43, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2017, line: 11, baseType: !2032)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2017, line: 8, size: 64, elements: !2033)
!2033 = !{!2034, !2035}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2032, file: !2017, line: 9, baseType: !141, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2032, file: !2017, line: 10, baseType: !111, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2025, file: !2017, line: 44, baseType: !141, size: 32, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2016, file: !2017, line: 52, baseType: !2038, size: 128)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 48, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2038, file: !2017, line: 49, baseType: !1503, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2038, file: !2017, line: 50, baseType: !472, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2038, file: !2017, line: 51, baseType: !2031, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2016, file: !2017, line: 61, baseType: !2044, size: 256)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 55, size: 256, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2051}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2044, file: !2017, line: 56, baseType: !1503, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2044, file: !2017, line: 57, baseType: !472, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2044, file: !2017, line: 58, baseType: !141, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2044, file: !2017, line: 59, baseType: !2050, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !348, line: 94, baseType: !349)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2044, file: !2017, line: 60, baseType: !2050, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2016, file: !2017, line: 95, baseType: !2053, size: 256)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 64, size: 256, elements: !2054)
!2054 = !{!2055, !2056}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2053, file: !2017, line: 65, baseType: !111, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !2017, line: 77, baseType: !2057, size: 192, offset: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !2017, line: 77, size: 192, elements: !2058)
!2058 = !{!2059, !2060, !2067}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2057, file: !2017, line: 82, baseType: !1253, size: 16)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2057, file: !2017, line: 88, baseType: !2061, size: 192)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 84, size: 192, elements: !2062)
!2062 = !{!2063, !2065, !2066}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2061, file: !2017, line: 85, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !1373)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2061, file: !2017, line: 86, baseType: !111, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2061, file: !2017, line: 87, baseType: !111, size: 64, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2057, file: !2017, line: 93, baseType: !2068, size: 96)
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2057, file: !2017, line: 90, size: 96, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2068, file: !2017, line: 91, baseType: !2064, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2068, file: !2017, line: 92, baseType: !450, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2016, file: !2017, line: 101, baseType: !2073, size: 128)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 98, size: 128, elements: !2074)
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2073, file: !2017, line: 99, baseType: !350, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2073, file: !2017, line: 100, baseType: !141, size: 32, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2016, file: !2017, line: 108, baseType: !2078, size: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2016, file: !2017, line: 104, size: 128, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2078, file: !2017, line: 105, baseType: !111, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2078, file: !2017, line: 106, baseType: !141, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2078, file: !2017, line: 107, baseType: !7, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1265, file: !1266, line: 1067, baseType: !1879, offset: 11136)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1265, file: !1266, line: 1099, baseType: !2085, size: 64, offset: 11136)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1266, line: 56, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1265, file: !1266, line: 1103, baseType: !211, size: 128, offset: 11200)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1265, file: !1266, line: 1104, baseType: !2089, size: 64, offset: 11328)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1266, line: 46, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1265, file: !1266, line: 1105, baseType: !223, size: 192, offset: 11392)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1265, file: !1266, line: 1106, baseType: !7, size: 32, offset: 11584)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1265, file: !1266, line: 1109, baseType: !2094, size: 128, offset: 11648)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2095, size: 128, elements: !1612)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1266, line: 51, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1265, file: !1266, line: 1110, baseType: !223, size: 192, offset: 11776)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1265, file: !1266, line: 1111, baseType: !211, size: 128, offset: 11968)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1265, file: !1266, line: 1173, baseType: !2100, size: 64, offset: 12096)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2102, line: 62, size: 256, align: 256, elements: !2103)
!2102 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2106, !2111}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2101, file: !2102, line: 75, baseType: !450, size: 32)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2101, file: !2102, line: 90, baseType: !450, size: 32, offset: 32)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2101, file: !2102, line: 124, baseType: !2107, size: 64, offset: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2101, file: !2102, line: 109, size: 64, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2107, file: !2102, line: 110, baseType: !454, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2107, file: !2102, line: 112, baseType: !454, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2101, file: !2102, line: 144, baseType: !450, size: 32, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1265, file: !1266, line: 1174, baseType: !449, size: 32, offset: 12160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1265, file: !1266, line: 1179, baseType: !112, size: 64, offset: 12224)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1265, file: !1266, line: 1182, baseType: !2115, size: 128, offset: 12288)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1205, line: 76, size: 128, elements: !2116)
!2116 = !{!2117, !2122, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2115, file: !1205, line: 85, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2119, line: 7, size: 64, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2118, file: !2119, line: 12, baseType: !1410, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2115, file: !1205, line: 88, baseType: !521, size: 8, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2115, file: !1205, line: 95, baseType: !521, size: 8, offset: 72)
!2124 = !DIDerivedType(tag: DW_TAG_member, scope: !1265, file: !1266, line: 1184, baseType: !2125, size: 128, offset: 12416)
!2125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1265, file: !1266, line: 1184, size: 128, elements: !2126)
!2126 = !{!2127, !2128}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2125, file: !1266, line: 1185, baseType: !267, size: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2125, file: !1266, line: 1186, baseType: !399, size: 128, align: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1265, file: !1266, line: 1190, baseType: !2130, size: 64, offset: 12544)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1266, line: 53, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1265, file: !1266, line: 1192, baseType: !2133, size: 128, offset: 12608)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1205, line: 64, size: 128, elements: !2134)
!2134 = !{!2135, !2136, !2137}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2133, file: !1205, line: 65, baseType: !786, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2133, file: !1205, line: 67, baseType: !450, size: 32, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2133, file: !1205, line: 68, baseType: !450, size: 32, offset: 96)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1265, file: !1266, line: 1206, baseType: !141, size: 32, offset: 12736)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1265, file: !1266, line: 1207, baseType: !141, size: 32, offset: 12768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1265, file: !1266, line: 1209, baseType: !112, size: 64, offset: 12800)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1265, file: !1266, line: 1219, baseType: !453, size: 64, offset: 12864)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1265, file: !1266, line: 1220, baseType: !453, size: 64, offset: 12928)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1265, file: !1266, line: 1317, baseType: !141, size: 32, offset: 12992)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1265, file: !1266, line: 1319, baseType: !1264, size: 64, offset: 13056)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1265, file: !1266, line: 1322, baseType: !2146, size: 64, offset: 13120)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2148, line: 56, size: 512, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2158}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !2148, line: 57, baseType: !2146, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2147, file: !2148, line: 58, baseType: !111, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2147, file: !2148, line: 59, baseType: !112, size: 64, offset: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 60, baseType: !112, size: 64, offset: 192)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2147, file: !2148, line: 61, baseType: !875, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2147, file: !2148, line: 62, baseType: !7, size: 32, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2147, file: !2148, line: 63, baseType: !2157, size: 64, offset: 384)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !203, line: 153, baseType: !453)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2147, file: !2148, line: 64, baseType: !2159, size: 64, offset: 448)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1265, file: !1266, line: 1326, baseType: !267, size: 32, offset: 13184)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1265, file: !1266, line: 1342, baseType: !111, size: 64, offset: 13248)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1265, file: !1266, line: 1343, baseType: !454, size: 64, offset: 13312)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1265, file: !1266, line: 1344, baseType: !453, size: 64, offset: 13376)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1265, file: !1266, line: 1345, baseType: !454, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1265, file: !1266, line: 1346, baseType: !454, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1265, file: !1266, line: 1347, baseType: !454, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1265, file: !1266, line: 1348, baseType: !399, size: 128, align: 64, offset: 13504)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1265, file: !1266, line: 1358, baseType: !2170, size: 34816, offset: 13824)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2171, line: 485, size: 34816, elements: !2172)
!2171 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2172 = !{!2173, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2202, !2203, !2204, !2205, !2206, !2207, !2210, !2211, !2212}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2170, file: !2171, line: 487, baseType: !2174, size: 192)
!2174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2175, size: 192, elements: !316)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2176, line: 16, size: 64, elements: !2177)
!2176 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !{!2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2175, file: !2176, line: 17, baseType: !115, size: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2175, file: !2176, line: 18, baseType: !115, size: 16, offset: 16)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2175, file: !2176, line: 19, baseType: !115, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2175, file: !2176, line: 19, baseType: !115, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2175, file: !2176, line: 19, baseType: !115, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2175, file: !2176, line: 19, baseType: !115, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2175, file: !2176, line: 19, baseType: !115, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2175, file: !2176, line: 20, baseType: !115, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2175, file: !2176, line: 20, baseType: !115, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2175, file: !2176, line: 20, baseType: !115, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2175, file: !2176, line: 20, baseType: !115, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2175, file: !2176, line: 20, baseType: !115, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2175, file: !2176, line: 20, baseType: !115, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2170, file: !2171, line: 491, baseType: !112, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2170, file: !2171, line: 495, baseType: !119, size: 16, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2170, file: !2171, line: 496, baseType: !119, size: 16, offset: 272)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2170, file: !2171, line: 497, baseType: !119, size: 16, offset: 288)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2170, file: !2171, line: 498, baseType: !119, size: 16, offset: 304)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2170, file: !2171, line: 502, baseType: !112, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2170, file: !2171, line: 503, baseType: !112, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2170, file: !2171, line: 514, baseType: !2199, size: 256, offset: 448)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2200, size: 256, elements: !1209)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2171, line: 483, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2170, file: !2171, line: 516, baseType: !112, size: 64, offset: 704)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2170, file: !2171, line: 518, baseType: !112, size: 64, offset: 768)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2170, file: !2171, line: 520, baseType: !112, size: 64, offset: 832)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2170, file: !2171, line: 521, baseType: !112, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2170, file: !2171, line: 522, baseType: !112, size: 64, offset: 960)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2170, file: !2171, line: 528, baseType: !2208, size: 64, offset: 1024)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2171, line: 10, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2170, file: !2171, line: 535, baseType: !112, size: 64, offset: 1088)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2170, file: !2171, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2170, file: !2171, line: 540, baseType: !2213, size: 33280, offset: 1536)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2214, line: 317, size: 33280, elements: !2215)
!2214 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2213, file: !2214, line: 330, baseType: !7, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2213, file: !2214, line: 337, baseType: !112, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2213, file: !2214, line: 348, baseType: !2219, size: 32768, offset: 512)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2214, line: 304, size: 32768, elements: !2220)
!2220 = !{!2221, !2236, !2275, !2325, !2338}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2219, file: !2214, line: 305, baseType: !2222, size: 896)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2214, line: 12, size: 896, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2235}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2222, file: !2214, line: 13, baseType: !449, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2222, file: !2214, line: 14, baseType: !449, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2222, file: !2214, line: 15, baseType: !449, size: 32, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2222, file: !2214, line: 16, baseType: !449, size: 32, offset: 96)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2222, file: !2214, line: 17, baseType: !449, size: 32, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2222, file: !2214, line: 18, baseType: !449, size: 32, offset: 160)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2222, file: !2214, line: 19, baseType: !449, size: 32, offset: 192)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2222, file: !2214, line: 22, baseType: !2232, size: 640, offset: 224)
!2232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 640, elements: !2233)
!2233 = !{!2234}
!2234 = !DISubrange(count: 20)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2222, file: !2214, line: 25, baseType: !449, size: 32, offset: 864)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2219, file: !2214, line: 306, baseType: !2237, size: 4096, align: 128)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2214, line: 34, size: 4096, align: 128, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2243, !2258, !2259, !2260, !2264, !2266, !2270}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2237, file: !2214, line: 35, baseType: !115, size: 16)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2237, file: !2214, line: 36, baseType: !115, size: 16, offset: 16)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2237, file: !2214, line: 37, baseType: !115, size: 16, offset: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2237, file: !2214, line: 38, baseType: !115, size: 16, offset: 48)
!2243 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2214, line: 39, baseType: !2244, size: 128, offset: 64)
!2244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !2214, line: 39, size: 128, elements: !2245)
!2245 = !{!2246, !2251}
!2246 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2214, line: 40, baseType: !2247, size: 128)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2244, file: !2214, line: 40, size: 128, elements: !2248)
!2248 = !{!2249, !2250}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2247, file: !2214, line: 41, baseType: !453, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2247, file: !2214, line: 42, baseType: !453, size: 64, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, scope: !2244, file: !2214, line: 44, baseType: !2252, size: 128)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2244, file: !2214, line: 44, size: 128, elements: !2253)
!2253 = !{!2254, !2255, !2256, !2257}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2252, file: !2214, line: 45, baseType: !449, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2252, file: !2214, line: 46, baseType: !449, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2252, file: !2214, line: 47, baseType: !449, size: 32, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2252, file: !2214, line: 48, baseType: !449, size: 32, offset: 96)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2237, file: !2214, line: 51, baseType: !449, size: 32, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2237, file: !2214, line: 52, baseType: !449, size: 32, offset: 224)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2237, file: !2214, line: 55, baseType: !2261, size: 1024, offset: 256)
!2261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 1024, elements: !2262)
!2262 = !{!2263}
!2263 = !DISubrange(count: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2237, file: !2214, line: 58, baseType: !2265, size: 2048, offset: 1280)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 2048, elements: !320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2237, file: !2214, line: 60, baseType: !2267, size: 384, offset: 3328)
!2267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 384, elements: !2268)
!2268 = !{!2269}
!2269 = !DISubrange(count: 12)
!2270 = !DIDerivedType(tag: DW_TAG_member, scope: !2237, file: !2214, line: 62, baseType: !2271, size: 384, offset: 3712)
!2271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2237, file: !2214, line: 62, size: 384, elements: !2272)
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2271, file: !2214, line: 63, baseType: !2267, size: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2271, file: !2214, line: 64, baseType: !2267, size: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2219, file: !2214, line: 307, baseType: !2276, size: 1088)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2214, line: 79, size: 1088, elements: !2277)
!2277 = !{!2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2324}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2276, file: !2214, line: 80, baseType: !449, size: 32)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2276, file: !2214, line: 81, baseType: !449, size: 32, offset: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2276, file: !2214, line: 82, baseType: !449, size: 32, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2276, file: !2214, line: 83, baseType: !449, size: 32, offset: 96)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2276, file: !2214, line: 84, baseType: !449, size: 32, offset: 128)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2276, file: !2214, line: 85, baseType: !449, size: 32, offset: 160)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2276, file: !2214, line: 86, baseType: !449, size: 32, offset: 192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2276, file: !2214, line: 88, baseType: !2232, size: 640, offset: 224)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2276, file: !2214, line: 89, baseType: !1395, size: 8, offset: 864)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2276, file: !2214, line: 90, baseType: !1395, size: 8, offset: 872)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2276, file: !2214, line: 91, baseType: !1395, size: 8, offset: 880)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2276, file: !2214, line: 92, baseType: !1395, size: 8, offset: 888)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2276, file: !2214, line: 93, baseType: !1395, size: 8, offset: 896)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2276, file: !2214, line: 94, baseType: !1395, size: 8, offset: 904)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2276, file: !2214, line: 95, baseType: !2293, size: 64, offset: 960)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2295, line: 11, size: 128, elements: !2296)
!2295 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2296 = !{!2297, !2298}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2294, file: !2295, line: 12, baseType: !350, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2294, file: !2295, line: 13, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2301, line: 56, size: 1344, elements: !2302)
!2301 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2300, file: !2301, line: 61, baseType: !112, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2300, file: !2301, line: 62, baseType: !112, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2300, file: !2301, line: 63, baseType: !112, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2300, file: !2301, line: 64, baseType: !112, size: 64, offset: 192)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2300, file: !2301, line: 65, baseType: !112, size: 64, offset: 256)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2300, file: !2301, line: 66, baseType: !112, size: 64, offset: 320)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2300, file: !2301, line: 68, baseType: !112, size: 64, offset: 384)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2300, file: !2301, line: 69, baseType: !112, size: 64, offset: 448)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2300, file: !2301, line: 70, baseType: !112, size: 64, offset: 512)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2300, file: !2301, line: 71, baseType: !112, size: 64, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2300, file: !2301, line: 72, baseType: !112, size: 64, offset: 640)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2300, file: !2301, line: 73, baseType: !112, size: 64, offset: 704)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2300, file: !2301, line: 74, baseType: !112, size: 64, offset: 768)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2300, file: !2301, line: 75, baseType: !112, size: 64, offset: 832)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2300, file: !2301, line: 76, baseType: !112, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2300, file: !2301, line: 81, baseType: !112, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2300, file: !2301, line: 83, baseType: !112, size: 64, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2300, file: !2301, line: 84, baseType: !112, size: 64, offset: 1088)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2300, file: !2301, line: 85, baseType: !112, size: 64, offset: 1152)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2300, file: !2301, line: 86, baseType: !112, size: 64, offset: 1216)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2300, file: !2301, line: 87, baseType: !112, size: 64, offset: 1280)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2276, file: !2214, line: 96, baseType: !449, size: 32, offset: 1024)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2219, file: !2214, line: 308, baseType: !2326, size: 4608, align: 512)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2214, line: 289, size: 4608, align: 512, elements: !2327)
!2327 = !{!2328, !2329, !2336}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2326, file: !2214, line: 290, baseType: !2237, size: 4096, align: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2326, file: !2214, line: 291, baseType: !2330, size: 512, offset: 4096)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2214, line: 268, size: 512, elements: !2331)
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2330, file: !2214, line: 269, baseType: !453, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2330, file: !2214, line: 270, baseType: !453, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2330, file: !2214, line: 271, baseType: !2335, size: 384, offset: 128)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 384, elements: !1668)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2326, file: !2214, line: 292, baseType: !2337, offset: 4608)
!2337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, elements: !1766)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2219, file: !2214, line: 309, baseType: !2339, size: 32768)
!2339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1395, size: 32768, elements: !2340)
!2340 = !{!2341}
!2341 = !DISubrange(count: 4096)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1261, file: !788, line: 378, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1257, file: !788, line: 384, baseType: !1545, size: 192, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1032, file: !788, line: 500, baseType: !228, offset: 6656)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1032, file: !788, line: 501, baseType: !2347, size: 64, offset: 6656)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !788, line: 387, flags: DIFlagFwdDecl)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1032, file: !788, line: 516, baseType: !1756, size: 64, offset: 6720)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1032, file: !788, line: 519, baseType: !391, size: 64, offset: 6784)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1032, file: !788, line: 521, baseType: !2352, size: 64, offset: 6848)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !788, line: 521, flags: DIFlagFwdDecl)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1032, file: !788, line: 545, baseType: !245, size: 32, offset: 6912)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1032, file: !788, line: 548, baseType: !521, size: 8, offset: 6944)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1032, file: !788, line: 550, baseType: !2357, offset: 6952)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2358, line: 142, elements: !242)
!2358 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1032, file: !788, line: 554, baseType: !196, size: 256, offset: 6976)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1032, file: !788, line: 557, baseType: !449, size: 32, offset: 7232)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1029, file: !788, line: 565, baseType: !192, offset: 7296)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1025, file: !788, line: 151, baseType: !245, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1017, file: !788, line: 156, baseType: !228, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !792, file: !788, line: 159, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !792, file: !788, line: 159, size: 128, elements: !2366)
!2366 = !{!2367, !2431}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2365, file: !788, line: 161, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2370)
!2370 = !{!2371, !2381, !2402, !2403, !2404, !2405, !2406, !2418, !2419, !2420}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2369, file: !31, line: 111, baseType: !2372, size: 384)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2373)
!2373 = !{!2374, !2376, !2377, !2378, !2379, !2380}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2372, file: !31, line: 20, baseType: !2375, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2372, file: !31, line: 21, baseType: !2375, size: 64, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2372, file: !31, line: 22, baseType: !2375, size: 64, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2372, file: !31, line: 23, baseType: !112, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2372, file: !31, line: 24, baseType: !112, size: 64, offset: 256)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2372, file: !31, line: 25, baseType: !112, size: 64, offset: 320)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2369, file: !31, line: 112, baseType: !2382, size: 64, offset: 384)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2384, line: 105, size: 128, elements: !2385)
!2384 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2385 = !{!2386, !2387}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2383, file: !2384, line: 110, baseType: !112, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2383, file: !2384, line: 118, baseType: !2388, size: 64, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2384, line: 95, size: 448, elements: !2390)
!2390 = !{!2391, !2392, !2397, !2398, !2399, !2400, !2401}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2389, file: !2384, line: 96, baseType: !200, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2389, file: !2384, line: 97, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2384, line: 60, baseType: !2395)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{null, !2382}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2389, file: !2384, line: 98, baseType: !2393, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2389, file: !2384, line: 99, baseType: !521, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2389, file: !2384, line: 100, baseType: !521, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2389, file: !2384, line: 101, baseType: !399, size: 128, align: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2389, file: !2384, line: 102, baseType: !2382, size: 64, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2369, file: !31, line: 113, baseType: !2383, size: 128, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2369, file: !31, line: 114, baseType: !1545, size: 192, offset: 576)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2369, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2369, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2369, file: !31, line: 117, baseType: !2407, size: 64, offset: 832)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2409)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2410)
!2410 = !{!2411, !2412, !2416, !2417}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2409, file: !31, line: 73, baseType: !895, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2409, file: !31, line: 78, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{null, !2368}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2409, file: !31, line: 83, baseType: !2413, size: 64, offset: 128)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2409, file: !31, line: 89, baseType: !1081, size: 64, offset: 192)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2369, file: !31, line: 118, baseType: !111, size: 64, offset: 896)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2369, file: !31, line: 119, baseType: !141, size: 32, offset: 960)
!2420 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !31, line: 120, baseType: !2421, size: 128, offset: 1024)
!2421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2369, file: !31, line: 120, size: 128, elements: !2422)
!2422 = !{!2423, !2429}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2421, file: !31, line: 121, baseType: !2424, size: 128)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2425, line: 6, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2424, file: !2425, line: 7, baseType: !453, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2424, file: !2425, line: 8, baseType: !453, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2421, file: !31, line: 122, baseType: !2430)
!2430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, elements: !1766)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2365, file: !788, line: 162, baseType: !111, size: 64, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !792, file: !788, line: 176, baseType: !399, size: 128, align: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !788, line: 179, baseType: !2434, size: 32, offset: 384)
!2434 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !788, line: 179, size: 32, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2434, file: !788, line: 184, baseType: !245, size: 32)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2434, file: !788, line: 192, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2434, file: !788, line: 194, baseType: !7, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2434, file: !788, line: 195, baseType: !141, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !787, file: !788, line: 199, baseType: !245, size: 32, offset: 416)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !686, file: !44, line: 1964, baseType: !2442, size: 64, offset: 1344)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!350, !628, !2445}
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2447, line: 12, size: 256, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451, !2452, !2453}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2446, file: !2447, line: 13, baseType: !809, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2446, file: !2447, line: 16, baseType: !141, size: 32, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2446, file: !2447, line: 23, baseType: !112, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2446, file: !2447, line: 30, baseType: !112, size: 64, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2446, file: !2447, line: 33, baseType: !2454, size: 64, offset: 192)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !788, line: 27, flags: DIFlagFwdDecl)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !686, file: !44, line: 1966, baseType: !2442, size: 64, offset: 1408)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !629, file: !44, line: 1424, baseType: !2458, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2461)
!2461 = !{!2462, !2508, !2512, !2516, !2517, !2518, !2519, !2520, !2525, !2530, !2534}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2460, file: !38, line: 323, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!141, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2468)
!2468 = !{!2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2493, !2494, !2495}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2467, file: !38, line: 295, baseType: !668, size: 128)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2467, file: !38, line: 296, baseType: !211, size: 128, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2467, file: !38, line: 297, baseType: !211, size: 128, offset: 256)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2467, file: !38, line: 298, baseType: !211, size: 128, offset: 384)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2467, file: !38, line: 299, baseType: !223, size: 192, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2467, file: !38, line: 300, baseType: !228, offset: 704)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2467, file: !38, line: 301, baseType: !245, size: 32, offset: 704)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2467, file: !38, line: 302, baseType: !628, size: 64, offset: 768)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2467, file: !38, line: 303, baseType: !2478, size: 64, offset: 832)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2479)
!2479 = !{!2480, !2492}
!2480 = !DIDerivedType(tag: DW_TAG_member, scope: !2478, file: !38, line: 69, baseType: !2481, size: 32)
!2481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2478, file: !38, line: 69, size: 32, elements: !2482)
!2482 = !{!2483, !2484, !2485}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2481, file: !38, line: 70, baseType: !466, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2481, file: !38, line: 71, baseType: !474, size: 32)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2481, file: !38, line: 72, baseType: !2486, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2487, line: 24, baseType: !2488)
!2487 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2487, line: 22, size: 32, elements: !2489)
!2489 = !{!2490}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2488, file: !2487, line: 23, baseType: !2491, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2487, line: 20, baseType: !472)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2478, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2467, file: !38, line: 304, baseType: !562, size: 64, offset: 896)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2467, file: !38, line: 305, baseType: !112, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2467, file: !38, line: 306, baseType: !2496, size: 576, offset: 1024)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2497)
!2497 = !{!2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2496, file: !38, line: 206, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !209)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2496, file: !38, line: 207, baseType: !2499, size: 64, offset: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2496, file: !38, line: 208, baseType: !2499, size: 64, offset: 128)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2496, file: !38, line: 209, baseType: !2499, size: 64, offset: 192)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2496, file: !38, line: 210, baseType: !2499, size: 64, offset: 256)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2496, file: !38, line: 211, baseType: !2499, size: 64, offset: 320)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2496, file: !38, line: 212, baseType: !2499, size: 64, offset: 384)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2496, file: !38, line: 213, baseType: !569, size: 64, offset: 448)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2496, file: !38, line: 214, baseType: !569, size: 64, offset: 512)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2460, file: !38, line: 324, baseType: !2509, size: 64, offset: 64)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2466, !628, !141}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2460, file: !38, line: 325, baseType: !2513, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !2466}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2460, file: !38, line: 326, baseType: !2463, size: 64, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2460, file: !38, line: 327, baseType: !2463, size: 64, offset: 256)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2460, file: !38, line: 328, baseType: !2463, size: 64, offset: 320)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2460, file: !38, line: 329, baseType: !714, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2460, file: !38, line: 332, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DISubroutineType(types: !2523)
!2523 = !{!2524, !460}
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2460, file: !38, line: 333, baseType: !2526, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!141, !460, !2529}
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2460, file: !38, line: 335, baseType: !2531, size: 64, offset: 576)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!141, !460, !2524}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2460, file: !38, line: 337, baseType: !2535, size: 64, offset: 640)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!141, !628, !2538}
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !629, file: !44, line: 1425, baseType: !2540, size: 64, offset: 512)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2542)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2543)
!2543 = !{!2544, !2548, !2549, !2553, !2554, !2555, !2570, !2593, !2597, !2598, !2621}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2542, file: !38, line: 429, baseType: !2545, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!141, !628, !141, !141, !578}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2542, file: !38, line: 430, baseType: !714, size: 64, offset: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2542, file: !38, line: 431, baseType: !2550, size: 64, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!141, !628, !7}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2542, file: !38, line: 432, baseType: !2550, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2542, file: !38, line: 433, baseType: !714, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2542, file: !38, line: 434, baseType: !2556, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!141, !628, !141, !2559}
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2560, file: !38, line: 416, baseType: !141, size: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2560, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2560, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2560, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2560, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2560, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2560, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2560, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2542, file: !38, line: 435, baseType: !2571, size: 64, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DISubroutineType(types: !2573)
!2573 = !{!141, !628, !2478, !2574}
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2575, file: !38, line: 344, baseType: !141, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2575, file: !38, line: 345, baseType: !453, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2575, file: !38, line: 346, baseType: !453, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2575, file: !38, line: 347, baseType: !453, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2575, file: !38, line: 348, baseType: !453, size: 64, offset: 256)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2575, file: !38, line: 349, baseType: !453, size: 64, offset: 320)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2575, file: !38, line: 350, baseType: !453, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2575, file: !38, line: 351, baseType: !207, size: 64, offset: 448)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2575, file: !38, line: 353, baseType: !207, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2575, file: !38, line: 354, baseType: !141, size: 32, offset: 576)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2575, file: !38, line: 355, baseType: !141, size: 32, offset: 608)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2575, file: !38, line: 356, baseType: !453, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2575, file: !38, line: 357, baseType: !453, size: 64, offset: 704)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2575, file: !38, line: 358, baseType: !453, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2575, file: !38, line: 359, baseType: !207, size: 64, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2575, file: !38, line: 360, baseType: !141, size: 32, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2542, file: !38, line: 436, baseType: !2594, size: 64, offset: 448)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!141, !628, !2538, !2574}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2542, file: !38, line: 438, baseType: !2571, size: 64, offset: 512)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2542, file: !38, line: 439, baseType: !2599, size: 64, offset: 576)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!141, !628, !2602}
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2603, file: !38, line: 410, baseType: !7, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2603, file: !38, line: 411, baseType: !2607, size: 1344, offset: 64)
!2607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2608, size: 1344, elements: !316)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2609)
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2620}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2608, file: !38, line: 396, baseType: !7, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2608, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2608, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2608, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2608, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2608, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2608, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2608, file: !38, line: 404, baseType: !455, size: 64, offset: 256)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2608, file: !38, line: 405, baseType: !2619, size: 64, offset: 320)
!2619 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !203, line: 126, baseType: !453)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2608, file: !38, line: 406, baseType: !2619, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2542, file: !38, line: 440, baseType: !2550, size: 64, offset: 640)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !629, file: !44, line: 1426, baseType: !2623, size: 64, offset: 576)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2625)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !629, file: !44, line: 1427, baseType: !112, size: 64, offset: 640)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !629, file: !44, line: 1428, baseType: !112, size: 64, offset: 704)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !629, file: !44, line: 1429, baseType: !112, size: 64, offset: 768)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !629, file: !44, line: 1430, baseType: !416, size: 64, offset: 832)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !629, file: !44, line: 1431, baseType: !829, size: 256, offset: 896)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !629, file: !44, line: 1432, baseType: !141, size: 32, offset: 1152)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !629, file: !44, line: 1433, baseType: !245, size: 32, offset: 1184)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !629, file: !44, line: 1437, baseType: !2634, size: 64, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2637)
!2637 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !629, file: !44, line: 1449, baseType: !2639, size: 64, offset: 1280)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !432, line: 34, size: 64, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2639, file: !432, line: 35, baseType: !435, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !629, file: !44, line: 1450, baseType: !211, size: 128, offset: 1344)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !629, file: !44, line: 1451, baseType: !2644, size: 64, offset: 1472)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !629, file: !44, line: 1452, baseType: !1966, size: 64, offset: 1536)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !629, file: !44, line: 1453, baseType: !2648, size: 64, offset: 1600)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !629, file: !44, line: 1454, baseType: !668, size: 128, offset: 1664)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !629, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !629, file: !44, line: 1456, baseType: !2653, size: 2432, offset: 1856)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2654)
!2654 = !{!2655, !2656, !2657, !2659, !2691}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !38, line: 519, baseType: !7, size: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2653, file: !38, line: 520, baseType: !829, size: 256, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2653, file: !38, line: 521, baseType: !2658, size: 192, offset: 320)
!2658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !460, size: 192, elements: !316)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2653, file: !38, line: 522, baseType: !2660, size: 1728, offset: 512)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2661, size: 1728, elements: !316)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2662)
!2662 = !{!2663, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2661, file: !38, line: 223, baseType: !2664, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2666)
!2666 = !{!2667, !2668, !2681, !2682}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2665, file: !38, line: 444, baseType: !141, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2665, file: !38, line: 445, baseType: !2669, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2671, file: !38, line: 311, baseType: !714, size: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2671, file: !38, line: 312, baseType: !714, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2671, file: !38, line: 313, baseType: !714, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2671, file: !38, line: 314, baseType: !714, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2671, file: !38, line: 315, baseType: !2463, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2671, file: !38, line: 316, baseType: !2463, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2671, file: !38, line: 317, baseType: !2463, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2671, file: !38, line: 318, baseType: !2535, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2665, file: !38, line: 446, baseType: !151, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2665, file: !38, line: 447, baseType: !2664, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2661, file: !38, line: 224, baseType: !141, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2661, file: !38, line: 226, baseType: !211, size: 128, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2661, file: !38, line: 227, baseType: !112, size: 64, offset: 256)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2661, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2661, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2661, file: !38, line: 230, baseType: !2499, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2661, file: !38, line: 231, baseType: !2499, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2661, file: !38, line: 232, baseType: !111, size: 64, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2653, file: !38, line: 523, baseType: !2692, size: 192, offset: 2240)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2669, size: 192, elements: !316)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !629, file: !44, line: 1458, baseType: !2694, size: 2112, offset: 4288)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2695)
!2695 = !{!2696, !2697, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2694, file: !44, line: 1411, baseType: !141, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2694, file: !44, line: 1412, baseType: !1524, size: 128, offset: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2694, file: !44, line: 1413, baseType: !2699, size: 1920, offset: 192)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2700, size: 1920, elements: !316)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2701, line: 12, size: 640, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2702 = !{!2703, !2711, !2713, !2718, !2719}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2700, file: !2701, line: 13, baseType: !2704, size: 320)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2705, line: 17, size: 320, elements: !2706)
!2705 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !{!2707, !2708, !2709, !2710}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2704, file: !2705, line: 18, baseType: !141, size: 32)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2704, file: !2705, line: 19, baseType: !141, size: 32, offset: 32)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2704, file: !2705, line: 20, baseType: !1524, size: 128, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2704, file: !2705, line: 22, baseType: !399, size: 128, align: 64, offset: 192)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2700, file: !2701, line: 14, baseType: !2712, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2700, file: !2701, line: 15, baseType: !2714, size: 64, offset: 384)
!2714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2715, line: 16, size: 64, elements: !2716)
!2715 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2714, file: !2715, line: 17, baseType: !1264, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2700, file: !2701, line: 16, baseType: !1524, size: 128, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2700, file: !2701, line: 17, baseType: !245, size: 32, offset: 576)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !629, file: !44, line: 1465, baseType: !111, size: 64, offset: 6400)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !629, file: !44, line: 1468, baseType: !449, size: 32, offset: 6464)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !629, file: !44, line: 1470, baseType: !569, size: 64, offset: 6528)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !629, file: !44, line: 1471, baseType: !569, size: 64, offset: 6592)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !629, file: !44, line: 1473, baseType: !450, size: 32, offset: 6656)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !629, file: !44, line: 1474, baseType: !2726, size: 64, offset: 6720)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !629, file: !44, line: 1477, baseType: !2729, size: 256, offset: 6784)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !2262)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !629, file: !44, line: 1478, baseType: !2731, size: 128, offset: 7040)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2732, line: 18, baseType: !2733)
!2732 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2732, line: 16, size: 128, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2733, file: !2732, line: 17, baseType: !2736, size: 128)
!2736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, size: 128, elements: !1778)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !629, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !629, file: !44, line: 1481, baseType: !2739, size: 32, offset: 7200)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !203, line: 150, baseType: !7)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !629, file: !44, line: 1487, baseType: !223, size: 192, offset: 7232)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !629, file: !44, line: 1493, baseType: !135, size: 64, offset: 7424)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !629, file: !44, line: 1495, baseType: !2743, size: 64, offset: 7488)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !414, line: 135, size: 1024, align: 512, elements: !2746)
!2746 = !{!2747, !2751, !2752, !2759, !2765, !2769, !2773, !2777, !2778, !2782, !2786, !2791, !2795}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2745, file: !414, line: 136, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!141, !416, !7}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2745, file: !414, line: 137, baseType: !2748, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2745, file: !414, line: 138, baseType: !2753, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{!141, !2756, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2745, file: !414, line: 139, baseType: !2760, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!141, !2756, !7, !135, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2745, file: !414, line: 141, baseType: !2766, size: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!141, !2756}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2745, file: !414, line: 142, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!141, !416}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2745, file: !414, line: 143, baseType: !2774, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !416}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2745, file: !414, line: 144, baseType: !2774, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2745, file: !414, line: 145, baseType: !2779, size: 64, offset: 512)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{null, !416, !460}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2745, file: !414, line: 146, baseType: !2783, size: 64, offset: 576)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!126, !416, !126, !141}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2745, file: !414, line: 147, baseType: !2787, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!412, !2790}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2745, file: !414, line: 148, baseType: !2792, size: 64, offset: 704)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!141, !578, !521}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2745, file: !414, line: 149, baseType: !2796, size: 64, offset: 768)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!416, !416, !2799}
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !461)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !629, file: !44, line: 1500, baseType: !141, size: 32, offset: 7552)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !629, file: !44, line: 1502, baseType: !2803, size: 448, offset: 7616)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2447, line: 60, size: 448, elements: !2804)
!2804 = !{!2805, !2810, !2811, !2812, !2813, !2814, !2815}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2803, file: !2447, line: 61, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!112, !2809, !2445}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2803, file: !2447, line: 63, baseType: !2806, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2803, file: !2447, line: 66, baseType: !350, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2803, file: !2447, line: 67, baseType: !141, size: 32, offset: 192)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2803, file: !2447, line: 68, baseType: !7, size: 32, offset: 224)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2803, file: !2447, line: 71, baseType: !211, size: 128, offset: 256)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2803, file: !2447, line: 77, baseType: !2816, size: 64, offset: 384)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !629, file: !44, line: 1505, baseType: !200, size: 64, offset: 8064)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !629, file: !44, line: 1508, baseType: !200, size: 64, offset: 8128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !629, file: !44, line: 1511, baseType: !141, size: 32, offset: 8192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !629, file: !44, line: 1514, baseType: !962, size: 32, offset: 8224)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !629, file: !44, line: 1517, baseType: !2822, size: 64, offset: 8256)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !197, line: 18, flags: DIFlagFwdDecl)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !629, file: !44, line: 1518, baseType: !664, size: 64, offset: 8320)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !629, file: !44, line: 1525, baseType: !1756, size: 64, offset: 8384)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !629, file: !44, line: 1532, baseType: !2827, size: 64, offset: 8448)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2828, line: 52, size: 64, elements: !2829)
!2828 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !{!2830}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2827, file: !2828, line: 53, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2828, line: 40, size: 256, elements: !2833)
!2833 = !{!2834, !2835, !2840}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2832, file: !2828, line: 42, baseType: !228)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2832, file: !2828, line: 44, baseType: !2836, size: 192)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2828, line: 28, size: 192, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2836, file: !2828, line: 29, baseType: !211, size: 128)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2836, file: !2828, line: 31, baseType: !350, size: 64, offset: 128)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2832, file: !2828, line: 49, baseType: !350, size: 64, offset: 192)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !629, file: !44, line: 1533, baseType: !2827, size: 64, offset: 8512)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !629, file: !44, line: 1534, baseType: !399, size: 128, align: 64, offset: 8576)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !629, file: !44, line: 1535, baseType: !196, size: 256, offset: 8704)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !629, file: !44, line: 1537, baseType: !223, size: 192, offset: 8960)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !629, file: !44, line: 1542, baseType: !141, size: 32, offset: 9152)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !629, file: !44, line: 1545, baseType: !228, offset: 9184)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !629, file: !44, line: 1546, baseType: !211, size: 128, offset: 9216)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !629, file: !44, line: 1548, baseType: !228, offset: 9344)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !629, file: !44, line: 1549, baseType: !211, size: 128, offset: 9344)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !461, file: !44, line: 624, baseType: !799, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !461, file: !44, line: 631, baseType: !112, size: 64, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 639, baseType: !2853, size: 32, offset: 384)
!2853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 639, size: 32, elements: !2854)
!2854 = !{!2855, !2857}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2853, file: !44, line: 640, baseType: !2856, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2853, file: !44, line: 641, baseType: !7, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !461, file: !44, line: 643, baseType: !544, size: 32, offset: 416)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !461, file: !44, line: 644, baseType: !562, size: 64, offset: 448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !461, file: !44, line: 645, baseType: !565, size: 128, offset: 512)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !461, file: !44, line: 646, baseType: !565, size: 128, offset: 640)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !461, file: !44, line: 647, baseType: !565, size: 128, offset: 768)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !461, file: !44, line: 648, baseType: !228, offset: 896)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !461, file: !44, line: 649, baseType: !119, size: 16, offset: 896)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !461, file: !44, line: 650, baseType: !1395, size: 8, offset: 912)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !461, file: !44, line: 651, baseType: !1395, size: 8, offset: 920)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !461, file: !44, line: 652, baseType: !2619, size: 64, offset: 960)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !461, file: !44, line: 659, baseType: !112, size: 64, offset: 1024)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !461, file: !44, line: 660, baseType: !829, size: 256, offset: 1088)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !461, file: !44, line: 662, baseType: !112, size: 64, offset: 1344)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !461, file: !44, line: 663, baseType: !112, size: 64, offset: 1408)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !461, file: !44, line: 665, baseType: !668, size: 128, offset: 1472)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !461, file: !44, line: 666, baseType: !211, size: 128, offset: 1600)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !461, file: !44, line: 675, baseType: !211, size: 128, offset: 1728)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !461, file: !44, line: 676, baseType: !211, size: 128, offset: 1856)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !461, file: !44, line: 677, baseType: !211, size: 128, offset: 1984)
!2877 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 678, baseType: !2878, size: 128, offset: 2112)
!2878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 678, size: 128, elements: !2879)
!2879 = !{!2880, !2881}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2878, file: !44, line: 679, baseType: !664, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2878, file: !44, line: 680, baseType: !399, size: 128, align: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !461, file: !44, line: 682, baseType: !202, size: 64, offset: 2240)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !461, file: !44, line: 683, baseType: !202, size: 64, offset: 2304)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !461, file: !44, line: 684, baseType: !245, size: 32, offset: 2368)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !461, file: !44, line: 685, baseType: !245, size: 32, offset: 2400)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !461, file: !44, line: 686, baseType: !245, size: 32, offset: 2432)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !461, file: !44, line: 688, baseType: !245, size: 32, offset: 2464)
!2888 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 690, baseType: !2889, size: 64, offset: 2496)
!2889 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 690, size: 64, elements: !2890)
!2890 = !{!2891, !3113}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2889, file: !44, line: 691, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2895)
!2895 = !{!2896, !2897, !2901, !2905, !2909, !2910, !2911, !2915, !2928, !2929, !2937, !2941, !2942, !2946, !2947, !2951, !2956, !2957, !2961, !2965, !3073, !3077, !3078, !3082, !3083, !3087, !3091, !3096, !3100, !3104, !3108, !3112}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2894, file: !44, line: 1823, baseType: !151, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2894, file: !44, line: 1824, baseType: !2898, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DISubroutineType(types: !2900)
!2900 = !{!562, !391, !562, !141}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2894, file: !44, line: 1825, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!346, !391, !126, !361, !761}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2894, file: !44, line: 1826, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!346, !391, !135, !361, !761}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2894, file: !44, line: 1827, baseType: !899, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2894, file: !44, line: 1828, baseType: !899, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2894, file: !44, line: 1829, baseType: !2912, size: 64, offset: 384)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!141, !902, !521}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2894, file: !44, line: 1830, baseType: !2916, size: 64, offset: 448)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!141, !391, !2919}
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2921)
!2921 = !{!2922, !2927}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2920, file: !44, line: 1777, baseType: !2923, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2924)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!141, !2919, !135, !141, !562, !453, !7}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2920, file: !44, line: 1778, baseType: !562, size: 64, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2894, file: !44, line: 1831, baseType: !2916, size: 64, offset: 512)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2894, file: !44, line: 1832, baseType: !2930, size: 64, offset: 576)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!2933, !391, !2935}
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2934, line: 52, baseType: !7)
!2934 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !648, line: 27, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2894, file: !44, line: 1833, baseType: !2938, size: 64, offset: 640)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!350, !391, !7, !112}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2894, file: !44, line: 1834, baseType: !2938, size: 64, offset: 704)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2894, file: !44, line: 1835, baseType: !2943, size: 64, offset: 768)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!141, !391, !1035}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2894, file: !44, line: 1836, baseType: !112, size: 64, offset: 832)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2894, file: !44, line: 1837, baseType: !2948, size: 64, offset: 896)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!141, !460, !391}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2894, file: !44, line: 1838, baseType: !2952, size: 64, offset: 960)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!141, !391, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !111)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2894, file: !44, line: 1839, baseType: !2948, size: 64, offset: 1024)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2894, file: !44, line: 1840, baseType: !2958, size: 64, offset: 1088)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!141, !391, !562, !562, !141}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2894, file: !44, line: 1841, baseType: !2962, size: 64, offset: 1152)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!141, !141, !391, !141}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2894, file: !44, line: 1842, baseType: !2966, size: 64, offset: 1216)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!141, !391, !141, !2969}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !3003, !3004, !3005, !3018, !3049}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2970, file: !44, line: 1063, baseType: !2969, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2970, file: !44, line: 1064, baseType: !211, size: 128, offset: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2970, file: !44, line: 1065, baseType: !668, size: 128, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2970, file: !44, line: 1066, baseType: !211, size: 128, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2970, file: !44, line: 1069, baseType: !211, size: 128, offset: 448)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2970, file: !44, line: 1072, baseType: !2955, size: 64, offset: 576)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2970, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2970, file: !44, line: 1074, baseType: !123, size: 8, offset: 672)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2970, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2970, file: !44, line: 1076, baseType: !141, size: 32, offset: 736)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2970, file: !44, line: 1077, baseType: !1524, size: 128, offset: 768)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2970, file: !44, line: 1078, baseType: !391, size: 64, offset: 896)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2970, file: !44, line: 1079, baseType: !562, size: 64, offset: 960)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2970, file: !44, line: 1080, baseType: !562, size: 64, offset: 1024)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2970, file: !44, line: 1082, baseType: !2987, size: 64, offset: 1088)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2989)
!2989 = !{!2990, !2998, !2999, !3000, !3001, !3002}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2988, file: !44, line: 1315, baseType: !2991)
!2991 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2992, line: 20, baseType: !2993)
!2992 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2992, line: 11, elements: !2994)
!2994 = !{!2995}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2993, file: !2992, line: 12, baseType: !2996)
!2996 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !240, line: 33, baseType: !2997)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !240, line: 31, elements: !242)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2988, file: !44, line: 1316, baseType: !141, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2988, file: !44, line: 1317, baseType: !141, size: 32, offset: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2988, file: !44, line: 1318, baseType: !2987, size: 64, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2988, file: !44, line: 1319, baseType: !391, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2988, file: !44, line: 1320, baseType: !399, size: 128, align: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2970, file: !44, line: 1084, baseType: !112, size: 64, offset: 1152)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2970, file: !44, line: 1085, baseType: !112, size: 64, offset: 1216)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2970, file: !44, line: 1087, baseType: !3006, size: 64, offset: 1280)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !3009)
!3009 = !{!3010, !3014}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3008, file: !44, line: 1012, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{null, !2969, !2969}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3008, file: !44, line: 1013, baseType: !3015, size: 64, offset: 64)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2969}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2970, file: !44, line: 1088, baseType: !3019, size: 64, offset: 1344)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3021)
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !3022)
!3022 = !{!3023, !3027, !3031, !3032, !3036, !3040, !3044, !3048}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3021, file: !44, line: 1017, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!2955, !2955}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3021, file: !44, line: 1018, baseType: !3028, size: 64, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !2955}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3021, file: !44, line: 1019, baseType: !3015, size: 64, offset: 128)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3021, file: !44, line: 1020, baseType: !3033, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!141, !2969, !141}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3021, file: !44, line: 1021, baseType: !3037, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!521, !2969}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3021, file: !44, line: 1022, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!141, !2969, !141, !214}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3021, file: !44, line: 1023, baseType: !3045, size: 64, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !2969, !876}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3021, file: !44, line: 1024, baseType: !3037, size: 64, offset: 448)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2970, file: !44, line: 1097, baseType: !3050, size: 256, offset: 1408)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2970, file: !44, line: 1089, size: 256, elements: !3051)
!3051 = !{!3052, !3061, !3067}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3050, file: !44, line: 1090, baseType: !3053, size: 256)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3054, line: 10, size: 256, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !{!3056, !3057, !3060}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3053, file: !3054, line: 11, baseType: !449, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3053, file: !3054, line: 12, baseType: !3058, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3054, line: 5, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3053, file: !3054, line: 13, baseType: !211, size: 128, offset: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3050, file: !44, line: 1091, baseType: !3062, size: 64)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3054, line: 17, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3062, file: !3054, line: 18, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3054, line: 16, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3050, file: !44, line: 1096, baseType: !3068, size: 192)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !44, line: 1092, size: 192, elements: !3069)
!3069 = !{!3070, !3071, !3072}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3068, file: !44, line: 1093, baseType: !211, size: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3068, file: !44, line: 1094, baseType: !141, size: 32, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3068, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2894, file: !44, line: 1843, baseType: !3074, size: 64, offset: 1280)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!346, !391, !786, !141, !361, !761, !141}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2894, file: !44, line: 1844, baseType: !1155, size: 64, offset: 1344)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2894, file: !44, line: 1845, baseType: !3079, size: 64, offset: 1408)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!141, !141}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2894, file: !44, line: 1846, baseType: !2966, size: 64, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2894, file: !44, line: 1847, baseType: !3084, size: 64, offset: 1536)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!346, !2130, !391, !761, !361, !7}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2894, file: !44, line: 1848, baseType: !3088, size: 64, offset: 1600)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!346, !391, !761, !2130, !361, !7}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2894, file: !44, line: 1849, baseType: !3092, size: 64, offset: 1664)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!141, !391, !350, !3095, !876}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2894, file: !44, line: 1850, baseType: !3097, size: 64, offset: 1728)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!350, !391, !141, !562, !562}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2894, file: !44, line: 1852, baseType: !3101, size: 64, offset: 1792)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{null, !740, !391}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2894, file: !44, line: 1856, baseType: !3105, size: 64, offset: 1856)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!346, !391, !562, !391, !562, !361, !7}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2894, file: !44, line: 1858, baseType: !3109, size: 64, offset: 1920)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!562, !391, !562, !391, !562, !562, !7}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2894, file: !44, line: 1861, baseType: !2958, size: 64, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2889, file: !44, line: 692, baseType: !693, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !461, file: !44, line: 694, baseType: !3115, size: 64, offset: 2560)
!3115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3116, size: 64)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3117)
!3117 = !{!3118, !3119, !3120, !3121}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3116, file: !44, line: 1101, baseType: !228)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3116, file: !44, line: 1102, baseType: !211, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3116, file: !44, line: 1103, baseType: !211, size: 128, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3116, file: !44, line: 1104, baseType: !211, size: 128, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !461, file: !44, line: 695, baseType: !800, size: 1216, align: 64, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !461, file: !44, line: 696, baseType: !211, size: 128, offset: 3840)
!3124 = !DIDerivedType(tag: DW_TAG_member, scope: !461, file: !44, line: 697, baseType: !3125, size: 64, offset: 3968)
!3125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !461, file: !44, line: 697, size: 64, elements: !3126)
!3126 = !{!3127, !3128, !3129, !3140, !3141}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3125, file: !44, line: 698, baseType: !2130, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3125, file: !44, line: 699, baseType: !2644, size: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3125, file: !44, line: 700, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3132, line: 14, size: 832, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3131, file: !3132, line: 15, baseType: !277, size: 512)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3131, file: !3132, line: 16, baseType: !151, size: 64, offset: 512)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3131, file: !3132, line: 17, baseType: !2892, size: 64, offset: 576)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3131, file: !3132, line: 18, baseType: !211, size: 128, offset: 640)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3131, file: !3132, line: 19, baseType: !544, size: 32, offset: 768)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3131, file: !3132, line: 20, baseType: !7, size: 32, offset: 800)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3125, file: !44, line: 701, baseType: !126, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3125, file: !44, line: 702, baseType: !7, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !461, file: !44, line: 705, baseType: !450, size: 32, offset: 4032)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !461, file: !44, line: 708, baseType: !450, size: 32, offset: 4064)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !461, file: !44, line: 709, baseType: !2726, size: 64, offset: 4096)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !461, file: !44, line: 720, baseType: !111, size: 64, offset: 4160)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !417, file: !414, line: 98, baseType: !3147, size: 256, offset: 448)
!3147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 256, elements: !2262)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !417, file: !414, line: 101, baseType: !3149, size: 32, offset: 704)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3150, line: 25, size: 32, elements: !3151)
!3150 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3149, file: !3150, line: 26, baseType: !3153, size: 32)
!3153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3149, file: !3150, line: 26, size: 32, elements: !3154)
!3154 = !{!3155}
!3155 = !DIDerivedType(tag: DW_TAG_member, scope: !3153, file: !3150, line: 30, baseType: !3156, size: 32)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3153, file: !3150, line: 30, size: 32, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3156, file: !3150, line: 31, baseType: !228)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3156, file: !3150, line: 32, baseType: !141, size: 32)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !417, file: !414, line: 102, baseType: !2743, size: 64, offset: 768)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !417, file: !414, line: 103, baseType: !628, size: 64, offset: 832)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !417, file: !414, line: 104, baseType: !112, size: 64, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !417, file: !414, line: 105, baseType: !111, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !414, line: 107, baseType: !3165, size: 128, offset: 1024)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !414, line: 107, size: 128, elements: !3166)
!3166 = !{!3167, !3168}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3165, file: !414, line: 108, baseType: !211, size: 128)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3165, file: !414, line: 109, baseType: !3169, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !417, file: !414, line: 111, baseType: !211, size: 128, offset: 1152)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !417, file: !414, line: 112, baseType: !211, size: 128, offset: 1280)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !417, file: !414, line: 120, baseType: !3173, size: 128, offset: 1408)
!3173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !414, line: 116, size: 128, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3173, file: !414, line: 117, baseType: !668, size: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3173, file: !414, line: 118, baseType: !431, size: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3173, file: !414, line: 119, baseType: !399, size: 128, align: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !392, file: !44, line: 922, baseType: !460, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !392, file: !44, line: 923, baseType: !2892, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !392, file: !44, line: 929, baseType: !228, offset: 384)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !392, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !392, file: !44, line: 931, baseType: !200, size: 64, offset: 448)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !392, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !392, file: !44, line: 933, baseType: !2739, size: 32, offset: 544)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !392, file: !44, line: 934, baseType: !223, size: 192, offset: 576)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !392, file: !44, line: 935, baseType: !562, size: 64, offset: 768)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !392, file: !44, line: 936, baseType: !3188, size: 192, offset: 832)
!3188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3189)
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3195}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3188, file: !44, line: 886, baseType: !2991)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3188, file: !44, line: 887, baseType: !1514, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3188, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3188, file: !44, line: 889, baseType: !466, size: 32, offset: 96)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3188, file: !44, line: 889, baseType: !466, size: 32, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3188, file: !44, line: 890, baseType: !141, size: 32, offset: 160)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !392, file: !44, line: 937, baseType: !1590, size: 64, offset: 1024)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !392, file: !44, line: 938, baseType: !3198, size: 256, offset: 1088)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3199)
!3199 = !{!3200, !3201, !3202, !3203, !3204, !3205}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3198, file: !44, line: 897, baseType: !112, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3198, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3198, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3198, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3198, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3198, file: !44, line: 904, baseType: !562, size: 64, offset: 192)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !392, file: !44, line: 940, baseType: !453, size: 64, offset: 1344)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !392, file: !44, line: 945, baseType: !111, size: 64, offset: 1408)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !392, file: !44, line: 949, baseType: !211, size: 128, offset: 1472)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !392, file: !44, line: 950, baseType: !211, size: 128, offset: 1600)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !392, file: !44, line: 952, baseType: !799, size: 64, offset: 1728)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !392, file: !44, line: 953, baseType: !962, size: 32, offset: 1792)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !392, file: !44, line: 954, baseType: !962, size: 32, offset: 1824)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !382, file: !340, line: 174, baseType: !388, size: 64, offset: 320)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !382, file: !340, line: 176, baseType: !3215, size: 64, offset: 384)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!141, !391, !283, !381, !1035}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !370, file: !340, line: 90, baseType: !365, size: 64, offset: 192)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !370, file: !340, line: 91, baseType: !3220, size: 64, offset: 256)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !330, file: !278, line: 143, baseType: !3222, size: 64, offset: 256)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!3225, !283}
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3227)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3228)
!3228 = !{!3229, !3230, !3234, !3238, !3244, !3248}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3227, file: !61, line: 40, baseType: !60, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3227, file: !61, line: 41, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!521}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3227, file: !61, line: 42, baseType: !3235, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!111}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3227, file: !61, line: 43, baseType: !3239, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!2159, !3242}
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3227, file: !61, line: 44, baseType: !3245, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!2159}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3227, file: !61, line: 45, baseType: !499, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !330, file: !278, line: 144, baseType: !3250, size: 64, offset: 320)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!2159, !283}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !330, file: !278, line: 145, baseType: !3254, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{null, !283, !3257, !3258}
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !277, file: !278, line: 70, baseType: !3260, size: 64, offset: 384)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !648, line: 123, size: 1024, elements: !3262)
!3262 = !{!3263, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3379, !3380, !3381, !3382, !3383}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3261, file: !648, line: 124, baseType: !245, size: 32)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3261, file: !648, line: 125, baseType: !245, size: 32, offset: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3261, file: !648, line: 135, baseType: !3260, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3261, file: !648, line: 136, baseType: !135, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3261, file: !648, line: 138, baseType: !822, size: 192, align: 64, offset: 192)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3261, file: !648, line: 140, baseType: !2159, size: 64, offset: 384)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3261, file: !648, line: 141, baseType: !7, size: 32, offset: 448)
!3270 = !DIDerivedType(tag: DW_TAG_member, scope: !3261, file: !648, line: 142, baseType: !3271, size: 256, offset: 512)
!3271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3261, file: !648, line: 142, size: 256, elements: !3272)
!3272 = !{!3273, !3319, !3323}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3271, file: !648, line: 143, baseType: !3274, size: 192)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !648, line: 91, size: 192, elements: !3275)
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3274, file: !648, line: 92, baseType: !112, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3274, file: !648, line: 94, baseType: !818, size: 64, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3274, file: !648, line: 100, baseType: !3279, size: 64, offset: 128)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !648, line: 180, size: 704, elements: !3281)
!3281 = !{!3282, !3283, !3284, !3291, !3292, !3293, !3317, !3318}
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3280, file: !648, line: 182, baseType: !3260, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3280, file: !648, line: 183, baseType: !7, size: 32, offset: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3280, file: !648, line: 186, baseType: !3285, size: 192, offset: 128)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3286, line: 19, size: 192, elements: !3287)
!3286 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3285, file: !3286, line: 20, baseType: !804, size: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3285, file: !3286, line: 21, baseType: !7, size: 32, offset: 128)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3285, file: !3286, line: 22, baseType: !7, size: 32, offset: 160)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3280, file: !648, line: 187, baseType: !449, size: 32, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3280, file: !648, line: 188, baseType: !449, size: 32, offset: 352)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3280, file: !648, line: 189, baseType: !3294, size: 64, offset: 384)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !648, line: 168, size: 320, elements: !3296)
!3296 = !{!3297, !3301, !3305, !3309, !3313}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3295, file: !648, line: 169, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!141, !740, !3279}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3295, file: !648, line: 171, baseType: !3302, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!141, !3260, !135, !356}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3295, file: !648, line: 173, baseType: !3306, size: 64, offset: 128)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!141, !3260}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3295, file: !648, line: 174, baseType: !3310, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!141, !3260, !3260, !135}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3295, file: !648, line: 176, baseType: !3314, size: 64, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!141, !740, !3260, !3279}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3280, file: !648, line: 192, baseType: !211, size: 128, offset: 448)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3280, file: !648, line: 194, baseType: !1524, size: 128, offset: 576)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3271, file: !648, line: 144, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !648, line: 103, size: 64, elements: !3321)
!3321 = !{!3322}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3320, file: !648, line: 104, baseType: !3260, size: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3271, file: !648, line: 145, baseType: !3324, size: 256)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !648, line: 107, size: 256, elements: !3325)
!3325 = !{!3326, !3374, !3377, !3378}
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3324, file: !648, line: 108, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3329)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !648, line: 217, size: 768, elements: !3330)
!3330 = !{!3331, !3351, !3355, !3356, !3357, !3358, !3359, !3363, !3364, !3365, !3366, !3370}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3329, file: !648, line: 222, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!141, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !648, line: 197, size: 1088, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3336, file: !648, line: 199, baseType: !3260, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3336, file: !648, line: 200, baseType: !391, size: 64, offset: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3336, file: !648, line: 201, baseType: !740, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3336, file: !648, line: 202, baseType: !111, size: 64, offset: 192)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3336, file: !648, line: 205, baseType: !223, size: 192, offset: 256)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3336, file: !648, line: 206, baseType: !223, size: 192, offset: 448)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3336, file: !648, line: 207, baseType: !141, size: 32, offset: 640)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3336, file: !648, line: 208, baseType: !211, size: 128, offset: 704)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3336, file: !648, line: 209, baseType: !126, size: 64, offset: 832)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3336, file: !648, line: 211, baseType: !361, size: 64, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3336, file: !648, line: 212, baseType: !521, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3336, file: !648, line: 213, baseType: !521, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3336, file: !648, line: 214, baseType: !1063, size: 64, offset: 1024)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3329, file: !648, line: 223, baseType: !3352, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{null, !3335}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3329, file: !648, line: 236, baseType: !771, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3329, file: !648, line: 238, baseType: !758, size: 64, offset: 192)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3329, file: !648, line: 239, baseType: !767, size: 64, offset: 256)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3329, file: !648, line: 240, baseType: !763, size: 64, offset: 320)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3329, file: !648, line: 242, baseType: !3360, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!346, !3335, !126, !361, !562}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3329, file: !648, line: 252, baseType: !361, size: 64, offset: 448)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3329, file: !648, line: 259, baseType: !521, size: 8, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3329, file: !648, line: 260, baseType: !3360, size: 64, offset: 576)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3329, file: !648, line: 263, baseType: !3367, size: 64, offset: 640)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!2933, !3335, !2935}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3329, file: !648, line: 266, baseType: !3371, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!141, !3335, !1035}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3324, file: !648, line: 109, baseType: !3375, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !648, line: 31, flags: DIFlagFwdDecl)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3324, file: !648, line: 110, baseType: !562, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3324, file: !648, line: 111, baseType: !3260, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3261, file: !648, line: 148, baseType: !111, size: 64, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3261, file: !648, line: 154, baseType: !453, size: 64, offset: 832)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3261, file: !648, line: 156, baseType: !119, size: 16, offset: 896)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3261, file: !648, line: 157, baseType: !356, size: 16, offset: 912)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3261, file: !648, line: 158, baseType: !3384, size: 64, offset: 960)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !648, line: 32, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !277, file: !278, line: 71, baseType: !263, size: 32, offset: 448)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !277, file: !278, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !277, file: !278, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !277, file: !278, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !277, file: !278, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !277, file: !278, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !73, line: 463, baseType: !273, size: 64, offset: 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !274, file: !73, line: 465, baseType: !3394, size: 64, offset: 576)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !274, file: !73, line: 467, baseType: !135, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !274, file: !73, line: 468, baseType: !3398, size: 64, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3400)
!3400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3401)
!3401 = !{!3402, !3403, !3404, !3408, !3413, !3417}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3400, file: !73, line: 88, baseType: !135, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3400, file: !73, line: 89, baseType: !367, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3400, file: !73, line: 90, baseType: !3405, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!141, !273, !311}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3400, file: !73, line: 91, baseType: !3409, size: 64, offset: 192)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!126, !273, !3412, !3257, !3258}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3400, file: !73, line: 93, baseType: !3414, size: 64, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{null, !273}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3400, file: !73, line: 95, baseType: !3418, size: 64, offset: 320)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3420)
!3420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3421)
!3421 = !{!3422, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447}
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3420, file: !80, line: 279, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!141, !273}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3420, file: !80, line: 280, baseType: !3414, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3420, file: !80, line: 281, baseType: !3423, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3420, file: !80, line: 282, baseType: !3423, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3420, file: !80, line: 283, baseType: !3423, size: 64, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3420, file: !80, line: 284, baseType: !3423, size: 64, offset: 320)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3420, file: !80, line: 285, baseType: !3423, size: 64, offset: 384)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3420, file: !80, line: 286, baseType: !3423, size: 64, offset: 448)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3420, file: !80, line: 287, baseType: !3423, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3420, file: !80, line: 288, baseType: !3423, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3420, file: !80, line: 289, baseType: !3423, size: 64, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3420, file: !80, line: 290, baseType: !3423, size: 64, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3420, file: !80, line: 291, baseType: !3423, size: 64, offset: 768)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3420, file: !80, line: 292, baseType: !3423, size: 64, offset: 832)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3420, file: !80, line: 293, baseType: !3423, size: 64, offset: 896)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3420, file: !80, line: 294, baseType: !3423, size: 64, offset: 960)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3420, file: !80, line: 295, baseType: !3423, size: 64, offset: 1024)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3420, file: !80, line: 296, baseType: !3423, size: 64, offset: 1088)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3420, file: !80, line: 297, baseType: !3423, size: 64, offset: 1152)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3420, file: !80, line: 298, baseType: !3423, size: 64, offset: 1216)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3420, file: !80, line: 299, baseType: !3423, size: 64, offset: 1280)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3420, file: !80, line: 300, baseType: !3423, size: 64, offset: 1344)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3420, file: !80, line: 301, baseType: !3423, size: 64, offset: 1408)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !274, file: !73, line: 470, baseType: !3449, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3451, line: 82, size: 1408, elements: !3452)
!3451 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3452 = !{!3453, !3454, !3455, !3456, !3457, !3458, !3459, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3516, !3519, !3520}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3450, file: !3451, line: 83, baseType: !135, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3450, file: !3451, line: 84, baseType: !135, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3450, file: !3451, line: 85, baseType: !273, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3450, file: !3451, line: 86, baseType: !367, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3450, file: !3451, line: 87, baseType: !367, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3450, file: !3451, line: 88, baseType: !367, size: 64, offset: 320)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3450, file: !3451, line: 90, baseType: !3460, size: 64, offset: 384)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!141, !273, !3463}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472, !3476, !3480, !3481, !3482, !3483, !3484, !3492, !3493, !3494, !3495, !3496, !3497}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3464, file: !67, line: 96, baseType: !135, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3464, file: !67, line: 97, baseType: !3449, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3464, file: !67, line: 99, baseType: !151, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3464, file: !67, line: 100, baseType: !135, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3464, file: !67, line: 102, baseType: !521, size: 8, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3464, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3464, file: !67, line: 105, baseType: !3473, size: 64, offset: 320)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3475)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !67, line: 105, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3464, file: !67, line: 106, baseType: !3477, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3479)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !67, line: 106, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3464, file: !67, line: 108, baseType: !3423, size: 64, offset: 448)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3464, file: !67, line: 109, baseType: !3414, size: 64, offset: 512)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3464, file: !67, line: 110, baseType: !3423, size: 64, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3464, file: !67, line: 111, baseType: !3414, size: 64, offset: 640)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3464, file: !67, line: 112, baseType: !3485, size: 64, offset: 704)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!141, !273, !3488}
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3489)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3490)
!3490 = !{!3491}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3489, file: !80, line: 51, baseType: !141, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3464, file: !67, line: 113, baseType: !3423, size: 64, offset: 768)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3464, file: !67, line: 114, baseType: !367, size: 64, offset: 832)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3464, file: !67, line: 115, baseType: !367, size: 64, offset: 896)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3464, file: !67, line: 117, baseType: !3418, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3464, file: !67, line: 118, baseType: !3414, size: 64, offset: 1024)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3464, file: !67, line: 120, baseType: !3498, size: 64, offset: 1088)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3450, file: !3451, line: 91, baseType: !3405, size: 64, offset: 448)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3450, file: !3451, line: 92, baseType: !3423, size: 64, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3450, file: !3451, line: 93, baseType: !3414, size: 64, offset: 576)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3450, file: !3451, line: 94, baseType: !3423, size: 64, offset: 640)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3450, file: !3451, line: 95, baseType: !3414, size: 64, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3450, file: !3451, line: 97, baseType: !3423, size: 64, offset: 768)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3450, file: !3451, line: 98, baseType: !3423, size: 64, offset: 832)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3450, file: !3451, line: 100, baseType: !3485, size: 64, offset: 896)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3450, file: !3451, line: 101, baseType: !3423, size: 64, offset: 960)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3450, file: !3451, line: 103, baseType: !3423, size: 64, offset: 1024)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3450, file: !3451, line: 105, baseType: !3423, size: 64, offset: 1088)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3450, file: !3451, line: 107, baseType: !3418, size: 64, offset: 1152)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3450, file: !3451, line: 109, baseType: !3513, size: 64, offset: 1216)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3515)
!3515 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3451, line: 109, flags: DIFlagFwdDecl)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3450, file: !3451, line: 111, baseType: !3517, size: 64, offset: 1280)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3451, line: 111, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3450, file: !3451, line: 112, baseType: !674, offset: 1344)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3450, file: !3451, line: 114, baseType: !521, size: 8, offset: 1344)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !274, file: !73, line: 471, baseType: !3463, size: 64, offset: 832)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !274, file: !73, line: 473, baseType: !111, size: 64, offset: 896)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !274, file: !73, line: 475, baseType: !111, size: 64, offset: 960)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !274, file: !73, line: 480, baseType: !223, size: 192, offset: 1024)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !274, file: !73, line: 484, baseType: !3526, size: 576, offset: 1216)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3533}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3526, file: !73, line: 362, baseType: !211, size: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3526, file: !73, line: 363, baseType: !211, size: 128, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3526, file: !73, line: 364, baseType: !211, size: 128, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3526, file: !73, line: 365, baseType: !211, size: 128, offset: 384)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3526, file: !73, line: 366, baseType: !521, size: 8, offset: 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3526, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !274, file: !73, line: 485, baseType: !3535, size: 2304, offset: 1792)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3536)
!3536 = !{!3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3632, !3636}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3535, file: !80, line: 566, baseType: !3488, size: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3535, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3535, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3535, file: !80, line: 569, baseType: !521, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3535, file: !80, line: 570, baseType: !521, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3535, file: !80, line: 571, baseType: !521, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3535, file: !80, line: 572, baseType: !521, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3535, file: !80, line: 573, baseType: !521, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3535, file: !80, line: 574, baseType: !521, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3535, file: !80, line: 575, baseType: !521, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3535, file: !80, line: 576, baseType: !521, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3535, file: !80, line: 577, baseType: !449, size: 32, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3535, file: !80, line: 578, baseType: !228, offset: 96)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3535, file: !80, line: 580, baseType: !211, size: 128, offset: 128)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3535, file: !80, line: 581, baseType: !1545, size: 192, offset: 256)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3535, file: !80, line: 582, baseType: !3553, size: 64, offset: 448)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3555, line: 43, size: 1472, elements: !3556)
!3555 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3556 = !{!3557, !3558, !3559, !3560, !3561, !3564, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3554, file: !3555, line: 44, baseType: !135, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3554, file: !3555, line: 45, baseType: !141, size: 32, offset: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3554, file: !3555, line: 46, baseType: !211, size: 128, offset: 128)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3554, file: !3555, line: 47, baseType: !228, offset: 256)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3554, file: !3555, line: 48, baseType: !3562, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3554, file: !3555, line: 49, baseType: !3565, size: 320, offset: 320)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3566, line: 11, size: 320, elements: !3567)
!3566 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3567 = !{!3568, !3569, !3570, !3575}
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3565, file: !3566, line: 16, baseType: !668, size: 128)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3565, file: !3566, line: 17, baseType: !112, size: 64, offset: 128)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3565, file: !3566, line: 18, baseType: !3571, size: 64, offset: 192)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{null, !3574}
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3565, file: !3566, line: 19, baseType: !449, size: 32, offset: 256)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3554, file: !3555, line: 50, baseType: !112, size: 64, offset: 640)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3554, file: !3555, line: 51, baseType: !1343, size: 64, offset: 704)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3554, file: !3555, line: 52, baseType: !1343, size: 64, offset: 768)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3554, file: !3555, line: 53, baseType: !1343, size: 64, offset: 832)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3554, file: !3555, line: 54, baseType: !1343, size: 64, offset: 896)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3554, file: !3555, line: 55, baseType: !1343, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3554, file: !3555, line: 56, baseType: !112, size: 64, offset: 1024)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3554, file: !3555, line: 57, baseType: !112, size: 64, offset: 1088)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3554, file: !3555, line: 58, baseType: !112, size: 64, offset: 1152)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3554, file: !3555, line: 59, baseType: !112, size: 64, offset: 1216)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3554, file: !3555, line: 60, baseType: !112, size: 64, offset: 1280)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3554, file: !3555, line: 61, baseType: !273, size: 64, offset: 1344)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3554, file: !3555, line: 62, baseType: !521, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3554, file: !3555, line: 63, baseType: !521, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3535, file: !80, line: 583, baseType: !521, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3535, file: !80, line: 584, baseType: !521, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3535, file: !80, line: 585, baseType: !521, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3535, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3535, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3535, file: !80, line: 592, baseType: !1335, size: 512, offset: 576)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3535, file: !80, line: 593, baseType: !453, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3535, file: !80, line: 594, baseType: !196, size: 256, offset: 1152)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3535, file: !80, line: 595, baseType: !1524, size: 128, offset: 1408)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3535, file: !80, line: 596, baseType: !3562, size: 64, offset: 1536)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3535, file: !80, line: 597, baseType: !245, size: 32, offset: 1600)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3535, file: !80, line: 598, baseType: !245, size: 32, offset: 1632)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3535, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3535, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3535, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3535, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3535, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3535, file: !80, line: 604, baseType: !521, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3535, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3535, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3535, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3535, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3535, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3535, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3535, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3535, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3535, file: !80, line: 613, baseType: !141, size: 32, offset: 1792)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3535, file: !80, line: 614, baseType: !141, size: 32, offset: 1824)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3535, file: !80, line: 615, baseType: !453, size: 64, offset: 1856)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3535, file: !80, line: 616, baseType: !453, size: 64, offset: 1920)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3535, file: !80, line: 617, baseType: !453, size: 64, offset: 1984)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3535, file: !80, line: 618, baseType: !453, size: 64, offset: 2048)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3535, file: !80, line: 620, baseType: !3623, size: 64, offset: 2112)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3625)
!3625 = !{!3626, !3627, !3628, !3629}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3624, file: !80, line: 537, baseType: !228)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3624, file: !80, line: 538, baseType: !7, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3624, file: !80, line: 540, baseType: !211, size: 128, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3624, file: !80, line: 543, baseType: !3630, size: 64, offset: 192)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3535, file: !80, line: 621, baseType: !3633, size: 64, offset: 2176)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{null, !273, !1487}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3535, file: !80, line: 622, baseType: !3637, size: 64, offset: 2240)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !274, file: !73, line: 486, baseType: !3640, size: 64, offset: 4096)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3642)
!3642 = !{!3643, !3644, !3645, !3649, !3650, !3651}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3641, file: !80, line: 643, baseType: !3420, size: 1472)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3641, file: !80, line: 644, baseType: !3423, size: 64, offset: 1472)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3641, file: !80, line: 645, baseType: !3646, size: 64, offset: 1536)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !273, !521}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3641, file: !80, line: 646, baseType: !3423, size: 64, offset: 1600)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3641, file: !80, line: 647, baseType: !3414, size: 64, offset: 1664)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3641, file: !80, line: 648, baseType: !3414, size: 64, offset: 1728)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !274, file: !73, line: 493, baseType: !3653, size: 64, offset: 4160)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !274, file: !73, line: 499, baseType: !211, size: 128, offset: 4224)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !274, file: !73, line: 502, baseType: !3657, size: 64, offset: 4352)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3659)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !274, file: !73, line: 504, baseType: !3661, size: 64, offset: 4416)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !274, file: !73, line: 505, baseType: !453, size: 64, offset: 4480)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !274, file: !73, line: 510, baseType: !453, size: 64, offset: 4544)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !274, file: !73, line: 511, baseType: !3665, size: 64, offset: 4608)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3667)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !274, file: !73, line: 513, baseType: !3669, size: 64, offset: 4672)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3671)
!3671 = !{!3672, !3673}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3670, file: !73, line: 293, baseType: !7, size: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3670, file: !73, line: 294, baseType: !112, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !274, file: !73, line: 515, baseType: !211, size: 128, offset: 4736)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !274, file: !73, line: 526, baseType: !3676, offset: 4864)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3677, line: 5, elements: !242)
!3677 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !274, file: !73, line: 528, baseType: !3679, size: 64, offset: 4864)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3681, line: 14, flags: DIFlagFwdDecl)
!3681 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !274, file: !73, line: 529, baseType: !3683, size: 64, offset: 4928)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3685, line: 17, size: 192, elements: !3686)
!3685 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3686 = !{!3687, !3688, !3771}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3684, file: !3685, line: 18, baseType: !3683, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3684, file: !3685, line: 19, baseType: !3689, size: 64, offset: 64)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3691)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3685, line: 110, size: 1152, elements: !3692)
!3692 = !{!3693, !3697, !3701, !3707, !3713, !3717, !3721, !3726, !3730, !3731, !3735, !3739, !3743, !3754, !3755, !3756, !3757, !3767}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3691, file: !3685, line: 111, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3683, !3683}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3691, file: !3685, line: 112, baseType: !3698, size: 64, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{null, !3683}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3691, file: !3685, line: 113, baseType: !3702, size: 64, offset: 128)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!521, !3705}
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3691, file: !3685, line: 114, baseType: !3708, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = !DISubroutineType(types: !3710)
!3710 = !{!2159, !3705, !3711}
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !274)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3691, file: !3685, line: 116, baseType: !3714, size: 64, offset: 256)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!521, !3705, !135}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3691, file: !3685, line: 118, baseType: !3718, size: 64, offset: 320)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!141, !3705, !135, !7, !111, !361}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3691, file: !3685, line: 123, baseType: !3722, size: 64, offset: 384)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!141, !3705, !135, !3725, !361}
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3691, file: !3685, line: 126, baseType: !3727, size: 64, offset: 448)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!135, !3705}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3691, file: !3685, line: 127, baseType: !3727, size: 64, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3691, file: !3685, line: 128, baseType: !3732, size: 64, offset: 576)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!3683, !3705}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3691, file: !3685, line: 130, baseType: !3736, size: 64, offset: 640)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!3683, !3705, !3683}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3691, file: !3685, line: 133, baseType: !3740, size: 64, offset: 704)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{!3683, !3705, !135}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3691, file: !3685, line: 135, baseType: !3744, size: 64, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!141, !3705, !135, !135, !7, !7, !3747}
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3685, line: 43, size: 640, elements: !3749)
!3749 = !{!3750, !3751, !3752}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3748, file: !3685, line: 44, baseType: !3683, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3748, file: !3685, line: 45, baseType: !7, size: 32, offset: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3748, file: !3685, line: 46, baseType: !3753, size: 512, offset: 128)
!3753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !453, size: 512, elements: !1373)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3691, file: !3685, line: 140, baseType: !3736, size: 64, offset: 832)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3691, file: !3685, line: 143, baseType: !3732, size: 64, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3691, file: !3685, line: 145, baseType: !3694, size: 64, offset: 960)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3691, file: !3685, line: 146, baseType: !3758, size: 64, offset: 1024)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!141, !3705, !3761}
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3762, size: 64)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3685, line: 29, size: 128, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3762, file: !3685, line: 30, baseType: !7, size: 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3762, file: !3685, line: 31, baseType: !7, size: 32, offset: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3762, file: !3685, line: 32, baseType: !3705, size: 64, offset: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3691, file: !3685, line: 148, baseType: !3768, size: 64, offset: 1088)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{!141, !3705, !273}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3684, file: !3685, line: 20, baseType: !273, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !274, file: !73, line: 534, baseType: !544, size: 32, offset: 4992)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !274, file: !73, line: 535, baseType: !449, size: 32, offset: 5024)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !274, file: !73, line: 537, baseType: !228, offset: 5056)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !274, file: !73, line: 538, baseType: !211, size: 128, offset: 5056)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !274, file: !73, line: 540, baseType: !3777, size: 64, offset: 5184)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3779, line: 54, size: 960, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3780 = !{!3781, !3782, !3783, !3784, !3785, !3786, !3787, !3791, !3795, !3796, !3797, !3798, !3802, !3806, !3807}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3778, file: !3779, line: 55, baseType: !135, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3778, file: !3779, line: 56, baseType: !151, size: 64, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3778, file: !3779, line: 58, baseType: !367, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3778, file: !3779, line: 59, baseType: !367, size: 64, offset: 192)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3778, file: !3779, line: 60, baseType: !283, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3778, file: !3779, line: 62, baseType: !3405, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3778, file: !3779, line: 63, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!126, !273, !3412}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3778, file: !3779, line: 65, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{null, !3777}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3778, file: !3779, line: 66, baseType: !3414, size: 64, offset: 512)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3778, file: !3779, line: 68, baseType: !3423, size: 64, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3778, file: !3779, line: 70, baseType: !3225, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3778, file: !3779, line: 71, baseType: !3799, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!2159, !273}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3778, file: !3779, line: 73, baseType: !3803, size: 64, offset: 768)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{null, !273, !3257, !3258}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3778, file: !3779, line: 75, baseType: !3418, size: 64, offset: 832)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3778, file: !3779, line: 77, baseType: !3517, size: 64, offset: 896)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !274, file: !73, line: 541, baseType: !367, size: 64, offset: 5248)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !274, file: !73, line: 543, baseType: !3414, size: 64, offset: 5312)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !274, file: !73, line: 544, baseType: !3811, size: 64, offset: 5376)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !274, file: !73, line: 545, baseType: !3814, size: 64, offset: 5440)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !274, file: !73, line: 547, baseType: !521, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !274, file: !73, line: 548, baseType: !521, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !274, file: !73, line: 549, baseType: !521, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !274, file: !73, line: 550, baseType: !521, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !259, file: !167, line: 289, baseType: !3821, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !3823, line: 302, size: 1472, elements: !3824)
!3823 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/lizy2001/genbc/linux")
!3824 = !{!3825, !3826, !3827, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3838, !3856, !3857, !3860, !3861, !3863, !3866, !3869, !3870, !3995}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3822, file: !3823, line: 303, baseType: !141, size: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3822, file: !3823, line: 304, baseType: !263, size: 32, offset: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !3822, file: !3823, line: 305, baseType: !3828, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3822, file: !3823, line: 306, baseType: !151, size: 64, offset: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !3822, file: !3823, line: 307, baseType: !135, size: 64, offset: 192)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !3823, line: 308, baseType: !135, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !3822, file: !3823, line: 309, baseType: !141, size: 32, offset: 320)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !3822, file: !3823, line: 310, baseType: !141, size: 32, offset: 352)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !3822, file: !3823, line: 311, baseType: !141, size: 32, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3822, file: !3823, line: 312, baseType: !7, size: 32, offset: 416)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3822, file: !3823, line: 313, baseType: !1253, size: 16, offset: 448)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !3822, file: !3823, line: 314, baseType: !1253, size: 16, offset: 464)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !3822, file: !3823, line: 315, baseType: !3839, size: 352, offset: 480)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !3840, line: 32, size: 352, elements: !3841)
!3840 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/lizy2001/genbc/linux")
!3841 = !{!3842, !3844, !3845, !3846, !3847, !3849, !3853, !3855}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !3839, file: !3840, line: 33, baseType: !3843, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !3840, line: 9, baseType: !7)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !3839, file: !3840, line: 34, baseType: !3843, size: 32, offset: 32)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !3839, file: !3840, line: 35, baseType: !3843, size: 32, offset: 64)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !3839, file: !3840, line: 36, baseType: !3843, size: 32, offset: 96)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !3839, file: !3840, line: 37, baseType: !3848, size: 8, offset: 128)
!3848 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !3840, line: 7, baseType: !123)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !3839, file: !3840, line: 38, baseType: !3850, size: 152, offset: 136)
!3850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3848, size: 152, elements: !3851)
!3851 = !{!3852}
!3852 = !DISubrange(count: 19)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !3839, file: !3840, line: 39, baseType: !3854, size: 32, offset: 288)
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !3840, line: 8, baseType: !7)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !3839, file: !3840, line: 40, baseType: !3854, size: 32, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !3823, line: 316, baseType: !112, size: 64, offset: 832)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !3822, file: !3823, line: 317, baseType: !3858, size: 64, offset: 896)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3823, line: 317, flags: DIFlagFwdDecl)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !3822, file: !3823, line: 318, baseType: !3821, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !3822, file: !3823, line: 323, baseType: !3862, size: 64, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !3822, file: !3823, line: 324, baseType: !3864, size: 64, offset: 1088)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !3822, file: !3823, line: 325, baseType: !3867, size: 64, offset: 1152)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !3822, file: !3823, line: 326, baseType: !111, size: 64, offset: 1216)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3822, file: !3823, line: 332, baseType: !3871, size: 64, offset: 1280)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3873)
!3873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !3823, line: 254, size: 2176, elements: !3874)
!3874 = !{!3875, !3879, !3883, !3887, !3891, !3895, !3899, !3900, !3904, !3908, !3909, !3913, !3914, !3918, !3922, !3926, !3927, !3928, !3929, !3930, !3931, !3935, !3936, !3937, !3941, !3945, !3946, !3950, !3962, !3977, !3983, !3989, !3990, !3994}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3873, file: !3823, line: 255, baseType: !3876, size: 64)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!258, !3821, !391, !141}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3873, file: !3823, line: 257, baseType: !3880, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{!141, !3821, !258}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3873, file: !3823, line: 258, baseType: !3884, size: 64, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{null, !3821, !258}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3873, file: !3823, line: 259, baseType: !3888, size: 64, offset: 192)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!141, !258, !391}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3873, file: !3823, line: 260, baseType: !3892, size: 64, offset: 256)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{null, !258, !391}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3873, file: !3823, line: 261, baseType: !3896, size: 64, offset: 320)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !258}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3873, file: !3823, line: 262, baseType: !3896, size: 64, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3873, file: !3823, line: 263, baseType: !3901, size: 64, offset: 448)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!141, !258, !457, !141}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3873, file: !3823, line: 265, baseType: !3905, size: 64, offset: 512)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!141, !258, !123}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3873, file: !3823, line: 266, baseType: !3896, size: 64, offset: 576)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3873, file: !3823, line: 267, baseType: !3910, size: 64, offset: 640)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!141, !258}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3873, file: !3823, line: 268, baseType: !3910, size: 64, offset: 704)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3873, file: !3823, line: 269, baseType: !3915, size: 64, offset: 768)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!141, !258, !7, !112}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3873, file: !3823, line: 271, baseType: !3919, size: 64, offset: 832)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!350, !258, !7, !112}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3873, file: !3823, line: 273, baseType: !3923, size: 64, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !258, !3868}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3873, file: !3823, line: 274, baseType: !3896, size: 64, offset: 960)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3873, file: !3823, line: 275, baseType: !3896, size: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3873, file: !3823, line: 276, baseType: !3896, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3873, file: !3823, line: 277, baseType: !3896, size: 64, offset: 1152)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3873, file: !3823, line: 278, baseType: !3896, size: 64, offset: 1216)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3873, file: !3823, line: 279, baseType: !3932, size: 64, offset: 1280)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!141, !258, !141}
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3873, file: !3823, line: 280, baseType: !3896, size: 64, offset: 1344)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3873, file: !3823, line: 281, baseType: !3896, size: 64, offset: 1408)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3873, file: !3823, line: 282, baseType: !3938, size: 64, offset: 1472)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = !DISubroutineType(types: !3940)
!3940 = !{null, !258, !141}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3873, file: !3823, line: 283, baseType: !3942, size: 64, offset: 1536)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !258, !127}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3873, file: !3823, line: 284, baseType: !3910, size: 64, offset: 1600)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3873, file: !3823, line: 285, baseType: !3947, size: 64, offset: 1664)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!141, !258, !7, !7}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3873, file: !3823, line: 287, baseType: !3951, size: 64, offset: 1728)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!141, !258, !3954}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3956, line: 15, size: 64, elements: !3957)
!3956 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/lizy2001/genbc/linux")
!3957 = !{!3958, !3959, !3960, !3961}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3955, file: !3956, line: 16, baseType: !119, size: 16)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3955, file: !3956, line: 17, baseType: !119, size: 16, offset: 16)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3955, file: !3956, line: 18, baseType: !119, size: 16, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3955, file: !3956, line: 19, baseType: !119, size: 16, offset: 48)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "set_termiox", scope: !3873, file: !3823, line: 288, baseType: !3963, size: 64, offset: 1792)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!141, !258, !3966}
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "termiox", file: !3968, line: 10, size: 128, elements: !3969)
!3968 = !DIFile(filename: "./include/uapi/linux/termios.h", directory: "/home/lizy2001/genbc/linux")
!3969 = !{!3970, !3971, !3972, !3976}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "x_hflag", scope: !3967, file: !3968, line: 12, baseType: !117, size: 16)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "x_cflag", scope: !3967, file: !3968, line: 13, baseType: !117, size: 16, offset: 16)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "x_rflag", scope: !3967, file: !3968, line: 14, baseType: !3973, size: 80, offset: 32)
!3973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 80, elements: !3974)
!3974 = !{!3975}
!3975 = !DISubrange(count: 5)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "x_sflag", scope: !3967, file: !3968, line: 15, baseType: !117, size: 16, offset: 112)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3873, file: !3823, line: 289, baseType: !3978, size: 64, offset: 1856)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!141, !258, !3981}
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3823, line: 251, flags: DIFlagFwdDecl)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3873, file: !3823, line: 291, baseType: !3984, size: 64, offset: 1920)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!141, !258, !3987}
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3823, line: 252, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3873, file: !3823, line: 292, baseType: !3984, size: 64, offset: 1984)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3873, file: !3823, line: 293, baseType: !3991, size: 64, offset: 2048)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{null, !258, !740}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3873, file: !3823, line: 299, baseType: !771, size: 64, offset: 2112)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !3822, file: !3823, line: 333, baseType: !211, size: 128, offset: 1344)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !259, file: !167, line: 290, baseType: !3871, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !259, file: !167, line: 291, baseType: !141, size: 32, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !259, file: !167, line: 294, baseType: !3999, size: 384, offset: 320)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !4000, line: 133, size: 384, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/lizy2001/genbc/linux")
!4001 = !{!4002, !4003, !4004, !4005, !4006}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3999, file: !4000, line: 134, baseType: !200, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3999, file: !4000, line: 135, baseType: !835, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3999, file: !4000, line: 136, baseType: !7, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3999, file: !4000, line: 137, baseType: !211, size: 128, offset: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3999, file: !4000, line: 138, baseType: !211, size: 128, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !259, file: !167, line: 295, baseType: !4008, size: 64, offset: 704)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !4000, line: 215, size: 128, elements: !4010)
!4010 = !{!4011, !4057}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4009, file: !4000, line: 216, baseType: !4012, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !4000, line: 175, size: 1216, elements: !4014)
!4014 = !{!4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4027, !4031, !4035, !4036, !4037, !4041, !4042, !4046, !4047, !4051, !4055, !4056}
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4013, file: !4000, line: 176, baseType: !141, size: 32)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4013, file: !4000, line: 177, baseType: !126, size: 64, offset: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4013, file: !4000, line: 178, baseType: !141, size: 32, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4013, file: !4000, line: 179, baseType: !141, size: 32, offset: 160)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4013, file: !4000, line: 184, baseType: !3910, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !4013, file: !4000, line: 185, baseType: !3896, size: 64, offset: 256)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !4013, file: !4000, line: 186, baseType: !3896, size: 64, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4013, file: !4000, line: 187, baseType: !4023, size: 64, offset: 384)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!346, !258, !391, !4026, !361}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4013, file: !4000, line: 189, baseType: !4028, size: 64, offset: 448)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{!346, !258, !391, !457, !361}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4013, file: !4000, line: 191, baseType: !4032, size: 64, offset: 512)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!141, !258, !391, !7, !112}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4013, file: !4000, line: 193, baseType: !4032, size: 64, offset: 576)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !4013, file: !4000, line: 195, baseType: !3923, size: 64, offset: 640)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4013, file: !4000, line: 196, baseType: !4038, size: 64, offset: 704)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!2933, !258, !391, !2935}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !4013, file: !4000, line: 198, baseType: !3910, size: 64, offset: 768)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4013, file: !4000, line: 203, baseType: !4043, size: 64, offset: 832)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{null, !258, !457, !126, !141}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4013, file: !4000, line: 205, baseType: !3896, size: 64, offset: 896)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !4013, file: !4000, line: 206, baseType: !4048, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !258, !7}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !4013, file: !4000, line: 207, baseType: !4052, size: 64, offset: 1024)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!141, !258, !457, !126, !141}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4013, file: !4000, line: 210, baseType: !151, size: 64, offset: 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4013, file: !4000, line: 212, baseType: !141, size: 32, offset: 1152)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4009, file: !4000, line: 217, baseType: !258, size: 64, offset: 64)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !259, file: !167, line: 297, baseType: !223, size: 192, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !259, file: !167, line: 298, baseType: !223, size: 192, offset: 960)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !259, file: !167, line: 299, baseType: !223, size: 192, offset: 1152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !259, file: !167, line: 300, baseType: !829, size: 256, offset: 1344)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !259, file: !167, line: 301, baseType: !223, size: 192, offset: 1600)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_lock", scope: !259, file: !167, line: 302, baseType: !228, offset: 1792)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "flow_lock", scope: !259, file: !167, line: 303, baseType: !228, offset: 1792)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !259, file: !167, line: 305, baseType: !3839, size: 352, offset: 1792)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !259, file: !167, line: 305, baseType: !3839, size: 352, offset: 2144)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "termiox", scope: !259, file: !167, line: 306, baseType: !3966, size: 64, offset: 2496)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !167, line: 307, baseType: !4069, size: 512, offset: 2560)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 512, elements: !320)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !259, file: !167, line: 308, baseType: !1514, size: 64, offset: 3072)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !259, file: !167, line: 313, baseType: !1514, size: 64, offset: 3136)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !259, file: !167, line: 314, baseType: !112, size: 64, offset: 3200)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !259, file: !167, line: 315, baseType: !141, size: 32, offset: 3264)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !259, file: !167, line: 316, baseType: !3955, size: 64, offset: 3296)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !259, file: !167, line: 317, baseType: !112, size: 1, offset: 3360, flags: DIFlagBitField, extraData: i64 3360)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "flow_stopped", scope: !259, file: !167, line: 318, baseType: !112, size: 1, offset: 3361, flags: DIFlagBitField, extraData: i64 3360)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !259, file: !167, line: 319, baseType: !112, size: 62, offset: 3392, flags: DIFlagBitField, extraData: i64 3392)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !259, file: !167, line: 320, baseType: !141, size: 32, offset: 3456)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_status", scope: !259, file: !167, line: 321, baseType: !112, size: 8, offset: 3488, flags: DIFlagBitField, extraData: i64 3488)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !259, file: !167, line: 322, baseType: !112, size: 1, offset: 3496, flags: DIFlagBitField, extraData: i64 3488)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "unused_ctrl", scope: !259, file: !167, line: 323, baseType: !112, size: 55, offset: 3520, flags: DIFlagBitField, extraData: i64 3520)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !259, file: !167, line: 324, baseType: !7, size: 32, offset: 3584)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !259, file: !167, line: 325, baseType: !141, size: 32, offset: 3616)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !259, file: !167, line: 327, baseType: !258, size: 64, offset: 3648)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !259, file: !167, line: 328, baseType: !2987, size: 64, offset: 3712)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !259, file: !167, line: 329, baseType: !1524, size: 128, offset: 3776)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !259, file: !167, line: 330, baseType: !1524, size: 128, offset: 3904)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !259, file: !167, line: 331, baseType: !196, size: 256, offset: 4032)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !259, file: !167, line: 332, baseType: !111, size: 64, offset: 4288)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !259, file: !167, line: 333, baseType: !111, size: 64, offset: 4352)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !259, file: !167, line: 334, baseType: !228, offset: 4416)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !259, file: !167, line: 335, baseType: !211, size: 128, offset: 4416)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !259, file: !167, line: 339, baseType: !141, size: 32, offset: 4544)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !259, file: !167, line: 340, baseType: !4026, size: 64, offset: 4608)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !259, file: !167, line: 341, baseType: !141, size: 32, offset: 4672)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !259, file: !167, line: 343, baseType: !196, size: 256, offset: 4736)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !259, file: !167, line: 344, baseType: !3865, size: 64, offset: 4992)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !166, file: !167, line: 233, baseType: !258, size: 64, offset: 1088)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !166, file: !167, line: 234, baseType: !4100, size: 64, offset: 1152)
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4102)
!4102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !167, line: 205, size: 320, elements: !4103)
!4103 = !{!4104, !4108, !4112, !4116, !4120}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !4102, file: !167, line: 207, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!141, !3865}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !4102, file: !167, line: 209, baseType: !4109, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{null, !3865, !141}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4102, file: !167, line: 213, baseType: !4113, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{null, !3865}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4102, file: !167, line: 218, baseType: !4117, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!141, !3865, !258}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !4102, file: !167, line: 220, baseType: !4113, size: 64, offset: 256)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !166, file: !167, line: 235, baseType: !4122, size: 64, offset: 1216)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4124)
!4124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !167, line: 223, size: 128, elements: !4125)
!4125 = !{!4126, !4130}
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !4124, file: !167, line: 224, baseType: !4127, size: 64)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DISubroutineType(types: !4129)
!4129 = !{!141, !3865, !457, !457, !361}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !4124, file: !167, line: 225, baseType: !4113, size: 64, offset: 64)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !166, file: !167, line: 236, baseType: !228, offset: 1280)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !166, file: !167, line: 237, baseType: !141, size: 32, offset: 1280)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !166, file: !167, line: 238, baseType: !141, size: 32, offset: 1312)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !166, file: !167, line: 239, baseType: !1524, size: 128, offset: 1344)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !166, file: !167, line: 240, baseType: !1524, size: 128, offset: 1472)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !167, line: 241, baseType: !112, size: 64, offset: 1600)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !166, file: !167, line: 242, baseType: !112, size: 64, offset: 1664)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !166, file: !167, line: 243, baseType: !123, size: 1, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "low_latency", scope: !166, file: !167, line: 244, baseType: !123, size: 1, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !166, file: !167, line: 245, baseType: !223, size: 192, offset: 1792)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !166, file: !167, line: 246, baseType: !223, size: 192, offset: 1984)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !166, file: !167, line: 247, baseType: !4026, size: 64, offset: 2176)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !166, file: !167, line: 248, baseType: !7, size: 32, offset: 2240)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !166, file: !167, line: 249, baseType: !7, size: 32, offset: 2272)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !166, file: !167, line: 250, baseType: !141, size: 32, offset: 2304)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !167, line: 253, baseType: !263, size: 32, offset: 2336)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !166, file: !167, line: 254, baseType: !111, size: 64, offset: 2368)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !163, file: !94, line: 97, baseType: !4149, size: 160, offset: 2432)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vc_state", file: !94, line: 46, size: 160, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154, !4156, !4157, !4158, !4159, !4160, !4161}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4149, file: !94, line: 47, baseType: !7, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4149, file: !94, line: 47, baseType: !7, size: 32, offset: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4149, file: !94, line: 49, baseType: !123, size: 8, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "Gx_charset", scope: !4149, file: !94, line: 51, baseType: !4155, size: 16, offset: 72)
!4155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 16, elements: !1612)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !4149, file: !94, line: 52, baseType: !7, size: 1, offset: 88, flags: DIFlagBitField, extraData: i64 88)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "intensity", scope: !4149, file: !94, line: 55, baseType: !93, size: 32, offset: 96)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "italic", scope: !4149, file: !94, line: 56, baseType: !521, size: 8, offset: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "underline", scope: !4149, file: !94, line: 57, baseType: !521, size: 8, offset: 136)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "blink", scope: !4149, file: !94, line: 58, baseType: !521, size: 8, offset: 144)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !4149, file: !94, line: 59, baseType: !521, size: 8, offset: 152)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "saved_state", scope: !163, file: !94, line: 97, baseType: !4149, size: 160, offset: 2592)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "vc_num", scope: !163, file: !94, line: 99, baseType: !119, size: 16, offset: 2752)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cols", scope: !163, file: !94, line: 100, baseType: !7, size: 32, offset: 2784)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "vc_rows", scope: !163, file: !94, line: 101, baseType: !7, size: 32, offset: 2816)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "vc_size_row", scope: !163, file: !94, line: 102, baseType: !7, size: 32, offset: 2848)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scan_lines", scope: !163, file: !94, line: 103, baseType: !7, size: 32, offset: 2880)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "vc_origin", scope: !163, file: !94, line: 104, baseType: !112, size: 64, offset: 2944)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "vc_scr_end", scope: !163, file: !94, line: 105, baseType: !112, size: 64, offset: 3008)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "vc_visible_origin", scope: !163, file: !94, line: 106, baseType: !112, size: 64, offset: 3072)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "vc_top", scope: !163, file: !94, line: 107, baseType: !7, size: 32, offset: 3136)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bottom", scope: !163, file: !94, line: 107, baseType: !7, size: 32, offset: 3168)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "vc_sw", scope: !163, file: !94, line: 108, baseType: !4174, size: 64, offset: 3200)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf", scope: !163, file: !94, line: 109, baseType: !4176, size: 64, offset: 3264)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "vc_screenbuf_size", scope: !163, file: !94, line: 110, baseType: !7, size: 32, offset: 3328)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "vc_mode", scope: !163, file: !94, line: 111, baseType: !123, size: 8, offset: 3360)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "vc_attr", scope: !163, file: !94, line: 113, baseType: !123, size: 8, offset: 3368)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "vc_def_color", scope: !163, file: !94, line: 114, baseType: !123, size: 8, offset: 3376)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "vc_ulcolor", scope: !163, file: !94, line: 115, baseType: !123, size: 8, offset: 3384)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "vc_itcolor", scope: !163, file: !94, line: 116, baseType: !123, size: 8, offset: 3392)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "vc_halfcolor", scope: !163, file: !94, line: 117, baseType: !123, size: 8, offset: 3400)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cursor_type", scope: !163, file: !94, line: 119, baseType: !7, size: 32, offset: 3424)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "vc_complement_mask", scope: !163, file: !94, line: 120, baseType: !119, size: 16, offset: 3456)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "vc_s_complement_mask", scope: !163, file: !94, line: 121, baseType: !119, size: 16, offset: 3472)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "vc_pos", scope: !163, file: !94, line: 122, baseType: !112, size: 64, offset: 3520)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "vc_hi_font_mask", scope: !163, file: !94, line: 124, baseType: !119, size: 16, offset: 3584)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "vc_font", scope: !163, file: !94, line: 125, baseType: !4190, size: 192, offset: 3648)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console_font", file: !4191, line: 167, size: 192, elements: !4192)
!4191 = !DIFile(filename: "./include/uapi/linux/kd.h", directory: "/home/lizy2001/genbc/linux")
!4192 = !{!4193, !4194, !4195, !4196}
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4190, file: !4191, line: 168, baseType: !7, size: 32)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4190, file: !4191, line: 168, baseType: !7, size: 32, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "charcount", scope: !4190, file: !4191, line: 169, baseType: !7, size: 32, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4190, file: !4191, line: 170, baseType: !4026, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "vc_video_erase_char", scope: !163, file: !94, line: 126, baseType: !119, size: 16, offset: 3840)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "vc_state", scope: !163, file: !94, line: 128, baseType: !7, size: 32, offset: 3872)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "vc_npar", scope: !163, file: !94, line: 129, baseType: !7, size: 32, offset: 3904)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "vc_par", scope: !163, file: !94, line: 129, baseType: !4201, size: 512, offset: 3936)
!4201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 512, elements: !1778)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "vt_mode", scope: !163, file: !94, line: 131, baseType: !4203, size: 64, offset: 4448)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vt_mode", file: !4204, line: 19, size: 64, elements: !4205)
!4204 = !DIFile(filename: "./include/uapi/linux/vt.h", directory: "/home/lizy2001/genbc/linux")
!4205 = !{!4206, !4207, !4208, !4209, !4210}
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4203, file: !4204, line: 20, baseType: !127, size: 8)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "waitv", scope: !4203, file: !4204, line: 21, baseType: !127, size: 8, offset: 8)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "relsig", scope: !4203, file: !4204, line: 22, baseType: !1253, size: 16, offset: 16)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "acqsig", scope: !4203, file: !4204, line: 23, baseType: !1253, size: 16, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "frsig", scope: !4203, file: !4204, line: 24, baseType: !1253, size: 16, offset: 48)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "vt_pid", scope: !163, file: !94, line: 132, baseType: !1514, size: 64, offset: 4544)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "vt_newvt", scope: !163, file: !94, line: 133, baseType: !141, size: 32, offset: 4608)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "paste_wait", scope: !163, file: !94, line: 134, baseType: !1524, size: 128, offset: 4672)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "vc_disp_ctrl", scope: !163, file: !94, line: 136, baseType: !7, size: 1, offset: 4800, flags: DIFlagBitField, extraData: i64 4800)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "vc_toggle_meta", scope: !163, file: !94, line: 137, baseType: !7, size: 1, offset: 4801, flags: DIFlagBitField, extraData: i64 4800)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decscnm", scope: !163, file: !94, line: 138, baseType: !7, size: 1, offset: 4802, flags: DIFlagBitField, extraData: i64 4800)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decom", scope: !163, file: !94, line: 139, baseType: !7, size: 1, offset: 4803, flags: DIFlagBitField, extraData: i64 4800)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decawm", scope: !163, file: !94, line: 140, baseType: !7, size: 1, offset: 4804, flags: DIFlagBitField, extraData: i64 4800)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "vc_deccm", scope: !163, file: !94, line: 141, baseType: !7, size: 1, offset: 4805, flags: DIFlagBitField, extraData: i64 4800)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "vc_decim", scope: !163, file: !94, line: 142, baseType: !7, size: 1, offset: 4806, flags: DIFlagBitField, extraData: i64 4800)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "vc_priv", scope: !163, file: !94, line: 144, baseType: !7, size: 3, offset: 4807, flags: DIFlagBitField, extraData: i64 4800)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "vc_need_wrap", scope: !163, file: !94, line: 145, baseType: !7, size: 1, offset: 4810, flags: DIFlagBitField, extraData: i64 4800)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "vc_can_do_color", scope: !163, file: !94, line: 146, baseType: !7, size: 1, offset: 4811, flags: DIFlagBitField, extraData: i64 4800)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "vc_report_mouse", scope: !163, file: !94, line: 147, baseType: !7, size: 2, offset: 4812, flags: DIFlagBitField, extraData: i64 4800)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf", scope: !163, file: !94, line: 148, baseType: !123, size: 1, offset: 4814, flags: DIFlagBitField, extraData: i64 4800)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_count", scope: !163, file: !94, line: 149, baseType: !123, size: 8, offset: 4816)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "vc_utf_char", scope: !163, file: !94, line: 150, baseType: !141, size: 32, offset: 4832)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "vc_tab_stop", scope: !163, file: !94, line: 151, baseType: !4229, size: 256, offset: 4864)
!4229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !1209)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "vc_palette", scope: !163, file: !94, line: 152, baseType: !4231, size: 384, offset: 5120)
!4231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 384, elements: !4232)
!4232 = !{!4233}
!4233 = !DISubrange(count: 48)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "vc_translate", scope: !163, file: !94, line: 153, baseType: !4176, size: 64, offset: 5504)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "vc_resize_user", scope: !163, file: !94, line: 154, baseType: !7, size: 32, offset: 5568)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_pitch", scope: !163, file: !94, line: 155, baseType: !7, size: 32, offset: 5600)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "vc_bell_duration", scope: !163, file: !94, line: 156, baseType: !7, size: 32, offset: 5632)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "vc_cur_blink_ms", scope: !163, file: !94, line: 157, baseType: !119, size: 16, offset: 5664)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "vc_display_fg", scope: !163, file: !94, line: 158, baseType: !4240, size: 64, offset: 5696)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir", scope: !163, file: !94, line: 159, baseType: !4242, size: 64, offset: 5760)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_pagedir", file: !94, line: 20, flags: DIFlagFwdDecl)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_pagedir_loc", scope: !163, file: !94, line: 160, baseType: !4245, size: 64, offset: 5824)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "vc_uni_screen", scope: !163, file: !94, line: 161, baseType: !4247, size: 64, offset: 5888)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DICompositeType(tag: DW_TAG_structure_type, name: "uni_screen", file: !94, line: 21, flags: DIFlagFwdDecl)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "con_deinit", scope: !148, file: !101, line: 48, baseType: !4250, size: 64, offset: 192)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !162}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "con_clear", scope: !148, file: !101, line: 49, baseType: !4254, size: 64, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !162, !141, !141, !141, !141}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "con_putc", scope: !148, file: !101, line: 51, baseType: !4258, size: 64, offset: 320)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{null, !162, !141, !141, !141}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "con_putcs", scope: !148, file: !101, line: 52, baseType: !4262, size: 64, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{null, !162, !4265, !141, !141, !141}
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "con_cursor", scope: !148, file: !101, line: 54, baseType: !159, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "con_scroll", scope: !148, file: !101, line: 55, baseType: !4269, size: 64, offset: 512)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!521, !162, !7, !7, !100, !7}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "con_switch", scope: !148, file: !101, line: 58, baseType: !4273, size: 64, offset: 576)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!141, !162}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "con_blank", scope: !148, file: !101, line: 59, baseType: !4277, size: 64, offset: 640)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!141, !162, !141, !141}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_set", scope: !148, file: !101, line: 60, baseType: !4281, size: 64, offset: 704)
!4281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4282, size: 64)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!141, !162, !4284, !7}
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_get", scope: !148, file: !101, line: 62, baseType: !4286, size: 64, offset: 768)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!141, !162, !4284}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_default", scope: !148, file: !101, line: 63, baseType: !4290, size: 64, offset: 832)
!4290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4291, size: 64)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{!141, !162, !4284, !126}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "con_font_copy", scope: !148, file: !101, line: 65, baseType: !4294, size: 64, offset: 896)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!141, !162, !141}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "con_resize", scope: !148, file: !101, line: 66, baseType: !4298, size: 64, offset: 960)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!141, !162, !7, !7, !7}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_palette", scope: !148, file: !101, line: 68, baseType: !4302, size: 64, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = !DISubroutineType(types: !4304)
!4304 = !{null, !162, !457}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "con_scrolldelta", scope: !148, file: !101, line: 70, baseType: !159, size: 64, offset: 1088)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "con_set_origin", scope: !148, file: !101, line: 71, baseType: !4273, size: 64, offset: 1152)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "con_save_screen", scope: !148, file: !101, line: 72, baseType: !4250, size: 64, offset: 1216)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "con_build_attr", scope: !148, file: !101, line: 73, baseType: !4309, size: 64, offset: 1280)
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DISubroutineType(types: !4311)
!4311 = !{!1395, !162, !1395, !93, !521, !521, !521, !521}
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "con_invert_region", scope: !148, file: !101, line: 76, baseType: !4313, size: 64, offset: 1344)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{null, !162, !120, !141}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "con_screen_pos", scope: !148, file: !101, line: 77, baseType: !4317, size: 64, offset: 1408)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!120, !4320, !141}
!4320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4321, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "con_getxy", scope: !148, file: !101, line: 78, baseType: !4323, size: 64, offset: 1472)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!112, !162, !112, !734, !734}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "con_flush_scrollback", scope: !148, file: !101, line: 83, baseType: !4250, size: 64, offset: 1536)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_enter", scope: !148, file: !101, line: 89, baseType: !4273, size: 64, offset: 1600)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "con_debug_leave", scope: !148, file: !101, line: 93, baseType: !4273, size: 64, offset: 1664)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file229", scope: !2, file: !3, line: 1238, type: !4331, isLocal: true, isDefinition: true, align: 8)
!4331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 328, elements: !4332)
!4332 = !{!4333}
!4333 = !DISubrange(count: 41)
!4334 = !DIGlobalVariableExpression(var: !4335, expr: !DIExpression())
!4335 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license230", scope: !2, file: !3, line: 1238, type: !4336, isLocal: true, isDefinition: true, align: 8)
!4336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 152, elements: !3851)
!4337 = !DIGlobalVariableExpression(var: !4338, expr: !DIExpression())
!4338 = distinct !DIGlobalVariable(name: "__setup_str_text_mode", scope: !2, file: !3, line: 124, type: !4339, isLocal: true, isDefinition: true, align: 8)
!4339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 80, elements: !4340)
!4340 = !{!4341}
!4341 = !DISubrange(count: 10)
!4342 = !DIGlobalVariableExpression(var: !4343, expr: !DIExpression())
!4343 = distinct !DIGlobalVariable(name: "__setup_str_no_scroll", scope: !2, file: !3, line: 137, type: !4339, isLocal: true, isDefinition: true, align: 8)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "vga_hardscroll_enabled", scope: !2, file: !3, line: 103, type: !521, isLocal: true, isDefinition: true)
!4346 = !DIGlobalVariableExpression(var: !4347, expr: !DIExpression())
!4347 = distinct !DIGlobalVariable(name: "vga_hardscroll_user_enable", scope: !2, file: !3, line: 104, type: !521, isLocal: true, isDefinition: true)
!4348 = !DIGlobalVariableExpression(var: !4349, expr: !DIExpression())
!4349 = distinct !DIGlobalVariable(name: "ega_console_resource", scope: !4350, file: !3, line: 221, type: !4351, isLocal: true, isDefinition: true)
!4350 = distinct !DISubprogram(name: "vgacon_startup", scope: !3, file: !3, line: 181, type: !156, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !4352, line: 20, size: 512, elements: !4353)
!4352 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!4353 = !{!4354, !4356, !4357, !4358, !4359, !4360, !4362, !4363}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4351, file: !4352, line: 21, baseType: !4355, size: 64)
!4355 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !203, line: 158, baseType: !2157)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4351, file: !4352, line: 22, baseType: !4355, size: 64, offset: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4351, file: !4352, line: 23, baseType: !135, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4351, file: !4352, line: 24, baseType: !112, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4351, file: !4352, line: 25, baseType: !112, size: 64, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4351, file: !4352, line: 26, baseType: !4361, size: 64, offset: 320)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4351, file: !4352, line: 26, baseType: !4361, size: 64, offset: 384)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4351, file: !4352, line: 26, baseType: !4361, size: 64, offset: 448)
!4364 = !DIGlobalVariableExpression(var: !4365, expr: !DIExpression())
!4365 = distinct !DIGlobalVariable(name: "mda1_console_resource", scope: !4350, file: !3, line: 232, type: !4351, isLocal: true, isDefinition: true)
!4366 = !DIGlobalVariableExpression(var: !4367, expr: !DIExpression())
!4367 = distinct !DIGlobalVariable(name: "mda2_console_resource", scope: !4350, file: !3, line: 237, type: !4351, isLocal: true, isDefinition: true)
!4368 = !DIGlobalVariableExpression(var: !4369, expr: !DIExpression())
!4369 = distinct !DIGlobalVariable(name: "ega_console_resource", scope: !4350, file: !3, line: 263, type: !4351, isLocal: true, isDefinition: true)
!4370 = !DIGlobalVariableExpression(var: !4371, expr: !DIExpression())
!4371 = distinct !DIGlobalVariable(name: "vga_console_resource", scope: !4350, file: !3, line: 273, type: !4351, isLocal: true, isDefinition: true)
!4372 = !DIGlobalVariableExpression(var: !4373, expr: !DIExpression())
!4373 = distinct !DIGlobalVariable(name: "cga_console_resource", scope: !4350, file: !3, line: 308, type: !4351, isLocal: true, isDefinition: true)
!4374 = !DIGlobalVariableExpression(var: !4375, expr: !DIExpression())
!4375 = distinct !DIGlobalVariable(name: "vga_video_num_lines", scope: !2, file: !3, line: 89, type: !7, isLocal: true, isDefinition: true)
!4376 = !DIGlobalVariableExpression(var: !4377, expr: !DIExpression())
!4377 = distinct !DIGlobalVariable(name: "vga_video_num_columns", scope: !2, file: !3, line: 88, type: !7, isLocal: true, isDefinition: true)
!4378 = !DIGlobalVariableExpression(var: !4379, expr: !DIExpression())
!4379 = distinct !DIGlobalVariable(name: "vgastate", scope: !2, file: !3, line: 59, type: !4380, isLocal: true, isDefinition: true)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vgastate", file: !4381, line: 182, size: 448, elements: !4382)
!4381 = !DIFile(filename: "./include/video/vga.h", directory: "/home/lizy2001/genbc/linux")
!4382 = !{!4383, !4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "vgabase", scope: !4380, file: !4381, line: 183, baseType: !111, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !4380, file: !4381, line: 184, baseType: !112, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "memsize", scope: !4380, file: !4381, line: 185, baseType: !450, size: 32, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4380, file: !4381, line: 186, baseType: !450, size: 32, offset: 160)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4380, file: !4381, line: 187, baseType: !450, size: 32, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "num_attr", scope: !4380, file: !4381, line: 188, baseType: !450, size: 32, offset: 224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4380, file: !4381, line: 189, baseType: !450, size: 32, offset: 256)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "num_gfx", scope: !4380, file: !4381, line: 190, baseType: !450, size: 32, offset: 288)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "num_seq", scope: !4380, file: !4381, line: 191, baseType: !450, size: 32, offset: 320)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "vidstate", scope: !4380, file: !4381, line: 192, baseType: !111, size: 64, offset: 384)
!4393 = !DIGlobalVariableExpression(var: !4394, expr: !DIExpression())
!4394 = distinct !DIGlobalVariable(name: "vga_vram_base", scope: !2, file: !3, line: 83, type: !112, isLocal: true, isDefinition: true)
!4395 = !DIGlobalVariableExpression(var: !4396, expr: !DIExpression())
!4396 = distinct !DIGlobalVariable(name: "vga_video_port_reg", scope: !2, file: !3, line: 86, type: !115, isLocal: true, isDefinition: true)
!4397 = !DIGlobalVariableExpression(var: !4398, expr: !DIExpression())
!4398 = distinct !DIGlobalVariable(name: "vga_video_port_val", scope: !2, file: !3, line: 87, type: !115, isLocal: true, isDefinition: true)
!4399 = !DIGlobalVariableExpression(var: !4400, expr: !DIExpression())
!4400 = distinct !DIGlobalVariable(name: "vga_video_type", scope: !2, file: !3, line: 92, type: !123, isLocal: true, isDefinition: true)
!4401 = !DIGlobalVariableExpression(var: !4402, expr: !DIExpression())
!4402 = distinct !DIGlobalVariable(name: "vga_vram_size", scope: !2, file: !3, line: 85, type: !7, isLocal: true, isDefinition: true)
!4403 = !DIGlobalVariableExpression(var: !4404, expr: !DIExpression())
!4404 = distinct !DIGlobalVariable(name: "vga_video_font_height", scope: !2, file: !3, line: 98, type: !141, isLocal: true, isDefinition: true)
!4405 = !DIGlobalVariableExpression(var: !4406, expr: !DIExpression())
!4406 = distinct !DIGlobalVariable(name: "vga_can_do_color", scope: !2, file: !3, line: 90, type: !521, isLocal: true, isDefinition: true)
!4407 = !DIGlobalVariableExpression(var: !4408, expr: !DIExpression())
!4408 = distinct !DIGlobalVariable(name: "vga_vram_end", scope: !2, file: !3, line: 84, type: !112, isLocal: true, isDefinition: true)
!4409 = !DIGlobalVariableExpression(var: !4410, expr: !DIExpression())
!4410 = distinct !DIGlobalVariable(name: "vga_default_font_height", scope: !2, file: !3, line: 91, type: !7, isLocal: true, isDefinition: true)
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "vga_scan_lines", scope: !2, file: !3, line: 99, type: !141, isLocal: true, isDefinition: true)
!4413 = !DIGlobalVariableExpression(var: !4414, expr: !DIExpression())
!4414 = distinct !DIGlobalVariable(name: "vgacon_xres", scope: !2, file: !3, line: 57, type: !449, isLocal: true, isDefinition: true)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "vgacon_yres", scope: !2, file: !3, line: 58, type: !449, isLocal: true, isDefinition: true)
!4417 = !DIGlobalVariableExpression(var: !4418, expr: !DIExpression())
!4418 = distinct !DIGlobalVariable(name: "vga_init_done", scope: !2, file: !3, line: 82, type: !521, isLocal: true, isDefinition: true)
!4419 = !DIGlobalVariableExpression(var: !4420, expr: !DIExpression())
!4420 = distinct !DIGlobalVariable(name: "vga_512_chars", scope: !2, file: !3, line: 97, type: !521, isLocal: true, isDefinition: true)
!4421 = !DIGlobalVariableExpression(var: !4422, expr: !DIExpression())
!4422 = distinct !DIGlobalVariable(name: "vgacon_uni_pagedir", scope: !2, file: !3, line: 78, type: !4242, isLocal: true, isDefinition: true)
!4423 = !DIGlobalVariableExpression(var: !4424, expr: !DIExpression())
!4424 = distinct !DIGlobalVariable(name: "vgacon_refcount", scope: !2, file: !3, line: 79, type: !141, isLocal: true, isDefinition: true)
!4425 = !DIGlobalVariableExpression(var: !4426, expr: !DIExpression())
!4426 = distinct !DIGlobalVariable(name: "vga_lock", scope: !2, file: !3, line: 54, type: !835, isLocal: true, isDefinition: true)
!4427 = !DIGlobalVariableExpression(var: !4428, expr: !DIExpression())
!4428 = distinct !DIGlobalVariable(name: "cursor_size_lastfrom", scope: !2, file: !3, line: 55, type: !141, isLocal: true, isDefinition: true)
!4429 = !DIGlobalVariableExpression(var: !4430, expr: !DIExpression())
!4430 = distinct !DIGlobalVariable(name: "cursor_size_lastto", scope: !2, file: !3, line: 56, type: !141, isLocal: true, isDefinition: true)
!4431 = !DIGlobalVariableExpression(var: !4432, expr: !DIExpression())
!4432 = distinct !DIGlobalVariable(name: "vga_is_gfx", scope: !2, file: !3, line: 96, type: !521, isLocal: true, isDefinition: true)
!4433 = !DIGlobalVariableExpression(var: !4434, expr: !DIExpression())
!4434 = distinct !DIGlobalVariable(name: "vga_rolled_over", scope: !2, file: !3, line: 100, type: !7, isLocal: true, isDefinition: true)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(name: "vga_vesa_blanked", scope: !2, file: !3, line: 94, type: !141, isLocal: true, isDefinition: true)
!4437 = !DIGlobalVariableExpression(var: !4438, expr: !DIExpression())
!4438 = distinct !DIGlobalVariable(name: "vga_state", scope: !2, file: !3, line: 694, type: !4439, isLocal: true, isDefinition: true)
!4439 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 681, size: 96, elements: !4440)
!4440 = !{!4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4451, !4452}
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "SeqCtrlIndex", scope: !4439, file: !3, line: 682, baseType: !123, size: 8)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "CrtCtrlIndex", scope: !4439, file: !3, line: 683, baseType: !123, size: 8, offset: 8)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "CrtMiscIO", scope: !4439, file: !3, line: 684, baseType: !123, size: 8, offset: 16)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "HorizontalTotal", scope: !4439, file: !3, line: 685, baseType: !123, size: 8, offset: 24)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "HorizDisplayEnd", scope: !4439, file: !3, line: 686, baseType: !123, size: 8, offset: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "StartHorizRetrace", scope: !4439, file: !3, line: 687, baseType: !123, size: 8, offset: 40)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "EndHorizRetrace", scope: !4439, file: !3, line: 688, baseType: !123, size: 8, offset: 48)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "Overflow", scope: !4439, file: !3, line: 689, baseType: !123, size: 8, offset: 56)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "StartVertRetrace", scope: !4439, file: !3, line: 690, baseType: !123, size: 8, offset: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "EndVertRetrace", scope: !4439, file: !3, line: 691, baseType: !123, size: 8, offset: 72)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "ModeControl", scope: !4439, file: !3, line: 692, baseType: !123, size: 8, offset: 80)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "ClockingMode", scope: !4439, file: !3, line: 693, baseType: !123, size: 8, offset: 88)
!4453 = !DIGlobalVariableExpression(var: !4454, expr: !DIExpression())
!4454 = distinct !DIGlobalVariable(name: "vga_palette_blanked", scope: !2, file: !3, line: 95, type: !521, isLocal: true, isDefinition: true)
!4455 = !DIGlobalVariableExpression(var: !4456, expr: !DIExpression())
!4456 = distinct !DIGlobalVariable(name: "vga_font_is_default", scope: !2, file: !3, line: 93, type: !521, isLocal: true, isDefinition: true)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(name: "vga_bootup_console", scope: !4459, file: !3, line: 1136, type: !141, isLocal: true, isDefinition: true)
!4459 = distinct !DISubprogram(name: "vgacon_save_screen", scope: !3, file: !3, line: 1134, type: !4251, scopeLine: 1135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4460 = !{!"rsp"}
!4461 = !{i32 7, !"Dwarf Version", i32 4}
!4462 = !{i32 2, !"Debug Info Version", i32 3}
!4463 = !{i32 1, !"wchar_size", i32 2}
!4464 = !{i32 1, !"Code Model", i32 2}
!4465 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4466 = distinct !DISubprogram(name: "vgacon_text_force", scope: !3, file: !3, line: 106, type: !3232, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4467 = !DILocation(line: 108, column: 9, scope: !4466)
!4468 = !DILocation(line: 108, column: 2, scope: !4466)
!4469 = distinct !DISubprogram(name: "text_mode", scope: !3, file: !3, line: 112, type: !139, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4470 = !DILocalVariable(name: "str", arg: 1, scope: !4469, file: !3, line: 112, type: !126)
!4471 = !DILocation(line: 112, column: 35, scope: !4469)
!4472 = !DILocation(line: 114, column: 25, scope: !4469)
!4473 = !DILocation(line: 116, column: 2, scope: !4469)
!4474 = !DILocation(line: 117, column: 2, scope: !4469)
!4475 = !DILocation(line: 118, column: 2, scope: !4469)
!4476 = !DILocation(line: 120, column: 2, scope: !4469)
!4477 = distinct !DISubprogram(name: "no_scroll", scope: !3, file: !3, line: 126, type: !139, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4478 = !DILocalVariable(name: "str", arg: 1, scope: !4477, file: !3, line: 126, type: !126)
!4479 = !DILocation(line: 126, column: 35, scope: !4477)
!4480 = !DILocation(line: 133, column: 54, scope: !4477)
!4481 = !DILocation(line: 133, column: 29, scope: !4477)
!4482 = !DILocation(line: 134, column: 2, scope: !4477)
!4483 = !DILocalVariable(name: "display_desc", scope: !4350, file: !3, line: 183, type: !135)
!4484 = !DILocation(line: 183, column: 14, scope: !4350)
!4485 = !DILocalVariable(name: "saved1", scope: !4350, file: !3, line: 184, type: !115)
!4486 = !DILocation(line: 184, column: 6, scope: !4350)
!4487 = !DILocalVariable(name: "saved2", scope: !4350, file: !3, line: 184, type: !115)
!4488 = !DILocation(line: 184, column: 14, scope: !4350)
!4489 = !DILocalVariable(name: "p", scope: !4350, file: !3, line: 185, type: !113)
!4490 = !DILocation(line: 185, column: 16, scope: !4350)
!4491 = !DILocation(line: 187, column: 18, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 187, column: 6)
!4493 = !DILocation(line: 187, column: 6, scope: !4492)
!4494 = !DILocation(line: 187, column: 35, scope: !4492)
!4495 = !DILocation(line: 187, column: 54, scope: !4492)
!4496 = !DILocation(line: 188, column: 18, scope: !4492)
!4497 = !DILocation(line: 188, column: 6, scope: !4492)
!4498 = !DILocation(line: 188, column: 35, scope: !4492)
!4499 = !DILocation(line: 187, column: 6, scope: !4350)
!4500 = !DILocation(line: 188, column: 54, scope: !4492)
!4501 = !DILabel(scope: !4502, name: "no_vga", file: !3, line: 189)
!4502 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 188, column: 54)
!4503 = !DILocation(line: 189, column: 8, scope: !4502)
!4504 = !DILocation(line: 191, column: 14, scope: !4502)
!4505 = !DILocation(line: 192, column: 10, scope: !4502)
!4506 = !DILocation(line: 192, column: 22, scope: !4502)
!4507 = !DILocation(line: 192, column: 3, scope: !4502)
!4508 = !DILocation(line: 199, column: 19, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 199, column: 6)
!4510 = !DILocation(line: 199, column: 7, scope: !4509)
!4511 = !DILocation(line: 199, column: 36, scope: !4509)
!4512 = !DILocation(line: 199, column: 42, scope: !4509)
!4513 = !DILocation(line: 200, column: 19, scope: !4509)
!4514 = !DILocation(line: 200, column: 7, scope: !4509)
!4515 = !DILocation(line: 200, column: 36, scope: !4509)
!4516 = !DILocation(line: 199, column: 6, scope: !4350)
!4517 = !DILocation(line: 201, column: 3, scope: !4509)
!4518 = !DILocation(line: 204, column: 19, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 204, column: 6)
!4520 = !DILocation(line: 204, column: 7, scope: !4519)
!4521 = !DILocation(line: 204, column: 35, scope: !4519)
!4522 = !DILocation(line: 204, column: 44, scope: !4519)
!4523 = !DILocation(line: 205, column: 19, scope: !4519)
!4524 = !DILocation(line: 205, column: 7, scope: !4519)
!4525 = !DILocation(line: 205, column: 35, scope: !4519)
!4526 = !DILocation(line: 205, column: 44, scope: !4519)
!4527 = !DILocation(line: 206, column: 19, scope: !4519)
!4528 = !DILocation(line: 206, column: 7, scope: !4519)
!4529 = !DILocation(line: 206, column: 35, scope: !4519)
!4530 = !DILocation(line: 206, column: 44, scope: !4519)
!4531 = !DILocation(line: 207, column: 19, scope: !4519)
!4532 = !DILocation(line: 207, column: 7, scope: !4519)
!4533 = !DILocation(line: 207, column: 35, scope: !4519)
!4534 = !DILocation(line: 207, column: 44, scope: !4519)
!4535 = !DILocation(line: 208, column: 19, scope: !4519)
!4536 = !DILocation(line: 208, column: 7, scope: !4519)
!4537 = !DILocation(line: 208, column: 35, scope: !4519)
!4538 = !DILocation(line: 204, column: 6, scope: !4350)
!4539 = !DILocation(line: 209, column: 3, scope: !4519)
!4540 = !DILocation(line: 211, column: 36, scope: !4350)
!4541 = !DILocation(line: 211, column: 24, scope: !4350)
!4542 = !DILocation(line: 211, column: 22, scope: !4350)
!4543 = !DILocation(line: 212, column: 38, scope: !4350)
!4544 = !DILocation(line: 212, column: 26, scope: !4350)
!4545 = !DILocation(line: 212, column: 24, scope: !4350)
!4546 = !DILocation(line: 213, column: 19, scope: !4350)
!4547 = !DILocation(line: 215, column: 18, scope: !4548)
!4548 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 215, column: 6)
!4549 = !DILocation(line: 215, column: 6, scope: !4548)
!4550 = !DILocation(line: 215, column: 34, scope: !4548)
!4551 = !DILocation(line: 215, column: 6, scope: !4350)
!4552 = !DILocation(line: 217, column: 17, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 215, column: 40)
!4554 = !DILocation(line: 218, column: 22, scope: !4553)
!4555 = !DILocation(line: 219, column: 22, scope: !4553)
!4556 = !DILocation(line: 220, column: 20, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 220, column: 7)
!4558 = !DILocation(line: 220, column: 8, scope: !4557)
!4559 = !DILocation(line: 220, column: 38, scope: !4557)
!4560 = !DILocation(line: 220, column: 46, scope: !4557)
!4561 = !DILocation(line: 220, column: 7, scope: !4553)
!4562 = !DILocation(line: 226, column: 19, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 220, column: 55)
!4564 = !DILocation(line: 227, column: 18, scope: !4563)
!4565 = !DILocation(line: 228, column: 17, scope: !4563)
!4566 = !DILocation(line: 229, column: 4, scope: !4563)
!4567 = !DILocation(line: 231, column: 3, scope: !4563)
!4568 = !DILocation(line: 242, column: 19, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4557, file: !3, line: 231, column: 10)
!4570 = !DILocation(line: 243, column: 18, scope: !4569)
!4571 = !DILocation(line: 244, column: 17, scope: !4569)
!4572 = !DILocation(line: 245, column: 4, scope: !4569)
!4573 = !DILocation(line: 247, column: 4, scope: !4569)
!4574 = !DILocation(line: 249, column: 26, scope: !4569)
!4575 = !DILocation(line: 251, column: 2, scope: !4553)
!4576 = !DILocation(line: 253, column: 20, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 251, column: 9)
!4578 = !DILocation(line: 254, column: 17, scope: !4577)
!4579 = !DILocation(line: 255, column: 22, scope: !4577)
!4580 = !DILocation(line: 256, column: 22, scope: !4577)
!4581 = !DILocation(line: 257, column: 20, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4577, file: !3, line: 257, column: 7)
!4583 = !DILocation(line: 257, column: 8, scope: !4582)
!4584 = !DILocation(line: 257, column: 38, scope: !4582)
!4585 = !DILocation(line: 257, column: 46, scope: !4582)
!4586 = !DILocation(line: 257, column: 7, scope: !4577)
!4587 = !DILocalVariable(name: "i", scope: !4588, file: !3, line: 258, type: !141)
!4588 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 257, column: 55)
!4589 = !DILocation(line: 258, column: 8, scope: !4588)
!4590 = !DILocation(line: 260, column: 18, scope: !4588)
!4591 = !DILocation(line: 262, column: 21, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4588, file: !3, line: 262, column: 8)
!4593 = !DILocation(line: 262, column: 9, scope: !4592)
!4594 = !DILocation(line: 262, column: 8, scope: !4588)
!4595 = !DILocation(line: 268, column: 20, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 262, column: 39)
!4597 = !DILocation(line: 269, column: 18, scope: !4596)
!4598 = !DILocation(line: 270, column: 5, scope: !4596)
!4599 = !DILocation(line: 272, column: 4, scope: !4596)
!4600 = !DILocation(line: 278, column: 20, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4592, file: !3, line: 272, column: 11)
!4602 = !DILocation(line: 279, column: 18, scope: !4601)
!4603 = !DILocation(line: 280, column: 5, scope: !4601)
!4604 = !DILocation(line: 289, column: 12, scope: !4605)
!4605 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 289, column: 5)
!4606 = !DILocation(line: 289, column: 10, scope: !4605)
!4607 = !DILocation(line: 289, column: 17, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 289, column: 5)
!4609 = !DILocation(line: 289, column: 19, scope: !4608)
!4610 = !DILocation(line: 289, column: 5, scope: !4605)
!4611 = !DILocation(line: 290, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 289, column: 30)
!4613 = !DILocation(line: 291, column: 13, scope: !4612)
!4614 = !DILocation(line: 291, column: 6, scope: !4612)
!4615 = !DILocation(line: 292, column: 13, scope: !4612)
!4616 = !DILocation(line: 292, column: 6, scope: !4612)
!4617 = !DILocation(line: 293, column: 5, scope: !4612)
!4618 = !DILocation(line: 289, column: 26, scope: !4608)
!4619 = !DILocation(line: 289, column: 5, scope: !4608)
!4620 = distinct !{!4620, !4610, !4621}
!4621 = !DILocation(line: 293, column: 5, scope: !4605)
!4622 = !DILocation(line: 294, column: 5, scope: !4601)
!4623 = !DILocation(line: 300, column: 12, scope: !4624)
!4624 = distinct !DILexicalBlock(scope: !4601, file: !3, line: 300, column: 5)
!4625 = !DILocation(line: 300, column: 10, scope: !4624)
!4626 = !DILocation(line: 300, column: 17, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !3, line: 300, column: 5)
!4628 = !DILocation(line: 300, column: 19, scope: !4627)
!4629 = !DILocation(line: 300, column: 5, scope: !4624)
!4630 = !DILocation(line: 301, column: 25, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4627, file: !3, line: 300, column: 30)
!4632 = !DILocation(line: 301, column: 13, scope: !4631)
!4633 = !DILocation(line: 301, column: 6, scope: !4631)
!4634 = !DILocation(line: 302, column: 25, scope: !4631)
!4635 = !DILocation(line: 302, column: 13, scope: !4631)
!4636 = !DILocation(line: 302, column: 6, scope: !4631)
!4637 = !DILocation(line: 303, column: 25, scope: !4631)
!4638 = !DILocation(line: 303, column: 13, scope: !4631)
!4639 = !DILocation(line: 303, column: 6, scope: !4631)
!4640 = !DILocation(line: 304, column: 25, scope: !4631)
!4641 = !DILocation(line: 304, column: 13, scope: !4631)
!4642 = !DILocation(line: 304, column: 6, scope: !4631)
!4643 = !DILocation(line: 305, column: 5, scope: !4631)
!4644 = !DILocation(line: 300, column: 26, scope: !4627)
!4645 = !DILocation(line: 300, column: 5, scope: !4627)
!4646 = distinct !{!4646, !4629, !4647}
!4647 = !DILocation(line: 305, column: 5, scope: !4624)
!4648 = !DILocation(line: 307, column: 3, scope: !4588)
!4649 = !DILocation(line: 313, column: 19, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4582, file: !3, line: 307, column: 10)
!4651 = !DILocation(line: 314, column: 18, scope: !4650)
!4652 = !DILocation(line: 315, column: 17, scope: !4650)
!4653 = !DILocation(line: 316, column: 4, scope: !4650)
!4654 = !DILocation(line: 318, column: 26, scope: !4650)
!4655 = !DILocalVariable(name: "start", scope: !4656, file: !3, line: 322, type: !112)
!4656 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 322, column: 18)
!4657 = !DILocation(line: 322, column: 18, scope: !4656)
!4658 = !DILocation(line: 322, column: 18, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 322, column: 18)
!4660 = !DILocation(line: 322, column: 16, scope: !4350)
!4661 = !DILocation(line: 323, column: 17, scope: !4350)
!4662 = !DILocation(line: 323, column: 33, scope: !4350)
!4663 = !DILocation(line: 323, column: 31, scope: !4350)
!4664 = !DILocation(line: 323, column: 15, scope: !4350)
!4665 = !DILocation(line: 329, column: 23, scope: !4350)
!4666 = !DILocation(line: 329, column: 6, scope: !4350)
!4667 = !DILocation(line: 329, column: 4, scope: !4350)
!4668 = !DILocation(line: 330, column: 11, scope: !4350)
!4669 = !DILocation(line: 330, column: 9, scope: !4350)
!4670 = !DILocation(line: 331, column: 11, scope: !4350)
!4671 = !DILocation(line: 331, column: 9, scope: !4350)
!4672 = !DILocation(line: 332, column: 2, scope: !4350)
!4673 = !DILocation(line: 333, column: 2, scope: !4350)
!4674 = !DILocation(line: 334, column: 6, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 334, column: 6)
!4676 = !DILocation(line: 334, column: 19, scope: !4675)
!4677 = !DILocation(line: 334, column: 29, scope: !4675)
!4678 = !DILocation(line: 334, column: 32, scope: !4675)
!4679 = !DILocation(line: 334, column: 49, scope: !4675)
!4680 = !DILocation(line: 334, column: 6, scope: !4350)
!4681 = !DILocation(line: 335, column: 3, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4675, file: !3, line: 334, column: 60)
!4683 = !DILocation(line: 336, column: 3, scope: !4682)
!4684 = !DILocation(line: 337, column: 3, scope: !4682)
!4685 = !DILocation(line: 339, column: 2, scope: !4350)
!4686 = !DILocation(line: 340, column: 2, scope: !4350)
!4687 = !DILocation(line: 341, column: 6, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 341, column: 6)
!4689 = !DILocation(line: 341, column: 19, scope: !4688)
!4690 = !DILocation(line: 341, column: 29, scope: !4688)
!4691 = !DILocation(line: 341, column: 32, scope: !4688)
!4692 = !DILocation(line: 341, column: 49, scope: !4688)
!4693 = !DILocation(line: 341, column: 6, scope: !4350)
!4694 = !DILocation(line: 342, column: 3, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 341, column: 60)
!4696 = !DILocation(line: 343, column: 3, scope: !4695)
!4697 = !DILocation(line: 344, column: 3, scope: !4695)
!4698 = !DILocation(line: 346, column: 2, scope: !4350)
!4699 = !DILocation(line: 347, column: 2, scope: !4350)
!4700 = !DILocation(line: 349, column: 6, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4350, file: !3, line: 349, column: 6)
!4702 = !DILocation(line: 349, column: 21, scope: !4701)
!4703 = !DILocation(line: 350, column: 6, scope: !4701)
!4704 = !DILocation(line: 350, column: 9, scope: !4701)
!4705 = !DILocation(line: 350, column: 24, scope: !4701)
!4706 = !DILocation(line: 351, column: 6, scope: !4701)
!4707 = !DILocation(line: 351, column: 9, scope: !4701)
!4708 = !DILocation(line: 351, column: 24, scope: !4701)
!4709 = !DILocation(line: 349, column: 6, scope: !4350)
!4710 = !DILocation(line: 352, column: 28, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 351, column: 44)
!4712 = !DILocation(line: 352, column: 26, scope: !4711)
!4713 = !DILocation(line: 353, column: 41, scope: !4711)
!4714 = !DILocation(line: 353, column: 29, scope: !4711)
!4715 = !DILocation(line: 353, column: 27, scope: !4711)
!4716 = !DILocation(line: 354, column: 39, scope: !4711)
!4717 = !DILocation(line: 354, column: 27, scope: !4711)
!4718 = !DILocation(line: 354, column: 25, scope: !4711)
!4719 = !DILocation(line: 357, column: 7, scope: !4711)
!4720 = !DILocation(line: 357, column: 31, scope: !4711)
!4721 = !DILocation(line: 357, column: 29, scope: !4711)
!4722 = !DILocation(line: 356, column: 18, scope: !4711)
!4723 = !DILocation(line: 358, column: 2, scope: !4711)
!4724 = !DILocation(line: 360, column: 28, scope: !4350)
!4725 = !DILocation(line: 360, column: 16, scope: !4350)
!4726 = !DILocation(line: 360, column: 44, scope: !4350)
!4727 = !DILocation(line: 360, column: 14, scope: !4350)
!4728 = !DILocation(line: 361, column: 16, scope: !4350)
!4729 = !DILocation(line: 361, column: 14, scope: !4350)
!4730 = !DILocation(line: 363, column: 16, scope: !4350)
!4731 = !DILocation(line: 365, column: 9, scope: !4350)
!4732 = !DILocation(line: 365, column: 2, scope: !4350)
!4733 = !DILocation(line: 366, column: 1, scope: !4350)
!4734 = distinct !DISubprogram(name: "vgacon_init", scope: !3, file: !3, line: 368, type: !160, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4735 = !DILocalVariable(name: "c", arg: 1, scope: !4734, file: !3, line: 368, type: !162)
!4736 = !DILocation(line: 368, column: 41, scope: !4734)
!4737 = !DILocalVariable(name: "init", arg: 2, scope: !4734, file: !3, line: 368, type: !141)
!4738 = !DILocation(line: 368, column: 48, scope: !4734)
!4739 = !DILocalVariable(name: "p", scope: !4734, file: !3, line: 370, type: !4242)
!4740 = !DILocation(line: 370, column: 22, scope: !4734)
!4741 = !DILocation(line: 377, column: 23, scope: !4734)
!4742 = !DILocation(line: 377, column: 2, scope: !4734)
!4743 = !DILocation(line: 377, column: 5, scope: !4734)
!4744 = !DILocation(line: 377, column: 21, scope: !4734)
!4745 = !DILocation(line: 380, column: 6, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 380, column: 6)
!4747 = !DILocation(line: 380, column: 6, scope: !4734)
!4748 = !DILocation(line: 381, column: 16, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 380, column: 12)
!4750 = !DILocation(line: 381, column: 3, scope: !4749)
!4751 = !DILocation(line: 381, column: 6, scope: !4749)
!4752 = !DILocation(line: 381, column: 14, scope: !4749)
!4753 = !DILocation(line: 382, column: 16, scope: !4749)
!4754 = !DILocation(line: 382, column: 3, scope: !4749)
!4755 = !DILocation(line: 382, column: 6, scope: !4749)
!4756 = !DILocation(line: 382, column: 14, scope: !4749)
!4757 = !DILocation(line: 383, column: 2, scope: !4749)
!4758 = !DILocation(line: 384, column: 13, scope: !4746)
!4759 = !DILocation(line: 384, column: 16, scope: !4746)
!4760 = !DILocation(line: 384, column: 39, scope: !4746)
!4761 = !DILocation(line: 384, column: 3, scope: !4746)
!4762 = !DILocation(line: 386, column: 21, scope: !4734)
!4763 = !DILocation(line: 386, column: 2, scope: !4734)
!4764 = !DILocation(line: 386, column: 5, scope: !4734)
!4765 = !DILocation(line: 386, column: 19, scope: !4734)
!4766 = !DILocation(line: 387, column: 22, scope: !4734)
!4767 = !DILocation(line: 387, column: 2, scope: !4734)
!4768 = !DILocation(line: 387, column: 5, scope: !4734)
!4769 = !DILocation(line: 387, column: 13, scope: !4734)
!4770 = !DILocation(line: 387, column: 20, scope: !4734)
!4771 = !DILocation(line: 388, column: 2, scope: !4734)
!4772 = !DILocation(line: 388, column: 5, scope: !4734)
!4773 = !DILocation(line: 388, column: 24, scope: !4734)
!4774 = !DILocation(line: 389, column: 6, scope: !4775)
!4775 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 389, column: 6)
!4776 = !DILocation(line: 389, column: 6, scope: !4734)
!4777 = !DILocation(line: 390, column: 3, scope: !4775)
!4778 = !DILocation(line: 390, column: 6, scope: !4775)
!4779 = !DILocation(line: 390, column: 22, scope: !4775)
!4780 = !DILocation(line: 391, column: 7, scope: !4734)
!4781 = !DILocation(line: 391, column: 10, scope: !4734)
!4782 = !DILocation(line: 391, column: 6, scope: !4734)
!4783 = !DILocation(line: 391, column: 4, scope: !4734)
!4784 = !DILocation(line: 392, column: 6, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 392, column: 6)
!4786 = !DILocation(line: 392, column: 9, scope: !4785)
!4787 = !DILocation(line: 392, column: 28, scope: !4785)
!4788 = !DILocation(line: 392, column: 6, scope: !4734)
!4789 = !DILocation(line: 393, column: 19, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 392, column: 52)
!4791 = !DILocation(line: 393, column: 3, scope: !4790)
!4792 = !DILocation(line: 394, column: 3, scope: !4790)
!4793 = !DILocation(line: 394, column: 6, scope: !4790)
!4794 = !DILocation(line: 394, column: 25, scope: !4790)
!4795 = !DILocation(line: 395, column: 18, scope: !4790)
!4796 = !DILocation(line: 396, column: 2, scope: !4790)
!4797 = !DILocation(line: 397, column: 7, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 397, column: 6)
!4799 = !DILocation(line: 397, column: 26, scope: !4798)
!4800 = !DILocation(line: 397, column: 29, scope: !4798)
!4801 = !DILocation(line: 397, column: 6, scope: !4734)
!4802 = !DILocation(line: 398, column: 26, scope: !4798)
!4803 = !DILocation(line: 398, column: 3, scope: !4798)
!4804 = !DILocation(line: 401, column: 6, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 401, column: 6)
!4806 = !DILocation(line: 401, column: 28, scope: !4805)
!4807 = !DILocation(line: 401, column: 6, scope: !4734)
!4808 = !DILocation(line: 403, column: 18, scope: !4805)
!4809 = !DILocation(line: 403, column: 6, scope: !4805)
!4810 = !DILocation(line: 403, column: 24, scope: !4805)
!4811 = !DILocation(line: 403, column: 4, scope: !4805)
!4812 = !DILocation(line: 402, column: 25, scope: !4805)
!4813 = !DILocation(line: 402, column: 3, scope: !4805)
!4814 = !DILocation(line: 404, column: 1, scope: !4734)
!4815 = distinct !DISubprogram(name: "vgacon_deinit", scope: !3, file: !3, line: 406, type: !4251, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4816 = !DILocalVariable(name: "c", arg: 1, scope: !4815, file: !3, line: 406, type: !162)
!4817 = !DILocation(line: 406, column: 43, scope: !4815)
!4818 = !DILocation(line: 409, column: 21, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 409, column: 6)
!4820 = !DILocation(line: 409, column: 6, scope: !4819)
!4821 = !DILocation(line: 409, column: 6, scope: !4815)
!4822 = !DILocation(line: 410, column: 26, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 409, column: 25)
!4824 = !DILocation(line: 410, column: 3, scope: !4823)
!4825 = !DILocation(line: 410, column: 6, scope: !4823)
!4826 = !DILocation(line: 410, column: 24, scope: !4823)
!4827 = !DILocation(line: 411, column: 19, scope: !4823)
!4828 = !DILocation(line: 411, column: 3, scope: !4823)
!4829 = !DILocation(line: 412, column: 2, scope: !4823)
!4830 = !DILocation(line: 414, column: 7, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 414, column: 6)
!4832 = !DILocation(line: 414, column: 6, scope: !4815)
!4833 = !DILocation(line: 415, column: 19, scope: !4831)
!4834 = !DILocation(line: 415, column: 3, scope: !4831)
!4835 = !DILocation(line: 416, column: 27, scope: !4815)
!4836 = !DILocation(line: 416, column: 30, scope: !4815)
!4837 = !DILocation(line: 416, column: 2, scope: !4815)
!4838 = !DILocation(line: 416, column: 5, scope: !4815)
!4839 = !DILocation(line: 416, column: 24, scope: !4815)
!4840 = !DILocation(line: 417, column: 25, scope: !4815)
!4841 = !DILocation(line: 417, column: 2, scope: !4815)
!4842 = !DILocation(line: 418, column: 1, scope: !4815)
!4843 = distinct !DISubprogram(name: "vgacon_clear", scope: !3, file: !3, line: 1208, type: !4255, scopeLine: 1209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4844 = !DILocalVariable(name: "vc", arg: 1, scope: !4843, file: !3, line: 1208, type: !162)
!4845 = !DILocation(line: 1208, column: 42, scope: !4843)
!4846 = !DILocalVariable(name: "sy", arg: 2, scope: !4843, file: !3, line: 1208, type: !141)
!4847 = !DILocation(line: 1208, column: 50, scope: !4843)
!4848 = !DILocalVariable(name: "sx", arg: 3, scope: !4843, file: !3, line: 1208, type: !141)
!4849 = !DILocation(line: 1208, column: 58, scope: !4843)
!4850 = !DILocalVariable(name: "height", arg: 4, scope: !4843, file: !3, line: 1208, type: !141)
!4851 = !DILocation(line: 1208, column: 66, scope: !4843)
!4852 = !DILocalVariable(name: "width", arg: 5, scope: !4843, file: !3, line: 1209, type: !141)
!4853 = !DILocation(line: 1209, column: 9, scope: !4843)
!4854 = !DILocation(line: 1209, column: 18, scope: !4843)
!4855 = distinct !DISubprogram(name: "vgacon_putc", scope: !3, file: !3, line: 1210, type: !4259, scopeLine: 1210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4856 = !DILocalVariable(name: "vc", arg: 1, scope: !4855, file: !3, line: 1210, type: !162)
!4857 = !DILocation(line: 1210, column: 41, scope: !4855)
!4858 = !DILocalVariable(name: "c", arg: 2, scope: !4855, file: !3, line: 1210, type: !141)
!4859 = !DILocation(line: 1210, column: 49, scope: !4855)
!4860 = !DILocalVariable(name: "ypos", arg: 3, scope: !4855, file: !3, line: 1210, type: !141)
!4861 = !DILocation(line: 1210, column: 56, scope: !4855)
!4862 = !DILocalVariable(name: "xpos", arg: 4, scope: !4855, file: !3, line: 1210, type: !141)
!4863 = !DILocation(line: 1210, column: 66, scope: !4855)
!4864 = !DILocation(line: 1210, column: 74, scope: !4855)
!4865 = distinct !DISubprogram(name: "vgacon_putcs", scope: !3, file: !3, line: 1211, type: !4263, scopeLine: 1212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4866 = !DILocalVariable(name: "vc", arg: 1, scope: !4865, file: !3, line: 1211, type: !162)
!4867 = !DILocation(line: 1211, column: 42, scope: !4865)
!4868 = !DILocalVariable(name: "s", arg: 2, scope: !4865, file: !3, line: 1211, type: !4265)
!4869 = !DILocation(line: 1211, column: 68, scope: !4865)
!4870 = !DILocalVariable(name: "count", arg: 3, scope: !4865, file: !3, line: 1212, type: !141)
!4871 = !DILocation(line: 1212, column: 9, scope: !4865)
!4872 = !DILocalVariable(name: "ypos", arg: 4, scope: !4865, file: !3, line: 1212, type: !141)
!4873 = !DILocation(line: 1212, column: 20, scope: !4865)
!4874 = !DILocalVariable(name: "xpos", arg: 5, scope: !4865, file: !3, line: 1212, type: !141)
!4875 = !DILocation(line: 1212, column: 30, scope: !4865)
!4876 = !DILocation(line: 1212, column: 38, scope: !4865)
!4877 = distinct !DISubprogram(name: "vgacon_cursor", scope: !3, file: !3, line: 500, type: !160, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!4878 = !DILocalVariable(name: "c", arg: 1, scope: !4877, file: !3, line: 500, type: !162)
!4879 = !DILocation(line: 500, column: 43, scope: !4877)
!4880 = !DILocalVariable(name: "mode", arg: 2, scope: !4877, file: !3, line: 500, type: !141)
!4881 = !DILocation(line: 500, column: 50, scope: !4877)
!4882 = !DILocation(line: 502, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 502, column: 6)
!4884 = !DILocation(line: 502, column: 9, scope: !4883)
!4885 = !DILocation(line: 502, column: 17, scope: !4883)
!4886 = !DILocation(line: 502, column: 6, scope: !4877)
!4887 = !DILocation(line: 503, column: 3, scope: !4883)
!4888 = !DILocation(line: 505, column: 24, scope: !4877)
!4889 = !DILocation(line: 505, column: 2, scope: !4877)
!4890 = !DILocation(line: 507, column: 10, scope: !4877)
!4891 = !DILocation(line: 507, column: 2, scope: !4877)
!4892 = !DILocation(line: 509, column: 18, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4877, file: !3, line: 507, column: 16)
!4894 = !DILocation(line: 509, column: 21, scope: !4893)
!4895 = !DILocation(line: 509, column: 30, scope: !4893)
!4896 = !DILocation(line: 509, column: 28, scope: !4893)
!4897 = !DILocation(line: 509, column: 45, scope: !4893)
!4898 = !DILocation(line: 509, column: 17, scope: !4893)
!4899 = !DILocation(line: 509, column: 3, scope: !4893)
!4900 = !DILocation(line: 510, column: 14, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 510, column: 14)
!4902 = !DILocation(line: 510, column: 29, scope: !4901)
!4903 = !DILocation(line: 510, column: 14, scope: !4893)
!4904 = !DILocation(line: 511, column: 27, scope: !4901)
!4905 = !DILocation(line: 511, column: 30, scope: !4901)
!4906 = !DILocation(line: 511, column: 36, scope: !4901)
!4907 = !DILocation(line: 511, column: 4, scope: !4901)
!4908 = !DILocation(line: 513, column: 27, scope: !4901)
!4909 = !DILocation(line: 513, column: 30, scope: !4901)
!4910 = !DILocation(line: 513, column: 36, scope: !4901)
!4911 = !DILocation(line: 513, column: 4, scope: !4901)
!4912 = !DILocation(line: 514, column: 3, scope: !4893)
!4913 = !DILocation(line: 518, column: 18, scope: !4893)
!4914 = !DILocation(line: 518, column: 21, scope: !4893)
!4915 = !DILocation(line: 518, column: 30, scope: !4893)
!4916 = !DILocation(line: 518, column: 28, scope: !4893)
!4917 = !DILocation(line: 518, column: 45, scope: !4893)
!4918 = !DILocation(line: 518, column: 17, scope: !4893)
!4919 = !DILocation(line: 518, column: 3, scope: !4893)
!4920 = !DILocation(line: 519, column: 11, scope: !4893)
!4921 = !DILocation(line: 519, column: 3, scope: !4893)
!4922 = !DILocation(line: 521, column: 27, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 519, column: 40)
!4924 = !DILocation(line: 521, column: 30, scope: !4923)
!4925 = !DILocation(line: 521, column: 36, scope: !4923)
!4926 = !DILocation(line: 522, column: 13, scope: !4923)
!4927 = !DILocation(line: 522, column: 16, scope: !4923)
!4928 = !DILocation(line: 522, column: 24, scope: !4923)
!4929 = !DILocation(line: 523, column: 14, scope: !4923)
!4930 = !DILocation(line: 523, column: 17, scope: !4923)
!4931 = !DILocation(line: 523, column: 25, scope: !4923)
!4932 = !DILocation(line: 523, column: 32, scope: !4923)
!4933 = !DILocation(line: 522, column: 31, scope: !4923)
!4934 = !DILocation(line: 525, column: 13, scope: !4923)
!4935 = !DILocation(line: 525, column: 16, scope: !4923)
!4936 = !DILocation(line: 525, column: 24, scope: !4923)
!4937 = !DILocation(line: 526, column: 14, scope: !4923)
!4938 = !DILocation(line: 526, column: 17, scope: !4923)
!4939 = !DILocation(line: 526, column: 25, scope: !4923)
!4940 = !DILocation(line: 526, column: 32, scope: !4923)
!4941 = !DILocation(line: 525, column: 31, scope: !4923)
!4942 = !DILocation(line: 521, column: 4, scope: !4923)
!4943 = !DILocation(line: 528, column: 4, scope: !4923)
!4944 = !DILocation(line: 530, column: 27, scope: !4923)
!4945 = !DILocation(line: 530, column: 30, scope: !4923)
!4946 = !DILocation(line: 530, column: 36, scope: !4923)
!4947 = !DILocation(line: 531, column: 13, scope: !4923)
!4948 = !DILocation(line: 531, column: 16, scope: !4923)
!4949 = !DILocation(line: 531, column: 24, scope: !4923)
!4950 = !DILocation(line: 531, column: 31, scope: !4923)
!4951 = !DILocation(line: 532, column: 13, scope: !4923)
!4952 = !DILocation(line: 532, column: 16, scope: !4923)
!4953 = !DILocation(line: 532, column: 24, scope: !4923)
!4954 = !DILocation(line: 533, column: 14, scope: !4923)
!4955 = !DILocation(line: 533, column: 17, scope: !4923)
!4956 = !DILocation(line: 533, column: 25, scope: !4923)
!4957 = !DILocation(line: 533, column: 32, scope: !4923)
!4958 = !DILocation(line: 532, column: 31, scope: !4923)
!4959 = !DILocation(line: 530, column: 4, scope: !4923)
!4960 = !DILocation(line: 535, column: 4, scope: !4923)
!4961 = !DILocation(line: 537, column: 27, scope: !4923)
!4962 = !DILocation(line: 537, column: 30, scope: !4923)
!4963 = !DILocation(line: 537, column: 36, scope: !4923)
!4964 = !DILocation(line: 538, column: 14, scope: !4923)
!4965 = !DILocation(line: 538, column: 17, scope: !4923)
!4966 = !DILocation(line: 538, column: 25, scope: !4923)
!4967 = !DILocation(line: 538, column: 32, scope: !4923)
!4968 = !DILocation(line: 538, column: 37, scope: !4923)
!4969 = !DILocation(line: 539, column: 13, scope: !4923)
!4970 = !DILocation(line: 539, column: 16, scope: !4923)
!4971 = !DILocation(line: 539, column: 24, scope: !4923)
!4972 = !DILocation(line: 540, column: 14, scope: !4923)
!4973 = !DILocation(line: 540, column: 17, scope: !4923)
!4974 = !DILocation(line: 540, column: 25, scope: !4923)
!4975 = !DILocation(line: 540, column: 32, scope: !4923)
!4976 = !DILocation(line: 539, column: 31, scope: !4923)
!4977 = !DILocation(line: 537, column: 4, scope: !4923)
!4978 = !DILocation(line: 542, column: 4, scope: !4923)
!4979 = !DILocation(line: 544, column: 27, scope: !4923)
!4980 = !DILocation(line: 544, column: 30, scope: !4923)
!4981 = !DILocation(line: 544, column: 36, scope: !4923)
!4982 = !DILocation(line: 545, column: 13, scope: !4923)
!4983 = !DILocation(line: 545, column: 16, scope: !4923)
!4984 = !DILocation(line: 545, column: 24, scope: !4923)
!4985 = !DILocation(line: 545, column: 31, scope: !4923)
!4986 = !DILocation(line: 546, column: 13, scope: !4923)
!4987 = !DILocation(line: 546, column: 16, scope: !4923)
!4988 = !DILocation(line: 546, column: 24, scope: !4923)
!4989 = !DILocation(line: 547, column: 14, scope: !4923)
!4990 = !DILocation(line: 547, column: 17, scope: !4923)
!4991 = !DILocation(line: 547, column: 25, scope: !4923)
!4992 = !DILocation(line: 547, column: 32, scope: !4923)
!4993 = !DILocation(line: 546, column: 31, scope: !4923)
!4994 = !DILocation(line: 544, column: 4, scope: !4923)
!4995 = !DILocation(line: 549, column: 4, scope: !4923)
!4996 = !DILocation(line: 551, column: 8, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 551, column: 8)
!4998 = !DILocation(line: 551, column: 23, scope: !4997)
!4999 = !DILocation(line: 551, column: 8, scope: !4923)
!5000 = !DILocation(line: 552, column: 28, scope: !4997)
!5001 = !DILocation(line: 552, column: 31, scope: !4997)
!5002 = !DILocation(line: 552, column: 37, scope: !4997)
!5003 = !DILocation(line: 552, column: 5, scope: !4997)
!5004 = !DILocation(line: 554, column: 28, scope: !4997)
!5005 = !DILocation(line: 554, column: 31, scope: !4997)
!5006 = !DILocation(line: 554, column: 37, scope: !4997)
!5007 = !DILocation(line: 554, column: 5, scope: !4997)
!5008 = !DILocation(line: 555, column: 4, scope: !4923)
!5009 = !DILocation(line: 557, column: 27, scope: !4923)
!5010 = !DILocation(line: 557, column: 30, scope: !4923)
!5011 = !DILocation(line: 557, column: 36, scope: !4923)
!5012 = !DILocation(line: 558, column: 13, scope: !4923)
!5013 = !DILocation(line: 558, column: 16, scope: !4923)
!5014 = !DILocation(line: 558, column: 24, scope: !4923)
!5015 = !DILocation(line: 557, column: 4, scope: !4923)
!5016 = !DILocation(line: 559, column: 4, scope: !4923)
!5017 = !DILocation(line: 561, column: 3, scope: !4893)
!5018 = !DILocation(line: 563, column: 1, scope: !4877)
!5019 = distinct !DISubprogram(name: "vgacon_scroll", scope: !3, file: !3, line: 1156, type: !4270, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5020 = !DILocalVariable(name: "c", arg: 1, scope: !5019, file: !3, line: 1156, type: !162)
!5021 = !DILocation(line: 1156, column: 43, scope: !5019)
!5022 = !DILocalVariable(name: "t", arg: 2, scope: !5019, file: !3, line: 1156, type: !7)
!5023 = !DILocation(line: 1156, column: 59, scope: !5019)
!5024 = !DILocalVariable(name: "b", arg: 3, scope: !5019, file: !3, line: 1156, type: !7)
!5025 = !DILocation(line: 1156, column: 75, scope: !5019)
!5026 = !DILocalVariable(name: "dir", arg: 4, scope: !5019, file: !3, line: 1157, type: !100)
!5027 = !DILocation(line: 1157, column: 19, scope: !5019)
!5028 = !DILocalVariable(name: "lines", arg: 5, scope: !5019, file: !3, line: 1157, type: !7)
!5029 = !DILocation(line: 1157, column: 37, scope: !5019)
!5030 = !DILocalVariable(name: "oldo", scope: !5019, file: !3, line: 1159, type: !112)
!5031 = !DILocation(line: 1159, column: 16, scope: !5019)
!5032 = !DILocalVariable(name: "delta", scope: !5019, file: !3, line: 1160, type: !7)
!5033 = !DILocation(line: 1160, column: 15, scope: !5019)
!5034 = !DILocation(line: 1162, column: 6, scope: !5035)
!5035 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 1162, column: 6)
!5036 = !DILocation(line: 1162, column: 8, scope: !5035)
!5037 = !DILocation(line: 1162, column: 11, scope: !5035)
!5038 = !DILocation(line: 1162, column: 16, scope: !5035)
!5039 = !DILocation(line: 1162, column: 19, scope: !5035)
!5040 = !DILocation(line: 1162, column: 13, scope: !5035)
!5041 = !DILocation(line: 1162, column: 27, scope: !5035)
!5042 = !DILocation(line: 1162, column: 30, scope: !5035)
!5043 = !DILocation(line: 1162, column: 41, scope: !5035)
!5044 = !DILocation(line: 1162, column: 44, scope: !5035)
!5045 = !DILocation(line: 1162, column: 47, scope: !5035)
!5046 = !DILocation(line: 1162, column: 55, scope: !5035)
!5047 = !DILocation(line: 1162, column: 6, scope: !5019)
!5048 = !DILocation(line: 1163, column: 3, scope: !5035)
!5049 = !DILocation(line: 1165, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 1165, column: 6)
!5051 = !DILocation(line: 1165, column: 30, scope: !5050)
!5052 = !DILocation(line: 1165, column: 33, scope: !5050)
!5053 = !DILocation(line: 1165, column: 42, scope: !5050)
!5054 = !DILocation(line: 1165, column: 45, scope: !5050)
!5055 = !DILocation(line: 1165, column: 53, scope: !5050)
!5056 = !DILocation(line: 1165, column: 39, scope: !5050)
!5057 = !DILocation(line: 1165, column: 6, scope: !5019)
!5058 = !DILocation(line: 1166, column: 3, scope: !5050)
!5059 = !DILocation(line: 1168, column: 24, scope: !5019)
!5060 = !DILocation(line: 1168, column: 2, scope: !5019)
!5061 = !DILocation(line: 1169, column: 9, scope: !5019)
!5062 = !DILocation(line: 1169, column: 12, scope: !5019)
!5063 = !DILocation(line: 1169, column: 7, scope: !5019)
!5064 = !DILocation(line: 1170, column: 10, scope: !5019)
!5065 = !DILocation(line: 1170, column: 18, scope: !5019)
!5066 = !DILocation(line: 1170, column: 21, scope: !5019)
!5067 = !DILocation(line: 1170, column: 16, scope: !5019)
!5068 = !DILocation(line: 1170, column: 8, scope: !5019)
!5069 = !DILocation(line: 1171, column: 6, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 1171, column: 6)
!5071 = !DILocation(line: 1171, column: 10, scope: !5070)
!5072 = !DILocation(line: 1171, column: 6, scope: !5019)
!5073 = !DILocation(line: 1172, column: 7, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 1172, column: 7)
!5075 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 1171, column: 20)
!5076 = !DILocation(line: 1172, column: 10, scope: !5074)
!5077 = !DILocation(line: 1172, column: 23, scope: !5074)
!5078 = !DILocation(line: 1172, column: 21, scope: !5074)
!5079 = !DILocation(line: 1172, column: 32, scope: !5074)
!5080 = !DILocation(line: 1172, column: 29, scope: !5074)
!5081 = !DILocation(line: 1172, column: 7, scope: !5075)
!5082 = !DILocation(line: 1173, column: 24, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5074, file: !3, line: 1172, column: 46)
!5084 = !DILocation(line: 1173, column: 16, scope: !5083)
!5085 = !DILocation(line: 1174, column: 18, scope: !5083)
!5086 = !DILocation(line: 1174, column: 25, scope: !5083)
!5087 = !DILocation(line: 1174, column: 23, scope: !5083)
!5088 = !DILocation(line: 1174, column: 9, scope: !5083)
!5089 = !DILocation(line: 1175, column: 9, scope: !5083)
!5090 = !DILocation(line: 1175, column: 12, scope: !5083)
!5091 = !DILocation(line: 1175, column: 32, scope: !5083)
!5092 = !DILocation(line: 1175, column: 30, scope: !5083)
!5093 = !DILocation(line: 1173, column: 4, scope: !5083)
!5094 = !DILocation(line: 1176, column: 19, scope: !5083)
!5095 = !DILocation(line: 1176, column: 4, scope: !5083)
!5096 = !DILocation(line: 1176, column: 7, scope: !5083)
!5097 = !DILocation(line: 1176, column: 17, scope: !5083)
!5098 = !DILocation(line: 1177, column: 22, scope: !5083)
!5099 = !DILocation(line: 1177, column: 29, scope: !5083)
!5100 = !DILocation(line: 1177, column: 27, scope: !5083)
!5101 = !DILocation(line: 1177, column: 20, scope: !5083)
!5102 = !DILocation(line: 1178, column: 3, scope: !5083)
!5103 = !DILocation(line: 1179, column: 20, scope: !5074)
!5104 = !DILocation(line: 1179, column: 4, scope: !5074)
!5105 = !DILocation(line: 1179, column: 7, scope: !5074)
!5106 = !DILocation(line: 1179, column: 17, scope: !5074)
!5107 = !DILocation(line: 1180, column: 24, scope: !5075)
!5108 = !DILocation(line: 1180, column: 27, scope: !5075)
!5109 = !DILocation(line: 1180, column: 39, scope: !5075)
!5110 = !DILocation(line: 1180, column: 42, scope: !5075)
!5111 = !DILocation(line: 1180, column: 37, scope: !5075)
!5112 = !DILocation(line: 1181, column: 10, scope: !5075)
!5113 = !DILocation(line: 1180, column: 60, scope: !5075)
!5114 = !DILocation(line: 1180, column: 15, scope: !5075)
!5115 = !DILocation(line: 1181, column: 18, scope: !5075)
!5116 = !DILocation(line: 1181, column: 21, scope: !5075)
!5117 = !DILocation(line: 1182, column: 8, scope: !5075)
!5118 = !DILocation(line: 1180, column: 3, scope: !5075)
!5119 = !DILocation(line: 1183, column: 2, scope: !5075)
!5120 = !DILocation(line: 1184, column: 7, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5122, file: !3, line: 1184, column: 7)
!5122 = distinct !DILexicalBlock(scope: !5070, file: !3, line: 1183, column: 9)
!5123 = !DILocation(line: 1184, column: 14, scope: !5121)
!5124 = !DILocation(line: 1184, column: 12, scope: !5121)
!5125 = !DILocation(line: 1184, column: 22, scope: !5121)
!5126 = !DILocation(line: 1184, column: 20, scope: !5121)
!5127 = !DILocation(line: 1184, column: 7, scope: !5122)
!5128 = !DILocation(line: 1185, column: 26, scope: !5129)
!5129 = distinct !DILexicalBlock(scope: !5121, file: !3, line: 1184, column: 37)
!5130 = !DILocation(line: 1186, column: 12, scope: !5129)
!5131 = !DILocation(line: 1186, column: 15, scope: !5129)
!5132 = !DILocation(line: 1185, column: 39, scope: !5129)
!5133 = !DILocation(line: 1187, column: 12, scope: !5129)
!5134 = !DILocation(line: 1186, column: 33, scope: !5129)
!5135 = !DILocation(line: 1185, column: 17, scope: !5129)
!5136 = !DILocation(line: 1187, column: 28, scope: !5129)
!5137 = !DILocation(line: 1187, column: 20, scope: !5129)
!5138 = !DILocation(line: 1188, column: 10, scope: !5129)
!5139 = !DILocation(line: 1188, column: 13, scope: !5129)
!5140 = !DILocation(line: 1188, column: 33, scope: !5129)
!5141 = !DILocation(line: 1188, column: 31, scope: !5129)
!5142 = !DILocation(line: 1185, column: 4, scope: !5129)
!5143 = !DILocation(line: 1189, column: 19, scope: !5129)
!5144 = !DILocation(line: 1189, column: 34, scope: !5129)
!5145 = !DILocation(line: 1189, column: 37, scope: !5129)
!5146 = !DILocation(line: 1189, column: 32, scope: !5129)
!5147 = !DILocation(line: 1189, column: 4, scope: !5129)
!5148 = !DILocation(line: 1189, column: 7, scope: !5129)
!5149 = !DILocation(line: 1189, column: 17, scope: !5129)
!5150 = !DILocation(line: 1190, column: 20, scope: !5129)
!5151 = !DILocation(line: 1191, column: 3, scope: !5129)
!5152 = !DILocation(line: 1192, column: 20, scope: !5121)
!5153 = !DILocation(line: 1192, column: 4, scope: !5121)
!5154 = !DILocation(line: 1192, column: 7, scope: !5121)
!5155 = !DILocation(line: 1192, column: 17, scope: !5121)
!5156 = !DILocation(line: 1193, column: 19, scope: !5122)
!5157 = !DILocation(line: 1193, column: 22, scope: !5122)
!5158 = !DILocation(line: 1193, column: 34, scope: !5122)
!5159 = !DILocation(line: 1193, column: 37, scope: !5122)
!5160 = !DILocation(line: 1193, column: 32, scope: !5122)
!5161 = !DILocation(line: 1193, column: 3, scope: !5122)
!5162 = !DILocation(line: 1193, column: 6, scope: !5122)
!5163 = !DILocation(line: 1193, column: 17, scope: !5122)
!5164 = !DILocation(line: 1194, column: 24, scope: !5122)
!5165 = !DILocation(line: 1194, column: 27, scope: !5122)
!5166 = !DILocation(line: 1194, column: 15, scope: !5122)
!5167 = !DILocation(line: 1194, column: 39, scope: !5122)
!5168 = !DILocation(line: 1194, column: 42, scope: !5122)
!5169 = !DILocation(line: 1195, column: 8, scope: !5122)
!5170 = !DILocation(line: 1194, column: 3, scope: !5122)
!5171 = !DILocation(line: 1197, column: 18, scope: !5019)
!5172 = !DILocation(line: 1197, column: 21, scope: !5019)
!5173 = !DILocation(line: 1197, column: 33, scope: !5019)
!5174 = !DILocation(line: 1197, column: 36, scope: !5019)
!5175 = !DILocation(line: 1197, column: 31, scope: !5019)
!5176 = !DILocation(line: 1197, column: 2, scope: !5019)
!5177 = !DILocation(line: 1197, column: 5, scope: !5019)
!5178 = !DILocation(line: 1197, column: 16, scope: !5019)
!5179 = !DILocation(line: 1198, column: 25, scope: !5019)
!5180 = !DILocation(line: 1198, column: 28, scope: !5019)
!5181 = !DILocation(line: 1198, column: 2, scope: !5019)
!5182 = !DILocation(line: 1198, column: 5, scope: !5019)
!5183 = !DILocation(line: 1198, column: 23, scope: !5019)
!5184 = !DILocation(line: 1199, column: 18, scope: !5019)
!5185 = !DILocation(line: 1199, column: 2, scope: !5019)
!5186 = !DILocation(line: 1200, column: 15, scope: !5019)
!5187 = !DILocation(line: 1200, column: 18, scope: !5019)
!5188 = !DILocation(line: 1200, column: 27, scope: !5019)
!5189 = !DILocation(line: 1200, column: 25, scope: !5019)
!5190 = !DILocation(line: 1200, column: 35, scope: !5019)
!5191 = !DILocation(line: 1200, column: 38, scope: !5019)
!5192 = !DILocation(line: 1200, column: 33, scope: !5019)
!5193 = !DILocation(line: 1200, column: 2, scope: !5019)
!5194 = !DILocation(line: 1200, column: 5, scope: !5019)
!5195 = !DILocation(line: 1200, column: 12, scope: !5019)
!5196 = !DILocation(line: 1201, column: 2, scope: !5019)
!5197 = !DILocation(line: 1202, column: 1, scope: !5019)
!5198 = distinct !DISubprogram(name: "vgacon_switch", scope: !3, file: !3, line: 627, type: !4274, scopeLine: 628, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5199 = !DILocalVariable(name: "c", arg: 1, scope: !5198, file: !3, line: 627, type: !162)
!5200 = !DILocation(line: 627, column: 42, scope: !5198)
!5201 = !DILocalVariable(name: "x", scope: !5198, file: !3, line: 629, type: !141)
!5202 = !DILocation(line: 629, column: 6, scope: !5198)
!5203 = !DILocation(line: 629, column: 10, scope: !5198)
!5204 = !DILocation(line: 629, column: 13, scope: !5198)
!5205 = !DILocation(line: 629, column: 21, scope: !5198)
!5206 = !DILocalVariable(name: "y", scope: !5198, file: !3, line: 630, type: !141)
!5207 = !DILocation(line: 630, column: 6, scope: !5198)
!5208 = !DILocation(line: 630, column: 10, scope: !5198)
!5209 = !DILocation(line: 630, column: 13, scope: !5198)
!5210 = !DILocation(line: 630, column: 23, scope: !5198)
!5211 = !DILocation(line: 630, column: 26, scope: !5198)
!5212 = !DILocation(line: 630, column: 34, scope: !5198)
!5213 = !DILocation(line: 630, column: 21, scope: !5198)
!5214 = !DILocalVariable(name: "rows", scope: !5198, file: !3, line: 631, type: !141)
!5215 = !DILocation(line: 631, column: 6, scope: !5198)
!5216 = !DILocation(line: 631, column: 25, scope: !5198)
!5217 = !DILocation(line: 631, column: 13, scope: !5198)
!5218 = !DILocation(line: 631, column: 44, scope: !5198)
!5219 = !DILocation(line: 631, column: 42, scope: !5198)
!5220 = !DILocation(line: 632, column: 3, scope: !5198)
!5221 = !DILocation(line: 632, column: 6, scope: !5198)
!5222 = !DILocation(line: 632, column: 14, scope: !5198)
!5223 = !DILocation(line: 631, column: 67, scope: !5198)
!5224 = !DILocation(line: 638, column: 26, scope: !5198)
!5225 = !DILocation(line: 638, column: 29, scope: !5198)
!5226 = !DILocation(line: 638, column: 24, scope: !5198)
!5227 = !DILocation(line: 639, column: 24, scope: !5198)
!5228 = !DILocation(line: 639, column: 27, scope: !5198)
!5229 = !DILocation(line: 639, column: 22, scope: !5198)
!5230 = !DILocation(line: 644, column: 7, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5198, file: !3, line: 644, column: 6)
!5232 = !DILocation(line: 644, column: 6, scope: !5198)
!5233 = !DILocation(line: 645, column: 23, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5231, file: !3, line: 644, column: 19)
!5235 = !DILocation(line: 645, column: 26, scope: !5234)
!5236 = !DILocation(line: 645, column: 15, scope: !5234)
!5237 = !DILocation(line: 645, column: 45, scope: !5234)
!5238 = !DILocation(line: 645, column: 48, scope: !5234)
!5239 = !DILocation(line: 646, column: 8, scope: !5234)
!5240 = !DILocation(line: 646, column: 11, scope: !5234)
!5241 = !DILocation(line: 646, column: 31, scope: !5234)
!5242 = !DILocation(line: 646, column: 29, scope: !5234)
!5243 = !DILocation(line: 647, column: 5, scope: !5234)
!5244 = !DILocation(line: 647, column: 21, scope: !5234)
!5245 = !DILocation(line: 647, column: 24, scope: !5234)
!5246 = !DILocation(line: 645, column: 3, scope: !5234)
!5247 = !DILocation(line: 649, column: 8, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 649, column: 7)
!5249 = !DILocation(line: 649, column: 23, scope: !5248)
!5250 = !DILocation(line: 649, column: 20, scope: !5248)
!5251 = !DILocation(line: 649, column: 25, scope: !5248)
!5252 = !DILocation(line: 649, column: 28, scope: !5248)
!5253 = !DILocation(line: 649, column: 43, scope: !5248)
!5254 = !DILocation(line: 649, column: 40, scope: !5248)
!5255 = !DILocation(line: 649, column: 46, scope: !5248)
!5256 = !DILocation(line: 650, column: 10, scope: !5248)
!5257 = !DILocation(line: 650, column: 32, scope: !5248)
!5258 = !DILocation(line: 650, column: 37, scope: !5248)
!5259 = !DILocation(line: 651, column: 8, scope: !5248)
!5260 = !DILocation(line: 651, column: 45, scope: !5248)
!5261 = !DILocation(line: 651, column: 33, scope: !5248)
!5262 = !DILocation(line: 651, column: 30, scope: !5248)
!5263 = !DILocation(line: 651, column: 61, scope: !5248)
!5264 = !DILocation(line: 652, column: 8, scope: !5248)
!5265 = !DILocation(line: 652, column: 31, scope: !5248)
!5266 = !DILocation(line: 652, column: 28, scope: !5248)
!5267 = !DILocation(line: 649, column: 7, scope: !5234)
!5268 = !DILocation(line: 653, column: 20, scope: !5248)
!5269 = !DILocation(line: 653, column: 23, scope: !5248)
!5270 = !DILocation(line: 653, column: 26, scope: !5248)
!5271 = !DILocation(line: 653, column: 35, scope: !5248)
!5272 = !DILocation(line: 653, column: 38, scope: !5248)
!5273 = !DILocation(line: 653, column: 4, scope: !5248)
!5274 = !DILocation(line: 654, column: 2, scope: !5234)
!5275 = !DILocation(line: 656, column: 2, scope: !5198)
!5276 = distinct !DISubprogram(name: "vgacon_blank", scope: !3, file: !3, line: 810, type: !4278, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5277 = !DILocalVariable(name: "c", arg: 1, scope: !5276, file: !3, line: 810, type: !162)
!5278 = !DILocation(line: 810, column: 41, scope: !5276)
!5279 = !DILocalVariable(name: "blank", arg: 2, scope: !5276, file: !3, line: 810, type: !141)
!5280 = !DILocation(line: 810, column: 48, scope: !5276)
!5281 = !DILocalVariable(name: "mode_switch", arg: 3, scope: !5276, file: !3, line: 810, type: !141)
!5282 = !DILocation(line: 810, column: 59, scope: !5276)
!5283 = !DILocation(line: 812, column: 10, scope: !5276)
!5284 = !DILocation(line: 812, column: 2, scope: !5276)
!5285 = !DILocation(line: 814, column: 7, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 814, column: 7)
!5287 = distinct !DILexicalBlock(scope: !5276, file: !3, line: 812, column: 17)
!5288 = !DILocation(line: 814, column: 7, scope: !5287)
!5289 = !DILocation(line: 815, column: 4, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5286, file: !3, line: 814, column: 25)
!5291 = !DILocation(line: 816, column: 21, scope: !5290)
!5292 = !DILocation(line: 817, column: 3, scope: !5290)
!5293 = !DILocation(line: 818, column: 7, scope: !5294)
!5294 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 818, column: 7)
!5295 = !DILocation(line: 818, column: 7, scope: !5287)
!5296 = !DILocation(line: 819, column: 20, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 818, column: 28)
!5298 = !DILocation(line: 819, column: 4, scope: !5297)
!5299 = !DILocation(line: 820, column: 24, scope: !5297)
!5300 = !DILocation(line: 821, column: 4, scope: !5297)
!5301 = !DILocation(line: 823, column: 14, scope: !5287)
!5302 = !DILocation(line: 825, column: 3, scope: !5287)
!5303 = !DILocation(line: 828, column: 8, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 828, column: 7)
!5305 = !DILocation(line: 828, column: 20, scope: !5304)
!5306 = !DILocation(line: 828, column: 23, scope: !5304)
!5307 = !DILocation(line: 828, column: 38, scope: !5304)
!5308 = !DILocation(line: 828, column: 7, scope: !5287)
!5309 = !DILocation(line: 829, column: 4, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 828, column: 58)
!5311 = !DILocation(line: 830, column: 24, scope: !5310)
!5312 = !DILocation(line: 831, column: 4, scope: !5310)
!5313 = !DILocation(line: 833, column: 21, scope: !5287)
!5314 = !DILocation(line: 833, column: 3, scope: !5287)
!5315 = !DILocation(line: 834, column: 24, scope: !5287)
!5316 = !DILocation(line: 834, column: 15, scope: !5287)
!5317 = !DILocation(line: 835, column: 8, scope: !5287)
!5318 = !DILocation(line: 835, column: 11, scope: !5287)
!5319 = !DILocation(line: 834, column: 3, scope: !5287)
!5320 = !DILocation(line: 836, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 836, column: 7)
!5322 = !DILocation(line: 836, column: 7, scope: !5287)
!5323 = !DILocation(line: 837, column: 15, scope: !5321)
!5324 = !DILocation(line: 837, column: 4, scope: !5321)
!5325 = !DILocation(line: 838, column: 3, scope: !5287)
!5326 = !DILocation(line: 840, column: 7, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 840, column: 7)
!5328 = !DILocation(line: 840, column: 22, scope: !5327)
!5329 = !DILocation(line: 840, column: 7, scope: !5287)
!5330 = !DILocation(line: 841, column: 30, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 840, column: 42)
!5332 = !DILocation(line: 841, column: 36, scope: !5331)
!5333 = !DILocation(line: 841, column: 4, scope: !5331)
!5334 = !DILocation(line: 842, column: 23, scope: !5331)
!5335 = !DILocation(line: 842, column: 21, scope: !5331)
!5336 = !DILocation(line: 843, column: 3, scope: !5331)
!5337 = !DILocation(line: 844, column: 3, scope: !5287)
!5338 = !DILocation(line: 846, column: 1, scope: !5276)
!5339 = distinct !DISubprogram(name: "vgacon_font_set", scope: !3, file: !3, line: 1070, type: !4282, scopeLine: 1072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5340 = !DILocalVariable(name: "c", arg: 1, scope: !5339, file: !3, line: 1070, type: !162)
!5341 = !DILocation(line: 1070, column: 44, scope: !5339)
!5342 = !DILocalVariable(name: "font", arg: 2, scope: !5339, file: !3, line: 1070, type: !4284)
!5343 = !DILocation(line: 1070, column: 68, scope: !5339)
!5344 = !DILocalVariable(name: "flags", arg: 3, scope: !5339, file: !3, line: 1071, type: !7)
!5345 = !DILocation(line: 1071, column: 20, scope: !5339)
!5346 = !DILocalVariable(name: "charcount", scope: !5339, file: !3, line: 1073, type: !7)
!5347 = !DILocation(line: 1073, column: 11, scope: !5339)
!5348 = !DILocation(line: 1073, column: 23, scope: !5339)
!5349 = !DILocation(line: 1073, column: 29, scope: !5339)
!5350 = !DILocalVariable(name: "rc", scope: !5339, file: !3, line: 1074, type: !141)
!5351 = !DILocation(line: 1074, column: 6, scope: !5339)
!5352 = !DILocation(line: 1076, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 1076, column: 6)
!5354 = !DILocation(line: 1076, column: 21, scope: !5353)
!5355 = !DILocation(line: 1076, column: 6, scope: !5339)
!5356 = !DILocation(line: 1077, column: 3, scope: !5353)
!5357 = !DILocation(line: 1079, column: 6, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 1079, column: 6)
!5359 = !DILocation(line: 1079, column: 12, scope: !5358)
!5360 = !DILocation(line: 1079, column: 18, scope: !5358)
!5361 = !DILocation(line: 1079, column: 35, scope: !5358)
!5362 = !DILocation(line: 1080, column: 7, scope: !5358)
!5363 = !DILocation(line: 1080, column: 17, scope: !5358)
!5364 = !DILocation(line: 1080, column: 24, scope: !5358)
!5365 = !DILocation(line: 1080, column: 27, scope: !5358)
!5366 = !DILocation(line: 1080, column: 37, scope: !5358)
!5367 = !DILocation(line: 1079, column: 6, scope: !5339)
!5368 = !DILocation(line: 1081, column: 3, scope: !5358)
!5369 = !DILocation(line: 1083, column: 36, scope: !5339)
!5370 = !DILocation(line: 1083, column: 42, scope: !5339)
!5371 = !DILocation(line: 1083, column: 51, scope: !5339)
!5372 = !DILocation(line: 1083, column: 61, scope: !5339)
!5373 = !DILocation(line: 1083, column: 7, scope: !5339)
!5374 = !DILocation(line: 1083, column: 5, scope: !5339)
!5375 = !DILocation(line: 1084, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 1084, column: 6)
!5377 = !DILocation(line: 1084, column: 6, scope: !5339)
!5378 = !DILocation(line: 1085, column: 10, scope: !5376)
!5379 = !DILocation(line: 1085, column: 3, scope: !5376)
!5380 = !DILocation(line: 1087, column: 8, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 1087, column: 6)
!5382 = !DILocation(line: 1087, column: 14, scope: !5381)
!5383 = !DILocation(line: 1087, column: 6, scope: !5339)
!5384 = !DILocation(line: 1088, column: 29, scope: !5381)
!5385 = !DILocation(line: 1088, column: 32, scope: !5381)
!5386 = !DILocation(line: 1088, column: 38, scope: !5381)
!5387 = !DILocation(line: 1088, column: 8, scope: !5381)
!5388 = !DILocation(line: 1088, column: 6, scope: !5381)
!5389 = !DILocation(line: 1088, column: 3, scope: !5381)
!5390 = !DILocation(line: 1089, column: 9, scope: !5339)
!5391 = !DILocation(line: 1089, column: 2, scope: !5339)
!5392 = !DILocation(line: 1090, column: 1, scope: !5339)
!5393 = distinct !DISubprogram(name: "vgacon_font_get", scope: !3, file: !3, line: 1092, type: !4287, scopeLine: 1093, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5394 = !DILocalVariable(name: "c", arg: 1, scope: !5393, file: !3, line: 1092, type: !162)
!5395 = !DILocation(line: 1092, column: 44, scope: !5393)
!5396 = !DILocalVariable(name: "font", arg: 2, scope: !5393, file: !3, line: 1092, type: !4284)
!5397 = !DILocation(line: 1092, column: 68, scope: !5393)
!5398 = !DILocation(line: 1094, column: 6, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 1094, column: 6)
!5400 = !DILocation(line: 1094, column: 21, scope: !5399)
!5401 = !DILocation(line: 1094, column: 6, scope: !5393)
!5402 = !DILocation(line: 1095, column: 3, scope: !5399)
!5403 = !DILocation(line: 1097, column: 2, scope: !5393)
!5404 = !DILocation(line: 1097, column: 8, scope: !5393)
!5405 = !DILocation(line: 1097, column: 14, scope: !5393)
!5406 = !DILocation(line: 1098, column: 17, scope: !5393)
!5407 = !DILocation(line: 1098, column: 20, scope: !5393)
!5408 = !DILocation(line: 1098, column: 28, scope: !5393)
!5409 = !DILocation(line: 1098, column: 2, scope: !5393)
!5410 = !DILocation(line: 1098, column: 8, scope: !5393)
!5411 = !DILocation(line: 1098, column: 15, scope: !5393)
!5412 = !DILocation(line: 1099, column: 20, scope: !5393)
!5413 = !DILocation(line: 1099, column: 2, scope: !5393)
!5414 = !DILocation(line: 1099, column: 8, scope: !5393)
!5415 = !DILocation(line: 1099, column: 18, scope: !5393)
!5416 = !DILocation(line: 1100, column: 7, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 1100, column: 6)
!5418 = !DILocation(line: 1100, column: 13, scope: !5417)
!5419 = !DILocation(line: 1100, column: 6, scope: !5393)
!5420 = !DILocation(line: 1101, column: 3, scope: !5417)
!5421 = !DILocation(line: 1102, column: 38, scope: !5393)
!5422 = !DILocation(line: 1102, column: 44, scope: !5393)
!5423 = !DILocation(line: 1102, column: 53, scope: !5393)
!5424 = !DILocation(line: 1102, column: 9, scope: !5393)
!5425 = !DILocation(line: 1102, column: 2, scope: !5393)
!5426 = !DILocation(line: 1103, column: 1, scope: !5393)
!5427 = distinct !DISubprogram(name: "vgacon_resize", scope: !3, file: !3, line: 1105, type: !4299, scopeLine: 1107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5428 = !DILocalVariable(name: "c", arg: 1, scope: !5427, file: !3, line: 1105, type: !162)
!5429 = !DILocation(line: 1105, column: 42, scope: !5427)
!5430 = !DILocalVariable(name: "width", arg: 2, scope: !5427, file: !3, line: 1105, type: !7)
!5431 = !DILocation(line: 1105, column: 58, scope: !5427)
!5432 = !DILocalVariable(name: "height", arg: 3, scope: !5427, file: !3, line: 1106, type: !7)
!5433 = !DILocation(line: 1106, column: 18, scope: !5427)
!5434 = !DILocalVariable(name: "user", arg: 4, scope: !5427, file: !3, line: 1106, type: !7)
!5435 = !DILocation(line: 1106, column: 39, scope: !5427)
!5436 = !DILocation(line: 1108, column: 7, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 1108, column: 6)
!5438 = !DILocation(line: 1108, column: 13, scope: !5437)
!5439 = !DILocation(line: 1108, column: 21, scope: !5437)
!5440 = !DILocation(line: 1108, column: 19, scope: !5437)
!5441 = !DILocation(line: 1108, column: 30, scope: !5437)
!5442 = !DILocation(line: 1108, column: 28, scope: !5437)
!5443 = !DILocation(line: 1108, column: 6, scope: !5427)
!5444 = !DILocation(line: 1109, column: 3, scope: !5437)
!5445 = !DILocation(line: 1111, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 1111, column: 6)
!5447 = !DILocation(line: 1111, column: 12, scope: !5446)
!5448 = !DILocation(line: 1111, column: 16, scope: !5446)
!5449 = !DILocation(line: 1111, column: 19, scope: !5446)
!5450 = !DILocation(line: 1111, column: 39, scope: !5446)
!5451 = !DILocation(line: 1111, column: 27, scope: !5446)
!5452 = !DILocation(line: 1111, column: 25, scope: !5446)
!5453 = !DILocation(line: 1111, column: 55, scope: !5446)
!5454 = !DILocation(line: 1112, column: 6, scope: !5446)
!5455 = !DILocation(line: 1112, column: 28, scope: !5446)
!5456 = !DILocation(line: 1112, column: 16, scope: !5446)
!5457 = !DILocation(line: 1112, column: 47, scope: !5446)
!5458 = !DILocation(line: 1112, column: 45, scope: !5446)
!5459 = !DILocation(line: 1113, column: 6, scope: !5446)
!5460 = !DILocation(line: 1113, column: 9, scope: !5446)
!5461 = !DILocation(line: 1113, column: 17, scope: !5446)
!5462 = !DILocation(line: 1112, column: 71, scope: !5446)
!5463 = !DILocation(line: 1112, column: 13, scope: !5446)
!5464 = !DILocation(line: 1111, column: 6, scope: !5427)
!5465 = !DILocation(line: 1116, column: 11, scope: !5446)
!5466 = !DILocation(line: 1116, column: 10, scope: !5446)
!5467 = !DILocation(line: 1116, column: 3, scope: !5446)
!5468 = !DILocation(line: 1118, column: 21, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 1118, column: 6)
!5470 = !DILocation(line: 1118, column: 6, scope: !5469)
!5471 = !DILocation(line: 1118, column: 24, scope: !5469)
!5472 = !DILocation(line: 1118, column: 28, scope: !5469)
!5473 = !DILocation(line: 1118, column: 6, scope: !5427)
!5474 = !DILocation(line: 1119, column: 19, scope: !5469)
!5475 = !DILocation(line: 1119, column: 22, scope: !5469)
!5476 = !DILocation(line: 1119, column: 29, scope: !5469)
!5477 = !DILocation(line: 1119, column: 3, scope: !5469)
!5478 = !DILocation(line: 1120, column: 2, scope: !5427)
!5479 = !DILocation(line: 1121, column: 1, scope: !5427)
!5480 = distinct !DISubprogram(name: "vgacon_set_palette", scope: !3, file: !3, line: 672, type: !4303, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5481 = !DILocalVariable(name: "vc", arg: 1, scope: !5480, file: !3, line: 672, type: !162)
!5482 = !DILocation(line: 672, column: 48, scope: !5480)
!5483 = !DILocalVariable(name: "table", arg: 2, scope: !5480, file: !3, line: 672, type: !457)
!5484 = !DILocation(line: 672, column: 73, scope: !5480)
!5485 = !DILocation(line: 674, column: 6, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5480, file: !3, line: 674, column: 6)
!5487 = !DILocation(line: 674, column: 21, scope: !5486)
!5488 = !DILocation(line: 674, column: 40, scope: !5486)
!5489 = !DILocation(line: 674, column: 43, scope: !5486)
!5490 = !DILocation(line: 675, column: 6, scope: !5486)
!5491 = !DILocation(line: 675, column: 25, scope: !5486)
!5492 = !DILocation(line: 675, column: 10, scope: !5486)
!5493 = !DILocation(line: 674, column: 6, scope: !5480)
!5494 = !DILocation(line: 676, column: 3, scope: !5486)
!5495 = !DILocation(line: 677, column: 18, scope: !5480)
!5496 = !DILocation(line: 677, column: 22, scope: !5480)
!5497 = !DILocation(line: 677, column: 2, scope: !5480)
!5498 = !DILocation(line: 678, column: 1, scope: !5480)
!5499 = distinct !DISubprogram(name: "vgacon_scrolldelta", scope: !3, file: !3, line: 174, type: !160, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5500 = !DILocalVariable(name: "c", arg: 1, scope: !5499, file: !3, line: 174, type: !162)
!5501 = !DILocation(line: 174, column: 48, scope: !5499)
!5502 = !DILocalVariable(name: "lines", arg: 2, scope: !5499, file: !3, line: 174, type: !141)
!5503 = !DILocation(line: 174, column: 55, scope: !5499)
!5504 = !DILocation(line: 176, column: 24, scope: !5499)
!5505 = !DILocation(line: 176, column: 27, scope: !5499)
!5506 = !DILocation(line: 176, column: 34, scope: !5499)
!5507 = !DILocation(line: 176, column: 59, scope: !5499)
!5508 = !DILocation(line: 176, column: 51, scope: !5499)
!5509 = !DILocation(line: 177, column: 4, scope: !5499)
!5510 = !DILocation(line: 176, column: 2, scope: !5499)
!5511 = !DILocation(line: 178, column: 18, scope: !5499)
!5512 = !DILocation(line: 178, column: 2, scope: !5499)
!5513 = !DILocation(line: 179, column: 1, scope: !5499)
!5514 = distinct !DISubprogram(name: "vgacon_set_origin", scope: !3, file: !3, line: 1123, type: !4274, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5515 = !DILocalVariable(name: "c", arg: 1, scope: !5514, file: !3, line: 1123, type: !162)
!5516 = !DILocation(line: 1123, column: 46, scope: !5514)
!5517 = !DILocation(line: 1125, column: 6, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5514, file: !3, line: 1125, column: 6)
!5519 = !DILocation(line: 1125, column: 17, scope: !5518)
!5520 = !DILocation(line: 1126, column: 7, scope: !5518)
!5521 = !DILocation(line: 1126, column: 23, scope: !5518)
!5522 = !DILocation(line: 1126, column: 27, scope: !5518)
!5523 = !DILocation(line: 1125, column: 6, scope: !5514)
!5524 = !DILocation(line: 1127, column: 3, scope: !5518)
!5525 = !DILocation(line: 1128, column: 40, scope: !5514)
!5526 = !DILocation(line: 1128, column: 17, scope: !5514)
!5527 = !DILocation(line: 1128, column: 20, scope: !5514)
!5528 = !DILocation(line: 1128, column: 38, scope: !5514)
!5529 = !DILocation(line: 1128, column: 2, scope: !5514)
!5530 = !DILocation(line: 1128, column: 5, scope: !5514)
!5531 = !DILocation(line: 1128, column: 15, scope: !5514)
!5532 = !DILocation(line: 1129, column: 18, scope: !5514)
!5533 = !DILocation(line: 1129, column: 2, scope: !5514)
!5534 = !DILocation(line: 1130, column: 18, scope: !5514)
!5535 = !DILocation(line: 1131, column: 2, scope: !5514)
!5536 = !DILocation(line: 1132, column: 1, scope: !5514)
!5537 = !DILocalVariable(name: "c", arg: 1, scope: !4459, file: !3, line: 1134, type: !162)
!5538 = !DILocation(line: 1134, column: 48, scope: !4459)
!5539 = !DILocation(line: 1138, column: 7, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 1138, column: 6)
!5541 = !DILocation(line: 1138, column: 6, scope: !4459)
!5542 = !DILocation(line: 1143, column: 22, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 1138, column: 27)
!5544 = !DILocation(line: 1144, column: 28, scope: !5543)
!5545 = !DILocation(line: 1144, column: 16, scope: !5543)
!5546 = !DILocation(line: 1144, column: 3, scope: !5543)
!5547 = !DILocation(line: 1144, column: 6, scope: !5543)
!5548 = !DILocation(line: 1144, column: 12, scope: !5543)
!5549 = !DILocation(line: 1144, column: 14, scope: !5543)
!5550 = !DILocation(line: 1145, column: 28, scope: !5543)
!5551 = !DILocation(line: 1145, column: 16, scope: !5543)
!5552 = !DILocation(line: 1145, column: 3, scope: !5543)
!5553 = !DILocation(line: 1145, column: 6, scope: !5543)
!5554 = !DILocation(line: 1145, column: 12, scope: !5543)
!5555 = !DILocation(line: 1145, column: 14, scope: !5543)
!5556 = !DILocation(line: 1146, column: 2, scope: !5543)
!5557 = !DILocation(line: 1151, column: 7, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !4459, file: !3, line: 1151, column: 6)
!5559 = !DILocation(line: 1151, column: 6, scope: !4459)
!5560 = !DILocation(line: 1152, column: 23, scope: !5558)
!5561 = !DILocation(line: 1152, column: 26, scope: !5558)
!5562 = !DILocation(line: 1152, column: 48, scope: !5558)
!5563 = !DILocation(line: 1152, column: 51, scope: !5558)
!5564 = !DILocation(line: 1152, column: 40, scope: !5558)
!5565 = !DILocation(line: 1153, column: 8, scope: !5558)
!5566 = !DILocation(line: 1153, column: 11, scope: !5558)
!5567 = !DILocation(line: 1153, column: 31, scope: !5558)
!5568 = !DILocation(line: 1153, column: 29, scope: !5558)
!5569 = !DILocation(line: 1153, column: 47, scope: !5558)
!5570 = !DILocation(line: 1153, column: 63, scope: !5558)
!5571 = !DILocation(line: 1153, column: 66, scope: !5558)
!5572 = !DILocation(line: 1152, column: 3, scope: !5558)
!5573 = !DILocation(line: 1154, column: 1, scope: !4459)
!5574 = distinct !DISubprogram(name: "vgacon_build_attr", scope: !3, file: !3, line: 420, type: !4310, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5575 = !DILocalVariable(name: "c", arg: 1, scope: !5574, file: !3, line: 420, type: !162)
!5576 = !DILocation(line: 420, column: 45, scope: !5574)
!5577 = !DILocalVariable(name: "color", arg: 2, scope: !5574, file: !3, line: 420, type: !1395)
!5578 = !DILocation(line: 420, column: 51, scope: !5574)
!5579 = !DILocalVariable(name: "intensity", arg: 3, scope: !5574, file: !3, line: 421, type: !93)
!5580 = !DILocation(line: 421, column: 26, scope: !5574)
!5581 = !DILocalVariable(name: "blink", arg: 4, scope: !5574, file: !3, line: 422, type: !521)
!5582 = !DILocation(line: 422, column: 13, scope: !5574)
!5583 = !DILocalVariable(name: "underline", arg: 5, scope: !5574, file: !3, line: 422, type: !521)
!5584 = !DILocation(line: 422, column: 25, scope: !5574)
!5585 = !DILocalVariable(name: "reverse", arg: 6, scope: !5574, file: !3, line: 422, type: !521)
!5586 = !DILocation(line: 422, column: 41, scope: !5574)
!5587 = !DILocalVariable(name: "italic", arg: 7, scope: !5574, file: !3, line: 423, type: !521)
!5588 = !DILocation(line: 423, column: 13, scope: !5574)
!5589 = !DILocalVariable(name: "attr", scope: !5574, file: !3, line: 425, type: !1395)
!5590 = !DILocation(line: 425, column: 5, scope: !5574)
!5591 = !DILocation(line: 425, column: 12, scope: !5574)
!5592 = !DILocation(line: 427, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 427, column: 6)
!5594 = !DILocation(line: 427, column: 6, scope: !5574)
!5595 = !DILocation(line: 428, column: 7, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 428, column: 7)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !3, line: 427, column: 24)
!5598 = !DILocation(line: 428, column: 7, scope: !5597)
!5599 = !DILocation(line: 429, column: 12, scope: !5596)
!5600 = !DILocation(line: 429, column: 17, scope: !5596)
!5601 = !DILocation(line: 429, column: 27, scope: !5596)
!5602 = !DILocation(line: 429, column: 30, scope: !5596)
!5603 = !DILocation(line: 429, column: 25, scope: !5596)
!5604 = !DILocation(line: 429, column: 11, scope: !5596)
!5605 = !DILocation(line: 429, column: 9, scope: !5596)
!5606 = !DILocation(line: 429, column: 4, scope: !5596)
!5607 = !DILocation(line: 430, column: 12, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5596, file: !3, line: 430, column: 12)
!5609 = !DILocation(line: 430, column: 12, scope: !5596)
!5610 = !DILocation(line: 431, column: 12, scope: !5608)
!5611 = !DILocation(line: 431, column: 17, scope: !5608)
!5612 = !DILocation(line: 431, column: 27, scope: !5608)
!5613 = !DILocation(line: 431, column: 30, scope: !5608)
!5614 = !DILocation(line: 431, column: 25, scope: !5608)
!5615 = !DILocation(line: 431, column: 11, scope: !5608)
!5616 = !DILocation(line: 431, column: 9, scope: !5608)
!5617 = !DILocation(line: 431, column: 4, scope: !5608)
!5618 = !DILocation(line: 432, column: 12, scope: !5619)
!5619 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 432, column: 12)
!5620 = !DILocation(line: 432, column: 22, scope: !5619)
!5621 = !DILocation(line: 432, column: 12, scope: !5608)
!5622 = !DILocation(line: 433, column: 12, scope: !5619)
!5623 = !DILocation(line: 433, column: 17, scope: !5619)
!5624 = !DILocation(line: 433, column: 27, scope: !5619)
!5625 = !DILocation(line: 433, column: 30, scope: !5619)
!5626 = !DILocation(line: 433, column: 25, scope: !5619)
!5627 = !DILocation(line: 433, column: 11, scope: !5619)
!5628 = !DILocation(line: 433, column: 9, scope: !5619)
!5629 = !DILocation(line: 433, column: 4, scope: !5619)
!5630 = !DILocation(line: 434, column: 2, scope: !5597)
!5631 = !DILocation(line: 435, column: 6, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 435, column: 6)
!5633 = !DILocation(line: 435, column: 6, scope: !5574)
!5634 = !DILocation(line: 437, column: 9, scope: !5632)
!5635 = !DILocation(line: 437, column: 8, scope: !5632)
!5636 = !DILocation(line: 437, column: 15, scope: !5632)
!5637 = !DILocation(line: 437, column: 29, scope: !5632)
!5638 = !DILocation(line: 437, column: 28, scope: !5632)
!5639 = !DILocation(line: 437, column: 35, scope: !5632)
!5640 = !DILocation(line: 437, column: 45, scope: !5632)
!5641 = !DILocation(line: 437, column: 44, scope: !5632)
!5642 = !DILocation(line: 437, column: 51, scope: !5632)
!5643 = !DILocation(line: 437, column: 41, scope: !5632)
!5644 = !DILocation(line: 437, column: 58, scope: !5632)
!5645 = !DILocation(line: 437, column: 23, scope: !5632)
!5646 = !DILocation(line: 437, column: 7, scope: !5632)
!5647 = !DILocation(line: 436, column: 8, scope: !5632)
!5648 = !DILocation(line: 436, column: 3, scope: !5632)
!5649 = !DILocation(line: 439, column: 6, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 439, column: 6)
!5651 = !DILocation(line: 439, column: 6, scope: !5574)
!5652 = !DILocation(line: 440, column: 8, scope: !5650)
!5653 = !DILocation(line: 440, column: 3, scope: !5650)
!5654 = !DILocation(line: 441, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 441, column: 6)
!5656 = !DILocation(line: 441, column: 16, scope: !5655)
!5657 = !DILocation(line: 441, column: 6, scope: !5574)
!5658 = !DILocation(line: 442, column: 8, scope: !5655)
!5659 = !DILocation(line: 442, column: 3, scope: !5655)
!5660 = !DILocation(line: 443, column: 7, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 443, column: 6)
!5662 = !DILocation(line: 443, column: 6, scope: !5574)
!5663 = !DILocation(line: 444, column: 7, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 444, column: 7)
!5665 = distinct !DILexicalBlock(scope: !5661, file: !3, line: 443, column: 25)
!5666 = !DILocation(line: 444, column: 7, scope: !5665)
!5667 = !DILocation(line: 445, column: 12, scope: !5664)
!5668 = !DILocation(line: 445, column: 17, scope: !5664)
!5669 = !DILocation(line: 445, column: 25, scope: !5664)
!5670 = !DILocation(line: 445, column: 11, scope: !5664)
!5671 = !DILocation(line: 445, column: 9, scope: !5664)
!5672 = !DILocation(line: 445, column: 4, scope: !5664)
!5673 = !DILocation(line: 446, column: 12, scope: !5674)
!5674 = distinct !DILexicalBlock(scope: !5664, file: !3, line: 446, column: 12)
!5675 = !DILocation(line: 446, column: 12, scope: !5664)
!5676 = !DILocation(line: 447, column: 12, scope: !5674)
!5677 = !DILocation(line: 447, column: 17, scope: !5674)
!5678 = !DILocation(line: 447, column: 25, scope: !5674)
!5679 = !DILocation(line: 447, column: 11, scope: !5674)
!5680 = !DILocation(line: 447, column: 9, scope: !5674)
!5681 = !DILocation(line: 447, column: 4, scope: !5674)
!5682 = !DILocation(line: 448, column: 12, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5674, file: !3, line: 448, column: 12)
!5684 = !DILocation(line: 448, column: 22, scope: !5683)
!5685 = !DILocation(line: 448, column: 12, scope: !5674)
!5686 = !DILocation(line: 449, column: 12, scope: !5683)
!5687 = !DILocation(line: 449, column: 17, scope: !5683)
!5688 = !DILocation(line: 449, column: 25, scope: !5683)
!5689 = !DILocation(line: 449, column: 11, scope: !5683)
!5690 = !DILocation(line: 449, column: 9, scope: !5683)
!5691 = !DILocation(line: 449, column: 4, scope: !5683)
!5692 = !DILocation(line: 450, column: 2, scope: !5665)
!5693 = !DILocation(line: 451, column: 9, scope: !5574)
!5694 = !DILocation(line: 451, column: 2, scope: !5574)
!5695 = distinct !DISubprogram(name: "vgacon_invert_region", scope: !3, file: !3, line: 454, type: !4314, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5696 = !DILocalVariable(name: "c", arg: 1, scope: !5695, file: !3, line: 454, type: !162)
!5697 = !DILocation(line: 454, column: 50, scope: !5695)
!5698 = !DILocalVariable(name: "p", arg: 2, scope: !5695, file: !3, line: 454, type: !120)
!5699 = !DILocation(line: 454, column: 59, scope: !5695)
!5700 = !DILocalVariable(name: "count", arg: 3, scope: !5695, file: !3, line: 454, type: !141)
!5701 = !DILocation(line: 454, column: 66, scope: !5695)
!5702 = !DILocalVariable(name: "col", scope: !5695, file: !3, line: 456, type: !5703)
!5703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !521)
!5704 = !DILocation(line: 456, column: 13, scope: !5695)
!5705 = !DILocation(line: 456, column: 19, scope: !5695)
!5706 = !DILocation(line: 458, column: 2, scope: !5695)
!5707 = !DILocation(line: 458, column: 14, scope: !5695)
!5708 = !DILocalVariable(name: "a", scope: !5709, file: !3, line: 459, type: !115)
!5709 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 458, column: 18)
!5710 = !DILocation(line: 459, column: 7, scope: !5709)
!5711 = !DILocation(line: 459, column: 11, scope: !5709)
!5712 = !DILocation(line: 460, column: 7, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5709, file: !3, line: 460, column: 7)
!5714 = !DILocation(line: 460, column: 7, scope: !5709)
!5715 = !DILocation(line: 461, column: 10, scope: !5713)
!5716 = !DILocation(line: 461, column: 9, scope: !5713)
!5717 = !DILocation(line: 461, column: 13, scope: !5713)
!5718 = !DILocation(line: 461, column: 28, scope: !5713)
!5719 = !DILocation(line: 461, column: 27, scope: !5713)
!5720 = !DILocation(line: 461, column: 31, scope: !5713)
!5721 = !DILocation(line: 461, column: 41, scope: !5713)
!5722 = !DILocation(line: 461, column: 23, scope: !5713)
!5723 = !DILocation(line: 462, column: 11, scope: !5713)
!5724 = !DILocation(line: 462, column: 10, scope: !5713)
!5725 = !DILocation(line: 462, column: 14, scope: !5713)
!5726 = !DILocation(line: 462, column: 24, scope: !5713)
!5727 = !DILocation(line: 461, column: 47, scope: !5713)
!5728 = !DILocation(line: 461, column: 8, scope: !5713)
!5729 = !DILocation(line: 461, column: 6, scope: !5713)
!5730 = !DILocation(line: 461, column: 4, scope: !5713)
!5731 = !DILocation(line: 464, column: 11, scope: !5713)
!5732 = !DILocation(line: 464, column: 13, scope: !5713)
!5733 = !DILocation(line: 464, column: 23, scope: !5713)
!5734 = !DILocation(line: 464, column: 9, scope: !5713)
!5735 = !DILocation(line: 464, column: 6, scope: !5713)
!5736 = !DILocation(line: 465, column: 3, scope: !5709)
!5737 = distinct !{!5737, !5706, !5738}
!5738 = !DILocation(line: 466, column: 2, scope: !5695)
!5739 = !DILocation(line: 467, column: 1, scope: !5695)
!5740 = distinct !DISubprogram(name: "inb_p", scope: !5741, file: !5741, line: 334, type: !5742, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5741 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!5742 = !DISubroutineType(types: !5743)
!5743 = !{!123, !141}
!5744 = !DILocalVariable(name: "port", arg: 1, scope: !5740, file: !5741, line: 334, type: !141)
!5745 = !DILocation(line: 334, column: 1, scope: !5740)
!5746 = !DILocalVariable(name: "value", scope: !5740, file: !5741, line: 334, type: !123)
!5747 = distinct !DISubprogram(name: "outb_p", scope: !5741, file: !5741, line: 334, type: !5748, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5748 = !DISubroutineType(types: !5749)
!5749 = !{null, !123, !141}
!5750 = !DILocalVariable(name: "value", arg: 1, scope: !5747, file: !5741, line: 334, type: !123)
!5751 = !DILocation(line: 334, column: 1, scope: !5747)
!5752 = !DILocalVariable(name: "port", arg: 2, scope: !5747, file: !5741, line: 334, type: !141)
!5753 = distinct !DISubprogram(name: "phys_to_virt", scope: !5741, file: !5741, line: 148, type: !5754, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!111, !2157}
!5756 = !DILocalVariable(name: "address", arg: 1, scope: !5753, file: !5741, line: 148, type: !2157)
!5757 = !DILocation(line: 148, column: 46, scope: !5753)
!5758 = !DILocation(line: 150, column: 9, scope: !5753)
!5759 = !DILocation(line: 150, column: 2, scope: !5753)
!5760 = distinct !DISubprogram(name: "inb", scope: !5741, file: !5741, line: 334, type: !5742, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5761 = !DILocalVariable(name: "port", arg: 1, scope: !5760, file: !5741, line: 334, type: !141)
!5762 = !DILocation(line: 334, column: 1, scope: !5760)
!5763 = !DILocalVariable(name: "value", scope: !5760, file: !5741, line: 334, type: !123)
!5764 = !{i32 -2142051218}
!5765 = distinct !DISubprogram(name: "slow_down_io", scope: !5766, file: !5766, line: 40, type: !1921, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5766 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!5767 = !DILocation(line: 42, column: 13, scope: !5765)
!5768 = !DILocation(line: 42, column: 2, scope: !5765)
!5769 = !DILocation(line: 48, column: 1, scope: !5765)
!5770 = distinct !DISubprogram(name: "outb", scope: !5741, file: !5741, line: 334, type: !5748, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5771 = !DILocalVariable(name: "value", arg: 1, scope: !5770, file: !5741, line: 334, type: !123)
!5772 = !DILocation(line: 334, column: 1, scope: !5770)
!5773 = !DILocalVariable(name: "port", arg: 2, scope: !5770, file: !5741, line: 334, type: !141)
!5774 = !{i32 -2142051420}
!5775 = distinct !DISubprogram(name: "vga_set_mem_top", scope: !3, file: !3, line: 163, type: !4251, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5776 = !DILocalVariable(name: "c", arg: 1, scope: !5775, file: !3, line: 163, type: !162)
!5777 = !DILocation(line: 163, column: 52, scope: !5775)
!5778 = !DILocation(line: 165, column: 17, scope: !5775)
!5779 = !DILocation(line: 165, column: 20, scope: !5775)
!5780 = !DILocation(line: 165, column: 40, scope: !5775)
!5781 = !DILocation(line: 165, column: 38, scope: !5775)
!5782 = !DILocation(line: 165, column: 55, scope: !5775)
!5783 = !DILocation(line: 165, column: 16, scope: !5775)
!5784 = !DILocation(line: 165, column: 2, scope: !5775)
!5785 = !DILocation(line: 166, column: 1, scope: !5775)
!5786 = distinct !DISubprogram(name: "write_vga", scope: !3, file: !3, line: 146, type: !5787, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{null, !123, !7}
!5789 = !DILocalVariable(name: "reg", arg: 1, scope: !5786, file: !3, line: 146, type: !123)
!5790 = !DILocation(line: 146, column: 44, scope: !5786)
!5791 = !DILocalVariable(name: "val", arg: 2, scope: !5786, file: !3, line: 146, type: !7)
!5792 = !DILocation(line: 146, column: 62, scope: !5786)
!5793 = !DILocalVariable(name: "v1", scope: !5786, file: !3, line: 148, type: !7)
!5794 = !DILocation(line: 148, column: 15, scope: !5786)
!5795 = !DILocalVariable(name: "v2", scope: !5786, file: !3, line: 148, type: !7)
!5796 = !DILocation(line: 148, column: 19, scope: !5786)
!5797 = !DILocalVariable(name: "flags", scope: !5786, file: !3, line: 149, type: !112)
!5798 = !DILocation(line: 149, column: 16, scope: !5786)
!5799 = !DILocation(line: 155, column: 2, scope: !5786)
!5800 = !DILocalVariable(name: "__dummy", scope: !5801, file: !3, line: 155, type: !112)
!5801 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 155, column: 2)
!5802 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 155, column: 2)
!5803 = !DILocation(line: 155, column: 2, scope: !5801)
!5804 = !DILocalVariable(name: "__dummy2", scope: !5801, file: !3, line: 155, type: !112)
!5805 = !DILocation(line: 155, column: 2, scope: !5802)
!5806 = !DILocation(line: 155, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 155, column: 2)
!5808 = !DILocation(line: 155, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 155, column: 2)
!5810 = !DILocalVariable(name: "__dummy", scope: !5811, file: !3, line: 155, type: !112)
!5811 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 155, column: 2)
!5812 = distinct !DILexicalBlock(scope: !5809, file: !3, line: 155, column: 2)
!5813 = !DILocation(line: 155, column: 2, scope: !5811)
!5814 = !DILocalVariable(name: "__dummy2", scope: !5811, file: !3, line: 155, type: !112)
!5815 = !DILocation(line: 155, column: 2, scope: !5812)
!5816 = !DILocation(line: 155, column: 2, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 155, column: 2)
!5818 = !{i32 -2141986720}
!5819 = !DILocation(line: 155, column: 2, scope: !5820)
!5820 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 155, column: 2)
!5821 = !DILocation(line: 156, column: 7, scope: !5786)
!5822 = !DILocation(line: 156, column: 14, scope: !5786)
!5823 = !DILocation(line: 156, column: 18, scope: !5786)
!5824 = !DILocation(line: 156, column: 11, scope: !5786)
!5825 = !DILocation(line: 156, column: 5, scope: !5786)
!5826 = !DILocation(line: 157, column: 7, scope: !5786)
!5827 = !DILocation(line: 157, column: 11, scope: !5786)
!5828 = !DILocation(line: 157, column: 19, scope: !5786)
!5829 = !DILocation(line: 157, column: 23, scope: !5786)
!5830 = !DILocation(line: 157, column: 29, scope: !5786)
!5831 = !DILocation(line: 157, column: 15, scope: !5786)
!5832 = !DILocation(line: 157, column: 5, scope: !5786)
!5833 = !DILocation(line: 158, column: 7, scope: !5786)
!5834 = !DILocation(line: 158, column: 11, scope: !5786)
!5835 = !DILocation(line: 158, column: 2, scope: !5786)
!5836 = !DILocation(line: 159, column: 7, scope: !5786)
!5837 = !DILocation(line: 159, column: 11, scope: !5786)
!5838 = !DILocation(line: 159, column: 2, scope: !5786)
!5839 = !DILocation(line: 160, column: 2, scope: !5786)
!5840 = !DILocalVariable(name: "__dummy", scope: !5841, file: !3, line: 160, type: !112)
!5841 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 160, column: 2)
!5842 = distinct !DILexicalBlock(scope: !5786, file: !3, line: 160, column: 2)
!5843 = !DILocation(line: 160, column: 2, scope: !5841)
!5844 = !DILocalVariable(name: "__dummy2", scope: !5841, file: !3, line: 160, type: !112)
!5845 = !DILocation(line: 160, column: 2, scope: !5842)
!5846 = !DILocation(line: 160, column: 2, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 160, column: 2)
!5848 = !DILocation(line: 160, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 160, column: 2)
!5850 = !DILocalVariable(name: "__dummy", scope: !5851, file: !3, line: 160, type: !112)
!5851 = distinct !DILexicalBlock(scope: !5852, file: !3, line: 160, column: 2)
!5852 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 160, column: 2)
!5853 = !DILocation(line: 160, column: 2, scope: !5851)
!5854 = !DILocalVariable(name: "__dummy2", scope: !5851, file: !3, line: 160, type: !112)
!5855 = !DILocation(line: 160, column: 2, scope: !5852)
!5856 = !DILocation(line: 160, column: 2, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5847, file: !3, line: 160, column: 2)
!5858 = !{i32 -2141985891}
!5859 = !DILocation(line: 160, column: 2, scope: !5860)
!5860 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 160, column: 2)
!5861 = !DILocation(line: 161, column: 1, scope: !5786)
!5862 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !5766, file: !5766, line: 666, type: !5863, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5863 = !DISubroutineType(types: !5864)
!5864 = !{!112}
!5865 = !DILocalVariable(name: "f", scope: !5862, file: !5766, line: 668, type: !112)
!5866 = !DILocation(line: 668, column: 16, scope: !5862)
!5867 = !DILocation(line: 670, column: 6, scope: !5862)
!5868 = !DILocation(line: 670, column: 4, scope: !5862)
!5869 = !DILocation(line: 671, column: 2, scope: !5862)
!5870 = !DILocation(line: 672, column: 9, scope: !5862)
!5871 = !DILocation(line: 672, column: 2, scope: !5862)
!5872 = distinct !DISubprogram(name: "outw", scope: !5741, file: !5741, line: 335, type: !5873, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{null, !119, !141}
!5875 = !DILocalVariable(name: "value", arg: 1, scope: !5872, file: !5741, line: 335, type: !119)
!5876 = !DILocation(line: 335, column: 1, scope: !5872)
!5877 = !DILocalVariable(name: "port", arg: 2, scope: !5872, file: !5741, line: 335, type: !141)
!5878 = !{i32 -2142048677}
!5879 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !5766, file: !5766, line: 651, type: !5880, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5880 = !DISubroutineType(types: !5881)
!5881 = !{null, !112}
!5882 = !DILocalVariable(name: "f", arg: 1, scope: !5879, file: !5766, line: 651, type: !112)
!5883 = !DILocation(line: 651, column: 65, scope: !5879)
!5884 = !DILocalVariable(name: "__edi", scope: !5885, file: !5766, line: 653, type: !112)
!5885 = distinct !DILexicalBlock(scope: !5879, file: !5766, line: 653, column: 2)
!5886 = !DILocation(line: 653, column: 2, scope: !5885)
!5887 = !DILocalVariable(name: "__esi", scope: !5885, file: !5766, line: 653, type: !112)
!5888 = !DILocalVariable(name: "__edx", scope: !5885, file: !5766, line: 653, type: !112)
!5889 = !DILocalVariable(name: "__ecx", scope: !5885, file: !5766, line: 653, type: !112)
!5890 = !DILocalVariable(name: "__eax", scope: !5885, file: !5766, line: 653, type: !112)
!5891 = !{i32 -2145749610, i32 -2145748860, i32 -2145748626, i32 -2145748575, i32 -2145748547, i32 -2145748522, i32 -2145748838, i32 -2145748825, i32 -2145748387, i32 -2145748268, i32 -2145748733, i32 -2145748706, i32 -2145748678, i32 -2145748648}
!5892 = !DILocation(line: 654, column: 1, scope: !5879)
!5893 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !5766, file: !5766, line: 646, type: !5863, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5894 = !DILocalVariable(name: "__ret", scope: !5895, file: !5766, line: 648, type: !112)
!5895 = distinct !DILexicalBlock(scope: !5893, file: !5766, line: 648, column: 9)
!5896 = !DILocation(line: 648, column: 9, scope: !5895)
!5897 = !DILocalVariable(name: "__edi", scope: !5895, file: !5766, line: 648, type: !112)
!5898 = !DILocalVariable(name: "__esi", scope: !5895, file: !5766, line: 648, type: !112)
!5899 = !DILocalVariable(name: "__edx", scope: !5895, file: !5766, line: 648, type: !112)
!5900 = !DILocalVariable(name: "__ecx", scope: !5895, file: !5766, line: 648, type: !112)
!5901 = !DILocalVariable(name: "__eax", scope: !5895, file: !5766, line: 648, type: !112)
!5902 = !DILocation(line: 648, column: 9, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5904, file: !5766, line: 648, column: 9)
!5904 = distinct !DILexicalBlock(scope: !5895, file: !5766, line: 648, column: 9)
!5905 = !{i32 -2145754077, i32 -2145751762, i32 -2145751528, i32 -2145751477, i32 -2145751449, i32 -2145751424, i32 -2145751740, i32 -2145751727, i32 -2145751289, i32 -2145751170, i32 -2145751635, i32 -2145751608, i32 -2145751580, i32 -2145751550}
!5906 = !DILocalVariable(name: "__mask", scope: !5907, file: !5766, line: 648, type: !112)
!5907 = distinct !DILexicalBlock(scope: !5903, file: !5766, line: 648, column: 9)
!5908 = !DILocation(line: 648, column: 9, scope: !5907)
!5909 = !DILocation(line: 648, column: 9, scope: !5904)
!5910 = !DILocation(line: 648, column: 2, scope: !5893)
!5911 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !5766, file: !5766, line: 656, type: !1921, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5912 = !DILocalVariable(name: "__edi", scope: !5913, file: !5766, line: 658, type: !112)
!5913 = distinct !DILexicalBlock(scope: !5911, file: !5766, line: 658, column: 2)
!5914 = !DILocation(line: 658, column: 2, scope: !5913)
!5915 = !DILocalVariable(name: "__esi", scope: !5913, file: !5766, line: 658, type: !112)
!5916 = !DILocalVariable(name: "__edx", scope: !5913, file: !5766, line: 658, type: !112)
!5917 = !DILocalVariable(name: "__ecx", scope: !5913, file: !5766, line: 658, type: !112)
!5918 = !DILocalVariable(name: "__eax", scope: !5913, file: !5766, line: 658, type: !112)
!5919 = !{i32 -2145746983, i32 -2145746251, i32 -2145746017, i32 -2145745966, i32 -2145745938, i32 -2145745913, i32 -2145746229, i32 -2145746216, i32 -2145745778, i32 -2145745659, i32 -2145746124, i32 -2145746097, i32 -2145746069, i32 -2145746039}
!5920 = !DILocation(line: 659, column: 1, scope: !5911)
!5921 = distinct !DISubprogram(name: "vgacon_restore_screen", scope: !3, file: !3, line: 168, type: !4251, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5922 = !DILocalVariable(name: "c", arg: 1, scope: !5921, file: !3, line: 168, type: !162)
!5923 = !DILocation(line: 168, column: 51, scope: !5921)
!5924 = !DILocation(line: 170, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 170, column: 6)
!5926 = !DILocation(line: 170, column: 9, scope: !5925)
!5927 = !DILocation(line: 170, column: 22, scope: !5925)
!5928 = !DILocation(line: 170, column: 25, scope: !5925)
!5929 = !DILocation(line: 170, column: 19, scope: !5925)
!5930 = !DILocation(line: 170, column: 6, scope: !5921)
!5931 = !DILocation(line: 171, column: 22, scope: !5925)
!5932 = !DILocation(line: 171, column: 3, scope: !5925)
!5933 = !DILocation(line: 172, column: 1, scope: !5921)
!5934 = distinct !DISubprogram(name: "vgacon_set_cursor_size", scope: !3, file: !3, line: 469, type: !5935, scopeLine: 470, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!5935 = !DISubroutineType(types: !5936)
!5936 = !{null, !141, !141, !141}
!5937 = !DILocalVariable(name: "xpos", arg: 1, scope: !5934, file: !3, line: 469, type: !141)
!5938 = !DILocation(line: 469, column: 40, scope: !5934)
!5939 = !DILocalVariable(name: "from", arg: 2, scope: !5934, file: !3, line: 469, type: !141)
!5940 = !DILocation(line: 469, column: 50, scope: !5934)
!5941 = !DILocalVariable(name: "to", arg: 3, scope: !5934, file: !3, line: 469, type: !141)
!5942 = !DILocation(line: 469, column: 60, scope: !5934)
!5943 = !DILocalVariable(name: "flags", scope: !5934, file: !3, line: 471, type: !112)
!5944 = !DILocation(line: 471, column: 16, scope: !5934)
!5945 = !DILocalVariable(name: "curs", scope: !5934, file: !3, line: 472, type: !141)
!5946 = !DILocation(line: 472, column: 6, scope: !5934)
!5947 = !DILocalVariable(name: "cure", scope: !5934, file: !3, line: 472, type: !141)
!5948 = !DILocation(line: 472, column: 12, scope: !5934)
!5949 = !DILocation(line: 474, column: 7, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 474, column: 6)
!5951 = !DILocation(line: 474, column: 15, scope: !5950)
!5952 = !DILocation(line: 474, column: 12, scope: !5950)
!5953 = !DILocation(line: 474, column: 37, scope: !5950)
!5954 = !DILocation(line: 474, column: 41, scope: !5950)
!5955 = !DILocation(line: 474, column: 47, scope: !5950)
!5956 = !DILocation(line: 474, column: 44, scope: !5950)
!5957 = !DILocation(line: 474, column: 6, scope: !5934)
!5958 = !DILocation(line: 475, column: 3, scope: !5950)
!5959 = !DILocation(line: 476, column: 25, scope: !5934)
!5960 = !DILocation(line: 476, column: 23, scope: !5934)
!5961 = !DILocation(line: 477, column: 23, scope: !5934)
!5962 = !DILocation(line: 477, column: 21, scope: !5934)
!5963 = !DILocation(line: 479, column: 2, scope: !5934)
!5964 = !DILocalVariable(name: "__dummy", scope: !5965, file: !3, line: 479, type: !112)
!5965 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 479, column: 2)
!5966 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 479, column: 2)
!5967 = !DILocation(line: 479, column: 2, scope: !5965)
!5968 = !DILocalVariable(name: "__dummy2", scope: !5965, file: !3, line: 479, type: !112)
!5969 = !DILocation(line: 479, column: 2, scope: !5966)
!5970 = !DILocation(line: 479, column: 2, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5966, file: !3, line: 479, column: 2)
!5972 = !DILocation(line: 479, column: 2, scope: !5973)
!5973 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 479, column: 2)
!5974 = !DILocalVariable(name: "__dummy", scope: !5975, file: !3, line: 479, type: !112)
!5975 = distinct !DILexicalBlock(scope: !5976, file: !3, line: 479, column: 2)
!5976 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 479, column: 2)
!5977 = !DILocation(line: 479, column: 2, scope: !5975)
!5978 = !DILocalVariable(name: "__dummy2", scope: !5975, file: !3, line: 479, type: !112)
!5979 = !DILocation(line: 479, column: 2, scope: !5976)
!5980 = !DILocation(line: 479, column: 2, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5971, file: !3, line: 479, column: 2)
!5982 = !{i32 -2141983150}
!5983 = !DILocation(line: 479, column: 2, scope: !5984)
!5984 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 479, column: 2)
!5985 = !DILocation(line: 480, column: 6, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 480, column: 6)
!5987 = !DILocation(line: 480, column: 21, scope: !5986)
!5988 = !DILocation(line: 480, column: 6, scope: !5934)
!5989 = !DILocation(line: 481, column: 33, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 480, column: 41)
!5991 = !DILocation(line: 481, column: 3, scope: !5990)
!5992 = !DILocation(line: 482, column: 16, scope: !5990)
!5993 = !DILocation(line: 482, column: 10, scope: !5990)
!5994 = !DILocation(line: 482, column: 8, scope: !5990)
!5995 = !DILocation(line: 483, column: 31, scope: !5990)
!5996 = !DILocation(line: 483, column: 3, scope: !5990)
!5997 = !DILocation(line: 484, column: 16, scope: !5990)
!5998 = !DILocation(line: 484, column: 10, scope: !5990)
!5999 = !DILocation(line: 484, column: 8, scope: !5990)
!6000 = !DILocation(line: 485, column: 2, scope: !5990)
!6001 = !DILocation(line: 486, column: 8, scope: !6002)
!6002 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 485, column: 9)
!6003 = !DILocation(line: 487, column: 8, scope: !6002)
!6004 = !DILocation(line: 490, column: 10, scope: !5934)
!6005 = !DILocation(line: 490, column: 15, scope: !5934)
!6006 = !DILocation(line: 490, column: 25, scope: !5934)
!6007 = !DILocation(line: 490, column: 23, scope: !5934)
!6008 = !DILocation(line: 490, column: 7, scope: !5934)
!6009 = !DILocation(line: 491, column: 10, scope: !5934)
!6010 = !DILocation(line: 491, column: 15, scope: !5934)
!6011 = !DILocation(line: 491, column: 25, scope: !5934)
!6012 = !DILocation(line: 491, column: 23, scope: !5934)
!6013 = !DILocation(line: 491, column: 7, scope: !5934)
!6014 = !DILocation(line: 493, column: 32, scope: !5934)
!6015 = !DILocation(line: 493, column: 2, scope: !5934)
!6016 = !DILocation(line: 494, column: 9, scope: !5934)
!6017 = !DILocation(line: 494, column: 15, scope: !5934)
!6018 = !DILocation(line: 494, column: 2, scope: !5934)
!6019 = !DILocation(line: 495, column: 30, scope: !5934)
!6020 = !DILocation(line: 495, column: 2, scope: !5934)
!6021 = !DILocation(line: 496, column: 9, scope: !5934)
!6022 = !DILocation(line: 496, column: 15, scope: !5934)
!6023 = !DILocation(line: 496, column: 2, scope: !5934)
!6024 = !DILocation(line: 497, column: 2, scope: !5934)
!6025 = !DILocalVariable(name: "__dummy", scope: !6026, file: !3, line: 497, type: !112)
!6026 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 497, column: 2)
!6027 = distinct !DILexicalBlock(scope: !5934, file: !3, line: 497, column: 2)
!6028 = !DILocation(line: 497, column: 2, scope: !6026)
!6029 = !DILocalVariable(name: "__dummy2", scope: !6026, file: !3, line: 497, type: !112)
!6030 = !DILocation(line: 497, column: 2, scope: !6027)
!6031 = !DILocation(line: 497, column: 2, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !6027, file: !3, line: 497, column: 2)
!6033 = !DILocation(line: 497, column: 2, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 497, column: 2)
!6035 = !DILocalVariable(name: "__dummy", scope: !6036, file: !3, line: 497, type: !112)
!6036 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 497, column: 2)
!6037 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 497, column: 2)
!6038 = !DILocation(line: 497, column: 2, scope: !6036)
!6039 = !DILocalVariable(name: "__dummy2", scope: !6036, file: !3, line: 497, type: !112)
!6040 = !DILocation(line: 497, column: 2, scope: !6037)
!6041 = !DILocation(line: 497, column: 2, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6032, file: !3, line: 497, column: 2)
!6043 = !{i32 -2141982252}
!6044 = !DILocation(line: 497, column: 2, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 497, column: 2)
!6046 = !DILocation(line: 498, column: 1, scope: !5934)
!6047 = distinct !DISubprogram(name: "scr_memcpyw", scope: !6048, file: !6048, line: 42, type: !6049, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6048 = !DIFile(filename: "./include/linux/vt_buffer.h", directory: "/home/lizy2001/genbc/linux")
!6049 = !DISubroutineType(types: !6050)
!6050 = !{null, !120, !6051, !7}
!6051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6052, size: 64)
!6052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!6053 = !DILocalVariable(name: "d", arg: 1, scope: !6047, file: !6048, line: 42, type: !120)
!6054 = !DILocation(line: 42, column: 37, scope: !6047)
!6055 = !DILocalVariable(name: "s", arg: 2, scope: !6047, file: !6048, line: 42, type: !6051)
!6056 = !DILocation(line: 42, column: 51, scope: !6047)
!6057 = !DILocalVariable(name: "count", arg: 3, scope: !6047, file: !6048, line: 42, type: !7)
!6058 = !DILocation(line: 42, column: 67, scope: !6047)
!6059 = !DILocation(line: 49, column: 9, scope: !6047)
!6060 = !DILocation(line: 49, column: 2, scope: !6047)
!6061 = !DILocation(line: 49, column: 12, scope: !6047)
!6062 = !DILocation(line: 49, column: 15, scope: !6047)
!6063 = !DILocation(line: 51, column: 1, scope: !6047)
!6064 = distinct !DISubprogram(name: "scr_memsetw", scope: !6048, file: !6048, line: 29, type: !6065, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6065 = !DISubroutineType(types: !6066)
!6066 = !{null, !120, !115, !7}
!6067 = !DILocalVariable(name: "s", arg: 1, scope: !6064, file: !6048, line: 29, type: !120)
!6068 = !DILocation(line: 29, column: 37, scope: !6064)
!6069 = !DILocalVariable(name: "c", arg: 2, scope: !6064, file: !6048, line: 29, type: !115)
!6070 = !DILocation(line: 29, column: 44, scope: !6064)
!6071 = !DILocalVariable(name: "count", arg: 3, scope: !6064, file: !6048, line: 29, type: !7)
!6072 = !DILocation(line: 29, column: 60, scope: !6064)
!6073 = !DILocation(line: 36, column: 11, scope: !6064)
!6074 = !DILocation(line: 36, column: 14, scope: !6064)
!6075 = !DILocation(line: 36, column: 17, scope: !6064)
!6076 = !DILocation(line: 36, column: 23, scope: !6064)
!6077 = !DILocation(line: 36, column: 2, scope: !6064)
!6078 = !DILocation(line: 38, column: 1, scope: !6064)
!6079 = distinct !DISubprogram(name: "scr_memmovew", scope: !6048, file: !6048, line: 55, type: !6049, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6080 = !DILocalVariable(name: "d", arg: 1, scope: !6079, file: !6048, line: 55, type: !120)
!6081 = !DILocation(line: 55, column: 38, scope: !6079)
!6082 = !DILocalVariable(name: "s", arg: 2, scope: !6079, file: !6048, line: 55, type: !6051)
!6083 = !DILocation(line: 55, column: 52, scope: !6079)
!6084 = !DILocalVariable(name: "count", arg: 3, scope: !6079, file: !6048, line: 55, type: !7)
!6085 = !DILocation(line: 55, column: 68, scope: !6079)
!6086 = !DILocation(line: 68, column: 10, scope: !6079)
!6087 = !DILocation(line: 68, column: 2, scope: !6079)
!6088 = !DILocation(line: 68, column: 13, scope: !6079)
!6089 = !DILocation(line: 68, column: 16, scope: !6079)
!6090 = !DILocation(line: 70, column: 1, scope: !6079)
!6091 = distinct !DISubprogram(name: "memset16", scope: !6092, file: !6092, line: 22, type: !6093, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6092 = !DIFile(filename: "./arch/x86/include/asm/string_64.h", directory: "/home/lizy2001/genbc/linux")
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!111, !6095, !6096, !361}
!6095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6096, size: 64)
!6096 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !203, line: 103, baseType: !115)
!6097 = !DILocalVariable(name: "s", arg: 1, scope: !6091, file: !6092, line: 22, type: !6095)
!6098 = !DILocation(line: 22, column: 40, scope: !6091)
!6099 = !DILocalVariable(name: "v", arg: 2, scope: !6091, file: !6092, line: 22, type: !6096)
!6100 = !DILocation(line: 22, column: 52, scope: !6091)
!6101 = !DILocalVariable(name: "n", arg: 3, scope: !6091, file: !6092, line: 22, type: !361)
!6102 = !DILocation(line: 22, column: 62, scope: !6091)
!6103 = !DILocalVariable(name: "d0", scope: !6091, file: !6092, line: 24, type: !350)
!6104 = !DILocation(line: 24, column: 7, scope: !6091)
!6105 = !DILocalVariable(name: "d1", scope: !6091, file: !6092, line: 24, type: !350)
!6106 = !DILocation(line: 24, column: 11, scope: !6091)
!6107 = !DILocation(line: 28, column: 15, scope: !6091)
!6108 = !DILocation(line: 28, column: 24, scope: !6091)
!6109 = !DILocation(line: 28, column: 33, scope: !6091)
!6110 = !DILocation(line: 25, column: 2, scope: !6091)
!6111 = !{i32 1392155, i32 1392161}
!6112 = !DILocation(line: 30, column: 9, scope: !6091)
!6113 = !DILocation(line: 30, column: 2, scope: !6091)
!6114 = distinct !DISubprogram(name: "vgacon_doresize", scope: !3, file: !3, line: 565, type: !6115, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6115 = !DISubroutineType(types: !6116)
!6116 = !{!141, !162, !7, !7}
!6117 = !DILocalVariable(name: "c", arg: 1, scope: !6114, file: !3, line: 565, type: !162)
!6118 = !DILocation(line: 565, column: 44, scope: !6114)
!6119 = !DILocalVariable(name: "width", arg: 2, scope: !6114, file: !3, line: 566, type: !7)
!6120 = !DILocation(line: 566, column: 16, scope: !6114)
!6121 = !DILocalVariable(name: "height", arg: 3, scope: !6114, file: !3, line: 566, type: !7)
!6122 = !DILocation(line: 566, column: 36, scope: !6114)
!6123 = !DILocalVariable(name: "flags", scope: !6114, file: !3, line: 568, type: !112)
!6124 = !DILocation(line: 568, column: 16, scope: !6114)
!6125 = !DILocalVariable(name: "scanlines", scope: !6114, file: !3, line: 569, type: !7)
!6126 = !DILocation(line: 569, column: 15, scope: !6114)
!6127 = !DILocation(line: 569, column: 27, scope: !6114)
!6128 = !DILocation(line: 569, column: 36, scope: !6114)
!6129 = !DILocation(line: 569, column: 39, scope: !6114)
!6130 = !DILocation(line: 569, column: 47, scope: !6114)
!6131 = !DILocation(line: 569, column: 34, scope: !6114)
!6132 = !DILocalVariable(name: "scanlines_lo", scope: !6114, file: !3, line: 570, type: !1395)
!6133 = !DILocation(line: 570, column: 5, scope: !6114)
!6134 = !DILocalVariable(name: "r7", scope: !6114, file: !3, line: 570, type: !1395)
!6135 = !DILocation(line: 570, column: 23, scope: !6114)
!6136 = !DILocalVariable(name: "vsync_end", scope: !6114, file: !3, line: 570, type: !1395)
!6137 = !DILocation(line: 570, column: 31, scope: !6114)
!6138 = !DILocalVariable(name: "mode", scope: !6114, file: !3, line: 570, type: !1395)
!6139 = !DILocation(line: 570, column: 46, scope: !6114)
!6140 = !DILocalVariable(name: "max_scan", scope: !6114, file: !3, line: 570, type: !1395)
!6141 = !DILocation(line: 570, column: 52, scope: !6114)
!6142 = !DILocation(line: 572, column: 2, scope: !6114)
!6143 = !DILocalVariable(name: "__dummy", scope: !6144, file: !3, line: 572, type: !112)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 572, column: 2)
!6145 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 572, column: 2)
!6146 = !DILocation(line: 572, column: 2, scope: !6144)
!6147 = !DILocalVariable(name: "__dummy2", scope: !6144, file: !3, line: 572, type: !112)
!6148 = !DILocation(line: 572, column: 2, scope: !6145)
!6149 = !DILocation(line: 572, column: 2, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 572, column: 2)
!6151 = !DILocation(line: 572, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 572, column: 2)
!6153 = !DILocalVariable(name: "__dummy", scope: !6154, file: !3, line: 572, type: !112)
!6154 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 572, column: 2)
!6155 = distinct !DILexicalBlock(scope: !6152, file: !3, line: 572, column: 2)
!6156 = !DILocation(line: 572, column: 2, scope: !6154)
!6157 = !DILocalVariable(name: "__dummy2", scope: !6154, file: !3, line: 572, type: !112)
!6158 = !DILocation(line: 572, column: 2, scope: !6155)
!6159 = !DILocation(line: 572, column: 2, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 572, column: 2)
!6161 = !{i32 -2141981382}
!6162 = !DILocation(line: 572, column: 2, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6160, file: !3, line: 572, column: 2)
!6164 = !DILocation(line: 574, column: 16, scope: !6114)
!6165 = !DILocation(line: 574, column: 22, scope: !6114)
!6166 = !DILocation(line: 574, column: 14, scope: !6114)
!6167 = !DILocation(line: 575, column: 16, scope: !6114)
!6168 = !DILocation(line: 575, column: 25, scope: !6114)
!6169 = !DILocation(line: 575, column: 28, scope: !6114)
!6170 = !DILocation(line: 575, column: 36, scope: !6114)
!6171 = !DILocation(line: 575, column: 23, scope: !6114)
!6172 = !DILocation(line: 575, column: 14, scope: !6114)
!6173 = !DILocation(line: 576, column: 6, scope: !6174)
!6174 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 576, column: 6)
!6175 = !DILocation(line: 576, column: 21, scope: !6174)
!6176 = !DILocation(line: 576, column: 6, scope: !6114)
!6177 = !DILocation(line: 577, column: 29, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6174, file: !3, line: 576, column: 41)
!6179 = !DILocation(line: 577, column: 3, scope: !6178)
!6180 = !DILocation(line: 578, column: 20, scope: !6178)
!6181 = !DILocation(line: 578, column: 14, scope: !6178)
!6182 = !DILocation(line: 578, column: 12, scope: !6178)
!6183 = !DILocation(line: 580, column: 7, scope: !6184)
!6184 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 580, column: 7)
!6185 = !DILocation(line: 580, column: 16, scope: !6184)
!6186 = !DILocation(line: 580, column: 7, scope: !6178)
!6187 = !DILocation(line: 581, column: 14, scope: !6184)
!6188 = !DILocation(line: 581, column: 4, scope: !6184)
!6189 = !DILocation(line: 583, column: 25, scope: !6178)
!6190 = !DILocation(line: 583, column: 3, scope: !6178)
!6191 = !DILocation(line: 584, column: 16, scope: !6178)
!6192 = !DILocation(line: 584, column: 10, scope: !6178)
!6193 = !DILocation(line: 584, column: 8, scope: !6178)
!6194 = !DILocation(line: 586, column: 7, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 586, column: 7)
!6196 = !DILocation(line: 586, column: 12, scope: !6195)
!6197 = !DILocation(line: 586, column: 7, scope: !6178)
!6198 = !DILocation(line: 587, column: 14, scope: !6195)
!6199 = !DILocation(line: 587, column: 4, scope: !6195)
!6200 = !DILocation(line: 589, column: 13, scope: !6178)
!6201 = !DILocation(line: 590, column: 18, scope: !6178)
!6202 = !DILocation(line: 590, column: 28, scope: !6178)
!6203 = !DILocation(line: 590, column: 16, scope: !6178)
!6204 = !DILocation(line: 592, column: 29, scope: !6178)
!6205 = !DILocation(line: 592, column: 3, scope: !6178)
!6206 = !DILocation(line: 593, column: 14, scope: !6178)
!6207 = !DILocation(line: 593, column: 8, scope: !6178)
!6208 = !DILocation(line: 593, column: 34, scope: !6178)
!6209 = !DILocation(line: 593, column: 6, scope: !6178)
!6210 = !DILocation(line: 595, column: 7, scope: !6211)
!6211 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 595, column: 7)
!6212 = !DILocation(line: 595, column: 17, scope: !6211)
!6213 = !DILocation(line: 595, column: 7, scope: !6178)
!6214 = !DILocation(line: 596, column: 7, scope: !6211)
!6215 = !DILocation(line: 596, column: 4, scope: !6211)
!6216 = !DILocation(line: 597, column: 7, scope: !6217)
!6217 = distinct !DILexicalBlock(scope: !6178, file: !3, line: 597, column: 7)
!6218 = !DILocation(line: 597, column: 17, scope: !6217)
!6219 = !DILocation(line: 597, column: 7, scope: !6178)
!6220 = !DILocation(line: 598, column: 7, scope: !6217)
!6221 = !DILocation(line: 598, column: 4, scope: !6217)
!6222 = !DILocation(line: 601, column: 31, scope: !6178)
!6223 = !DILocation(line: 601, column: 3, scope: !6178)
!6224 = !DILocation(line: 602, column: 21, scope: !6178)
!6225 = !DILocation(line: 602, column: 15, scope: !6178)
!6226 = !DILocation(line: 602, column: 13, scope: !6178)
!6227 = !DILocation(line: 603, column: 31, scope: !6178)
!6228 = !DILocation(line: 603, column: 3, scope: !6178)
!6229 = !DILocation(line: 604, column: 10, scope: !6178)
!6230 = !DILocation(line: 604, column: 20, scope: !6178)
!6231 = !DILocation(line: 604, column: 29, scope: !6178)
!6232 = !DILocation(line: 604, column: 3, scope: !6178)
!6233 = !DILocation(line: 605, column: 2, scope: !6178)
!6234 = !DILocation(line: 607, column: 26, scope: !6114)
!6235 = !DILocation(line: 607, column: 2, scope: !6114)
!6236 = !DILocation(line: 608, column: 9, scope: !6114)
!6237 = !DILocation(line: 608, column: 15, scope: !6114)
!6238 = !DILocation(line: 608, column: 20, scope: !6114)
!6239 = !DILocation(line: 608, column: 2, scope: !6114)
!6240 = !DILocation(line: 609, column: 26, scope: !6114)
!6241 = !DILocation(line: 609, column: 2, scope: !6114)
!6242 = !DILocation(line: 610, column: 9, scope: !6114)
!6243 = !DILocation(line: 610, column: 15, scope: !6114)
!6244 = !DILocation(line: 610, column: 21, scope: !6114)
!6245 = !DILocation(line: 610, column: 2, scope: !6114)
!6246 = !DILocation(line: 612, column: 6, scope: !6247)
!6247 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 612, column: 6)
!6248 = !DILocation(line: 612, column: 21, scope: !6247)
!6249 = !DILocation(line: 612, column: 6, scope: !6114)
!6250 = !DILocation(line: 613, column: 31, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6247, file: !3, line: 612, column: 41)
!6252 = !DILocation(line: 613, column: 3, scope: !6251)
!6253 = !DILocation(line: 614, column: 10, scope: !6251)
!6254 = !DILocation(line: 614, column: 24, scope: !6251)
!6255 = !DILocation(line: 614, column: 3, scope: !6251)
!6256 = !DILocation(line: 615, column: 29, scope: !6251)
!6257 = !DILocation(line: 615, column: 3, scope: !6251)
!6258 = !DILocation(line: 616, column: 10, scope: !6251)
!6259 = !DILocation(line: 616, column: 13, scope: !6251)
!6260 = !DILocation(line: 616, column: 3, scope: !6251)
!6261 = !DILocation(line: 619, column: 31, scope: !6251)
!6262 = !DILocation(line: 619, column: 3, scope: !6251)
!6263 = !DILocation(line: 620, column: 10, scope: !6251)
!6264 = !DILocation(line: 620, column: 21, scope: !6251)
!6265 = !DILocation(line: 620, column: 3, scope: !6251)
!6266 = !DILocation(line: 621, column: 2, scope: !6251)
!6267 = !DILocation(line: 623, column: 2, scope: !6114)
!6268 = !DILocalVariable(name: "__dummy", scope: !6269, file: !3, line: 623, type: !112)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 623, column: 2)
!6270 = distinct !DILexicalBlock(scope: !6114, file: !3, line: 623, column: 2)
!6271 = !DILocation(line: 623, column: 2, scope: !6269)
!6272 = !DILocalVariable(name: "__dummy2", scope: !6269, file: !3, line: 623, type: !112)
!6273 = !DILocation(line: 623, column: 2, scope: !6270)
!6274 = !DILocation(line: 623, column: 2, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 623, column: 2)
!6276 = !DILocation(line: 623, column: 2, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 623, column: 2)
!6278 = !DILocalVariable(name: "__dummy", scope: !6279, file: !3, line: 623, type: !112)
!6279 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 623, column: 2)
!6280 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 623, column: 2)
!6281 = !DILocation(line: 623, column: 2, scope: !6279)
!6282 = !DILocalVariable(name: "__dummy2", scope: !6279, file: !3, line: 623, type: !112)
!6283 = !DILocation(line: 623, column: 2, scope: !6280)
!6284 = !DILocation(line: 623, column: 2, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 623, column: 2)
!6286 = !{i32 -2141980377}
!6287 = !DILocation(line: 623, column: 2, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6285, file: !3, line: 623, column: 2)
!6289 = !DILocation(line: 624, column: 2, scope: !6114)
!6290 = distinct !DISubprogram(name: "vga_vesa_unblank", scope: !3, file: !3, line: 766, type: !6291, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6291 = !DISubroutineType(types: !6292)
!6292 = !{null, !6293}
!6293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!6294 = !DILocalVariable(name: "state", arg: 1, scope: !6290, file: !3, line: 766, type: !6293)
!6295 = !DILocation(line: 766, column: 47, scope: !6290)
!6296 = !DILocation(line: 769, column: 2, scope: !6290)
!6297 = !DILocation(line: 769, column: 2, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 769, column: 2)
!6299 = !DILocation(line: 769, column: 2, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 769, column: 2)
!6301 = !DILocation(line: 769, column: 2, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 769, column: 2)
!6303 = !{i32 -2141978227}
!6304 = !DILocation(line: 769, column: 2, scope: !6305)
!6305 = distinct !DILexicalBlock(scope: !6302, file: !3, line: 769, column: 2)
!6306 = !DILocation(line: 770, column: 8, scope: !6290)
!6307 = !DILocation(line: 770, column: 15, scope: !6290)
!6308 = !DILocation(line: 770, column: 45, scope: !6290)
!6309 = !DILocation(line: 770, column: 2, scope: !6290)
!6310 = !DILocation(line: 772, column: 15, scope: !6290)
!6311 = !DILocation(line: 772, column: 2, scope: !6290)
!6312 = !DILocation(line: 773, column: 19, scope: !6290)
!6313 = !DILocation(line: 773, column: 36, scope: !6290)
!6314 = !DILocation(line: 773, column: 2, scope: !6290)
!6315 = !DILocation(line: 774, column: 15, scope: !6290)
!6316 = !DILocation(line: 774, column: 2, scope: !6290)
!6317 = !DILocation(line: 775, column: 19, scope: !6290)
!6318 = !DILocation(line: 775, column: 36, scope: !6290)
!6319 = !DILocation(line: 775, column: 2, scope: !6290)
!6320 = !DILocation(line: 776, column: 15, scope: !6290)
!6321 = !DILocation(line: 776, column: 2, scope: !6290)
!6322 = !DILocation(line: 777, column: 19, scope: !6290)
!6323 = !DILocation(line: 777, column: 38, scope: !6290)
!6324 = !DILocation(line: 777, column: 2, scope: !6290)
!6325 = !DILocation(line: 778, column: 15, scope: !6290)
!6326 = !DILocation(line: 778, column: 2, scope: !6290)
!6327 = !DILocation(line: 779, column: 19, scope: !6290)
!6328 = !DILocation(line: 779, column: 36, scope: !6290)
!6329 = !DILocation(line: 779, column: 2, scope: !6290)
!6330 = !DILocation(line: 780, column: 15, scope: !6290)
!6331 = !DILocation(line: 780, column: 2, scope: !6290)
!6332 = !DILocation(line: 781, column: 19, scope: !6290)
!6333 = !DILocation(line: 781, column: 29, scope: !6290)
!6334 = !DILocation(line: 781, column: 2, scope: !6290)
!6335 = !DILocation(line: 782, column: 15, scope: !6290)
!6336 = !DILocation(line: 782, column: 2, scope: !6290)
!6337 = !DILocation(line: 783, column: 19, scope: !6290)
!6338 = !DILocation(line: 783, column: 37, scope: !6290)
!6339 = !DILocation(line: 783, column: 2, scope: !6290)
!6340 = !DILocation(line: 784, column: 15, scope: !6290)
!6341 = !DILocation(line: 784, column: 2, scope: !6290)
!6342 = !DILocation(line: 785, column: 19, scope: !6290)
!6343 = !DILocation(line: 785, column: 35, scope: !6290)
!6344 = !DILocation(line: 785, column: 2, scope: !6290)
!6345 = !DILocation(line: 786, column: 15, scope: !6290)
!6346 = !DILocation(line: 786, column: 2, scope: !6290)
!6347 = !DILocation(line: 787, column: 19, scope: !6290)
!6348 = !DILocation(line: 787, column: 32, scope: !6290)
!6349 = !DILocation(line: 787, column: 2, scope: !6290)
!6350 = !DILocation(line: 789, column: 11, scope: !6290)
!6351 = !DILocation(line: 789, column: 18, scope: !6290)
!6352 = !DILocation(line: 789, column: 57, scope: !6290)
!6353 = !DILocation(line: 789, column: 2, scope: !6290)
!6354 = !DILocation(line: 792, column: 8, scope: !6290)
!6355 = !DILocation(line: 792, column: 15, scope: !6290)
!6356 = !DILocation(line: 792, column: 45, scope: !6290)
!6357 = !DILocation(line: 792, column: 2, scope: !6290)
!6358 = !DILocation(line: 793, column: 19, scope: !6290)
!6359 = !DILocation(line: 793, column: 33, scope: !6290)
!6360 = !DILocation(line: 793, column: 2, scope: !6290)
!6361 = !DILocation(line: 794, column: 2, scope: !6290)
!6362 = !DILocation(line: 794, column: 2, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6290, file: !3, line: 794, column: 2)
!6364 = !DILocation(line: 794, column: 2, scope: !6365)
!6365 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 794, column: 2)
!6366 = !DILocation(line: 794, column: 2, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6363, file: !3, line: 794, column: 2)
!6368 = !{i32 -2141977711}
!6369 = !DILocation(line: 794, column: 2, scope: !6370)
!6370 = distinct !DILexicalBlock(scope: !6367, file: !3, line: 794, column: 2)
!6371 = !DILocation(line: 795, column: 1, scope: !6290)
!6372 = distinct !DISubprogram(name: "vga_set_palette", scope: !3, file: !3, line: 659, type: !4303, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6373 = !DILocalVariable(name: "vc", arg: 1, scope: !6372, file: !3, line: 659, type: !162)
!6374 = !DILocation(line: 659, column: 45, scope: !6372)
!6375 = !DILocalVariable(name: "table", arg: 2, scope: !6372, file: !3, line: 659, type: !457)
!6376 = !DILocation(line: 659, column: 70, scope: !6372)
!6377 = !DILocalVariable(name: "i", scope: !6372, file: !3, line: 661, type: !141)
!6378 = !DILocation(line: 661, column: 6, scope: !6372)
!6379 = !DILocalVariable(name: "j", scope: !6372, file: !3, line: 661, type: !141)
!6380 = !DILocation(line: 661, column: 9, scope: !6372)
!6381 = !DILocation(line: 663, column: 17, scope: !6372)
!6382 = !DILocation(line: 663, column: 2, scope: !6372)
!6383 = !DILocation(line: 664, column: 13, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6372, file: !3, line: 664, column: 2)
!6385 = !DILocation(line: 664, column: 9, scope: !6384)
!6386 = !DILocation(line: 664, column: 7, scope: !6384)
!6387 = !DILocation(line: 664, column: 18, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 664, column: 2)
!6389 = !DILocation(line: 664, column: 20, scope: !6388)
!6390 = !DILocation(line: 664, column: 2, scope: !6384)
!6391 = !DILocation(line: 665, column: 18, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6388, file: !3, line: 664, column: 31)
!6393 = !DILocation(line: 665, column: 39, scope: !6392)
!6394 = !DILocation(line: 665, column: 45, scope: !6392)
!6395 = !DILocation(line: 665, column: 3, scope: !6392)
!6396 = !DILocation(line: 666, column: 18, scope: !6392)
!6397 = !DILocation(line: 666, column: 38, scope: !6392)
!6398 = !DILocation(line: 666, column: 42, scope: !6392)
!6399 = !DILocation(line: 666, column: 54, scope: !6392)
!6400 = !DILocation(line: 666, column: 58, scope: !6392)
!6401 = !DILocation(line: 666, column: 3, scope: !6392)
!6402 = !DILocation(line: 667, column: 18, scope: !6392)
!6403 = !DILocation(line: 667, column: 38, scope: !6392)
!6404 = !DILocation(line: 667, column: 42, scope: !6392)
!6405 = !DILocation(line: 667, column: 54, scope: !6392)
!6406 = !DILocation(line: 667, column: 58, scope: !6392)
!6407 = !DILocation(line: 667, column: 3, scope: !6392)
!6408 = !DILocation(line: 668, column: 18, scope: !6392)
!6409 = !DILocation(line: 668, column: 38, scope: !6392)
!6410 = !DILocation(line: 668, column: 42, scope: !6392)
!6411 = !DILocation(line: 668, column: 54, scope: !6392)
!6412 = !DILocation(line: 668, column: 58, scope: !6392)
!6413 = !DILocation(line: 668, column: 3, scope: !6392)
!6414 = !DILocation(line: 669, column: 2, scope: !6392)
!6415 = !DILocation(line: 664, column: 27, scope: !6388)
!6416 = !DILocation(line: 664, column: 2, scope: !6388)
!6417 = distinct !{!6417, !6390, !6418}
!6418 = !DILocation(line: 669, column: 2, scope: !6384)
!6419 = !DILocation(line: 670, column: 1, scope: !6372)
!6420 = distinct !DISubprogram(name: "vga_pal_blank", scope: !3, file: !3, line: 797, type: !6291, scopeLine: 798, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6421 = !DILocalVariable(name: "state", arg: 1, scope: !6420, file: !3, line: 797, type: !6293)
!6422 = !DILocation(line: 797, column: 44, scope: !6420)
!6423 = !DILocalVariable(name: "i", scope: !6420, file: !3, line: 799, type: !141)
!6424 = !DILocation(line: 799, column: 6, scope: !6420)
!6425 = !DILocation(line: 801, column: 8, scope: !6420)
!6426 = !DILocation(line: 801, column: 15, scope: !6420)
!6427 = !DILocation(line: 801, column: 2, scope: !6420)
!6428 = !DILocation(line: 802, column: 9, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6420, file: !3, line: 802, column: 2)
!6430 = !DILocation(line: 802, column: 7, scope: !6429)
!6431 = !DILocation(line: 802, column: 14, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 802, column: 2)
!6433 = !DILocation(line: 802, column: 16, scope: !6432)
!6434 = !DILocation(line: 802, column: 2, scope: !6429)
!6435 = !DILocation(line: 803, column: 9, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6432, file: !3, line: 802, column: 27)
!6437 = !DILocation(line: 803, column: 16, scope: !6436)
!6438 = !DILocation(line: 803, column: 37, scope: !6436)
!6439 = !DILocation(line: 803, column: 3, scope: !6436)
!6440 = !DILocation(line: 804, column: 9, scope: !6436)
!6441 = !DILocation(line: 804, column: 16, scope: !6436)
!6442 = !DILocation(line: 804, column: 3, scope: !6436)
!6443 = !DILocation(line: 805, column: 9, scope: !6436)
!6444 = !DILocation(line: 805, column: 16, scope: !6436)
!6445 = !DILocation(line: 805, column: 3, scope: !6436)
!6446 = !DILocation(line: 806, column: 9, scope: !6436)
!6447 = !DILocation(line: 806, column: 16, scope: !6436)
!6448 = !DILocation(line: 806, column: 3, scope: !6436)
!6449 = !DILocation(line: 807, column: 2, scope: !6436)
!6450 = !DILocation(line: 802, column: 23, scope: !6432)
!6451 = !DILocation(line: 802, column: 2, scope: !6432)
!6452 = distinct !{!6452, !6434, !6453}
!6453 = !DILocation(line: 807, column: 2, scope: !6429)
!6454 = !DILocation(line: 808, column: 1, scope: !6420)
!6455 = distinct !DISubprogram(name: "vga_vesa_blank", scope: !3, file: !3, line: 696, type: !6456, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6456 = !DISubroutineType(types: !6457)
!6457 = !{null, !6293, !141}
!6458 = !DILocalVariable(name: "state", arg: 1, scope: !6455, file: !3, line: 696, type: !6293)
!6459 = !DILocation(line: 696, column: 45, scope: !6455)
!6460 = !DILocalVariable(name: "mode", arg: 2, scope: !6455, file: !3, line: 696, type: !141)
!6461 = !DILocation(line: 696, column: 56, scope: !6455)
!6462 = !DILocation(line: 699, column: 7, scope: !6463)
!6463 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 699, column: 6)
!6464 = !DILocation(line: 699, column: 6, scope: !6455)
!6465 = !DILocation(line: 700, column: 3, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6463, file: !3, line: 699, column: 25)
!6467 = !DILocation(line: 700, column: 3, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 700, column: 3)
!6469 = !DILocation(line: 700, column: 3, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 700, column: 3)
!6471 = !DILocation(line: 700, column: 3, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 700, column: 3)
!6473 = !{i32 -2141979964}
!6474 = !DILocation(line: 700, column: 3, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6472, file: !3, line: 700, column: 3)
!6476 = !DILocation(line: 701, column: 34, scope: !6466)
!6477 = !DILocation(line: 701, column: 41, scope: !6466)
!6478 = !DILocation(line: 701, column: 28, scope: !6466)
!6479 = !DILocation(line: 701, column: 26, scope: !6466)
!6480 = !DILocation(line: 702, column: 34, scope: !6466)
!6481 = !DILocation(line: 702, column: 28, scope: !6466)
!6482 = !DILocation(line: 702, column: 26, scope: !6466)
!6483 = !DILocation(line: 703, column: 31, scope: !6466)
!6484 = !DILocation(line: 703, column: 38, scope: !6466)
!6485 = !DILocation(line: 703, column: 25, scope: !6466)
!6486 = !DILocation(line: 703, column: 23, scope: !6466)
!6487 = !DILocation(line: 704, column: 3, scope: !6466)
!6488 = !DILocation(line: 704, column: 3, scope: !6489)
!6489 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 704, column: 3)
!6490 = !DILocation(line: 704, column: 3, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 704, column: 3)
!6492 = !DILocation(line: 704, column: 3, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6489, file: !3, line: 704, column: 3)
!6494 = !{i32 -2141979566}
!6495 = !DILocation(line: 704, column: 3, scope: !6496)
!6496 = distinct !DILexicalBlock(scope: !6493, file: !3, line: 704, column: 3)
!6497 = !DILocation(line: 706, column: 16, scope: !6466)
!6498 = !DILocation(line: 706, column: 3, scope: !6466)
!6499 = !DILocation(line: 707, column: 37, scope: !6466)
!6500 = !DILocation(line: 707, column: 31, scope: !6466)
!6501 = !DILocation(line: 707, column: 29, scope: !6466)
!6502 = !DILocation(line: 708, column: 16, scope: !6466)
!6503 = !DILocation(line: 708, column: 3, scope: !6466)
!6504 = !DILocation(line: 709, column: 37, scope: !6466)
!6505 = !DILocation(line: 709, column: 31, scope: !6466)
!6506 = !DILocation(line: 709, column: 29, scope: !6466)
!6507 = !DILocation(line: 710, column: 16, scope: !6466)
!6508 = !DILocation(line: 710, column: 3, scope: !6466)
!6509 = !DILocation(line: 711, column: 39, scope: !6466)
!6510 = !DILocation(line: 711, column: 33, scope: !6466)
!6511 = !DILocation(line: 711, column: 31, scope: !6466)
!6512 = !DILocation(line: 712, column: 16, scope: !6466)
!6513 = !DILocation(line: 712, column: 3, scope: !6466)
!6514 = !DILocation(line: 713, column: 37, scope: !6466)
!6515 = !DILocation(line: 713, column: 31, scope: !6466)
!6516 = !DILocation(line: 713, column: 29, scope: !6466)
!6517 = !DILocation(line: 714, column: 16, scope: !6466)
!6518 = !DILocation(line: 714, column: 3, scope: !6466)
!6519 = !DILocation(line: 715, column: 30, scope: !6466)
!6520 = !DILocation(line: 715, column: 24, scope: !6466)
!6521 = !DILocation(line: 715, column: 22, scope: !6466)
!6522 = !DILocation(line: 716, column: 16, scope: !6466)
!6523 = !DILocation(line: 716, column: 3, scope: !6466)
!6524 = !DILocation(line: 717, column: 38, scope: !6466)
!6525 = !DILocation(line: 717, column: 32, scope: !6466)
!6526 = !DILocation(line: 717, column: 30, scope: !6466)
!6527 = !DILocation(line: 718, column: 16, scope: !6466)
!6528 = !DILocation(line: 718, column: 3, scope: !6466)
!6529 = !DILocation(line: 719, column: 36, scope: !6466)
!6530 = !DILocation(line: 719, column: 30, scope: !6466)
!6531 = !DILocation(line: 719, column: 28, scope: !6466)
!6532 = !DILocation(line: 720, column: 16, scope: !6466)
!6533 = !DILocation(line: 720, column: 3, scope: !6466)
!6534 = !DILocation(line: 721, column: 33, scope: !6466)
!6535 = !DILocation(line: 721, column: 27, scope: !6466)
!6536 = !DILocation(line: 721, column: 25, scope: !6466)
!6537 = !DILocation(line: 722, column: 37, scope: !6466)
!6538 = !DILocation(line: 722, column: 44, scope: !6466)
!6539 = !DILocation(line: 722, column: 28, scope: !6466)
!6540 = !DILocation(line: 722, column: 26, scope: !6466)
!6541 = !DILocation(line: 723, column: 2, scope: !6466)
!6542 = !DILocation(line: 727, column: 2, scope: !6455)
!6543 = !DILocation(line: 727, column: 2, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 727, column: 2)
!6545 = !DILocation(line: 727, column: 2, scope: !6546)
!6546 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 727, column: 2)
!6547 = !DILocation(line: 727, column: 2, scope: !6548)
!6548 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 727, column: 2)
!6549 = !{i32 -2141979081}
!6550 = !DILocation(line: 727, column: 2, scope: !6551)
!6551 = distinct !DILexicalBlock(scope: !6548, file: !3, line: 727, column: 2)
!6552 = !DILocation(line: 728, column: 11, scope: !6455)
!6553 = !DILocation(line: 728, column: 18, scope: !6455)
!6554 = !DILocation(line: 728, column: 57, scope: !6455)
!6555 = !DILocation(line: 728, column: 47, scope: !6455)
!6556 = !DILocation(line: 728, column: 70, scope: !6455)
!6557 = !DILocation(line: 728, column: 2, scope: !6455)
!6558 = !DILocation(line: 731, column: 17, scope: !6559)
!6559 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 731, column: 6)
!6560 = !DILocation(line: 731, column: 7, scope: !6559)
!6561 = !DILocation(line: 731, column: 27, scope: !6559)
!6562 = !DILocation(line: 731, column: 35, scope: !6559)
!6563 = !DILocation(line: 731, column: 6, scope: !6455)
!6564 = !DILocation(line: 732, column: 9, scope: !6559)
!6565 = !DILocation(line: 732, column: 16, scope: !6559)
!6566 = !DILocation(line: 732, column: 46, scope: !6559)
!6567 = !DILocation(line: 732, column: 36, scope: !6559)
!6568 = !DILocation(line: 732, column: 56, scope: !6559)
!6569 = !DILocation(line: 732, column: 3, scope: !6559)
!6570 = !DILocation(line: 739, column: 6, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 739, column: 6)
!6572 = !DILocation(line: 739, column: 11, scope: !6571)
!6573 = !DILocation(line: 739, column: 6, scope: !6455)
!6574 = !DILocation(line: 740, column: 16, scope: !6575)
!6575 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 739, column: 33)
!6576 = !DILocation(line: 740, column: 3, scope: !6575)
!6577 = !DILocation(line: 741, column: 16, scope: !6575)
!6578 = !DILocation(line: 741, column: 3, scope: !6575)
!6579 = !DILocation(line: 742, column: 16, scope: !6575)
!6580 = !DILocation(line: 742, column: 3, scope: !6575)
!6581 = !DILocation(line: 743, column: 16, scope: !6575)
!6582 = !DILocation(line: 743, column: 3, scope: !6575)
!6583 = !DILocation(line: 744, column: 16, scope: !6575)
!6584 = !DILocation(line: 744, column: 3, scope: !6575)
!6585 = !DILocation(line: 745, column: 20, scope: !6575)
!6586 = !DILocation(line: 745, column: 10, scope: !6575)
!6587 = !DILocation(line: 745, column: 29, scope: !6575)
!6588 = !DILocation(line: 745, column: 37, scope: !6575)
!6589 = !DILocation(line: 745, column: 3, scope: !6575)
!6590 = !DILocation(line: 746, column: 2, scope: !6575)
!6591 = !DILocation(line: 748, column: 6, scope: !6592)
!6592 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 748, column: 6)
!6593 = !DILocation(line: 748, column: 11, scope: !6592)
!6594 = !DILocation(line: 748, column: 6, scope: !6455)
!6595 = !DILocation(line: 754, column: 16, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 748, column: 33)
!6597 = !DILocation(line: 754, column: 3, scope: !6596)
!6598 = !DILocation(line: 755, column: 16, scope: !6596)
!6599 = !DILocation(line: 755, column: 3, scope: !6596)
!6600 = !DILocation(line: 756, column: 16, scope: !6596)
!6601 = !DILocation(line: 756, column: 3, scope: !6596)
!6602 = !DILocation(line: 757, column: 16, scope: !6596)
!6603 = !DILocation(line: 757, column: 3, scope: !6596)
!6604 = !DILocation(line: 758, column: 2, scope: !6596)
!6605 = !DILocation(line: 761, column: 8, scope: !6455)
!6606 = !DILocation(line: 761, column: 15, scope: !6455)
!6607 = !DILocation(line: 761, column: 45, scope: !6455)
!6608 = !DILocation(line: 761, column: 2, scope: !6455)
!6609 = !DILocation(line: 762, column: 19, scope: !6455)
!6610 = !DILocation(line: 762, column: 33, scope: !6455)
!6611 = !DILocation(line: 762, column: 2, scope: !6455)
!6612 = !DILocation(line: 763, column: 2, scope: !6455)
!6613 = !DILocation(line: 763, column: 2, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 763, column: 2)
!6615 = !DILocation(line: 763, column: 2, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 763, column: 2)
!6617 = !DILocation(line: 763, column: 2, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 763, column: 2)
!6619 = !{i32 -2141978603}
!6620 = !DILocation(line: 763, column: 2, scope: !6621)
!6621 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 763, column: 2)
!6622 = !DILocation(line: 764, column: 1, scope: !6455)
!6623 = distinct !DISubprogram(name: "vga_w", scope: !4381, file: !4381, line: 242, type: !6624, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6624 = !DISubroutineType(types: !6625)
!6625 = !{null, !111, !119, !123}
!6626 = !DILocalVariable(name: "regbase", arg: 1, scope: !6623, file: !4381, line: 242, type: !111)
!6627 = !DILocation(line: 242, column: 41, scope: !6623)
!6628 = !DILocalVariable(name: "port", arg: 2, scope: !6623, file: !4381, line: 242, type: !119)
!6629 = !DILocation(line: 242, column: 65, scope: !6623)
!6630 = !DILocalVariable(name: "val", arg: 3, scope: !6623, file: !4381, line: 242, type: !123)
!6631 = !DILocation(line: 242, column: 85, scope: !6623)
!6632 = !DILocation(line: 244, column: 6, scope: !6633)
!6633 = distinct !DILexicalBlock(scope: !6623, file: !4381, line: 244, column: 6)
!6634 = !DILocation(line: 244, column: 6, scope: !6623)
!6635 = !DILocation(line: 245, column: 13, scope: !6633)
!6636 = !DILocation(line: 245, column: 22, scope: !6633)
!6637 = !DILocation(line: 245, column: 28, scope: !6633)
!6638 = !DILocation(line: 245, column: 3, scope: !6633)
!6639 = !DILocation(line: 247, column: 13, scope: !6633)
!6640 = !DILocation(line: 247, column: 19, scope: !6633)
!6641 = !DILocation(line: 247, column: 3, scope: !6633)
!6642 = !DILocation(line: 248, column: 1, scope: !6623)
!6643 = distinct !DISubprogram(name: "vga_wseq", scope: !4381, file: !4381, line: 324, type: !6644, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6644 = !DISubroutineType(types: !6645)
!6645 = !{null, !111, !123, !123}
!6646 = !DILocalVariable(name: "regbase", arg: 1, scope: !6643, file: !4381, line: 324, type: !111)
!6647 = !DILocation(line: 324, column: 44, scope: !6643)
!6648 = !DILocalVariable(name: "reg", arg: 2, scope: !6643, file: !4381, line: 324, type: !123)
!6649 = !DILocation(line: 324, column: 67, scope: !6643)
!6650 = !DILocalVariable(name: "val", arg: 3, scope: !6643, file: !4381, line: 324, type: !123)
!6651 = !DILocation(line: 324, column: 86, scope: !6643)
!6652 = !DILocation(line: 327, column: 14, scope: !6643)
!6653 = !DILocation(line: 327, column: 34, scope: !6643)
!6654 = !DILocation(line: 327, column: 39, scope: !6643)
!6655 = !DILocation(line: 327, column: 2, scope: !6643)
!6656 = !DILocation(line: 332, column: 1, scope: !6643)
!6657 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !5766, file: !5766, line: 661, type: !1921, scopeLine: 662, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6658 = !DILocalVariable(name: "__edi", scope: !6659, file: !5766, line: 663, type: !112)
!6659 = distinct !DILexicalBlock(scope: !6657, file: !5766, line: 663, column: 2)
!6660 = !DILocation(line: 663, column: 2, scope: !6659)
!6661 = !DILocalVariable(name: "__esi", scope: !6659, file: !5766, line: 663, type: !112)
!6662 = !DILocalVariable(name: "__edx", scope: !6659, file: !5766, line: 663, type: !112)
!6663 = !DILocalVariable(name: "__ecx", scope: !6659, file: !5766, line: 663, type: !112)
!6664 = !DILocalVariable(name: "__eax", scope: !6659, file: !5766, line: 663, type: !112)
!6665 = !{i32 -2145744399, i32 -2145743669, i32 -2145743435, i32 -2145743384, i32 -2145743356, i32 -2145743331, i32 -2145743647, i32 -2145743634, i32 -2145743196, i32 -2145743077, i32 -2145743542, i32 -2145743515, i32 -2145743487, i32 -2145743457}
!6666 = !DILocation(line: 664, column: 1, scope: !6657)
!6667 = distinct !DISubprogram(name: "vga_mm_w", scope: !4381, file: !4381, line: 223, type: !6624, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6668 = !DILocalVariable(name: "regbase", arg: 1, scope: !6667, file: !4381, line: 223, type: !111)
!6669 = !DILocation(line: 223, column: 44, scope: !6667)
!6670 = !DILocalVariable(name: "port", arg: 2, scope: !6667, file: !4381, line: 223, type: !119)
!6671 = !DILocation(line: 223, column: 68, scope: !6667)
!6672 = !DILocalVariable(name: "val", arg: 3, scope: !6667, file: !4381, line: 223, type: !123)
!6673 = !DILocation(line: 223, column: 88, scope: !6667)
!6674 = !DILocation(line: 225, column: 10, scope: !6667)
!6675 = !DILocation(line: 225, column: 15, scope: !6667)
!6676 = !DILocation(line: 225, column: 25, scope: !6667)
!6677 = !DILocation(line: 225, column: 23, scope: !6667)
!6678 = !DILocation(line: 225, column: 2, scope: !6667)
!6679 = !DILocation(line: 226, column: 1, scope: !6667)
!6680 = distinct !DISubprogram(name: "vga_io_w", scope: !4381, file: !4381, line: 207, type: !6681, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6681 = !DISubroutineType(types: !6682)
!6682 = !{null, !119, !123}
!6683 = !DILocalVariable(name: "port", arg: 1, scope: !6680, file: !4381, line: 207, type: !119)
!6684 = !DILocation(line: 207, column: 45, scope: !6680)
!6685 = !DILocalVariable(name: "val", arg: 2, scope: !6680, file: !4381, line: 207, type: !123)
!6686 = !DILocation(line: 207, column: 65, scope: !6680)
!6687 = !DILocation(line: 209, column: 9, scope: !6680)
!6688 = !DILocation(line: 209, column: 14, scope: !6680)
!6689 = !DILocation(line: 209, column: 2, scope: !6680)
!6690 = !DILocation(line: 210, column: 1, scope: !6680)
!6691 = distinct !DISubprogram(name: "writeb", scope: !5741, file: !5741, line: 65, type: !6692, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{null, !123, !6694}
!6694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6695, size: 64)
!6695 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6696 = !DILocalVariable(name: "val", arg: 1, scope: !6691, file: !5741, line: 65, type: !123)
!6697 = !DILocation(line: 65, column: 1, scope: !6691)
!6698 = !DILocalVariable(name: "addr", arg: 2, scope: !6691, file: !5741, line: 65, type: !6694)
!6699 = !{i32 -2142062060}
!6700 = distinct !DISubprogram(name: "vga_w_fast", scope: !4381, file: !4381, line: 251, type: !6701, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6701 = !DISubroutineType(types: !6702)
!6702 = !{null, !111, !119, !123, !123}
!6703 = !DILocalVariable(name: "regbase", arg: 1, scope: !6700, file: !4381, line: 251, type: !111)
!6704 = !DILocation(line: 251, column: 46, scope: !6700)
!6705 = !DILocalVariable(name: "port", arg: 2, scope: !6700, file: !4381, line: 251, type: !119)
!6706 = !DILocation(line: 251, column: 70, scope: !6700)
!6707 = !DILocalVariable(name: "reg", arg: 3, scope: !6700, file: !4381, line: 252, type: !123)
!6708 = !DILocation(line: 252, column: 25, scope: !6700)
!6709 = !DILocalVariable(name: "val", arg: 4, scope: !6700, file: !4381, line: 252, type: !123)
!6710 = !DILocation(line: 252, column: 44, scope: !6700)
!6711 = !DILocation(line: 254, column: 6, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6700, file: !4381, line: 254, column: 6)
!6713 = !DILocation(line: 254, column: 6, scope: !6700)
!6714 = !DILocation(line: 255, column: 18, scope: !6712)
!6715 = !DILocation(line: 255, column: 27, scope: !6712)
!6716 = !DILocation(line: 255, column: 33, scope: !6712)
!6717 = !DILocation(line: 255, column: 38, scope: !6712)
!6718 = !DILocation(line: 255, column: 3, scope: !6712)
!6719 = !DILocation(line: 257, column: 18, scope: !6712)
!6720 = !DILocation(line: 257, column: 24, scope: !6712)
!6721 = !DILocation(line: 257, column: 29, scope: !6712)
!6722 = !DILocation(line: 257, column: 3, scope: !6712)
!6723 = !DILocation(line: 258, column: 1, scope: !6700)
!6724 = distinct !DISubprogram(name: "vga_mm_w_fast", scope: !4381, file: !4381, line: 228, type: !6701, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6725 = !DILocalVariable(name: "regbase", arg: 1, scope: !6724, file: !4381, line: 228, type: !111)
!6726 = !DILocation(line: 228, column: 49, scope: !6724)
!6727 = !DILocalVariable(name: "port", arg: 2, scope: !6724, file: !4381, line: 228, type: !119)
!6728 = !DILocation(line: 228, column: 73, scope: !6724)
!6729 = !DILocalVariable(name: "reg", arg: 3, scope: !6724, file: !4381, line: 229, type: !123)
!6730 = !DILocation(line: 229, column: 21, scope: !6724)
!6731 = !DILocalVariable(name: "val", arg: 4, scope: !6724, file: !4381, line: 229, type: !123)
!6732 = !DILocation(line: 229, column: 40, scope: !6724)
!6733 = !DILocation(line: 231, column: 10, scope: !6724)
!6734 = !DILocation(line: 231, column: 35, scope: !6724)
!6735 = !DILocation(line: 231, column: 45, scope: !6724)
!6736 = !DILocation(line: 231, column: 43, scope: !6724)
!6737 = !DILocation(line: 231, column: 2, scope: !6724)
!6738 = !DILocation(line: 232, column: 1, scope: !6724)
!6739 = distinct !DISubprogram(name: "vga_io_w_fast", scope: !4381, file: !4381, line: 212, type: !6740, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6740 = !DISubroutineType(types: !6741)
!6741 = !{null, !119, !123, !123}
!6742 = !DILocalVariable(name: "port", arg: 1, scope: !6739, file: !4381, line: 212, type: !119)
!6743 = !DILocation(line: 212, column: 50, scope: !6739)
!6744 = !DILocalVariable(name: "reg", arg: 2, scope: !6739, file: !4381, line: 212, type: !123)
!6745 = !DILocation(line: 212, column: 70, scope: !6739)
!6746 = !DILocalVariable(name: "val", arg: 3, scope: !6739, file: !4381, line: 213, type: !123)
!6747 = !DILocation(line: 213, column: 21, scope: !6739)
!6748 = !DILocation(line: 215, column: 7, scope: !6739)
!6749 = !DILocation(line: 215, column: 32, scope: !6739)
!6750 = !DILocation(line: 215, column: 2, scope: !6739)
!6751 = !DILocation(line: 216, column: 1, scope: !6739)
!6752 = distinct !DISubprogram(name: "writew", scope: !5741, file: !5741, line: 66, type: !6753, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6753 = !DISubroutineType(types: !6754)
!6754 = !{null, !119, !6694}
!6755 = !DILocalVariable(name: "val", arg: 1, scope: !6752, file: !5741, line: 66, type: !119)
!6756 = !DILocation(line: 66, column: 1, scope: !6752)
!6757 = !DILocalVariable(name: "addr", arg: 2, scope: !6752, file: !5741, line: 66, type: !6694)
!6758 = !{i32 -2142061676}
!6759 = distinct !DISubprogram(name: "vga_r", scope: !4381, file: !4381, line: 234, type: !6760, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!123, !111, !119}
!6762 = !DILocalVariable(name: "regbase", arg: 1, scope: !6759, file: !4381, line: 234, type: !111)
!6763 = !DILocation(line: 234, column: 50, scope: !6759)
!6764 = !DILocalVariable(name: "port", arg: 2, scope: !6759, file: !4381, line: 234, type: !119)
!6765 = !DILocation(line: 234, column: 74, scope: !6759)
!6766 = !DILocation(line: 236, column: 6, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6759, file: !4381, line: 236, column: 6)
!6768 = !DILocation(line: 236, column: 6, scope: !6759)
!6769 = !DILocation(line: 237, column: 20, scope: !6767)
!6770 = !DILocation(line: 237, column: 29, scope: !6767)
!6771 = !DILocation(line: 237, column: 10, scope: !6767)
!6772 = !DILocation(line: 237, column: 3, scope: !6767)
!6773 = !DILocation(line: 239, column: 20, scope: !6767)
!6774 = !DILocation(line: 239, column: 10, scope: !6767)
!6775 = !DILocation(line: 239, column: 3, scope: !6767)
!6776 = !DILocation(line: 240, column: 1, scope: !6759)
!6777 = distinct !DISubprogram(name: "vga_rseq", scope: !4381, file: !4381, line: 318, type: !6778, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6778 = !DISubroutineType(types: !6779)
!6779 = !{!123, !111, !123}
!6780 = !DILocalVariable(name: "regbase", arg: 1, scope: !6777, file: !4381, line: 318, type: !111)
!6781 = !DILocation(line: 318, column: 53, scope: !6777)
!6782 = !DILocalVariable(name: "reg", arg: 2, scope: !6777, file: !4381, line: 318, type: !123)
!6783 = !DILocation(line: 318, column: 76, scope: !6777)
!6784 = !DILocation(line: 320, column: 16, scope: !6777)
!6785 = !DILocation(line: 320, column: 36, scope: !6777)
!6786 = !DILocation(line: 320, column: 9, scope: !6777)
!6787 = !DILocation(line: 321, column: 23, scope: !6777)
!6788 = !DILocation(line: 321, column: 16, scope: !6777)
!6789 = !DILocation(line: 321, column: 9, scope: !6777)
!6790 = distinct !DISubprogram(name: "vga_mm_r", scope: !4381, file: !4381, line: 218, type: !6760, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6791 = !DILocalVariable(name: "regbase", arg: 1, scope: !6790, file: !4381, line: 218, type: !111)
!6792 = !DILocation(line: 218, column: 53, scope: !6790)
!6793 = !DILocalVariable(name: "port", arg: 2, scope: !6790, file: !4381, line: 218, type: !119)
!6794 = !DILocation(line: 218, column: 77, scope: !6790)
!6795 = !DILocation(line: 220, column: 16, scope: !6790)
!6796 = !DILocation(line: 220, column: 26, scope: !6790)
!6797 = !DILocation(line: 220, column: 24, scope: !6790)
!6798 = !DILocation(line: 220, column: 9, scope: !6790)
!6799 = !DILocation(line: 220, column: 2, scope: !6790)
!6800 = distinct !DISubprogram(name: "vga_io_r", scope: !4381, file: !4381, line: 202, type: !6801, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6801 = !DISubroutineType(types: !6802)
!6802 = !{!123, !119}
!6803 = !DILocalVariable(name: "port", arg: 1, scope: !6800, file: !4381, line: 202, type: !119)
!6804 = !DILocation(line: 202, column: 54, scope: !6800)
!6805 = !DILocation(line: 204, column: 15, scope: !6800)
!6806 = !DILocation(line: 204, column: 9, scope: !6800)
!6807 = !DILocation(line: 204, column: 2, scope: !6800)
!6808 = distinct !DISubprogram(name: "readb", scope: !5741, file: !5741, line: 57, type: !6809, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6809 = !DISubroutineType(types: !6810)
!6810 = !{!123, !6811}
!6811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6812, size: 64)
!6812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6695)
!6813 = !DILocalVariable(name: "addr", arg: 1, scope: !6808, file: !5741, line: 57, type: !6811)
!6814 = !DILocation(line: 57, column: 1, scope: !6808)
!6815 = !DILocalVariable(name: "ret", scope: !6808, file: !5741, line: 57, type: !123)
!6816 = !{i32 -2142064514}
!6817 = distinct !DISubprogram(name: "vgacon_do_font_op", scope: !3, file: !3, line: 866, type: !6818, scopeLine: 868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!6818 = !DISubroutineType(types: !6819)
!6819 = !{!141, !6293, !126, !141, !521}
!6820 = !DILocalVariable(name: "state", arg: 1, scope: !6817, file: !3, line: 866, type: !6293)
!6821 = !DILocation(line: 866, column: 47, scope: !6817)
!6822 = !DILocalVariable(name: "arg", arg: 2, scope: !6817, file: !3, line: 866, type: !126)
!6823 = !DILocation(line: 866, column: 60, scope: !6817)
!6824 = !DILocalVariable(name: "set", arg: 3, scope: !6817, file: !3, line: 866, type: !141)
!6825 = !DILocation(line: 866, column: 69, scope: !6817)
!6826 = !DILocalVariable(name: "ch512", arg: 4, scope: !6817, file: !3, line: 867, type: !521)
!6827 = !DILocation(line: 867, column: 8, scope: !6817)
!6828 = !DILocalVariable(name: "video_port_status", scope: !6817, file: !3, line: 869, type: !119)
!6829 = !DILocation(line: 869, column: 17, scope: !6817)
!6830 = !DILocation(line: 869, column: 37, scope: !6817)
!6831 = !DILocation(line: 869, column: 56, scope: !6817)
!6832 = !DILocalVariable(name: "font_select", scope: !6817, file: !3, line: 870, type: !141)
!6833 = !DILocation(line: 870, column: 6, scope: !6817)
!6834 = !DILocalVariable(name: "beg", scope: !6817, file: !3, line: 870, type: !141)
!6835 = !DILocation(line: 870, column: 26, scope: !6817)
!6836 = !DILocalVariable(name: "i", scope: !6817, file: !3, line: 870, type: !141)
!6837 = !DILocation(line: 870, column: 31, scope: !6817)
!6838 = !DILocalVariable(name: "charmap", scope: !6817, file: !3, line: 871, type: !126)
!6839 = !DILocation(line: 871, column: 8, scope: !6817)
!6840 = !DILocalVariable(name: "clear_attribs", scope: !6817, file: !3, line: 872, type: !521)
!6841 = !DILocation(line: 872, column: 7, scope: !6817)
!6842 = !DILocation(line: 873, column: 6, scope: !6843)
!6843 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 873, column: 6)
!6844 = !DILocation(line: 873, column: 21, scope: !6843)
!6845 = !DILocation(line: 873, column: 6, scope: !6817)
!6846 = !DILocalVariable(name: "start", scope: !6847, file: !3, line: 874, type: !112)
!6847 = distinct !DILexicalBlock(scope: !6848, file: !3, line: 874, column: 22)
!6848 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 873, column: 41)
!6849 = !DILocation(line: 874, column: 22, scope: !6847)
!6850 = !DILocation(line: 874, column: 22, scope: !6851)
!6851 = distinct !DILexicalBlock(scope: !6847, file: !3, line: 874, column: 22)
!6852 = !DILocation(line: 874, column: 13, scope: !6848)
!6853 = !DILocation(line: 874, column: 11, scope: !6848)
!6854 = !DILocation(line: 875, column: 7, scope: !6848)
!6855 = !DILocation(line: 876, column: 2, scope: !6848)
!6856 = !DILocalVariable(name: "start", scope: !6857, file: !3, line: 877, type: !112)
!6857 = distinct !DILexicalBlock(scope: !6858, file: !3, line: 877, column: 22)
!6858 = distinct !DILexicalBlock(scope: !6843, file: !3, line: 876, column: 9)
!6859 = !DILocation(line: 877, column: 22, scope: !6857)
!6860 = !DILocation(line: 877, column: 22, scope: !6861)
!6861 = distinct !DILexicalBlock(scope: !6857, file: !3, line: 877, column: 22)
!6862 = !DILocation(line: 877, column: 13, scope: !6858)
!6863 = !DILocation(line: 877, column: 11, scope: !6858)
!6864 = !DILocation(line: 878, column: 7, scope: !6858)
!6865 = !DILocation(line: 886, column: 7, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 886, column: 6)
!6867 = !DILocation(line: 886, column: 6, scope: !6817)
!6868 = !DILocation(line: 887, column: 3, scope: !6866)
!6869 = !DILocation(line: 889, column: 22, scope: !6817)
!6870 = !DILocation(line: 890, column: 16, scope: !6817)
!6871 = !DILocation(line: 890, column: 14, scope: !6817)
!6872 = !DILocation(line: 908, column: 2, scope: !6817)
!6873 = !DILocation(line: 908, column: 2, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 908, column: 2)
!6875 = !DILocation(line: 908, column: 2, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 908, column: 2)
!6877 = !DILocation(line: 908, column: 2, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6874, file: !3, line: 908, column: 2)
!6879 = !{i32 -2141975120}
!6880 = !DILocation(line: 908, column: 2, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6878, file: !3, line: 908, column: 2)
!6882 = !DILocation(line: 910, column: 11, scope: !6817)
!6883 = !DILocation(line: 910, column: 18, scope: !6817)
!6884 = !DILocation(line: 910, column: 2, scope: !6817)
!6885 = !DILocation(line: 912, column: 11, scope: !6817)
!6886 = !DILocation(line: 912, column: 18, scope: !6817)
!6887 = !DILocation(line: 912, column: 2, scope: !6817)
!6888 = !DILocation(line: 914, column: 11, scope: !6817)
!6889 = !DILocation(line: 914, column: 18, scope: !6817)
!6890 = !DILocation(line: 914, column: 2, scope: !6817)
!6891 = !DILocation(line: 916, column: 11, scope: !6817)
!6892 = !DILocation(line: 916, column: 18, scope: !6817)
!6893 = !DILocation(line: 916, column: 2, scope: !6817)
!6894 = !DILocation(line: 919, column: 11, scope: !6817)
!6895 = !DILocation(line: 919, column: 18, scope: !6817)
!6896 = !DILocation(line: 919, column: 2, scope: !6817)
!6897 = !DILocation(line: 921, column: 11, scope: !6817)
!6898 = !DILocation(line: 921, column: 18, scope: !6817)
!6899 = !DILocation(line: 921, column: 2, scope: !6817)
!6900 = !DILocation(line: 923, column: 11, scope: !6817)
!6901 = !DILocation(line: 923, column: 18, scope: !6817)
!6902 = !DILocation(line: 923, column: 2, scope: !6817)
!6903 = !DILocation(line: 924, column: 2, scope: !6817)
!6904 = !DILocation(line: 924, column: 2, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 924, column: 2)
!6906 = !DILocation(line: 924, column: 2, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6905, file: !3, line: 924, column: 2)
!6908 = !DILocation(line: 924, column: 2, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6905, file: !3, line: 924, column: 2)
!6910 = !{i32 -2141974705}
!6911 = !DILocation(line: 924, column: 2, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6909, file: !3, line: 924, column: 2)
!6913 = !DILocation(line: 926, column: 6, scope: !6914)
!6914 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 926, column: 6)
!6915 = !DILocation(line: 926, column: 6, scope: !6817)
!6916 = !DILocation(line: 927, column: 7, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 927, column: 7)
!6918 = distinct !DILexicalBlock(scope: !6914, file: !3, line: 926, column: 11)
!6919 = !DILocation(line: 927, column: 7, scope: !6918)
!6920 = !DILocation(line: 928, column: 11, scope: !6921)
!6921 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 928, column: 4)
!6922 = !DILocation(line: 928, column: 9, scope: !6921)
!6923 = !DILocation(line: 928, column: 16, scope: !6924)
!6924 = distinct !DILexicalBlock(scope: !6921, file: !3, line: 928, column: 4)
!6925 = !DILocation(line: 928, column: 18, scope: !6924)
!6926 = !DILocation(line: 928, column: 4, scope: !6921)
!6927 = !DILocation(line: 929, column: 5, scope: !6928)
!6928 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 928, column: 33)
!6929 = !DILocation(line: 930, column: 5, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 930, column: 5)
!6931 = !DILocation(line: 931, column: 4, scope: !6928)
!6932 = !DILocation(line: 928, column: 29, scope: !6924)
!6933 = !DILocation(line: 928, column: 4, scope: !6924)
!6934 = distinct !{!6934, !6926, !6935}
!6935 = !DILocation(line: 931, column: 4, scope: !6921)
!6936 = !DILocation(line: 933, column: 11, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6917, file: !3, line: 933, column: 4)
!6938 = !DILocation(line: 933, column: 9, scope: !6937)
!6939 = !DILocation(line: 933, column: 16, scope: !6940)
!6940 = distinct !DILexicalBlock(scope: !6937, file: !3, line: 933, column: 4)
!6941 = !DILocation(line: 933, column: 18, scope: !6940)
!6942 = !DILocation(line: 933, column: 4, scope: !6937)
!6943 = !DILocation(line: 934, column: 14, scope: !6944)
!6944 = distinct !DILexicalBlock(scope: !6940, file: !3, line: 933, column: 33)
!6945 = !DILocation(line: 934, column: 5, scope: !6944)
!6946 = !DILocation(line: 934, column: 9, scope: !6944)
!6947 = !DILocation(line: 934, column: 12, scope: !6944)
!6948 = !DILocation(line: 935, column: 5, scope: !6949)
!6949 = distinct !DILexicalBlock(scope: !6944, file: !3, line: 935, column: 5)
!6950 = !DILocation(line: 936, column: 4, scope: !6944)
!6951 = !DILocation(line: 933, column: 29, scope: !6940)
!6952 = !DILocation(line: 933, column: 4, scope: !6940)
!6953 = distinct !{!6953, !6942, !6954}
!6954 = !DILocation(line: 936, column: 4, scope: !6937)
!6955 = !DILocation(line: 943, column: 7, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !6918, file: !3, line: 943, column: 7)
!6957 = !DILocation(line: 943, column: 7, scope: !6918)
!6958 = !DILocation(line: 944, column: 12, scope: !6959)
!6959 = distinct !DILexicalBlock(scope: !6956, file: !3, line: 943, column: 14)
!6960 = !DILocation(line: 945, column: 8, scope: !6959)
!6961 = !DILocation(line: 946, column: 8, scope: !6962)
!6962 = distinct !DILexicalBlock(scope: !6959, file: !3, line: 946, column: 8)
!6963 = !DILocation(line: 946, column: 8, scope: !6959)
!6964 = !DILocation(line: 947, column: 12, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 947, column: 5)
!6966 = !DILocation(line: 947, column: 10, scope: !6965)
!6967 = !DILocation(line: 947, column: 17, scope: !6968)
!6968 = distinct !DILexicalBlock(scope: !6965, file: !3, line: 947, column: 5)
!6969 = !DILocation(line: 947, column: 19, scope: !6968)
!6970 = !DILocation(line: 947, column: 5, scope: !6965)
!6971 = !DILocation(line: 948, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6968, file: !3, line: 947, column: 34)
!6973 = !DILocation(line: 949, column: 6, scope: !6974)
!6974 = distinct !DILexicalBlock(scope: !6972, file: !3, line: 949, column: 6)
!6975 = !DILocation(line: 950, column: 5, scope: !6972)
!6976 = !DILocation(line: 947, column: 30, scope: !6968)
!6977 = !DILocation(line: 947, column: 5, scope: !6968)
!6978 = distinct !{!6978, !6970, !6979}
!6979 = !DILocation(line: 950, column: 5, scope: !6965)
!6980 = !DILocation(line: 952, column: 12, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6962, file: !3, line: 952, column: 5)
!6982 = !DILocation(line: 952, column: 10, scope: !6981)
!6983 = !DILocation(line: 952, column: 17, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 952, column: 5)
!6985 = !DILocation(line: 952, column: 19, scope: !6984)
!6986 = !DILocation(line: 952, column: 5, scope: !6981)
!6987 = !DILocation(line: 953, column: 15, scope: !6988)
!6988 = distinct !DILexicalBlock(scope: !6984, file: !3, line: 952, column: 34)
!6989 = !DILocation(line: 953, column: 6, scope: !6988)
!6990 = !DILocation(line: 953, column: 10, scope: !6988)
!6991 = !DILocation(line: 953, column: 13, scope: !6988)
!6992 = !DILocation(line: 954, column: 6, scope: !6993)
!6993 = distinct !DILexicalBlock(scope: !6988, file: !3, line: 954, column: 6)
!6994 = !DILocation(line: 955, column: 5, scope: !6988)
!6995 = !DILocation(line: 952, column: 30, scope: !6984)
!6996 = !DILocation(line: 952, column: 5, scope: !6984)
!6997 = distinct !{!6997, !6986, !6998}
!6998 = !DILocation(line: 955, column: 5, scope: !6981)
!6999 = !DILocation(line: 956, column: 3, scope: !6959)
!7000 = !DILocation(line: 957, column: 2, scope: !6918)
!7001 = !DILocation(line: 959, column: 2, scope: !6817)
!7002 = !DILocation(line: 959, column: 2, scope: !7003)
!7003 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 959, column: 2)
!7004 = !DILocation(line: 959, column: 2, scope: !7005)
!7005 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 959, column: 2)
!7006 = !DILocation(line: 959, column: 2, scope: !7007)
!7007 = distinct !DILexicalBlock(scope: !7003, file: !3, line: 959, column: 2)
!7008 = !{i32 -2141973753}
!7009 = !DILocation(line: 959, column: 2, scope: !7010)
!7010 = distinct !DILexicalBlock(scope: !7007, file: !3, line: 959, column: 2)
!7011 = !DILocation(line: 961, column: 11, scope: !6817)
!7012 = !DILocation(line: 961, column: 18, scope: !6817)
!7013 = !DILocation(line: 961, column: 2, scope: !6817)
!7014 = !DILocation(line: 963, column: 11, scope: !6817)
!7015 = !DILocation(line: 963, column: 18, scope: !6817)
!7016 = !DILocation(line: 963, column: 2, scope: !6817)
!7017 = !DILocation(line: 965, column: 11, scope: !6817)
!7018 = !DILocation(line: 965, column: 18, scope: !6817)
!7019 = !DILocation(line: 965, column: 2, scope: !6817)
!7020 = !DILocation(line: 967, column: 6, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 967, column: 6)
!7022 = !DILocation(line: 967, column: 6, scope: !6817)
!7023 = !DILocation(line: 968, column: 12, scope: !7021)
!7024 = !DILocation(line: 968, column: 19, scope: !7021)
!7025 = !DILocation(line: 968, column: 51, scope: !7021)
!7026 = !DILocation(line: 968, column: 3, scope: !7021)
!7027 = !DILocation(line: 970, column: 11, scope: !6817)
!7028 = !DILocation(line: 970, column: 18, scope: !6817)
!7029 = !DILocation(line: 970, column: 2, scope: !6817)
!7030 = !DILocation(line: 973, column: 11, scope: !6817)
!7031 = !DILocation(line: 973, column: 18, scope: !6817)
!7032 = !DILocation(line: 973, column: 2, scope: !6817)
!7033 = !DILocation(line: 975, column: 11, scope: !6817)
!7034 = !DILocation(line: 975, column: 18, scope: !6817)
!7035 = !DILocation(line: 975, column: 2, scope: !6817)
!7036 = !DILocation(line: 977, column: 11, scope: !6817)
!7037 = !DILocation(line: 977, column: 18, scope: !6817)
!7038 = !DILocation(line: 977, column: 41, scope: !6817)
!7039 = !DILocation(line: 977, column: 2, scope: !6817)
!7040 = !DILocation(line: 980, column: 7, scope: !7041)
!7041 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 980, column: 6)
!7042 = !DILocation(line: 980, column: 6, scope: !7041)
!7043 = !DILocation(line: 980, column: 12, scope: !7041)
!7044 = !DILocation(line: 980, column: 16, scope: !7041)
!7045 = !DILocation(line: 980, column: 25, scope: !7041)
!7046 = !DILocation(line: 980, column: 22, scope: !7041)
!7047 = !DILocation(line: 980, column: 6, scope: !6817)
!7048 = !DILocation(line: 981, column: 19, scope: !7049)
!7049 = distinct !DILexicalBlock(scope: !7041, file: !3, line: 980, column: 41)
!7050 = !DILocation(line: 981, column: 17, scope: !7049)
!7051 = !DILocation(line: 984, column: 9, scope: !7049)
!7052 = !DILocation(line: 984, column: 3, scope: !7049)
!7053 = !DILocation(line: 986, column: 13, scope: !7049)
!7054 = !DILocation(line: 986, column: 20, scope: !7049)
!7055 = !DILocation(line: 986, column: 51, scope: !7049)
!7056 = !DILocation(line: 986, column: 3, scope: !7049)
!7057 = !DILocation(line: 989, column: 9, scope: !7049)
!7058 = !DILocation(line: 989, column: 3, scope: !7049)
!7059 = !DILocation(line: 990, column: 13, scope: !7049)
!7060 = !DILocation(line: 990, column: 20, scope: !7049)
!7061 = !DILocation(line: 990, column: 3, scope: !7049)
!7062 = !DILocation(line: 991, column: 17, scope: !7049)
!7063 = !DILocation(line: 992, column: 2, scope: !7049)
!7064 = !DILocation(line: 993, column: 2, scope: !6817)
!7065 = !DILocation(line: 993, column: 2, scope: !7066)
!7066 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 993, column: 2)
!7067 = !DILocation(line: 993, column: 2, scope: !7068)
!7068 = distinct !DILexicalBlock(scope: !7066, file: !3, line: 993, column: 2)
!7069 = !DILocation(line: 993, column: 2, scope: !7070)
!7070 = distinct !DILexicalBlock(scope: !7066, file: !3, line: 993, column: 2)
!7071 = !{i32 -2141973311}
!7072 = !DILocation(line: 993, column: 2, scope: !7073)
!7073 = distinct !DILexicalBlock(scope: !7070, file: !3, line: 993, column: 2)
!7074 = !DILocation(line: 995, column: 6, scope: !7075)
!7075 = distinct !DILexicalBlock(scope: !6817, file: !3, line: 995, column: 6)
!7076 = !DILocation(line: 995, column: 6, scope: !6817)
!7077 = !DILocation(line: 996, column: 10, scope: !7078)
!7078 = distinct !DILexicalBlock(scope: !7079, file: !3, line: 996, column: 3)
!7079 = distinct !DILexicalBlock(scope: !7075, file: !3, line: 995, column: 21)
!7080 = !DILocation(line: 996, column: 8, scope: !7078)
!7081 = !DILocation(line: 996, column: 15, scope: !7082)
!7082 = distinct !DILexicalBlock(scope: !7078, file: !3, line: 996, column: 3)
!7083 = !DILocation(line: 996, column: 17, scope: !7082)
!7084 = !DILocation(line: 996, column: 3, scope: !7078)
!7085 = !DILocalVariable(name: "c", scope: !7086, file: !3, line: 997, type: !162)
!7086 = distinct !DILexicalBlock(scope: !7082, file: !3, line: 996, column: 41)
!7087 = !DILocation(line: 997, column: 20, scope: !7086)
!7088 = !DILocation(line: 997, column: 32, scope: !7086)
!7089 = !DILocation(line: 997, column: 24, scope: !7086)
!7090 = !DILocation(line: 997, column: 35, scope: !7086)
!7091 = !DILocation(line: 998, column: 8, scope: !7092)
!7092 = distinct !DILexicalBlock(scope: !7086, file: !3, line: 998, column: 8)
!7093 = !DILocation(line: 998, column: 10, scope: !7092)
!7094 = !DILocation(line: 998, column: 13, scope: !7092)
!7095 = !DILocation(line: 998, column: 16, scope: !7092)
!7096 = !DILocation(line: 998, column: 22, scope: !7092)
!7097 = !DILocation(line: 998, column: 8, scope: !7086)
!7098 = !DILocation(line: 1001, column: 5, scope: !7099)
!7099 = distinct !DILexicalBlock(scope: !7092, file: !3, line: 998, column: 35)
!7100 = !DILocation(line: 1001, column: 8, scope: !7099)
!7101 = !DILocation(line: 1001, column: 24, scope: !7099)
!7102 = !DILocation(line: 1002, column: 29, scope: !7099)
!7103 = !DILocation(line: 1002, column: 5, scope: !7099)
!7104 = !DILocation(line: 1003, column: 26, scope: !7099)
!7105 = !DILocation(line: 1003, column: 5, scope: !7099)
!7106 = !DILocation(line: 1003, column: 8, scope: !7099)
!7107 = !DILocation(line: 1003, column: 24, scope: !7099)
!7108 = !DILocation(line: 1004, column: 4, scope: !7099)
!7109 = !DILocation(line: 1005, column: 3, scope: !7086)
!7110 = !DILocation(line: 996, column: 37, scope: !7082)
!7111 = !DILocation(line: 996, column: 3, scope: !7082)
!7112 = distinct !{!7112, !7084, !7113}
!7113 = !DILocation(line: 1005, column: 3, scope: !7078)
!7114 = !DILocation(line: 1006, column: 2, scope: !7079)
!7115 = !DILocation(line: 1007, column: 2, scope: !6817)
!7116 = !DILocation(line: 1008, column: 1, scope: !6817)
!7117 = distinct !DISubprogram(name: "vgacon_adjust_height", scope: !3, file: !3, line: 1013, type: !7118, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!7118 = !DISubroutineType(types: !7119)
!7119 = !{!141, !162, !7}
!7120 = !DILocalVariable(name: "vc", arg: 1, scope: !7117, file: !3, line: 1013, type: !162)
!7121 = !DILocation(line: 1013, column: 49, scope: !7117)
!7122 = !DILocalVariable(name: "fontheight", arg: 2, scope: !7117, file: !3, line: 1013, type: !7)
!7123 = !DILocation(line: 1013, column: 62, scope: !7117)
!7124 = !DILocalVariable(name: "ovr", scope: !7117, file: !3, line: 1015, type: !123)
!7125 = !DILocation(line: 1015, column: 16, scope: !7117)
!7126 = !DILocalVariable(name: "vde", scope: !7117, file: !3, line: 1015, type: !123)
!7127 = !DILocation(line: 1015, column: 21, scope: !7117)
!7128 = !DILocalVariable(name: "fsr", scope: !7117, file: !3, line: 1015, type: !123)
!7129 = !DILocation(line: 1015, column: 26, scope: !7117)
!7130 = !DILocalVariable(name: "rows", scope: !7117, file: !3, line: 1016, type: !141)
!7131 = !DILocation(line: 1016, column: 6, scope: !7117)
!7132 = !DILocalVariable(name: "maxscan", scope: !7117, file: !3, line: 1016, type: !141)
!7133 = !DILocation(line: 1016, column: 12, scope: !7117)
!7134 = !DILocalVariable(name: "i", scope: !7117, file: !3, line: 1016, type: !141)
!7135 = !DILocation(line: 1016, column: 21, scope: !7117)
!7136 = !DILocation(line: 1018, column: 9, scope: !7117)
!7137 = !DILocation(line: 1018, column: 13, scope: !7117)
!7138 = !DILocation(line: 1018, column: 29, scope: !7117)
!7139 = !DILocation(line: 1018, column: 27, scope: !7117)
!7140 = !DILocation(line: 1018, column: 7, scope: !7117)
!7141 = !DILocation(line: 1019, column: 12, scope: !7117)
!7142 = !DILocation(line: 1019, column: 19, scope: !7117)
!7143 = !DILocation(line: 1019, column: 17, scope: !7117)
!7144 = !DILocation(line: 1019, column: 30, scope: !7117)
!7145 = !DILocation(line: 1019, column: 10, scope: !7117)
!7146 = !DILocation(line: 1031, column: 2, scope: !7117)
!7147 = !DILocation(line: 1031, column: 2, scope: !7148)
!7148 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 1031, column: 2)
!7149 = !DILocation(line: 1031, column: 2, scope: !7150)
!7150 = distinct !DILexicalBlock(scope: !7148, file: !3, line: 1031, column: 2)
!7151 = !DILocation(line: 1031, column: 2, scope: !7152)
!7152 = distinct !DILexicalBlock(scope: !7148, file: !3, line: 1031, column: 2)
!7153 = !{i32 -2141972932}
!7154 = !DILocation(line: 1031, column: 2, scope: !7155)
!7155 = distinct !DILexicalBlock(scope: !7152, file: !3, line: 1031, column: 2)
!7156 = !DILocation(line: 1032, column: 15, scope: !7117)
!7157 = !DILocation(line: 1032, column: 2, scope: !7117)
!7158 = !DILocation(line: 1033, column: 14, scope: !7117)
!7159 = !DILocation(line: 1033, column: 8, scope: !7117)
!7160 = !DILocation(line: 1033, column: 6, scope: !7117)
!7161 = !DILocation(line: 1034, column: 15, scope: !7117)
!7162 = !DILocation(line: 1034, column: 2, scope: !7117)
!7163 = !DILocation(line: 1035, column: 14, scope: !7117)
!7164 = !DILocation(line: 1035, column: 8, scope: !7117)
!7165 = !DILocation(line: 1035, column: 6, scope: !7117)
!7166 = !DILocation(line: 1036, column: 2, scope: !7117)
!7167 = !DILocation(line: 1036, column: 2, scope: !7168)
!7168 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 1036, column: 2)
!7169 = !DILocation(line: 1036, column: 2, scope: !7170)
!7170 = distinct !DILexicalBlock(scope: !7168, file: !3, line: 1036, column: 2)
!7171 = !DILocation(line: 1036, column: 2, scope: !7172)
!7172 = distinct !DILexicalBlock(scope: !7168, file: !3, line: 1036, column: 2)
!7173 = !{i32 -2141972526}
!7174 = !DILocation(line: 1036, column: 2, scope: !7175)
!7175 = distinct !DILexicalBlock(scope: !7172, file: !3, line: 1036, column: 2)
!7176 = !DILocation(line: 1038, column: 8, scope: !7117)
!7177 = !DILocation(line: 1038, column: 16, scope: !7117)
!7178 = !DILocation(line: 1038, column: 6, scope: !7117)
!7179 = !DILocation(line: 1039, column: 9, scope: !7117)
!7180 = !DILocation(line: 1039, column: 13, scope: !7117)
!7181 = !DILocation(line: 1040, column: 8, scope: !7117)
!7182 = !DILocation(line: 1040, column: 16, scope: !7117)
!7183 = !DILocation(line: 1040, column: 25, scope: !7117)
!7184 = !DILocation(line: 1039, column: 21, scope: !7117)
!7185 = !DILocation(line: 1040, column: 35, scope: !7117)
!7186 = !DILocation(line: 1040, column: 43, scope: !7117)
!7187 = !DILocation(line: 1040, column: 52, scope: !7117)
!7188 = !DILocation(line: 1040, column: 31, scope: !7117)
!7189 = !DILocation(line: 1039, column: 8, scope: !7117)
!7190 = !DILocation(line: 1039, column: 6, scope: !7117)
!7191 = !DILocation(line: 1041, column: 9, scope: !7117)
!7192 = !DILocation(line: 1041, column: 13, scope: !7117)
!7193 = !DILocation(line: 1041, column: 24, scope: !7117)
!7194 = !DILocation(line: 1041, column: 35, scope: !7117)
!7195 = !DILocation(line: 1041, column: 21, scope: !7117)
!7196 = !DILocation(line: 1041, column: 8, scope: !7117)
!7197 = !DILocation(line: 1041, column: 6, scope: !7117)
!7198 = !DILocation(line: 1043, column: 2, scope: !7117)
!7199 = !DILocation(line: 1043, column: 2, scope: !7200)
!7200 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 1043, column: 2)
!7201 = !DILocation(line: 1043, column: 2, scope: !7202)
!7202 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 1043, column: 2)
!7203 = !DILocation(line: 1043, column: 2, scope: !7204)
!7204 = distinct !DILexicalBlock(scope: !7200, file: !3, line: 1043, column: 2)
!7205 = !{i32 -2141972150}
!7206 = !DILocation(line: 1043, column: 2, scope: !7207)
!7207 = distinct !DILexicalBlock(scope: !7204, file: !3, line: 1043, column: 2)
!7208 = !DILocation(line: 1044, column: 15, scope: !7117)
!7209 = !DILocation(line: 1044, column: 2, scope: !7117)
!7210 = !DILocation(line: 1045, column: 9, scope: !7117)
!7211 = !DILocation(line: 1045, column: 14, scope: !7117)
!7212 = !DILocation(line: 1045, column: 2, scope: !7117)
!7213 = !DILocation(line: 1046, column: 15, scope: !7117)
!7214 = !DILocation(line: 1046, column: 2, scope: !7117)
!7215 = !DILocation(line: 1047, column: 9, scope: !7117)
!7216 = !DILocation(line: 1047, column: 14, scope: !7117)
!7217 = !DILocation(line: 1047, column: 2, scope: !7117)
!7218 = !DILocation(line: 1048, column: 15, scope: !7117)
!7219 = !DILocation(line: 1048, column: 2, scope: !7117)
!7220 = !DILocation(line: 1049, column: 9, scope: !7117)
!7221 = !DILocation(line: 1049, column: 14, scope: !7117)
!7222 = !DILocation(line: 1049, column: 2, scope: !7117)
!7223 = !DILocation(line: 1050, column: 2, scope: !7117)
!7224 = !DILocation(line: 1050, column: 2, scope: !7225)
!7225 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 1050, column: 2)
!7226 = !DILocation(line: 1050, column: 2, scope: !7227)
!7227 = distinct !DILexicalBlock(scope: !7225, file: !3, line: 1050, column: 2)
!7228 = !DILocation(line: 1050, column: 2, scope: !7229)
!7229 = distinct !DILexicalBlock(scope: !7225, file: !3, line: 1050, column: 2)
!7230 = !{i32 -2141971728}
!7231 = !DILocation(line: 1050, column: 2, scope: !7232)
!7232 = distinct !DILexicalBlock(scope: !7229, file: !3, line: 1050, column: 2)
!7233 = !DILocation(line: 1051, column: 26, scope: !7117)
!7234 = !DILocation(line: 1051, column: 24, scope: !7117)
!7235 = !DILocation(line: 1053, column: 9, scope: !7236)
!7236 = distinct !DILexicalBlock(scope: !7117, file: !3, line: 1053, column: 2)
!7237 = !DILocation(line: 1053, column: 7, scope: !7236)
!7238 = !DILocation(line: 1053, column: 14, scope: !7239)
!7239 = distinct !DILexicalBlock(scope: !7236, file: !3, line: 1053, column: 2)
!7240 = !DILocation(line: 1053, column: 16, scope: !7239)
!7241 = !DILocation(line: 1053, column: 2, scope: !7236)
!7242 = !DILocalVariable(name: "c", scope: !7243, file: !3, line: 1054, type: !162)
!7243 = distinct !DILexicalBlock(scope: !7239, file: !3, line: 1053, column: 40)
!7244 = !DILocation(line: 1054, column: 19, scope: !7243)
!7245 = !DILocation(line: 1054, column: 31, scope: !7243)
!7246 = !DILocation(line: 1054, column: 23, scope: !7243)
!7247 = !DILocation(line: 1054, column: 34, scope: !7243)
!7248 = !DILocation(line: 1056, column: 7, scope: !7249)
!7249 = distinct !DILexicalBlock(scope: !7243, file: !3, line: 1056, column: 7)
!7250 = !DILocation(line: 1056, column: 9, scope: !7249)
!7251 = !DILocation(line: 1056, column: 12, scope: !7249)
!7252 = !DILocation(line: 1056, column: 15, scope: !7249)
!7253 = !DILocation(line: 1056, column: 21, scope: !7249)
!7254 = !DILocation(line: 1056, column: 7, scope: !7243)
!7255 = !DILocation(line: 1057, column: 23, scope: !7256)
!7256 = distinct !DILexicalBlock(scope: !7257, file: !3, line: 1057, column: 8)
!7257 = distinct !DILexicalBlock(scope: !7249, file: !3, line: 1056, column: 34)
!7258 = !DILocation(line: 1057, column: 8, scope: !7256)
!7259 = !DILocation(line: 1057, column: 8, scope: !7257)
!7260 = !DILocation(line: 1059, column: 26, scope: !7261)
!7261 = distinct !DILexicalBlock(scope: !7256, file: !3, line: 1057, column: 27)
!7262 = !DILocation(line: 1060, column: 24, scope: !7261)
!7263 = !DILocation(line: 1061, column: 5, scope: !7261)
!7264 = !DILocation(line: 1061, column: 8, scope: !7261)
!7265 = !DILocation(line: 1061, column: 15, scope: !7261)
!7266 = !DILocation(line: 1061, column: 26, scope: !7261)
!7267 = !DILocation(line: 1062, column: 4, scope: !7261)
!7268 = !DILocation(line: 1063, column: 24, scope: !7257)
!7269 = !DILocation(line: 1063, column: 4, scope: !7257)
!7270 = !DILocation(line: 1063, column: 7, scope: !7257)
!7271 = !DILocation(line: 1063, column: 15, scope: !7257)
!7272 = !DILocation(line: 1063, column: 22, scope: !7257)
!7273 = !DILocation(line: 1064, column: 14, scope: !7257)
!7274 = !DILocation(line: 1064, column: 20, scope: !7257)
!7275 = !DILocation(line: 1064, column: 4, scope: !7257)
!7276 = !DILocation(line: 1065, column: 3, scope: !7257)
!7277 = !DILocation(line: 1066, column: 2, scope: !7243)
!7278 = !DILocation(line: 1053, column: 36, scope: !7239)
!7279 = !DILocation(line: 1053, column: 2, scope: !7239)
!7280 = distinct !{!7280, !7241, !7281}
!7281 = !DILocation(line: 1066, column: 2, scope: !7236)
!7282 = !DILocation(line: 1067, column: 2, scope: !7117)
!7283 = distinct !DISubprogram(name: "vga_wgfx", scope: !4381, file: !4381, line: 376, type: !6644, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!7284 = !DILocalVariable(name: "regbase", arg: 1, scope: !7283, file: !4381, line: 376, type: !111)
!7285 = !DILocation(line: 376, column: 44, scope: !7283)
!7286 = !DILocalVariable(name: "reg", arg: 2, scope: !7283, file: !4381, line: 376, type: !123)
!7287 = !DILocation(line: 376, column: 67, scope: !7283)
!7288 = !DILocalVariable(name: "val", arg: 3, scope: !7283, file: !4381, line: 376, type: !123)
!7289 = !DILocation(line: 376, column: 86, scope: !7283)
!7290 = !DILocation(line: 379, column: 14, scope: !7283)
!7291 = !DILocation(line: 379, column: 34, scope: !7283)
!7292 = !DILocation(line: 379, column: 39, scope: !7283)
!7293 = !DILocation(line: 379, column: 2, scope: !7283)
!7294 = !DILocation(line: 384, column: 1, scope: !7283)
!7295 = distinct !DISubprogram(name: "___might_sleep", scope: !7296, file: !7296, line: 248, type: !7297, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!7296 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!7297 = !DISubroutineType(types: !7298)
!7298 = !{null, !135, !141, !141}
!7299 = !DILocalVariable(name: "file", arg: 1, scope: !7295, file: !7296, line: 248, type: !135)
!7300 = !DILocation(line: 248, column: 49, scope: !7295)
!7301 = !DILocalVariable(name: "line", arg: 2, scope: !7295, file: !7296, line: 248, type: !141)
!7302 = !DILocation(line: 248, column: 59, scope: !7295)
!7303 = !DILocalVariable(name: "preempt_offset", arg: 3, scope: !7295, file: !7296, line: 249, type: !141)
!7304 = !DILocation(line: 249, column: 12, scope: !7295)
!7305 = !DILocation(line: 249, column: 30, scope: !7295)
!7306 = distinct !DISubprogram(name: "vga_wattr", scope: !4381, file: !4381, line: 429, type: !6644, scopeLine: 430, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !242)
!7307 = !DILocalVariable(name: "regbase", arg: 1, scope: !7306, file: !4381, line: 429, type: !111)
!7308 = !DILocation(line: 429, column: 45, scope: !7306)
!7309 = !DILocalVariable(name: "reg", arg: 2, scope: !7306, file: !4381, line: 429, type: !123)
!7310 = !DILocation(line: 429, column: 68, scope: !7306)
!7311 = !DILocalVariable(name: "val", arg: 3, scope: !7306, file: !4381, line: 429, type: !123)
!7312 = !DILocation(line: 429, column: 87, scope: !7306)
!7313 = !DILocation(line: 431, column: 16, scope: !7306)
!7314 = !DILocation(line: 431, column: 37, scope: !7306)
!7315 = !DILocation(line: 431, column: 9, scope: !7306)
!7316 = !DILocation(line: 432, column: 16, scope: !7306)
!7317 = !DILocation(line: 432, column: 36, scope: !7306)
!7318 = !DILocation(line: 432, column: 9, scope: !7306)
!7319 = !DILocation(line: 433, column: 1, scope: !7306)
