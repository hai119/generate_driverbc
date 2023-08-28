; ModuleID = '../bcout/drivers/media/dvb-frontends/s5h1420.llvm.bc'
source_filename = "drivers/media/dvb-frontends/s5h1420.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.27, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.27 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.30, %struct.list_head, %struct.list_head, %union.anon.31 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.28 }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.19, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.19 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.20, i32 }
%union.anon.20 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.60, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.41 }
%union.anon.41 = type { %struct.anon.42 }
%struct.anon.42 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.32, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.33, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.34, %union.anon.38, %struct.key_restriction* }
%union.anon.32 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.33 = type { i64 }
%union.anon.34 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.35, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.35 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.38 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.46, %union.anon.47, i32 }
%struct.request_queue = type opaque
%union.anon.46 = type { %struct.list_head }
%union.anon.47 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.48 }
%struct.anon.48 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.52 }
%struct.anon.52 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.59, i32, [12 x i8] }
%union.anon.59 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.60 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.vm_struct = type { %struct.vm_struct*, i8*, i64, i64, %struct.page**, i32, i64, i8* }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x %struct.perf_event*], i64, i64, i64, i64, i64, %struct.io_bitmap*, i64, i8, [47 x i8], %struct.fpu }
%struct.desc_struct = type { i16, i16, i32 }
%struct.perf_event = type opaque
%struct.io_bitmap = type opaque
%struct.fpu = type { i32, i64, [48 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.61, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.64 }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { i64, i64 }
%union.anon.64 = type { [12 x i32] }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%union.anon.30 = type { %struct.list_head }
%union.anon.31 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.21, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.22, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.23, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.26, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.21 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.22 = type { %struct.callback_head }
%union.anon.23 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.26 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.24 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.24 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.40 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.40 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.65], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.65 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.66 }>
%union.anon.66 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.kmem_cache = type opaque
%struct.s5h1420_state = type { %struct.i2c_adapter*, %struct.s5h1420_config*, %struct.dvb_frontend, %struct.i2c_adapter, i8, i8, i32, i32, i32, i32, [256 x i8] }
%struct.s5h1420_config = type { i8, i8 }

@__param_str_debug = internal constant [14 x i8] c"s5h1420.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !473
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !377
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"s5h1420.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !443
@__UNIQUE_ID_debug221 = internal constant [36 x i8] c"s5h1420.parm=debug:enable debugging\00", section ".modinfo", align 1, !dbg !448
@s5h1420_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1420/PnpNetwork PN1010 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @s5h1420_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @s5h1420_init, i32 (%struct.dvb_frontend*)* @s5h1420_sleep, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @s5h1420_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @s5h1420_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @s5h1420_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @s5h1420_read_status, i32 (%struct.dvb_frontend*, i32*)* @s5h1420_read_ber, i32 (%struct.dvb_frontend*, i16*)* @s5h1420_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* @s5h1420_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @s5h1420_send_master_cmd, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* @s5h1420_recv_slave_reply, i32 (%struct.dvb_frontend*, i32)* @s5h1420_send_burst, i32 (%struct.dvb_frontend*, i32)* @s5h1420_set_tone, i32 (%struct.dvb_frontend*, i32)* @s5h1420_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @s5h1420_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4169
@.str = private unnamed_addr constant [29 x i8] c"S5H1420-PN1010 tuner I2C bus\00", align 1
@s5h1420_tuner_i2c_algo = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @s5h1420_tuner_i2c_tuner_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @s5h1420_tuner_i2c_func }, align 8, !dbg !475
@.str.1 = private unnamed_addr constant [58 x i8] c"\013S5H1420/PN1010: tuner i2c bus could not be initialized\0A\00", align 1
@__UNIQUE_ID_description222 = internal constant [79 x i8] c"s5h1420.description=Samsung S5H1420/PnpNetwork PN1010 DVB-S Demodulator driver\00", section ".modinfo", align 1, !dbg !453
@__UNIQUE_ID_author223 = internal constant [52 x i8] c"s5h1420.author=Andrew de Quincey, Patrick Boettcher\00", section ".modinfo", align 1, !dbg !458
@__UNIQUE_ID_file224 = internal constant [49 x i8] c"s5h1420.file=drivers/media/dvb-frontends/s5h1420\00", section ".modinfo", align 1, !dbg !463
@__UNIQUE_ID_license225 = internal constant [20 x i8] c"s5h1420.license=GPL\00", section ".modinfo", align 1, !dbg !468
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\014%s: i2c xfer: num=%d is too big!\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"s5h1420\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"\017S5H1420: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.s5h1420_writereg = private unnamed_addr constant [17 x i8] c"s5h1420_writereg\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\017S5H1420: %s\0A\00", align 1
@__func__.s5h1420_reset = private unnamed_addr constant [14 x i8] c"s5h1420_reset\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"\017S5H1420: enter %s\0A\00", align 1
@__func__.s5h1420_set_frontend = private unnamed_addr constant [21 x i8] c"s5h1420_set_frontend\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"\017S5H1420: simple tune\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\017S5H1420: tuning demod\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\017S5H1420: pll01: %d, ToneFreq: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"\017S5H1420: leave %s\0A\00", align 1
@__func__.s5h1420_setfreqoffset = private unnamed_addr constant [22 x i8] c"s5h1420_setfreqoffset\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"\017S5H1420: phase rotator/freqoffset: %d %06x\0A\00", align 1
@__func__.s5h1420_setsymbolrate = private unnamed_addr constant [22 x i8] c"s5h1420_setsymbolrate\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"\017S5H1420: symbol rate register: %06llx\0A\00", align 1
@__func__.s5h1420_setfec_inversion = private unnamed_addr constant [25 x i8] c"s5h1420_setfec_inversion\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\017S5H1420: fec: %02x %02x\0A\00", align 1
@__func__.s5h1420_read_status = private unnamed_addr constant [20 x i8] c"s5h1420_read_status\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"\013s5h1420: avoided division by 0\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"\017S5H1420: for MPEG_CLK_INTL %d %x\0A\00", align 1
@__func__.s5h1420_send_master_cmd = private unnamed_addr constant [24 x i8] c"s5h1420_send_master_cmd\00", align 1
@jiffies = external dso_local global i64, align 8
@__func__.s5h1420_set_tone = private unnamed_addr constant [17 x i8] c"s5h1420_set_tone\00", align 1
@__func__.s5h1420_set_voltage = private unnamed_addr constant [20 x i8] c"s5h1420_set_voltage\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @s5h1420_get_tuner_i2c_adapter(%struct.dvb_frontend* %fe) #0 !dbg !4500 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !4505, metadata !DIExpression()), !dbg !4533
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4534
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4535
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4535
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !4534
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !4533
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4536
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 3, !dbg !4537
  ret %struct.i2c_adapter* %tuner_i2c_adapter, !dbg !4538
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @s5h1420_attach(%struct.s5h1420_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4539 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.s5h1420_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %i = alloca i8, align 1
  store %struct.s5h1420_config* %config, %struct.s5h1420_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_config** %config.addr, metadata !4542, metadata !DIExpression()), !dbg !4543
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4544, metadata !DIExpression()), !dbg !4545
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !4546, metadata !DIExpression()), !dbg !4547
  %call = call i8* @kzalloc(i64 2520, i32 3264) #8, !dbg !4548
  %0 = bitcast i8* %call to %struct.s5h1420_state*, !dbg !4548
  store %struct.s5h1420_state* %0, %struct.s5h1420_state** %state, align 8, !dbg !4547
  call void @llvm.dbg.declare(metadata i8* %i, metadata !4549, metadata !DIExpression()), !dbg !4550
  %1 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4551
  %cmp = icmp eq %struct.s5h1420_state* %1, null, !dbg !4553
  br i1 %cmp, label %if.then, label %if.end, !dbg !4554

if.then:                                          ; preds = %entry
  br label %error, !dbg !4555

if.end:                                           ; preds = %entry
  %2 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config.addr, align 8, !dbg !4556
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4557
  %config1 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 1, !dbg !4558
  store %struct.s5h1420_config* %2, %struct.s5h1420_config** %config1, align 8, !dbg !4559
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4560
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4561
  %i2c2 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %5, i32 0, i32 0, !dbg !4562
  store %struct.i2c_adapter* %4, %struct.i2c_adapter** %i2c2, align 8, !dbg !4563
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4564
  %postlocked = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %6, i32 0, i32 5, !dbg !4565
  %bf.load = load i8, i8* %postlocked, align 1, !dbg !4566
  %bf.clear = and i8 %bf.load, -2, !dbg !4566
  store i8 %bf.clear, i8* %postlocked, align 1, !dbg !4566
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4567
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %7, i32 0, i32 6, !dbg !4568
  store i32 88000000, i32* %fclk, align 4, !dbg !4569
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4570
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %8, i32 0, i32 7, !dbg !4571
  store i32 0, i32* %tunedfreq, align 8, !dbg !4572
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4573
  %fec_inner = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %9, i32 0, i32 8, !dbg !4574
  store i32 0, i32* %fec_inner, align 4, !dbg !4575
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4576
  %symbol_rate = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %10, i32 0, i32 9, !dbg !4577
  store i32 0, i32* %symbol_rate, align 8, !dbg !4578
  %11 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4579
  %call3 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %11, i8 zeroext 0) #8, !dbg !4580
  store i8 %call3, i8* %i, align 1, !dbg !4581
  %12 = load i8, i8* %i, align 1, !dbg !4582
  %conv = zext i8 %12 to i32, !dbg !4582
  %cmp4 = icmp ne i32 %conv, 3, !dbg !4584
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !4585

if.then6:                                         ; preds = %if.end
  br label %error, !dbg !4586

if.end7:                                          ; preds = %if.end
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4587
  %shadow = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %13, i32 0, i32 10, !dbg !4588
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %shadow, i64 0, i64 0, !dbg !4589
  call void @llvm.memset.p0i8.i64(i8* align 4 %arraydecay, i8 -1, i64 256, i1 false), !dbg !4589
  store i8 0, i8* %i, align 1, !dbg !4590
  br label %for.cond, !dbg !4592

for.cond:                                         ; preds = %for.inc, %if.end7
  %14 = load i8, i8* %i, align 1, !dbg !4593
  %conv8 = zext i8 %14 to i32, !dbg !4593
  %cmp9 = icmp slt i32 %conv8, 80, !dbg !4595
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4596

for.body:                                         ; preds = %for.cond
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4597
  %16 = load i8, i8* %i, align 1, !dbg !4598
  %call11 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %15, i8 zeroext %16) #8, !dbg !4599
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4600
  %shadow12 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %17, i32 0, i32 10, !dbg !4601
  %18 = load i8, i8* %i, align 1, !dbg !4602
  %idxprom = zext i8 %18 to i64, !dbg !4600
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %shadow12, i64 0, i64 %idxprom, !dbg !4600
  store i8 %call11, i8* %arrayidx, align 1, !dbg !4603
  br label %for.inc, !dbg !4600

for.inc:                                          ; preds = %for.body
  %19 = load i8, i8* %i, align 1, !dbg !4604
  %inc = add i8 %19, 1, !dbg !4604
  store i8 %inc, i8* %i, align 1, !dbg !4604
  br label %for.cond, !dbg !4605, !llvm.loop !4606

for.end:                                          ; preds = %for.cond
  %20 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4608
  %frontend = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %20, i32 0, i32 2, !dbg !4609
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4610
  %21 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @s5h1420_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4611
  %22 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4612
  %23 = bitcast %struct.s5h1420_state* %22 to i8*, !dbg !4612
  %24 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4613
  %frontend13 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %24, i32 0, i32 2, !dbg !4614
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend13, i32 0, i32 3, !dbg !4615
  store i8* %23, i8** %demodulator_priv, align 8, !dbg !4616
  %25 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4617
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %25, i32 0, i32 3, !dbg !4618
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter, i32 0, i32 12, !dbg !4619
  %arraydecay14 = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !4617
  %call15 = call i64 @strscpy(i8* %arraydecay14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 48) #8, !dbg !4620
  %26 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4621
  %tuner_i2c_adapter16 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %26, i32 0, i32 3, !dbg !4622
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter16, i32 0, i32 2, !dbg !4623
  store %struct.i2c_algorithm* @s5h1420_tuner_i2c_algo, %struct.i2c_algorithm** %algo, align 8, !dbg !4624
  %27 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4625
  %tuner_i2c_adapter17 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %27, i32 0, i32 3, !dbg !4626
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter17, i32 0, i32 3, !dbg !4627
  store i8* null, i8** %algo_data, align 8, !dbg !4628
  %28 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4629
  %tuner_i2c_adapter18 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %28, i32 0, i32 3, !dbg !4630
  %29 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4631
  %30 = bitcast %struct.s5h1420_state* %29 to i8*, !dbg !4631
  call void @i2c_set_adapdata(%struct.i2c_adapter* %tuner_i2c_adapter18, i8* %30) #8, !dbg !4632
  %31 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4633
  %tuner_i2c_adapter19 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %31, i32 0, i32 3, !dbg !4635
  %call20 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %tuner_i2c_adapter19) #8, !dbg !4636
  %cmp21 = icmp slt i32 %call20, 0, !dbg !4637
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !4638

if.then23:                                        ; preds = %for.end
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4639
  br label %error, !dbg !4641

if.end25:                                         ; preds = %for.end
  %32 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4642
  %frontend26 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %32, i32 0, i32 2, !dbg !4643
  store %struct.dvb_frontend* %frontend26, %struct.dvb_frontend** %retval, align 8, !dbg !4644
  br label %return, !dbg !4644

error:                                            ; preds = %if.then23, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4645), !dbg !4646
  %33 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !4647
  %34 = bitcast %struct.s5h1420_state* %33 to i8*, !dbg !4647
  call void @kfree(i8* %34) #8, !dbg !4648
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4649
  br label %return, !dbg !4649

return:                                           ; preds = %error, %if.end25
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4650
  ret %struct.dvb_frontend* %35, !dbg !4650
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4651 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4654, metadata !DIExpression()), !dbg !4658
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4664, metadata !DIExpression()), !dbg !4665
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4666, metadata !DIExpression()), !dbg !4667
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4668, metadata !DIExpression()), !dbg !4669
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4670, metadata !DIExpression()), !dbg !4674
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4676, metadata !DIExpression()), !dbg !4680
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4682, metadata !DIExpression()), !dbg !4686
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4691, metadata !DIExpression()), !dbg !4692
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4693, metadata !DIExpression()), !dbg !4694
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4695, metadata !DIExpression()), !dbg !4696
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4697, metadata !DIExpression()), !dbg !4698
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4699, metadata !DIExpression()), !dbg !4700
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4701, metadata !DIExpression()), !dbg !4702
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4703, metadata !DIExpression()), !dbg !4704
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4705, metadata !DIExpression()), !dbg !4706
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4707, metadata !DIExpression()), !dbg !4708
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4709, metadata !DIExpression()), !dbg !4710
  %0 = load i64, i64* %size.addr, align 8, !dbg !4711
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4712
  %or = or i32 %1, 256, !dbg !4713
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4714
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4715
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4716

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4717
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4718
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4719

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4720
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4721
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4722
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4723
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4700
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4724
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4725
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4726
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4727
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4728
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4729
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4730
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4730
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4730
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4730
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4730
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4731
  br label %kmalloc.exit, !dbg !4731

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4732
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4733
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4735

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4739
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4740

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4744
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4745

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4746
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4747
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4748

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4749
  br label %kmalloc_index.exit.i, !dbg !4749

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4750
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4752
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4753

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4754
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4755
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4756

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4760
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4761

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4765
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4766

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4770
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4771

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4775
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4776

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4780
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4781

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4785
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4786

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4790
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4791

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4795
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4796

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4800
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4801

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4805
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4806

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4810
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4811

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4815
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4816

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4820
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4821

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4825
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4826

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4830
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4831

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4835
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4836

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4840
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4841

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4845
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4846

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4848
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4850
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4851

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4852
  br label %kmalloc_index.exit.i, !dbg !4852

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4853
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4855
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4856

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4857
  br label %kmalloc_index.exit.i, !dbg !4857

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4858
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4860
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4861

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4862
  br label %kmalloc_index.exit.i, !dbg !4862

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4863
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4865
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4866

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4867
  br label %kmalloc_index.exit.i, !dbg !4867

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4870
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4871

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4872
  br label %kmalloc_index.exit.i, !dbg !4872

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4873
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4875
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4876

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4877
  br label %kmalloc_index.exit.i, !dbg !4877

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4878, !srcloc !4881
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4882, !srcloc !4885
  unreachable, !dbg !4886

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4887
  store i32 %45, i32* %index.i, align 4, !dbg !4888
  %46 = load i32, i32* %index.i, align 4, !dbg !4889
  %tobool.i = icmp ne i32 %46, 0, !dbg !4889
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4891

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4892
  br label %kmalloc.exit, !dbg !4892

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4893
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4894
  %and.i.i = and i32 %48, 17, !dbg !4894
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4894
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4894
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4894
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4894
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4896

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4897
  br label %kmalloc_type.exit.i, !dbg !4897

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4898
  %and2.i.i = and i32 %49, 1, !dbg !4899
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4898
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4898
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4898
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4900
  br label %kmalloc_type.exit.i, !dbg !4900

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4901
  %idxprom.i = zext i32 %51 to i64, !dbg !4902
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4902
  %52 = load i32, i32* %index.i, align 4, !dbg !4903
  %idxprom6.i = zext i32 %52 to i64, !dbg !4902
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4902
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4902
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4904
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4905
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4906
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4907
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4908
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4908
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4908
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4908
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4908
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4669
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4909
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4910
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4911
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4912
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4913
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4914
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4915
  store i8* %62, i8** %retval.i, align 8, !dbg !4916
  br label %kmalloc.exit, !dbg !4916

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4917
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4918
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4919
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4919
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4919
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4919
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4919
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4920
  br label %kmalloc.exit, !dbg !4920

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4921
  ret i8* %65, !dbg !4922
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %state, i8 zeroext %reg) #0 !dbg !4923 {
entry:
  %retval = alloca i8, align 1
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b = alloca [2 x i8], align 1
  %msg = alloca [3 x %struct.i2c_msg], align 16
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !4926, metadata !DIExpression()), !dbg !4927
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4928, metadata !DIExpression()), !dbg !4929
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4930, metadata !DIExpression()), !dbg !4931
  call void @llvm.dbg.declare(metadata [2 x i8]* %b, metadata !4932, metadata !DIExpression()), !dbg !4934
  call void @llvm.dbg.declare(metadata [3 x %struct.i2c_msg]* %msg, metadata !4935, metadata !DIExpression()), !dbg !4937
  %arrayinit.begin = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4938
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4939
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4940
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %0, i32 0, i32 1, !dbg !4941
  %1 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !4941
  %demod_address = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %1, i32 0, i32 0, !dbg !4942
  %2 = load i8, i8* %demod_address, align 1, !dbg !4942
  %conv = zext i8 %2 to i16, !dbg !4940
  store i16 %conv, i16* %addr, align 16, !dbg !4939
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4939
  store i16 0, i16* %flags, align 2, !dbg !4939
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4939
  store i16 2, i16* %len, align 4, !dbg !4939
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4939
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !4943
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4939
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4938
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4944
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4945
  %config2 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 1, !dbg !4946
  %4 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config2, align 8, !dbg !4946
  %demod_address3 = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %4, i32 0, i32 0, !dbg !4947
  %5 = load i8, i8* %demod_address3, align 1, !dbg !4947
  %conv4 = zext i8 %5 to i16, !dbg !4945
  store i16 %conv4, i16* %addr1, align 16, !dbg !4944
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4944
  store i16 0, i16* %flags5, align 2, !dbg !4944
  %len6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4944
  store i16 1, i16* %len6, align 4, !dbg !4944
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4944
  store i8* %reg.addr, i8** %buf7, align 8, !dbg !4944
  %arrayinit.element8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i64 1, !dbg !4938
  %addr9 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element8, i32 0, i32 0, !dbg !4948
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4949
  %config10 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %6, i32 0, i32 1, !dbg !4950
  %7 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config10, align 8, !dbg !4950
  %demod_address11 = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %7, i32 0, i32 0, !dbg !4951
  %8 = load i8, i8* %demod_address11, align 1, !dbg !4951
  %conv12 = zext i8 %8 to i16, !dbg !4949
  store i16 %conv12, i16* %addr9, align 16, !dbg !4948
  %flags13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element8, i32 0, i32 1, !dbg !4948
  store i16 1, i16* %flags13, align 2, !dbg !4948
  %len14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element8, i32 0, i32 2, !dbg !4948
  store i16 1, i16* %len14, align 4, !dbg !4948
  %buf15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element8, i32 0, i32 3, !dbg !4948
  %arraydecay16 = getelementptr inbounds [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !4952
  store i8* %arraydecay16, i8** %buf15, align 8, !dbg !4948
  %9 = load i8, i8* %reg.addr, align 1, !dbg !4953
  %conv17 = zext i8 %9 to i32, !dbg !4953
  %sub = sub i32 %conv17, 1, !dbg !4954
  %and = and i32 %sub, 255, !dbg !4955
  %conv18 = trunc i32 %and to i8, !dbg !4956
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !4957
  store i8 %conv18, i8* %arrayidx, align 1, !dbg !4958
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4959
  %shadow = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %10, i32 0, i32 10, !dbg !4960
  %11 = load i8, i8* %reg.addr, align 1, !dbg !4961
  %conv19 = zext i8 %11 to i32, !dbg !4961
  %sub20 = sub i32 %conv19, 1, !dbg !4962
  %and21 = and i32 %sub20, 255, !dbg !4963
  %idxprom = sext i32 %and21 to i64, !dbg !4959
  %arrayidx22 = getelementptr [256 x i8], [256 x i8]* %shadow, i64 0, i64 %idxprom, !dbg !4959
  %12 = load i8, i8* %arrayidx22, align 1, !dbg !4959
  %arrayidx23 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 1, !dbg !4964
  store i8 %12, i8* %arrayidx23, align 1, !dbg !4965
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4966
  %config24 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %13, i32 0, i32 1, !dbg !4968
  %14 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config24, align 8, !dbg !4968
  %repeated_start_workaround = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %14, i32 0, i32 1, !dbg !4969
  %bf.load = load i8, i8* %repeated_start_workaround, align 1, !dbg !4969
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !4969
  %bf.clear = and i8 %bf.lshr, 1, !dbg !4969
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !4966
  br i1 %tobool, label %if.then, label %if.else, !dbg !4970

if.then:                                          ; preds = %entry
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4971
  %i2c = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %15, i32 0, i32 0, !dbg !4973
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4973
  %arraydecay25 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4974
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %16, %struct.i2c_msg* %arraydecay25, i32 3) #8, !dbg !4975
  store i32 %call, i32* %ret, align 4, !dbg !4976
  %17 = load i32, i32* %ret, align 4, !dbg !4977
  %cmp = icmp ne i32 %17, 3, !dbg !4979
  br i1 %cmp, label %if.then27, label %if.end, !dbg !4980

if.then27:                                        ; preds = %if.then
  %18 = load i32, i32* %ret, align 4, !dbg !4981
  %conv28 = trunc i32 %18 to i8, !dbg !4981
  store i8 %conv28, i8* %retval, align 1, !dbg !4982
  br label %return, !dbg !4982

if.end:                                           ; preds = %if.then
  br label %if.end45, !dbg !4983

if.else:                                          ; preds = %entry
  %19 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4984
  %i2c29 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %19, i32 0, i32 0, !dbg !4986
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c29, align 8, !dbg !4986
  %arrayidx30 = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %msg, i64 0, i64 1, !dbg !4987
  %call31 = call i32 @i2c_transfer(%struct.i2c_adapter* %20, %struct.i2c_msg* %arrayidx30, i32 1) #8, !dbg !4988
  store i32 %call31, i32* %ret, align 4, !dbg !4989
  %21 = load i32, i32* %ret, align 4, !dbg !4990
  %cmp32 = icmp ne i32 %21, 1, !dbg !4992
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !4993

if.then34:                                        ; preds = %if.else
  %22 = load i32, i32* %ret, align 4, !dbg !4994
  %conv35 = trunc i32 %22 to i8, !dbg !4994
  store i8 %conv35, i8* %retval, align 1, !dbg !4995
  br label %return, !dbg !4995

if.end36:                                         ; preds = %if.else
  %23 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !4996
  %i2c37 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %23, i32 0, i32 0, !dbg !4997
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c37, align 8, !dbg !4997
  %arrayidx38 = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %msg, i64 0, i64 2, !dbg !4998
  %call39 = call i32 @i2c_transfer(%struct.i2c_adapter* %24, %struct.i2c_msg* %arrayidx38, i32 1) #8, !dbg !4999
  store i32 %call39, i32* %ret, align 4, !dbg !5000
  %25 = load i32, i32* %ret, align 4, !dbg !5001
  %cmp40 = icmp ne i32 %25, 1, !dbg !5003
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !5004

if.then42:                                        ; preds = %if.end36
  %26 = load i32, i32* %ret, align 4, !dbg !5005
  %conv43 = trunc i32 %26 to i8, !dbg !5005
  store i8 %conv43, i8* %retval, align 1, !dbg !5006
  br label %return, !dbg !5006

if.end44:                                         ; preds = %if.end36
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end
  %arrayidx46 = getelementptr [2 x i8], [2 x i8]* %b, i64 0, i64 0, !dbg !5007
  %27 = load i8, i8* %arrayidx46, align 1, !dbg !5007
  store i8 %27, i8* %retval, align 1, !dbg !5008
  br label %return, !dbg !5008

return:                                           ; preds = %if.end45, %if.then42, %if.then34, %if.then27
  %28 = load i8, i8* %retval, align 1, !dbg !5009
  ret i8 %28, !dbg !5009
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #0 !dbg !5010 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5015, metadata !DIExpression()), !dbg !5016
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5017
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5018
  %1 = load i8*, i8** %data.addr, align 8, !dbg !5019
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !5020
  ret void, !dbg !5021
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5022 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5026, metadata !DIExpression()), !dbg !5031
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5033, metadata !DIExpression()), !dbg !5034
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5035, metadata !DIExpression()), !dbg !5036
  %0 = load i64, i64* %size.addr, align 8, !dbg !5037
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5039
  br i1 %1, label %if.then, label %if.end447, !dbg !5040

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5041
  %tobool = icmp ne i64 %2, 0, !dbg !5041
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5044

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5046
  %cmp = icmp ult i64 %3, 4096, !dbg !5048
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5049

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5050
  br label %return, !dbg !5050

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub = sub i64 %4, 1, !dbg !5051
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5051
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5051

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub4 = sub i64 %6, 1, !dbg !5051
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5051
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5051

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub6 = sub i64 %8, 1, !dbg !5051
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5051
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5051

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5051

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub9 = sub i64 %9, 1, !dbg !5051
  %and = and i64 %sub9, -9223372036854775808, !dbg !5051
  %tobool10 = icmp ne i64 %and, 0, !dbg !5051
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5051

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5051

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub13 = sub i64 %10, 1, !dbg !5051
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5051
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5051
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5051

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5051

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub18 = sub i64 %11, 1, !dbg !5051
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5051
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5051
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5051

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5051

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub23 = sub i64 %12, 1, !dbg !5051
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5051
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5051
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5051

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5051

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub28 = sub i64 %13, 1, !dbg !5051
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5051
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5051
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5051

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5051

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub33 = sub i64 %14, 1, !dbg !5051
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5051
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5051
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5051

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5051

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub38 = sub i64 %15, 1, !dbg !5051
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5051
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5051
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5051

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5051

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub43 = sub i64 %16, 1, !dbg !5051
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5051
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5051
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5051

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5051

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub48 = sub i64 %17, 1, !dbg !5051
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5051
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5051
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5051

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5051

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub53 = sub i64 %18, 1, !dbg !5051
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5051
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5051
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5051

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5051

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub58 = sub i64 %19, 1, !dbg !5051
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5051
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5051
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5051

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5051

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub63 = sub i64 %20, 1, !dbg !5051
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5051
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5051
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5051

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5051

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub68 = sub i64 %21, 1, !dbg !5051
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5051
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5051
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5051

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5051

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub73 = sub i64 %22, 1, !dbg !5051
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5051
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5051
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5051

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5051

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub78 = sub i64 %23, 1, !dbg !5051
  %and79 = and i64 %sub78, 562949953421312, !dbg !5051
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5051
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5051

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5051

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub83 = sub i64 %24, 1, !dbg !5051
  %and84 = and i64 %sub83, 281474976710656, !dbg !5051
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5051
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5051

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5051

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub88 = sub i64 %25, 1, !dbg !5051
  %and89 = and i64 %sub88, 140737488355328, !dbg !5051
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5051
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5051

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5051

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub93 = sub i64 %26, 1, !dbg !5051
  %and94 = and i64 %sub93, 70368744177664, !dbg !5051
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5051
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5051

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5051

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub98 = sub i64 %27, 1, !dbg !5051
  %and99 = and i64 %sub98, 35184372088832, !dbg !5051
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5051
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5051

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5051

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub103 = sub i64 %28, 1, !dbg !5051
  %and104 = and i64 %sub103, 17592186044416, !dbg !5051
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5051
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5051

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5051

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub108 = sub i64 %29, 1, !dbg !5051
  %and109 = and i64 %sub108, 8796093022208, !dbg !5051
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5051
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5051

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5051

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub113 = sub i64 %30, 1, !dbg !5051
  %and114 = and i64 %sub113, 4398046511104, !dbg !5051
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5051
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5051

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5051

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub118 = sub i64 %31, 1, !dbg !5051
  %and119 = and i64 %sub118, 2199023255552, !dbg !5051
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5051
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5051

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5051

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub123 = sub i64 %32, 1, !dbg !5051
  %and124 = and i64 %sub123, 1099511627776, !dbg !5051
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5051
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5051

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5051

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub128 = sub i64 %33, 1, !dbg !5051
  %and129 = and i64 %sub128, 549755813888, !dbg !5051
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5051
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5051

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5051

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub133 = sub i64 %34, 1, !dbg !5051
  %and134 = and i64 %sub133, 274877906944, !dbg !5051
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5051
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5051

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5051

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub138 = sub i64 %35, 1, !dbg !5051
  %and139 = and i64 %sub138, 137438953472, !dbg !5051
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5051
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5051

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5051

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub143 = sub i64 %36, 1, !dbg !5051
  %and144 = and i64 %sub143, 68719476736, !dbg !5051
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5051
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5051

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5051

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub148 = sub i64 %37, 1, !dbg !5051
  %and149 = and i64 %sub148, 34359738368, !dbg !5051
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5051
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5051

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5051

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub153 = sub i64 %38, 1, !dbg !5051
  %and154 = and i64 %sub153, 17179869184, !dbg !5051
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5051
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5051

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5051

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub158 = sub i64 %39, 1, !dbg !5051
  %and159 = and i64 %sub158, 8589934592, !dbg !5051
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5051
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5051

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5051

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub163 = sub i64 %40, 1, !dbg !5051
  %and164 = and i64 %sub163, 4294967296, !dbg !5051
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5051
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5051

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5051

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub168 = sub i64 %41, 1, !dbg !5051
  %and169 = and i64 %sub168, 2147483648, !dbg !5051
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5051
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5051

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5051

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub173 = sub i64 %42, 1, !dbg !5051
  %and174 = and i64 %sub173, 1073741824, !dbg !5051
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5051
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5051

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5051

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub178 = sub i64 %43, 1, !dbg !5051
  %and179 = and i64 %sub178, 536870912, !dbg !5051
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5051
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5051

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5051

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub183 = sub i64 %44, 1, !dbg !5051
  %and184 = and i64 %sub183, 268435456, !dbg !5051
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5051
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5051

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5051

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub188 = sub i64 %45, 1, !dbg !5051
  %and189 = and i64 %sub188, 134217728, !dbg !5051
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5051
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5051

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5051

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub193 = sub i64 %46, 1, !dbg !5051
  %and194 = and i64 %sub193, 67108864, !dbg !5051
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5051
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5051

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5051

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub198 = sub i64 %47, 1, !dbg !5051
  %and199 = and i64 %sub198, 33554432, !dbg !5051
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5051
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5051

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5051

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub203 = sub i64 %48, 1, !dbg !5051
  %and204 = and i64 %sub203, 16777216, !dbg !5051
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5051
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5051

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5051

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub208 = sub i64 %49, 1, !dbg !5051
  %and209 = and i64 %sub208, 8388608, !dbg !5051
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5051
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5051

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5051

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub213 = sub i64 %50, 1, !dbg !5051
  %and214 = and i64 %sub213, 4194304, !dbg !5051
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5051
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5051

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5051

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub218 = sub i64 %51, 1, !dbg !5051
  %and219 = and i64 %sub218, 2097152, !dbg !5051
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5051
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5051

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5051

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub223 = sub i64 %52, 1, !dbg !5051
  %and224 = and i64 %sub223, 1048576, !dbg !5051
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5051
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5051

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5051

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub228 = sub i64 %53, 1, !dbg !5051
  %and229 = and i64 %sub228, 524288, !dbg !5051
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5051
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5051

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5051

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub233 = sub i64 %54, 1, !dbg !5051
  %and234 = and i64 %sub233, 262144, !dbg !5051
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5051
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5051

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5051

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub238 = sub i64 %55, 1, !dbg !5051
  %and239 = and i64 %sub238, 131072, !dbg !5051
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5051
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5051

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5051

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub243 = sub i64 %56, 1, !dbg !5051
  %and244 = and i64 %sub243, 65536, !dbg !5051
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5051
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5051

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5051

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub248 = sub i64 %57, 1, !dbg !5051
  %and249 = and i64 %sub248, 32768, !dbg !5051
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5051
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5051

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5051

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub253 = sub i64 %58, 1, !dbg !5051
  %and254 = and i64 %sub253, 16384, !dbg !5051
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5051
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5051

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5051

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub258 = sub i64 %59, 1, !dbg !5051
  %and259 = and i64 %sub258, 8192, !dbg !5051
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5051
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5051

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5051

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub263 = sub i64 %60, 1, !dbg !5051
  %and264 = and i64 %sub263, 4096, !dbg !5051
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5051
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5051

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5051

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub268 = sub i64 %61, 1, !dbg !5051
  %and269 = and i64 %sub268, 2048, !dbg !5051
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5051
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5051

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5051

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub273 = sub i64 %62, 1, !dbg !5051
  %and274 = and i64 %sub273, 1024, !dbg !5051
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5051
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5051

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5051

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub278 = sub i64 %63, 1, !dbg !5051
  %and279 = and i64 %sub278, 512, !dbg !5051
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5051
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5051

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5051

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub283 = sub i64 %64, 1, !dbg !5051
  %and284 = and i64 %sub283, 256, !dbg !5051
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5051
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5051

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5051

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub288 = sub i64 %65, 1, !dbg !5051
  %and289 = and i64 %sub288, 128, !dbg !5051
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5051
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5051

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5051

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub293 = sub i64 %66, 1, !dbg !5051
  %and294 = and i64 %sub293, 64, !dbg !5051
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5051
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5051

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5051

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub298 = sub i64 %67, 1, !dbg !5051
  %and299 = and i64 %sub298, 32, !dbg !5051
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5051
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5051

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5051

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub303 = sub i64 %68, 1, !dbg !5051
  %and304 = and i64 %sub303, 16, !dbg !5051
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5051
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5051

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5051

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub308 = sub i64 %69, 1, !dbg !5051
  %and309 = and i64 %sub308, 8, !dbg !5051
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5051
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5051

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5051

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub313 = sub i64 %70, 1, !dbg !5051
  %and314 = and i64 %sub313, 4, !dbg !5051
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5051
  %71 = zext i1 %tobool315 to i64, !dbg !5051
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5051
  br label %cond.end, !dbg !5051

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5051
  br label %cond.end317, !dbg !5051

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5051
  br label %cond.end319, !dbg !5051

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5051
  br label %cond.end321, !dbg !5051

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5051
  br label %cond.end323, !dbg !5051

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5051
  br label %cond.end325, !dbg !5051

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5051
  br label %cond.end327, !dbg !5051

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5051
  br label %cond.end329, !dbg !5051

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5051
  br label %cond.end331, !dbg !5051

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5051
  br label %cond.end333, !dbg !5051

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5051
  br label %cond.end335, !dbg !5051

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5051
  br label %cond.end337, !dbg !5051

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5051
  br label %cond.end339, !dbg !5051

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5051
  br label %cond.end341, !dbg !5051

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5051
  br label %cond.end343, !dbg !5051

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5051
  br label %cond.end345, !dbg !5051

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5051
  br label %cond.end347, !dbg !5051

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5051
  br label %cond.end349, !dbg !5051

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5051
  br label %cond.end351, !dbg !5051

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5051
  br label %cond.end353, !dbg !5051

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5051
  br label %cond.end355, !dbg !5051

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5051
  br label %cond.end357, !dbg !5051

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5051
  br label %cond.end359, !dbg !5051

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5051
  br label %cond.end361, !dbg !5051

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5051
  br label %cond.end363, !dbg !5051

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5051
  br label %cond.end365, !dbg !5051

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5051
  br label %cond.end367, !dbg !5051

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5051
  br label %cond.end369, !dbg !5051

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5051
  br label %cond.end371, !dbg !5051

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5051
  br label %cond.end373, !dbg !5051

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5051
  br label %cond.end375, !dbg !5051

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5051
  br label %cond.end377, !dbg !5051

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5051
  br label %cond.end379, !dbg !5051

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5051
  br label %cond.end381, !dbg !5051

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5051
  br label %cond.end383, !dbg !5051

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5051
  br label %cond.end385, !dbg !5051

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5051
  br label %cond.end387, !dbg !5051

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5051
  br label %cond.end389, !dbg !5051

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5051
  br label %cond.end391, !dbg !5051

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5051
  br label %cond.end393, !dbg !5051

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5051
  br label %cond.end395, !dbg !5051

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5051
  br label %cond.end397, !dbg !5051

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5051
  br label %cond.end399, !dbg !5051

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5051
  br label %cond.end401, !dbg !5051

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5051
  br label %cond.end403, !dbg !5051

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5051
  br label %cond.end405, !dbg !5051

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5051
  br label %cond.end407, !dbg !5051

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5051
  br label %cond.end409, !dbg !5051

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5051
  br label %cond.end411, !dbg !5051

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5051
  br label %cond.end413, !dbg !5051

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5051
  br label %cond.end415, !dbg !5051

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5051
  br label %cond.end417, !dbg !5051

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5051
  br label %cond.end419, !dbg !5051

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5051
  br label %cond.end421, !dbg !5051

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5051
  br label %cond.end423, !dbg !5051

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5051
  br label %cond.end425, !dbg !5051

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5051
  br label %cond.end427, !dbg !5051

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5051
  br label %cond.end429, !dbg !5051

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5051
  br label %cond.end431, !dbg !5051

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5051
  br label %cond.end433, !dbg !5051

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5051
  br label %cond.end435, !dbg !5051

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5051
  br label %cond.end437, !dbg !5051

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5051
  br label %cond.end440, !dbg !5051

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5051

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5051
  br label %cond.end444, !dbg !5051

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5051
  %sub443 = sub i64 %72, 1, !dbg !5051
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5051
  br label %cond.end444, !dbg !5051

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5051
  %sub446 = sub i32 %cond445, 12, !dbg !5052
  %add = add i32 %sub446, 1, !dbg !5053
  store i32 %add, i32* %retval, align 4, !dbg !5054
  br label %return, !dbg !5054

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5055
  %dec = add i64 %73, -1, !dbg !5055
  store i64 %dec, i64* %size.addr, align 8, !dbg !5055
  %74 = load i64, i64* %size.addr, align 8, !dbg !5056
  %shr = lshr i64 %74, 12, !dbg !5056
  store i64 %shr, i64* %size.addr, align 8, !dbg !5056
  %75 = load i64, i64* %size.addr, align 8, !dbg !5057
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5034
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5058
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5059
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5058, !srcloc !5060
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5058
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5061
  %add.i = add i32 %79, 1, !dbg !5062
  store i32 %add.i, i32* %retval, align 4, !dbg !5063
  br label %return, !dbg !5063

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5064
  ret i32 %80, !dbg !5064
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5065 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5026, metadata !DIExpression()), !dbg !5069
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5033, metadata !DIExpression()), !dbg !5071
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  %0 = load i64, i64* %n.addr, align 8, !dbg !5074
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5071
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5075
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5076
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5075, !srcloc !5060
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5075
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5077
  %add.i = add i32 %4, 1, !dbg !5078
  %sub = sub i32 %add.i, 1, !dbg !5079
  ret i32 %sub, !dbg !5080
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5081 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5091, metadata !DIExpression()), !dbg !5092
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5093
  ret i8* %0, !dbg !5094
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_tuner_i2c_tuner_xfer(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !5095 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %state = alloca %struct.s5h1420_state*, align 8
  %m = alloca [3 x %struct.i2c_msg], align 16
  %tx_open = alloca [2 x i8], align 1
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5102, metadata !DIExpression()), !dbg !5103
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !5104
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !5105
  %1 = bitcast i8* %call to %struct.s5h1420_state*, !dbg !5105
  store %struct.s5h1420_state* %1, %struct.s5h1420_state** %state, align 8, !dbg !5103
  call void @llvm.dbg.declare(metadata [3 x %struct.i2c_msg]* %m, metadata !5106, metadata !DIExpression()), !dbg !5107
  call void @llvm.dbg.declare(metadata [2 x i8]* %tx_open, metadata !5108, metadata !DIExpression()), !dbg !5109
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %tx_open, i64 0, i64 0, !dbg !5110
  store i8 2, i8* %arrayinit.begin, align 1, !dbg !5110
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5110
  %2 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5111
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %2, i32 0, i32 4, !dbg !5112
  %3 = load i8, i8* %CON_1_val, align 8, !dbg !5112
  %conv = zext i8 %3 to i32, !dbg !5111
  %or = or i32 %conv, 1, !dbg !5113
  %conv1 = trunc i32 %or to i8, !dbg !5111
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !5110
  %4 = load i32, i32* %num.addr, align 4, !dbg !5114
  %add = add i32 1, %4, !dbg !5116
  %conv2 = sext i32 %add to i64, !dbg !5117
  %cmp = icmp ugt i64 %conv2, 3, !dbg !5118
  br i1 %cmp, label %if.then, label %if.end, !dbg !5119

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %num.addr, align 4, !dbg !5120
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %5) #9, !dbg !5122
  store i32 -95, i32* %retval, align 4, !dbg !5123
  br label %return, !dbg !5123

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 0, !dbg !5124
  %6 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !5124
  %7 = load i32, i32* %num.addr, align 4, !dbg !5125
  %add5 = add i32 1, %7, !dbg !5126
  %conv6 = sext i32 %add5 to i64, !dbg !5127
  %mul = mul i64 16, %conv6, !dbg !5128
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 %mul, i1 false), !dbg !5124
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5129
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %8, i32 0, i32 1, !dbg !5130
  %9 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !5130
  %demod_address = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %9, i32 0, i32 0, !dbg !5131
  %10 = load i8, i8* %demod_address, align 1, !dbg !5131
  %conv7 = zext i8 %10 to i16, !dbg !5129
  %arrayidx = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 0, !dbg !5132
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !5133
  store i16 %conv7, i16* %addr, align 16, !dbg !5134
  %arraydecay8 = getelementptr inbounds [2 x i8], [2 x i8]* %tx_open, i64 0, i64 0, !dbg !5135
  %arrayidx9 = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 0, !dbg !5136
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx9, i32 0, i32 3, !dbg !5137
  store i8* %arraydecay8, i8** %buf, align 8, !dbg !5138
  %arrayidx10 = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 0, !dbg !5139
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx10, i32 0, i32 2, !dbg !5140
  store i16 2, i16* %len, align 4, !dbg !5141
  %arrayidx11 = getelementptr [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 1, !dbg !5142
  %11 = bitcast %struct.i2c_msg* %arrayidx11 to i8*, !dbg !5143
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !5144
  %13 = bitcast %struct.i2c_msg* %12 to i8*, !dbg !5143
  %14 = load i32, i32* %num.addr, align 4, !dbg !5145
  %conv12 = sext i32 %14 to i64, !dbg !5145
  %mul13 = mul i64 16, %conv12, !dbg !5146
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 8 %13, i64 %mul13, i1 false), !dbg !5143
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5147
  %i2c = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %15, i32 0, i32 0, !dbg !5148
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5148
  %arraydecay14 = getelementptr inbounds [3 x %struct.i2c_msg], [3 x %struct.i2c_msg]* %m, i64 0, i64 0, !dbg !5149
  %17 = load i32, i32* %num.addr, align 4, !dbg !5150
  %add15 = add i32 1, %17, !dbg !5151
  %call16 = call i32 @i2c_transfer(%struct.i2c_adapter* %16, %struct.i2c_msg* %arraydecay14, i32 %add15) #8, !dbg !5152
  %18 = load i32, i32* %num.addr, align 4, !dbg !5153
  %add17 = add i32 1, %18, !dbg !5154
  %cmp18 = icmp eq i32 %call16, %add17, !dbg !5155
  br i1 %cmp18, label %cond.true, label %cond.false, !dbg !5152

cond.true:                                        ; preds = %if.end
  %19 = load i32, i32* %num.addr, align 4, !dbg !5156
  br label %cond.end, !dbg !5152

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ -5, %cond.false ], !dbg !5152
  store i32 %cond, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

return:                                           ; preds = %cond.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !5158
  ret i32 %20, !dbg !5158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_tuner_i2c_func(%struct.i2c_adapter* %adapter) #0 !dbg !5159 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  ret i32 1, !dbg !5162
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #0 !dbg !5163 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5170
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5171
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5172
  ret i8* %call, !dbg !5173
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5174 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5177, metadata !DIExpression()), !dbg !5178
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5179
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5180
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5180
  ret i8* %1, !dbg !5181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5182 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5185, metadata !DIExpression()), !dbg !5186
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5187, metadata !DIExpression()), !dbg !5188
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5189
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5190
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5191
  store i8* %0, i8** %driver_data, align 8, !dbg !5192
  ret void, !dbg !5193
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @s5h1420_release(%struct.dvb_frontend* %fe) #0 !dbg !5194 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5197, metadata !DIExpression()), !dbg !5198
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5199
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5200
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5200
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5199
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5198
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5201
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 3, !dbg !5202
  call void @i2c_del_adapter(%struct.i2c_adapter* %tuner_i2c_adapter) #8, !dbg !5203
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5204
  %5 = bitcast %struct.s5h1420_state* %4 to i8*, !dbg !5204
  call void @kfree(i8* %5) #8, !dbg !5205
  ret void, !dbg !5206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_init(%struct.dvb_frontend* %fe) #0 !dbg !5207 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5210, metadata !DIExpression()), !dbg !5211
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5212
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5213
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5213
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5212
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5211
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5214
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 1, !dbg !5215
  %4 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !5215
  %serial_mpeg = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %4, i32 0, i32 1, !dbg !5216
  %bf.load = load i8, i8* %serial_mpeg, align 1, !dbg !5216
  %bf.lshr = lshr i8 %bf.load, 3, !dbg !5216
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5216
  %conv = zext i8 %bf.clear to i32, !dbg !5214
  %shl = shl i32 %conv, 4, !dbg !5217
  %conv1 = trunc i32 %shl to i8, !dbg !5214
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5218
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %5, i32 0, i32 4, !dbg !5219
  store i8 %conv1, i8* %CON_1_val, align 8, !dbg !5220
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5221
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5222
  %CON_1_val2 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %7, i32 0, i32 4, !dbg !5223
  %8 = load i8, i8* %CON_1_val2, align 8, !dbg !5223
  %call = call i32 @s5h1420_writereg(%struct.s5h1420_state* %6, i8 zeroext 2, i8 zeroext %8) #8, !dbg !5224
  call void @msleep(i32 10) #8, !dbg !5225
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5226
  call void @s5h1420_reset(%struct.s5h1420_state* %9) #8, !dbg !5227
  ret i32 0, !dbg !5228
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_sleep(%struct.dvb_frontend* %fe) #0 !dbg !5229 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5230, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5232, metadata !DIExpression()), !dbg !5233
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5234
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5235
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5235
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5234
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5233
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5236
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 4, !dbg !5237
  store i8 18, i8* %CON_1_val, align 8, !dbg !5238
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5239
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5240
  %CON_1_val1 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %5, i32 0, i32 4, !dbg !5241
  %6 = load i8, i8* %CON_1_val1, align 8, !dbg !5241
  %call = call i32 @s5h1420_writereg(%struct.s5h1420_state* %4, i8 zeroext 2, i8 zeroext %6) #8, !dbg !5242
  ret i32 %call, !dbg !5243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5244 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %frequency_delta = alloca i32, align 4
  %fesettings = alloca %struct.dvb_frontend_tune_settings, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5249
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5250
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5248
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5251, metadata !DIExpression()), !dbg !5252
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5253
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5254
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5254
  %3 = bitcast i8* %2 to %struct.s5h1420_state*, !dbg !5253
  store %struct.s5h1420_state* %3, %struct.s5h1420_state** %state, align 8, !dbg !5252
  call void @llvm.dbg.declare(metadata i32* %frequency_delta, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings* %fesettings, metadata !5257, metadata !DIExpression()), !dbg !5258
  br label %do.body, !dbg !5259

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5260
  %tobool = icmp ne i32 %4, 0, !dbg !5260
  br i1 %tobool, label %if.then, label %if.end, !dbg !5263

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.s5h1420_set_frontend, i64 0, i64 0)) #9, !dbg !5260
  br label %if.end, !dbg !5260

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5263

do.end:                                           ; preds = %if.end
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5264
  %call1 = call i32 @s5h1420_get_tune_settings(%struct.dvb_frontend* %5, %struct.dvb_frontend_tune_settings* %fesettings) #8, !dbg !5265
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5266
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 0, !dbg !5267
  %7 = load i32, i32* %frequency, align 4, !dbg !5267
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5268
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %8, i32 0, i32 7, !dbg !5269
  %9 = load i32, i32* %tunedfreq, align 8, !dbg !5269
  %sub = sub i32 %7, %9, !dbg !5270
  store i32 %sub, i32* %frequency_delta, align 4, !dbg !5271
  %10 = load i32, i32* %frequency_delta, align 4, !dbg !5272
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %fesettings, i32 0, i32 2, !dbg !5274
  %11 = load i32, i32* %max_drift, align 4, !dbg !5274
  %sub2 = sub i32 0, %11, !dbg !5275
  %cmp = icmp sgt i32 %10, %sub2, !dbg !5276
  br i1 %cmp, label %land.lhs.true, label %if.end53, !dbg !5277

land.lhs.true:                                    ; preds = %do.end
  %12 = load i32, i32* %frequency_delta, align 4, !dbg !5278
  %max_drift3 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %fesettings, i32 0, i32 2, !dbg !5279
  %13 = load i32, i32* %max_drift3, align 4, !dbg !5279
  %cmp4 = icmp slt i32 %12, %13, !dbg !5280
  br i1 %cmp4, label %land.lhs.true5, label %if.end53, !dbg !5281

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = load i32, i32* %frequency_delta, align 4, !dbg !5282
  %cmp6 = icmp ne i32 %14, 0, !dbg !5283
  br i1 %cmp6, label %land.lhs.true7, label %if.end53, !dbg !5284

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5285
  %fec_inner = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %15, i32 0, i32 8, !dbg !5286
  %16 = load i32, i32* %fec_inner, align 4, !dbg !5286
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5287
  %fec_inner8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 5, !dbg !5288
  %18 = load i32, i32* %fec_inner8, align 4, !dbg !5288
  %cmp9 = icmp eq i32 %16, %18, !dbg !5289
  br i1 %cmp9, label %land.lhs.true10, label %if.end53, !dbg !5290

land.lhs.true10:                                  ; preds = %land.lhs.true7
  %19 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5291
  %symbol_rate = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %19, i32 0, i32 9, !dbg !5292
  %20 = load i32, i32* %symbol_rate, align 8, !dbg !5292
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5293
  %symbol_rate11 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5294
  %22 = load i32, i32* %symbol_rate11, align 4, !dbg !5294
  %cmp12 = icmp eq i32 %20, %22, !dbg !5295
  br i1 %cmp12, label %if.then13, label %if.end53, !dbg !5296

if.then13:                                        ; preds = %land.lhs.true10
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5297
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 1, !dbg !5300
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5301
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5302
  %24 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5302
  %tobool14 = icmp ne i32 (%struct.dvb_frontend*)* %24, null, !dbg !5297
  br i1 %tobool14, label %if.then15, label %if.end27, !dbg !5303

if.then15:                                        ; preds = %if.then13
  %25 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5304
  %ops16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %25, i32 0, i32 1, !dbg !5306
  %tuner_ops17 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops16, i32 0, i32 30, !dbg !5307
  %set_params18 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops17, i32 0, i32 6, !dbg !5308
  %26 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params18, align 8, !dbg !5308
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5309
  %call19 = call i32 %26(%struct.dvb_frontend* %27) #8, !dbg !5304
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5310
  %ops20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 1, !dbg !5312
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops20, i32 0, i32 26, !dbg !5313
  %29 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5313
  %tobool21 = icmp ne i32 (%struct.dvb_frontend*, i32)* %29, null, !dbg !5310
  br i1 %tobool21, label %if.then22, label %if.end26, !dbg !5314

if.then22:                                        ; preds = %if.then15
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5315
  %ops23 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %30, i32 0, i32 1, !dbg !5316
  %i2c_gate_ctrl24 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops23, i32 0, i32 26, !dbg !5317
  %31 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl24, align 8, !dbg !5317
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5318
  %call25 = call i32 %31(%struct.dvb_frontend* %32, i32 0) #8, !dbg !5315
  br label %if.end26, !dbg !5315

if.end26:                                         ; preds = %if.then22, %if.then15
  br label %if.end27, !dbg !5319

if.end27:                                         ; preds = %if.end26, %if.then13
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5320
  %ops28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 1, !dbg !5322
  %tuner_ops29 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops28, i32 0, i32 30, !dbg !5323
  %get_frequency = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops29, i32 0, i32 9, !dbg !5324
  %34 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency, align 8, !dbg !5324
  %tobool30 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %34, null, !dbg !5320
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !5325

if.then31:                                        ; preds = %if.end27
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5326, metadata !DIExpression()), !dbg !5328
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5329
  %ops32 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %35, i32 0, i32 1, !dbg !5330
  %tuner_ops33 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops32, i32 0, i32 30, !dbg !5331
  %get_frequency34 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops33, i32 0, i32 9, !dbg !5332
  %36 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_frequency34, align 8, !dbg !5332
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5333
  %call35 = call i32 %36(%struct.dvb_frontend* %37, i32* %tmp) #8, !dbg !5329
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5334
  %ops36 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %38, i32 0, i32 1, !dbg !5336
  %i2c_gate_ctrl37 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops36, i32 0, i32 26, !dbg !5337
  %39 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl37, align 8, !dbg !5337
  %tobool38 = icmp ne i32 (%struct.dvb_frontend*, i32)* %39, null, !dbg !5334
  br i1 %tobool38, label %if.then39, label %if.end43, !dbg !5338

if.then39:                                        ; preds = %if.then31
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5339
  %ops40 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %40, i32 0, i32 1, !dbg !5340
  %i2c_gate_ctrl41 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops40, i32 0, i32 26, !dbg !5341
  %41 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl41, align 8, !dbg !5341
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5342
  %call42 = call i32 %41(%struct.dvb_frontend* %42, i32 0) #8, !dbg !5339
  br label %if.end43, !dbg !5339

if.end43:                                         ; preds = %if.then39, %if.then31
  %43 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5343
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5344
  %frequency44 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0, !dbg !5345
  %45 = load i32, i32* %frequency44, align 4, !dbg !5345
  %46 = load i32, i32* %tmp, align 4, !dbg !5346
  %sub45 = sub i32 %45, %46, !dbg !5347
  call void @s5h1420_setfreqoffset(%struct.s5h1420_state* %43, i32 %sub45) #8, !dbg !5348
  br label %if.end46, !dbg !5349

if.else:                                          ; preds = %if.end27
  %47 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5350
  call void @s5h1420_setfreqoffset(%struct.s5h1420_state* %47, i32 0) #8, !dbg !5352
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.end43
  br label %do.body47, !dbg !5353

do.body47:                                        ; preds = %if.end46
  %48 = load i32, i32* @debug, align 4, !dbg !5354
  %tobool48 = icmp ne i32 %48, 0, !dbg !5354
  br i1 %tobool48, label %if.then49, label %if.end51, !dbg !5357

if.then49:                                        ; preds = %do.body47
  %call50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5354
  br label %if.end51, !dbg !5354

if.end51:                                         ; preds = %if.then49, %do.body47
  br label %do.end52, !dbg !5357

do.end52:                                         ; preds = %if.end51
  store i32 0, i32* %retval, align 4, !dbg !5358
  br label %return, !dbg !5358

if.end53:                                         ; preds = %land.lhs.true10, %land.lhs.true7, %land.lhs.true5, %land.lhs.true, %do.end
  br label %do.body54, !dbg !5359

do.body54:                                        ; preds = %if.end53
  %49 = load i32, i32* @debug, align 4, !dbg !5360
  %tobool55 = icmp ne i32 %49, 0, !dbg !5360
  br i1 %tobool55, label %if.then56, label %if.end58, !dbg !5363

if.then56:                                        ; preds = %do.body54
  %call57 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5360
  br label %if.end58, !dbg !5360

if.end58:                                         ; preds = %if.then56, %do.body54
  br label %do.end59, !dbg !5363

do.end59:                                         ; preds = %if.end58
  %50 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5364
  call void @s5h1420_reset(%struct.s5h1420_state* %50) #8, !dbg !5365
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5366
  %symbol_rate60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 10, !dbg !5368
  %52 = load i32, i32* %symbol_rate60, align 4, !dbg !5368
  %cmp61 = icmp ugt i32 %52, 33000000, !dbg !5369
  br i1 %cmp61, label %if.then62, label %if.else63, !dbg !5370

if.then62:                                        ; preds = %do.end59
  %53 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5371
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %53, i32 0, i32 6, !dbg !5372
  store i32 80000000, i32* %fclk, align 4, !dbg !5373
  br label %if.end83, !dbg !5371

if.else63:                                        ; preds = %do.end59
  %54 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5374
  %symbol_rate64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %54, i32 0, i32 10, !dbg !5376
  %55 = load i32, i32* %symbol_rate64, align 4, !dbg !5376
  %cmp65 = icmp ugt i32 %55, 28500000, !dbg !5377
  br i1 %cmp65, label %if.then66, label %if.else68, !dbg !5378

if.then66:                                        ; preds = %if.else63
  %56 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5379
  %fclk67 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %56, i32 0, i32 6, !dbg !5380
  store i32 59000000, i32* %fclk67, align 4, !dbg !5381
  br label %if.end82, !dbg !5379

if.else68:                                        ; preds = %if.else63
  %57 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5382
  %symbol_rate69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %57, i32 0, i32 10, !dbg !5384
  %58 = load i32, i32* %symbol_rate69, align 4, !dbg !5384
  %cmp70 = icmp ugt i32 %58, 25000000, !dbg !5385
  br i1 %cmp70, label %if.then71, label %if.else73, !dbg !5386

if.then71:                                        ; preds = %if.else68
  %59 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5387
  %fclk72 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %59, i32 0, i32 6, !dbg !5388
  store i32 86000000, i32* %fclk72, align 4, !dbg !5389
  br label %if.end81, !dbg !5387

if.else73:                                        ; preds = %if.else68
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5390
  %symbol_rate74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 10, !dbg !5392
  %61 = load i32, i32* %symbol_rate74, align 4, !dbg !5392
  %cmp75 = icmp ugt i32 %61, 1900000, !dbg !5393
  br i1 %cmp75, label %if.then76, label %if.else78, !dbg !5394

if.then76:                                        ; preds = %if.else73
  %62 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5395
  %fclk77 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %62, i32 0, i32 6, !dbg !5396
  store i32 88000000, i32* %fclk77, align 4, !dbg !5397
  br label %if.end80, !dbg !5395

if.else78:                                        ; preds = %if.else73
  %63 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5398
  %fclk79 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %63, i32 0, i32 6, !dbg !5399
  store i32 44000000, i32* %fclk79, align 4, !dbg !5400
  br label %if.end80

if.end80:                                         ; preds = %if.else78, %if.then76
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.then71
  br label %if.end82

if.end82:                                         ; preds = %if.end81, %if.then66
  br label %if.end83

if.end83:                                         ; preds = %if.end82, %if.then62
  br label %do.body84, !dbg !5401

do.body84:                                        ; preds = %if.end83
  %64 = load i32, i32* @debug, align 4, !dbg !5402
  %tobool85 = icmp ne i32 %64, 0, !dbg !5402
  br i1 %tobool85, label %if.then86, label %if.end93, !dbg !5405

if.then86:                                        ; preds = %do.body84
  %65 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5402
  %fclk87 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %65, i32 0, i32 6, !dbg !5402
  %66 = load i32, i32* %fclk87, align 4, !dbg !5402
  %div = udiv i32 %66, 1000000, !dbg !5402
  %sub88 = sub i32 %div, 8, !dbg !5402
  %67 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5402
  %fclk89 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %67, i32 0, i32 6, !dbg !5402
  %68 = load i32, i32* %fclk89, align 4, !dbg !5402
  %add = add i32 %68, 704000, !dbg !5402
  %sub90 = sub i32 %add, 1, !dbg !5402
  %div91 = udiv i32 %sub90, 704000, !dbg !5402
  %call92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %sub88, i32 %div91) #9, !dbg !5402
  br label %if.end93, !dbg !5402

if.end93:                                         ; preds = %if.then86, %do.body84
  br label %do.end94, !dbg !5405

do.end94:                                         ; preds = %if.end93
  %69 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5406
  %70 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5407
  %fclk95 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %70, i32 0, i32 6, !dbg !5408
  %71 = load i32, i32* %fclk95, align 4, !dbg !5408
  %div96 = udiv i32 %71, 1000000, !dbg !5409
  %sub97 = sub i32 %div96, 8, !dbg !5410
  %conv = trunc i32 %sub97 to i8, !dbg !5407
  %call98 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %69, i8 zeroext 3, i8 zeroext %conv) #8, !dbg !5411
  %72 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5412
  %call99 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %72, i8 zeroext 4, i8 zeroext 64) #8, !dbg !5413
  %73 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5414
  %74 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5415
  %fclk100 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %74, i32 0, i32 6, !dbg !5416
  %75 = load i32, i32* %fclk100, align 4, !dbg !5416
  %add101 = add i32 %75, 704000, !dbg !5417
  %sub102 = sub i32 %add101, 1, !dbg !5418
  %div103 = udiv i32 %sub102, 704000, !dbg !5419
  %conv104 = trunc i32 %div103 to i8, !dbg !5420
  %call105 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %73, i8 zeroext 58, i8 zeroext %conv104) #8, !dbg !5421
  %76 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5422
  %symbol_rate106 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %76, i32 0, i32 10, !dbg !5424
  %77 = load i32, i32* %symbol_rate106, align 4, !dbg !5424
  %cmp107 = icmp ugt i32 %77, 29000000, !dbg !5425
  br i1 %cmp107, label %if.then109, label %if.else111, !dbg !5426

if.then109:                                       ; preds = %do.end94
  %78 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5427
  %call110 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %78, i8 zeroext 5, i8 zeroext -66) #8, !dbg !5428
  br label %if.end113, !dbg !5428

if.else111:                                       ; preds = %do.end94
  %79 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5429
  %call112 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %79, i8 zeroext 5, i8 zeroext -68) #8, !dbg !5430
  br label %if.end113

if.end113:                                        ; preds = %if.else111, %if.then109
  %80 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5431
  %call114 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %80, i8 zeroext 2, i8 zeroext 0) #8, !dbg !5432
  %81 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5433
  %call115 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %81, i8 zeroext 6, i8 zeroext 0) #8, !dbg !5434
  %82 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5435
  %call116 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %82, i8 zeroext 7, i8 zeroext -80) #8, !dbg !5436
  %83 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5437
  %call117 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %83, i8 zeroext 9, i8 zeroext -16) #8, !dbg !5438
  %84 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5439
  %call118 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %84, i8 zeroext 10, i8 zeroext 42) #8, !dbg !5440
  %85 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5441
  %call119 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %85, i8 zeroext 11, i8 zeroext 121) #8, !dbg !5442
  %86 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5443
  %symbol_rate120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %86, i32 0, i32 10, !dbg !5445
  %87 = load i32, i32* %symbol_rate120, align 4, !dbg !5445
  %cmp121 = icmp ugt i32 %87, 20000000, !dbg !5446
  br i1 %cmp121, label %if.then123, label %if.else125, !dbg !5447

if.then123:                                       ; preds = %if.end113
  %88 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5448
  %call124 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %88, i8 zeroext 12, i8 zeroext 121) #8, !dbg !5449
  br label %if.end127, !dbg !5449

if.else125:                                       ; preds = %if.end113
  %89 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5450
  %call126 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %89, i8 zeroext 12, i8 zeroext 88) #8, !dbg !5451
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then123
  %90 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5452
  %call128 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %90, i8 zeroext 13, i8 zeroext 107) #8, !dbg !5453
  %91 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5454
  %symbol_rate129 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %91, i32 0, i32 10, !dbg !5456
  %92 = load i32, i32* %symbol_rate129, align 4, !dbg !5456
  %cmp130 = icmp uge i32 %92, 8000000, !dbg !5457
  br i1 %cmp130, label %if.then132, label %if.else134, !dbg !5458

if.then132:                                       ; preds = %if.end127
  %93 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5459
  %call133 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %93, i8 zeroext 8, i8 zeroext 16) #8, !dbg !5460
  br label %if.end143, !dbg !5460

if.else134:                                       ; preds = %if.end127
  %94 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5461
  %symbol_rate135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %94, i32 0, i32 10, !dbg !5463
  %95 = load i32, i32* %symbol_rate135, align 4, !dbg !5463
  %cmp136 = icmp uge i32 %95, 4000000, !dbg !5464
  br i1 %cmp136, label %if.then138, label %if.else140, !dbg !5465

if.then138:                                       ; preds = %if.else134
  %96 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5466
  %call139 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %96, i8 zeroext 8, i8 zeroext 80) #8, !dbg !5467
  br label %if.end142, !dbg !5467

if.else140:                                       ; preds = %if.else134
  %97 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5468
  %call141 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %97, i8 zeroext 8, i8 zeroext -48) #8, !dbg !5469
  br label %if.end142

if.end142:                                        ; preds = %if.else140, %if.then138
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.then132
  %98 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5470
  %call144 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %98, i8 zeroext 31, i8 zeroext 0) #8, !dbg !5471
  %99 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5472
  %call145 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %99, i8 zeroext 53, i8 zeroext 51) #8, !dbg !5473
  %100 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5474
  %101 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5475
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %101, i32 0, i32 1, !dbg !5476
  %102 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !5476
  %cdclk_polarity = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %102, i32 0, i32 1, !dbg !5477
  %bf.load = load i8, i8* %cdclk_polarity, align 1, !dbg !5477
  %bf.lshr = lshr i8 %bf.load, 2, !dbg !5477
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5477
  %call146 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %100, i8 zeroext 56, i8 zeroext %bf.clear) #8, !dbg !5478
  %103 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5479
  %call147 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %103, i8 zeroext 57, i8 zeroext 61) #8, !dbg !5480
  %104 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5481
  %call148 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %104, i8 zeroext 70, i8 zeroext 3) #8, !dbg !5482
  %105 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5483
  %call149 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %105, i8 zeroext 46, i8 zeroext 110) #8, !dbg !5484
  %106 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5485
  %call150 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %106, i8 zeroext 60, i8 zeroext 0) #8, !dbg !5486
  %107 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5487
  %call151 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %107, i8 zeroext 69, i8 zeroext 97) #8, !dbg !5488
  %108 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5489
  %ops152 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %108, i32 0, i32 1, !dbg !5491
  %tuner_ops153 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops152, i32 0, i32 30, !dbg !5492
  %set_params154 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops153, i32 0, i32 6, !dbg !5493
  %109 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params154, align 8, !dbg !5493
  %tobool155 = icmp ne i32 (%struct.dvb_frontend*)* %109, null, !dbg !5489
  br i1 %tobool155, label %if.then156, label %if.end169, !dbg !5494

if.then156:                                       ; preds = %if.end143
  %110 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5495
  %ops157 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %110, i32 0, i32 1, !dbg !5497
  %tuner_ops158 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops157, i32 0, i32 30, !dbg !5498
  %set_params159 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops158, i32 0, i32 6, !dbg !5499
  %111 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params159, align 8, !dbg !5499
  %112 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5500
  %call160 = call i32 %111(%struct.dvb_frontend* %112) #8, !dbg !5495
  %113 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5501
  %ops161 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %113, i32 0, i32 1, !dbg !5503
  %i2c_gate_ctrl162 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops161, i32 0, i32 26, !dbg !5504
  %114 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl162, align 8, !dbg !5504
  %tobool163 = icmp ne i32 (%struct.dvb_frontend*, i32)* %114, null, !dbg !5501
  br i1 %tobool163, label %if.then164, label %if.end168, !dbg !5505

if.then164:                                       ; preds = %if.then156
  %115 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5506
  %ops165 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %115, i32 0, i32 1, !dbg !5507
  %i2c_gate_ctrl166 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops165, i32 0, i32 26, !dbg !5508
  %116 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl166, align 8, !dbg !5508
  %117 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5509
  %call167 = call i32 %116(%struct.dvb_frontend* %117, i32 0) #8, !dbg !5506
  br label %if.end168, !dbg !5506

if.end168:                                        ; preds = %if.then164, %if.then156
  %118 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5510
  call void @s5h1420_setfreqoffset(%struct.s5h1420_state* %118, i32 0) #8, !dbg !5511
  br label %if.end169, !dbg !5512

if.end169:                                        ; preds = %if.end168, %if.end143
  %119 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5513
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5514
  call void @s5h1420_setsymbolrate(%struct.s5h1420_state* %119, %struct.dtv_frontend_properties* %120) #8, !dbg !5515
  %121 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5516
  %122 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5517
  call void @s5h1420_setfec_inversion(%struct.s5h1420_state* %121, %struct.dtv_frontend_properties* %122) #8, !dbg !5518
  %123 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5519
  %124 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5520
  %call170 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %124, i8 zeroext 5) #8, !dbg !5521
  %conv171 = zext i8 %call170 to i32, !dbg !5521
  %or = or i32 %conv171, 1, !dbg !5522
  %conv172 = trunc i32 %or to i8, !dbg !5521
  %call173 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %123, i8 zeroext 5, i8 zeroext %conv172) #8, !dbg !5523
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5524
  %fec_inner174 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 5, !dbg !5525
  %126 = load i32, i32* %fec_inner174, align 4, !dbg !5525
  %127 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5526
  %fec_inner175 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %127, i32 0, i32 8, !dbg !5527
  store i32 %126, i32* %fec_inner175, align 4, !dbg !5528
  %128 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5529
  %symbol_rate176 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %128, i32 0, i32 10, !dbg !5530
  %129 = load i32, i32* %symbol_rate176, align 4, !dbg !5530
  %130 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5531
  %symbol_rate177 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %130, i32 0, i32 9, !dbg !5532
  store i32 %129, i32* %symbol_rate177, align 8, !dbg !5533
  %131 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5534
  %postlocked = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %131, i32 0, i32 5, !dbg !5535
  %bf.load178 = load i8, i8* %postlocked, align 1, !dbg !5536
  %bf.clear179 = and i8 %bf.load178, -2, !dbg !5536
  store i8 %bf.clear179, i8* %postlocked, align 1, !dbg !5536
  %132 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5537
  %frequency180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %132, i32 0, i32 0, !dbg !5538
  %133 = load i32, i32* %frequency180, align 4, !dbg !5538
  %134 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5539
  %tunedfreq181 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %134, i32 0, i32 7, !dbg !5540
  store i32 %133, i32* %tunedfreq181, align 8, !dbg !5541
  br label %do.body182, !dbg !5542

do.body182:                                       ; preds = %if.end169
  %135 = load i32, i32* @debug, align 4, !dbg !5543
  %tobool183 = icmp ne i32 %135, 0, !dbg !5543
  br i1 %tobool183, label %if.then184, label %if.end186, !dbg !5546

if.then184:                                       ; preds = %do.body182
  %call185 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.s5h1420_set_frontend, i64 0, i64 0)) #9, !dbg !5543
  br label %if.end186, !dbg !5543

if.end186:                                        ; preds = %if.then184, %do.body182
  br label %do.end187, !dbg !5546

do.end187:                                        ; preds = %if.end186
  store i32 0, i32* %retval, align 4, !dbg !5547
  br label %return, !dbg !5547

return:                                           ; preds = %do.end187, %do.end52
  %136 = load i32, i32* %retval, align 4, !dbg !5548
  ret i32 %136, !dbg !5548
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5549 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5550, metadata !DIExpression()), !dbg !5551
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5552, metadata !DIExpression()), !dbg !5553
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5554, metadata !DIExpression()), !dbg !5555
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5556
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5557
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5555
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5558
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 10, !dbg !5560
  %2 = load i32, i32* %symbol_rate, align 4, !dbg !5560
  %cmp = icmp ugt i32 %2, 20000000, !dbg !5561
  br i1 %cmp, label %if.then, label %if.else, !dbg !5562

if.then:                                          ; preds = %entry
  %3 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5563
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %3, i32 0, i32 0, !dbg !5565
  store i32 50, i32* %min_delay_ms, align 4, !dbg !5566
  %4 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5567
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %4, i32 0, i32 1, !dbg !5568
  store i32 2000, i32* %step_size, align 4, !dbg !5569
  %5 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5570
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %5, i32 0, i32 2, !dbg !5571
  store i32 8000, i32* %max_drift, align 4, !dbg !5572
  br label %if.end41, !dbg !5573

if.else:                                          ; preds = %entry
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5574
  %symbol_rate1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 10, !dbg !5576
  %7 = load i32, i32* %symbol_rate1, align 4, !dbg !5576
  %cmp2 = icmp ugt i32 %7, 12000000, !dbg !5577
  br i1 %cmp2, label %if.then3, label %if.else7, !dbg !5578

if.then3:                                         ; preds = %if.else
  %8 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5579
  %min_delay_ms4 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %8, i32 0, i32 0, !dbg !5581
  store i32 100, i32* %min_delay_ms4, align 4, !dbg !5582
  %9 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5583
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %9, i32 0, i32 1, !dbg !5584
  store i32 1500, i32* %step_size5, align 4, !dbg !5585
  %10 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5586
  %max_drift6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %10, i32 0, i32 2, !dbg !5587
  store i32 9000, i32* %max_drift6, align 4, !dbg !5588
  br label %if.end40, !dbg !5589

if.else7:                                         ; preds = %if.else
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5590
  %symbol_rate8 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 10, !dbg !5592
  %12 = load i32, i32* %symbol_rate8, align 4, !dbg !5592
  %cmp9 = icmp ugt i32 %12, 8000000, !dbg !5593
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !5594

if.then10:                                        ; preds = %if.else7
  %13 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5595
  %min_delay_ms11 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %13, i32 0, i32 0, !dbg !5597
  store i32 100, i32* %min_delay_ms11, align 4, !dbg !5598
  %14 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5599
  %step_size12 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %14, i32 0, i32 1, !dbg !5600
  store i32 1000, i32* %step_size12, align 4, !dbg !5601
  %15 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5602
  %max_drift13 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %15, i32 0, i32 2, !dbg !5603
  store i32 8000, i32* %max_drift13, align 4, !dbg !5604
  br label %if.end39, !dbg !5605

if.else14:                                        ; preds = %if.else7
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5606
  %symbol_rate15 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 10, !dbg !5608
  %17 = load i32, i32* %symbol_rate15, align 4, !dbg !5608
  %cmp16 = icmp ugt i32 %17, 4000000, !dbg !5609
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !5610

if.then17:                                        ; preds = %if.else14
  %18 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5611
  %min_delay_ms18 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %18, i32 0, i32 0, !dbg !5613
  store i32 100, i32* %min_delay_ms18, align 4, !dbg !5614
  %19 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5615
  %step_size19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %19, i32 0, i32 1, !dbg !5616
  store i32 500, i32* %step_size19, align 4, !dbg !5617
  %20 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5618
  %max_drift20 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %20, i32 0, i32 2, !dbg !5619
  store i32 7000, i32* %max_drift20, align 4, !dbg !5620
  br label %if.end38, !dbg !5621

if.else21:                                        ; preds = %if.else14
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5622
  %symbol_rate22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 10, !dbg !5624
  %22 = load i32, i32* %symbol_rate22, align 4, !dbg !5624
  %cmp23 = icmp ugt i32 %22, 2000000, !dbg !5625
  br i1 %cmp23, label %if.then24, label %if.else30, !dbg !5626

if.then24:                                        ; preds = %if.else21
  %23 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5627
  %min_delay_ms25 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %23, i32 0, i32 0, !dbg !5629
  store i32 200, i32* %min_delay_ms25, align 4, !dbg !5630
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5631
  %symbol_rate26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 10, !dbg !5632
  %25 = load i32, i32* %symbol_rate26, align 4, !dbg !5632
  %div = udiv i32 %25, 8000, !dbg !5633
  %26 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5634
  %step_size27 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %26, i32 0, i32 1, !dbg !5635
  store i32 %div, i32* %step_size27, align 4, !dbg !5636
  %27 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5637
  %step_size28 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %27, i32 0, i32 1, !dbg !5638
  %28 = load i32, i32* %step_size28, align 4, !dbg !5638
  %mul = mul i32 14, %28, !dbg !5639
  %29 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5640
  %max_drift29 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %29, i32 0, i32 2, !dbg !5641
  store i32 %mul, i32* %max_drift29, align 4, !dbg !5642
  br label %if.end, !dbg !5643

if.else30:                                        ; preds = %if.else21
  %30 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5644
  %min_delay_ms31 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %30, i32 0, i32 0, !dbg !5646
  store i32 200, i32* %min_delay_ms31, align 4, !dbg !5647
  %31 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5648
  %symbol_rate32 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %31, i32 0, i32 10, !dbg !5649
  %32 = load i32, i32* %symbol_rate32, align 4, !dbg !5649
  %div33 = udiv i32 %32, 8000, !dbg !5650
  %33 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5651
  %step_size34 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %33, i32 0, i32 1, !dbg !5652
  store i32 %div33, i32* %step_size34, align 4, !dbg !5653
  %34 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5654
  %step_size35 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %34, i32 0, i32 1, !dbg !5655
  %35 = load i32, i32* %step_size35, align 4, !dbg !5655
  %mul36 = mul i32 18, %35, !dbg !5656
  %36 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5657
  %max_drift37 = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %36, i32 0, i32 2, !dbg !5658
  store i32 %mul36, i32* %max_drift37, align 4, !dbg !5659
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then24
  br label %if.end38

if.end38:                                         ; preds = %if.end, %if.then17
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then10
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then3
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then
  ret i32 0, !dbg !5660
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5661 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5662, metadata !DIExpression()), !dbg !5663
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5664, metadata !DIExpression()), !dbg !5665
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5666, metadata !DIExpression()), !dbg !5667
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5668
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5669
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5669
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5668
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5667
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5670
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 7, !dbg !5671
  %4 = load i32, i32* %tunedfreq, align 8, !dbg !5671
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5672
  %call = call i32 @s5h1420_getfreqoffset(%struct.s5h1420_state* %5) #8, !dbg !5673
  %add = add i32 %4, %call, !dbg !5674
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5675
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 0, !dbg !5676
  store i32 %add, i32* %frequency, align 4, !dbg !5677
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5678
  %call1 = call i32 @s5h1420_getinversion(%struct.s5h1420_state* %7) #8, !dbg !5679
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5680
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 4, !dbg !5681
  store i32 %call1, i32* %inversion, align 4, !dbg !5682
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5683
  %call2 = call i32 @s5h1420_getsymbolrate(%struct.s5h1420_state* %9) #8, !dbg !5684
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5685
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 10, !dbg !5686
  store i32 %call2, i32* %symbol_rate, align 4, !dbg !5687
  %11 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5688
  %call3 = call i32 @s5h1420_getfec(%struct.s5h1420_state* %11) #8, !dbg !5689
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5690
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 5, !dbg !5691
  store i32 %call3, i32* %fec_inner, align 4, !dbg !5692
  ret i32 0, !dbg !5693
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5694 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  %__ms = alloca i64, align 8
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5695, metadata !DIExpression()), !dbg !5696
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5699, metadata !DIExpression()), !dbg !5700
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5701
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5702
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5702
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5701
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5700
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5703, metadata !DIExpression()), !dbg !5704
  br label %do.body, !dbg !5705

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5706
  %tobool = icmp ne i32 %3, 0, !dbg !5706
  br i1 %tobool, label %if.then, label %if.end, !dbg !5709

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s5h1420_read_status, i64 0, i64 0)) #9, !dbg !5706
  br label %if.end, !dbg !5706

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5709

do.end:                                           ; preds = %if.end
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5710
  %cmp = icmp eq i32* %4, null, !dbg !5712
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5713

if.then1:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

if.end2:                                          ; preds = %do.end
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5715
  %call3 = call i32 @s5h1420_get_status_bits(%struct.s5h1420_state* %5) #8, !dbg !5716
  %6 = load i32*, i32** %status.addr, align 8, !dbg !5717
  store i32 %call3, i32* %6, align 4, !dbg !5718
  %7 = load i32*, i32** %status.addr, align 8, !dbg !5719
  %8 = load i32, i32* %7, align 4, !dbg !5721
  %cmp4 = icmp eq i32 %8, 7, !dbg !5722
  br i1 %cmp4, label %if.then5, label %if.end20, !dbg !5723

if.then5:                                         ; preds = %if.end2
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5724
  %call6 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %9, i8 zeroext 50) #8, !dbg !5726
  store i8 %call6, i8* %val, align 1, !dbg !5727
  %10 = load i8, i8* %val, align 1, !dbg !5728
  %conv = zext i8 %10 to i32, !dbg !5728
  %and = and i32 %conv, 7, !dbg !5730
  %cmp7 = icmp eq i32 %and, 3, !dbg !5731
  br i1 %cmp7, label %if.then9, label %if.end19, !dbg !5732

if.then9:                                         ; preds = %if.then5
  %11 = load i8, i8* %val, align 1, !dbg !5733
  %conv10 = zext i8 %11 to i32, !dbg !5733
  %and11 = and i32 %conv10, 8, !dbg !5736
  %tobool12 = icmp ne i32 %and11, 0, !dbg !5736
  br i1 %tobool12, label %if.then13, label %if.else, !dbg !5737

if.then13:                                        ; preds = %if.then9
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5738
  %call14 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %12, i8 zeroext 49, i8 zeroext 19) #8, !dbg !5739
  br label %if.end16, !dbg !5739

if.else:                                          ; preds = %if.then9
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5740
  %call15 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %13, i8 zeroext 49, i8 zeroext 27) #8, !dbg !5741
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !5742, metadata !DIExpression()), !dbg !5744
  store i64 200, i64* %__ms, align 8, !dbg !5744
  br label %while.cond, !dbg !5744

while.cond:                                       ; preds = %while.body, %if.end16
  %14 = load i64, i64* %__ms, align 8, !dbg !5744
  %dec = add i64 %14, -1, !dbg !5744
  store i64 %dec, i64* %__ms, align 8, !dbg !5744
  %tobool17 = icmp ne i64 %14, 0, !dbg !5744
  br i1 %tobool17, label %while.body, label %while.end, !dbg !5744

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #8, !dbg !5745
  br label %while.cond, !dbg !5744, !llvm.loop !5750

while.end:                                        ; preds = %while.cond
  %15 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5751
  %call18 = call i32 @s5h1420_get_status_bits(%struct.s5h1420_state* %15) #8, !dbg !5752
  %16 = load i32*, i32** %status.addr, align 8, !dbg !5753
  store i32 %call18, i32* %16, align 4, !dbg !5754
  br label %if.end19, !dbg !5755

if.end19:                                         ; preds = %while.end, %if.then5
  br label %if.end20, !dbg !5756

if.end20:                                         ; preds = %if.end19, %if.end2
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5757
  %18 = load i32, i32* %17, align 4, !dbg !5759
  %and21 = and i32 %18, 16, !dbg !5760
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5760
  br i1 %tobool22, label %land.lhs.true, label %if.end123, !dbg !5761

land.lhs.true:                                    ; preds = %if.end20
  %19 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5762
  %postlocked = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %19, i32 0, i32 5, !dbg !5763
  %bf.load = load i8, i8* %postlocked, align 1, !dbg !5763
  %bf.clear = and i8 %bf.load, 1, !dbg !5763
  %tobool23 = icmp ne i8 %bf.clear, 0, !dbg !5762
  br i1 %tobool23, label %if.end123, label %if.then24, !dbg !5764

if.then24:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !5765, metadata !DIExpression()), !dbg !5767
  %20 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5768
  %call25 = call i32 @s5h1420_getsymbolrate(%struct.s5h1420_state* %20) #8, !dbg !5769
  store i32 %call25, i32* %tmp, align 4, !dbg !5767
  %21 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5770
  %call26 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %21, i8 zeroext 50) #8, !dbg !5771
  %conv27 = zext i8 %call26 to i32, !dbg !5771
  %and28 = and i32 %conv27, 7, !dbg !5772
  switch i32 %and28, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb30
    i32 2, label %sw.bb34
    i32 3, label %sw.bb38
    i32 4, label %sw.bb42
    i32 5, label %sw.bb46
  ], !dbg !5773

sw.bb:                                            ; preds = %if.then24
  %22 = load i32, i32* %tmp, align 4, !dbg !5774
  %mul = mul i32 %22, 2, !dbg !5776
  %mul29 = mul i32 %mul, 1, !dbg !5777
  %div = udiv i32 %mul29, 2, !dbg !5778
  store i32 %div, i32* %tmp, align 4, !dbg !5779
  br label %sw.epilog, !dbg !5780

sw.bb30:                                          ; preds = %if.then24
  %23 = load i32, i32* %tmp, align 4, !dbg !5781
  %mul31 = mul i32 %23, 2, !dbg !5782
  %mul32 = mul i32 %mul31, 2, !dbg !5783
  %div33 = udiv i32 %mul32, 3, !dbg !5784
  store i32 %div33, i32* %tmp, align 4, !dbg !5785
  br label %sw.epilog, !dbg !5786

sw.bb34:                                          ; preds = %if.then24
  %24 = load i32, i32* %tmp, align 4, !dbg !5787
  %mul35 = mul i32 %24, 2, !dbg !5788
  %mul36 = mul i32 %mul35, 3, !dbg !5789
  %div37 = udiv i32 %mul36, 4, !dbg !5790
  store i32 %div37, i32* %tmp, align 4, !dbg !5791
  br label %sw.epilog, !dbg !5792

sw.bb38:                                          ; preds = %if.then24
  %25 = load i32, i32* %tmp, align 4, !dbg !5793
  %mul39 = mul i32 %25, 2, !dbg !5794
  %mul40 = mul i32 %mul39, 5, !dbg !5795
  %div41 = udiv i32 %mul40, 6, !dbg !5796
  store i32 %div41, i32* %tmp, align 4, !dbg !5797
  br label %sw.epilog, !dbg !5798

sw.bb42:                                          ; preds = %if.then24
  %26 = load i32, i32* %tmp, align 4, !dbg !5799
  %mul43 = mul i32 %26, 2, !dbg !5800
  %mul44 = mul i32 %mul43, 6, !dbg !5801
  %div45 = udiv i32 %mul44, 7, !dbg !5802
  store i32 %div45, i32* %tmp, align 4, !dbg !5803
  br label %sw.epilog, !dbg !5804

sw.bb46:                                          ; preds = %if.then24
  %27 = load i32, i32* %tmp, align 4, !dbg !5805
  %mul47 = mul i32 %27, 2, !dbg !5806
  %mul48 = mul i32 %mul47, 7, !dbg !5807
  %div49 = udiv i32 %mul48, 8, !dbg !5808
  store i32 %div49, i32* %tmp, align 4, !dbg !5809
  br label %sw.epilog, !dbg !5810

sw.epilog:                                        ; preds = %if.then24, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb30, %sw.bb
  %28 = load i32, i32* %tmp, align 4, !dbg !5811
  %cmp50 = icmp eq i32 %28, 0, !dbg !5813
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !5814

if.then52:                                        ; preds = %sw.epilog
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !5815
  store i32 1, i32* %tmp, align 4, !dbg !5817
  br label %if.end54, !dbg !5818

if.end54:                                         ; preds = %if.then52, %sw.epilog
  %29 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5819
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %29, i32 0, i32 6, !dbg !5820
  %30 = load i32, i32* %fclk, align 4, !dbg !5820
  %31 = load i32, i32* %tmp, align 4, !dbg !5821
  %div55 = udiv i32 %30, %31, !dbg !5822
  store i32 %div55, i32* %tmp, align 4, !dbg !5823
  %32 = load i32, i32* %tmp, align 4, !dbg !5824
  %cmp56 = icmp ult i32 %32, 2, !dbg !5826
  br i1 %cmp56, label %if.then58, label %if.else59, !dbg !5827

if.then58:                                        ; preds = %if.end54
  store i8 0, i8* %val, align 1, !dbg !5828
  br label %if.end90, !dbg !5829

if.else59:                                        ; preds = %if.end54
  %33 = load i32, i32* %tmp, align 4, !dbg !5830
  %cmp60 = icmp ult i32 %33, 5, !dbg !5832
  br i1 %cmp60, label %if.then62, label %if.else63, !dbg !5833

if.then62:                                        ; preds = %if.else59
  store i8 1, i8* %val, align 1, !dbg !5834
  br label %if.end89, !dbg !5835

if.else63:                                        ; preds = %if.else59
  %34 = load i32, i32* %tmp, align 4, !dbg !5836
  %cmp64 = icmp ult i32 %34, 9, !dbg !5838
  br i1 %cmp64, label %if.then66, label %if.else67, !dbg !5839

if.then66:                                        ; preds = %if.else63
  store i8 2, i8* %val, align 1, !dbg !5840
  br label %if.end88, !dbg !5841

if.else67:                                        ; preds = %if.else63
  %35 = load i32, i32* %tmp, align 4, !dbg !5842
  %cmp68 = icmp ult i32 %35, 13, !dbg !5844
  br i1 %cmp68, label %if.then70, label %if.else71, !dbg !5845

if.then70:                                        ; preds = %if.else67
  store i8 3, i8* %val, align 1, !dbg !5846
  br label %if.end87, !dbg !5847

if.else71:                                        ; preds = %if.else67
  %36 = load i32, i32* %tmp, align 4, !dbg !5848
  %cmp72 = icmp ult i32 %36, 17, !dbg !5850
  br i1 %cmp72, label %if.then74, label %if.else75, !dbg !5851

if.then74:                                        ; preds = %if.else71
  store i8 4, i8* %val, align 1, !dbg !5852
  br label %if.end86, !dbg !5853

if.else75:                                        ; preds = %if.else71
  %37 = load i32, i32* %tmp, align 4, !dbg !5854
  %cmp76 = icmp ult i32 %37, 25, !dbg !5856
  br i1 %cmp76, label %if.then78, label %if.else79, !dbg !5857

if.then78:                                        ; preds = %if.else75
  store i8 5, i8* %val, align 1, !dbg !5858
  br label %if.end85, !dbg !5859

if.else79:                                        ; preds = %if.else75
  %38 = load i32, i32* %tmp, align 4, !dbg !5860
  %cmp80 = icmp ult i32 %38, 33, !dbg !5862
  br i1 %cmp80, label %if.then82, label %if.else83, !dbg !5863

if.then82:                                        ; preds = %if.else79
  store i8 6, i8* %val, align 1, !dbg !5864
  br label %if.end84, !dbg !5865

if.else83:                                        ; preds = %if.else79
  store i8 7, i8* %val, align 1, !dbg !5866
  br label %if.end84

if.end84:                                         ; preds = %if.else83, %if.then82
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then78
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then74
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then70
  br label %if.end88

if.end88:                                         ; preds = %if.end87, %if.then66
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.then62
  br label %if.end90

if.end90:                                         ; preds = %if.end89, %if.then58
  br label %do.body91, !dbg !5867

do.body91:                                        ; preds = %if.end90
  %39 = load i32, i32* @debug, align 4, !dbg !5868
  %tobool92 = icmp ne i32 %39, 0, !dbg !5868
  br i1 %tobool92, label %if.then93, label %if.end96, !dbg !5871

if.then93:                                        ; preds = %do.body91
  %40 = load i32, i32* %tmp, align 4, !dbg !5868
  %41 = load i8, i8* %val, align 1, !dbg !5868
  %conv94 = zext i8 %41 to i32, !dbg !5868
  %call95 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0), i32 %40, i32 %conv94) #9, !dbg !5868
  br label %if.end96, !dbg !5868

if.end96:                                         ; preds = %if.then93, %do.body91
  br label %do.end97, !dbg !5871

do.end97:                                         ; preds = %if.end96
  %42 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5872
  %call98 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %42, i8 zeroext 34, i8 zeroext 24) #8, !dbg !5873
  %43 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5874
  %call99 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %43, i8 zeroext 34, i8 zeroext 16) #8, !dbg !5875
  %44 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5876
  %45 = load i8, i8* %val, align 1, !dbg !5877
  %call100 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %44, i8 zeroext 34, i8 zeroext %45) #8, !dbg !5878
  %46 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5879
  %call101 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %46, i8 zeroext 57) #8, !dbg !5880
  store i8 %call101, i8* %val, align 1, !dbg !5881
  %47 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5882
  %48 = load i8, i8* %val, align 1, !dbg !5883
  %conv102 = zext i8 %48 to i32, !dbg !5883
  %or = or i32 %conv102, 64, !dbg !5884
  %conv103 = trunc i32 %or to i8, !dbg !5883
  %call104 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %47, i8 zeroext 57, i8 zeroext %conv103) #8, !dbg !5885
  %49 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5886
  %call105 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %49, i8 zeroext 5) #8, !dbg !5887
  %conv106 = zext i8 %call105 to i32, !dbg !5887
  %and107 = and i32 %conv106, 127, !dbg !5888
  %conv108 = trunc i32 %and107 to i8, !dbg !5887
  store i8 %conv108, i8* %val, align 1, !dbg !5889
  %50 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5890
  %51 = load i8, i8* %val, align 1, !dbg !5891
  %call109 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %50, i8 zeroext 5, i8 zeroext %51) #8, !dbg !5892
  %52 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5893
  %call110 = call i32 @s5h1420_getsymbolrate(%struct.s5h1420_state* %52) #8, !dbg !5895
  %cmp111 = icmp uge i32 %call110, 20000000, !dbg !5896
  br i1 %cmp111, label %if.then113, label %if.else116, !dbg !5897

if.then113:                                       ; preds = %do.end97
  %53 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5898
  %call114 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %53, i8 zeroext 12, i8 zeroext -118) #8, !dbg !5900
  %54 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5901
  %call115 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %54, i8 zeroext 13, i8 zeroext 106) #8, !dbg !5902
  br label %if.end119, !dbg !5903

if.else116:                                       ; preds = %do.end97
  %55 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5904
  %call117 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %55, i8 zeroext 12, i8 zeroext 88) #8, !dbg !5906
  %56 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5907
  %call118 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %56, i8 zeroext 13, i8 zeroext 39) #8, !dbg !5908
  br label %if.end119

if.end119:                                        ; preds = %if.else116, %if.then113
  %57 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5909
  %postlocked120 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %57, i32 0, i32 5, !dbg !5910
  %bf.load121 = load i8, i8* %postlocked120, align 1, !dbg !5911
  %bf.clear122 = and i8 %bf.load121, -2, !dbg !5911
  %bf.set = or i8 %bf.clear122, 1, !dbg !5911
  store i8 %bf.set, i8* %postlocked120, align 1, !dbg !5911
  br label %if.end123, !dbg !5912

if.end123:                                        ; preds = %if.end119, %land.lhs.true, %if.end20
  br label %do.body124, !dbg !5913

do.body124:                                       ; preds = %if.end123
  %58 = load i32, i32* @debug, align 4, !dbg !5914
  %tobool125 = icmp ne i32 %58, 0, !dbg !5914
  br i1 %tobool125, label %if.then126, label %if.end128, !dbg !5917

if.then126:                                       ; preds = %do.body124
  %call127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s5h1420_read_status, i64 0, i64 0)) #9, !dbg !5914
  br label %if.end128, !dbg !5914

if.end128:                                        ; preds = %if.then126, %do.body124
  br label %do.end129, !dbg !5917

do.end129:                                        ; preds = %if.end128
  store i32 0, i32* %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

return:                                           ; preds = %do.end129, %if.then1
  %59 = load i32, i32* %retval, align 4, !dbg !5919
  ret i32 %59, !dbg !5919
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5920 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %__ms = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5927
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5928
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5928
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5927
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5926
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5929
  %call = call i32 @s5h1420_writereg(%struct.s5h1420_state* %3, i8 zeroext 70, i8 zeroext 29) #8, !dbg !5930
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !5931, metadata !DIExpression()), !dbg !5933
  store i64 25, i64* %__ms, align 8, !dbg !5933
  br label %while.cond, !dbg !5933

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %__ms, align 8, !dbg !5933
  %dec = add i64 %4, -1, !dbg !5933
  store i64 %dec, i64* %__ms, align 8, !dbg !5933
  %tobool = icmp ne i64 %4, 0, !dbg !5933
  br i1 %tobool, label %while.body, label %while.end, !dbg !5933

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #8, !dbg !5934
  br label %while.cond, !dbg !5933, !llvm.loop !5939

while.end:                                        ; preds = %while.cond
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5940
  %call1 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %5, i8 zeroext 72) #8, !dbg !5941
  %conv = zext i8 %call1 to i32, !dbg !5941
  %shl = shl i32 %conv, 8, !dbg !5942
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5943
  %call2 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %6, i8 zeroext 71) #8, !dbg !5944
  %conv3 = zext i8 %call2 to i32, !dbg !5944
  %or = or i32 %shl, %conv3, !dbg !5945
  %7 = load i32*, i32** %ber.addr, align 8, !dbg !5946
  store i32 %or, i32* %7, align 4, !dbg !5947
  ret i32 0, !dbg !5948
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_read_signal_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5949 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5950, metadata !DIExpression()), !dbg !5951
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5952, metadata !DIExpression()), !dbg !5953
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5954, metadata !DIExpression()), !dbg !5955
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5956
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5957
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5957
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5956
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5955
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5958, metadata !DIExpression()), !dbg !5959
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5960
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %3, i8 zeroext 21) #8, !dbg !5961
  store i8 %call, i8* %val, align 1, !dbg !5959
  %4 = load i8, i8* %val, align 1, !dbg !5962
  %conv = zext i8 %4 to i32, !dbg !5962
  %shl = shl i32 %conv, 8, !dbg !5963
  %5 = load i8, i8* %val, align 1, !dbg !5964
  %conv1 = zext i8 %5 to i32, !dbg !5964
  %or = or i32 %shl, %conv1, !dbg !5965
  %conv2 = trunc i32 %or to i16, !dbg !5966
  %6 = load i16*, i16** %strength.addr, align 8, !dbg !5967
  store i16 %conv2, i16* %6, align 2, !dbg !5968
  ret i32 0, !dbg !5969
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5970 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %__ms = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5973, metadata !DIExpression()), !dbg !5974
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !5975, metadata !DIExpression()), !dbg !5976
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5977
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5978
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5978
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !5977
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !5976
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5979
  %call = call i32 @s5h1420_writereg(%struct.s5h1420_state* %3, i8 zeroext 70, i8 zeroext 31) #8, !dbg !5980
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !5981, metadata !DIExpression()), !dbg !5983
  store i64 25, i64* %__ms, align 8, !dbg !5983
  br label %while.cond, !dbg !5983

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, i64* %__ms, align 8, !dbg !5983
  %dec = add i64 %4, -1, !dbg !5983
  store i64 %dec, i64* %__ms, align 8, !dbg !5983
  %tobool = icmp ne i64 %4, 0, !dbg !5983
  br i1 %tobool, label %while.body, label %while.end, !dbg !5983

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #8, !dbg !5984
  br label %while.cond, !dbg !5983, !llvm.loop !5989

while.end:                                        ; preds = %while.cond
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5990
  %call1 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %5, i8 zeroext 72) #8, !dbg !5991
  %conv = zext i8 %call1 to i32, !dbg !5991
  %shl = shl i32 %conv, 8, !dbg !5992
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !5993
  %call2 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %6, i8 zeroext 71) #8, !dbg !5994
  %conv3 = zext i8 %call2 to i32, !dbg !5994
  %or = or i32 %shl, %conv3, !dbg !5995
  %7 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5996
  store i32 %or, i32* %7, align 4, !dbg !5997
  ret i32 0, !dbg !5998
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_send_master_cmd(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %cmd) #0 !dbg !5999 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %cmd.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  %i = alloca i32, align 4
  %timeout = alloca i64, align 8
  %result = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  store %struct.dvb_diseqc_master_cmd* %cmd, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %cmd.addr, metadata !6002, metadata !DIExpression()), !dbg !6003
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6004, metadata !DIExpression()), !dbg !6005
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6006
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6007
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6007
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6006
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6005
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6008, metadata !DIExpression()), !dbg !6009
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6010, metadata !DIExpression()), !dbg !6011
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6012, metadata !DIExpression()), !dbg !6013
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6014, metadata !DIExpression()), !dbg !6015
  store i32 0, i32* %result, align 4, !dbg !6015
  br label %do.body, !dbg !6016

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6017
  %tobool = icmp ne i32 %3, 0, !dbg !6017
  br i1 %tobool, label %if.then, label %if.end, !dbg !6020

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.s5h1420_send_master_cmd, i64 0, i64 0)) #9, !dbg !6017
  br label %if.end, !dbg !6017

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6020

do.end:                                           ; preds = %if.end
  %4 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !6021
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %4, i32 0, i32 1, !dbg !6023
  %5 = load i8, i8* %msg_len, align 1, !dbg !6023
  %conv = zext i8 %5 to i64, !dbg !6021
  %cmp = icmp ugt i64 %conv, 6, !dbg !6024
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6025

if.then2:                                         ; preds = %do.end
  store i32 -22, i32* %retval, align 4, !dbg !6026
  br label %return, !dbg !6026

if.end3:                                          ; preds = %do.end
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6027
  %call4 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %6, i8 zeroext 59) #8, !dbg !6028
  store i8 %call4, i8* %val, align 1, !dbg !6029
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6030
  %call5 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 59, i8 zeroext 2) #8, !dbg !6031
  call void @msleep(i32 15) #8, !dbg !6032
  store i32 0, i32* %i, align 4, !dbg !6033
  br label %for.cond, !dbg !6035

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i32, i32* %i, align 4, !dbg !6036
  %9 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !6038
  %msg_len6 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %9, i32 0, i32 1, !dbg !6039
  %10 = load i8, i8* %msg_len6, align 1, !dbg !6039
  %conv7 = zext i8 %10 to i32, !dbg !6038
  %cmp8 = icmp slt i32 %8, %conv7, !dbg !6040
  br i1 %cmp8, label %for.body, label %for.end, !dbg !6041

for.body:                                         ; preds = %for.cond
  %11 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6042
  %12 = load i32, i32* %i, align 4, !dbg !6044
  %add = add i32 61, %12, !dbg !6045
  %conv10 = trunc i32 %add to i8, !dbg !6046
  %13 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !6047
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %13, i32 0, i32 0, !dbg !6048
  %14 = load i32, i32* %i, align 4, !dbg !6049
  %idxprom = sext i32 %14 to i64, !dbg !6047
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !6047
  %15 = load i8, i8* %arrayidx, align 1, !dbg !6047
  %call11 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %11, i8 zeroext %conv10, i8 zeroext %15) #8, !dbg !6050
  br label %for.inc, !dbg !6051

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !6052
  %inc = add i32 %16, 1, !dbg !6052
  store i32 %inc, i32* %i, align 4, !dbg !6052
  br label %for.cond, !dbg !6053, !llvm.loop !6054

for.end:                                          ; preds = %for.cond
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6056
  %18 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6057
  %call12 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %18, i8 zeroext 59) #8, !dbg !6058
  %conv13 = zext i8 %call12 to i32, !dbg !6058
  %19 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !6059
  %msg_len14 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %19, i32 0, i32 1, !dbg !6060
  %20 = load i8, i8* %msg_len14, align 1, !dbg !6060
  %conv15 = zext i8 %20 to i32, !dbg !6059
  %sub = sub i32 %conv15, 1, !dbg !6061
  %shl = shl i32 %sub, 4, !dbg !6062
  %or = or i32 %conv13, %shl, !dbg !6063
  %or16 = or i32 %or, 8, !dbg !6064
  %conv17 = trunc i32 %or16 to i8, !dbg !6058
  %call18 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %17, i8 zeroext 59, i8 zeroext %conv17) #8, !dbg !6065
  %21 = load volatile i64, i64* @jiffies, align 8, !dbg !6066
  %add19 = add i64 %21, 25, !dbg !6067
  store i64 %add19, i64* %timeout, align 8, !dbg !6068
  br label %while.cond, !dbg !6069

while.cond:                                       ; preds = %if.end27, %for.end
  %22 = load volatile i64, i64* @jiffies, align 8, !dbg !6070
  %23 = load i64, i64* %timeout, align 8, !dbg !6070
  %sub20 = sub i64 %22, %23, !dbg !6070
  %cmp21 = icmp slt i64 %sub20, 0, !dbg !6070
  br i1 %cmp21, label %while.body, label %while.end, !dbg !6069

while.body:                                       ; preds = %while.cond
  %24 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6071
  %call23 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %24, i8 zeroext 59) #8, !dbg !6074
  %conv24 = zext i8 %call23 to i32, !dbg !6074
  %and = and i32 %conv24, 8, !dbg !6075
  %tobool25 = icmp ne i32 %and, 0, !dbg !6075
  br i1 %tobool25, label %if.end27, label %if.then26, !dbg !6076

if.then26:                                        ; preds = %while.body
  br label %while.end, !dbg !6077

if.end27:                                         ; preds = %while.body
  call void @msleep(i32 5) #8, !dbg !6078
  br label %while.cond, !dbg !6069, !llvm.loop !6079

while.end:                                        ; preds = %if.then26, %while.cond
  %25 = load i64, i64* %timeout, align 8, !dbg !6081
  %26 = load volatile i64, i64* @jiffies, align 8, !dbg !6081
  %sub28 = sub i64 %25, %26, !dbg !6081
  %cmp29 = icmp slt i64 %sub28, 0, !dbg !6081
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6083

if.then31:                                        ; preds = %while.end
  store i32 -110, i32* %result, align 4, !dbg !6084
  br label %if.end32, !dbg !6085

if.end32:                                         ; preds = %if.then31, %while.end
  %27 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6086
  %28 = load i8, i8* %val, align 1, !dbg !6087
  %call33 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %27, i8 zeroext 59, i8 zeroext %28) #8, !dbg !6088
  call void @msleep(i32 15) #8, !dbg !6089
  br label %do.body34, !dbg !6090

do.body34:                                        ; preds = %if.end32
  %29 = load i32, i32* @debug, align 4, !dbg !6091
  %tobool35 = icmp ne i32 %29, 0, !dbg !6091
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !6094

if.then36:                                        ; preds = %do.body34
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.s5h1420_send_master_cmd, i64 0, i64 0)) #9, !dbg !6091
  br label %if.end38, !dbg !6091

if.end38:                                         ; preds = %if.then36, %do.body34
  br label %do.end39, !dbg !6094

do.end39:                                         ; preds = %if.end38
  %30 = load i32, i32* %result, align 4, !dbg !6095
  store i32 %30, i32* %retval, align 4, !dbg !6096
  br label %return, !dbg !6096

return:                                           ; preds = %do.end39, %if.then2
  %31 = load i32, i32* %retval, align 4, !dbg !6097
  ret i32 %31, !dbg !6097
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_recv_slave_reply(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_slave_reply* %reply) #0 !dbg !6098 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %reply.addr = alloca %struct.dvb_diseqc_slave_reply*, align 8
  %state = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %timeout = alloca i64, align 8
  %result = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6099, metadata !DIExpression()), !dbg !6100
  store %struct.dvb_diseqc_slave_reply* %reply, %struct.dvb_diseqc_slave_reply** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_slave_reply** %reply.addr, metadata !6101, metadata !DIExpression()), !dbg !6102
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6103, metadata !DIExpression()), !dbg !6104
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6105
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6106
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6106
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6105
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6104
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6107, metadata !DIExpression()), !dbg !6108
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6109, metadata !DIExpression()), !dbg !6110
  call void @llvm.dbg.declare(metadata i32* %length, metadata !6111, metadata !DIExpression()), !dbg !6112
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6113, metadata !DIExpression()), !dbg !6114
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6115, metadata !DIExpression()), !dbg !6116
  store i32 0, i32* %result, align 4, !dbg !6116
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6117
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %3, i8 zeroext 59) #8, !dbg !6118
  store i8 %call, i8* %val, align 1, !dbg !6119
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6120
  %call1 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %4, i8 zeroext 59, i8 zeroext -126) #8, !dbg !6121
  call void @msleep(i32 15) #8, !dbg !6122
  %5 = load volatile i64, i64* @jiffies, align 8, !dbg !6123
  %6 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %reply.addr, align 8, !dbg !6124
  %timeout2 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %6, i32 0, i32 2, !dbg !6125
  %7 = load i32, i32* %timeout2, align 4, !dbg !6125
  %mul = mul i32 %7, 250, !dbg !6126
  %div = sdiv i32 %mul, 1000, !dbg !6127
  %conv = sext i32 %div to i64, !dbg !6128
  %add = add i64 %5, %conv, !dbg !6129
  store i64 %add, i64* %timeout, align 8, !dbg !6130
  br label %while.cond, !dbg !6131

while.cond:                                       ; preds = %if.end, %entry
  %8 = load volatile i64, i64* @jiffies, align 8, !dbg !6132
  %9 = load i64, i64* %timeout, align 8, !dbg !6132
  %sub = sub i64 %8, %9, !dbg !6132
  %cmp = icmp slt i64 %sub, 0, !dbg !6132
  br i1 %cmp, label %while.body, label %while.end, !dbg !6131

while.body:                                       ; preds = %while.cond
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6133
  %call4 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %10, i8 zeroext 59) #8, !dbg !6136
  %conv5 = zext i8 %call4 to i32, !dbg !6136
  %and = and i32 %conv5, 128, !dbg !6137
  %tobool = icmp ne i32 %and, 0, !dbg !6137
  br i1 %tobool, label %if.end, label %if.then, !dbg !6138

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !6139

if.end:                                           ; preds = %while.body
  call void @msleep(i32 5) #8, !dbg !6140
  br label %while.cond, !dbg !6131, !llvm.loop !6141

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i64, i64* %timeout, align 8, !dbg !6143
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !6143
  %sub6 = sub i64 %11, %12, !dbg !6143
  %cmp7 = icmp slt i64 %sub6, 0, !dbg !6143
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !6145

if.then9:                                         ; preds = %while.end
  store i32 -110, i32* %result, align 4, !dbg !6146
  br label %exit, !dbg !6148

if.end10:                                         ; preds = %while.end
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6149
  %call11 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %13, i8 zeroext 73) #8, !dbg !6151
  %tobool12 = icmp ne i8 %call11, 0, !dbg !6151
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !6152

if.then13:                                        ; preds = %if.end10
  store i32 -5, i32* %result, align 4, !dbg !6153
  br label %exit, !dbg !6155

if.end14:                                         ; preds = %if.end10
  %14 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6156
  %call15 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %14, i8 zeroext 59) #8, !dbg !6157
  %conv16 = zext i8 %call15 to i32, !dbg !6157
  %and17 = and i32 %conv16, 112, !dbg !6158
  %shr = ashr i32 %and17, 4, !dbg !6159
  store i32 %shr, i32* %length, align 4, !dbg !6160
  %15 = load i32, i32* %length, align 4, !dbg !6161
  %conv18 = sext i32 %15 to i64, !dbg !6161
  %cmp19 = icmp ugt i64 %conv18, 4, !dbg !6163
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !6164

if.then21:                                        ; preds = %if.end14
  store i32 -75, i32* %result, align 4, !dbg !6165
  br label %exit, !dbg !6167

if.end22:                                         ; preds = %if.end14
  %16 = load i32, i32* %length, align 4, !dbg !6168
  %conv23 = trunc i32 %16 to i8, !dbg !6168
  %17 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %reply.addr, align 8, !dbg !6169
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %17, i32 0, i32 1, !dbg !6170
  store i8 %conv23, i8* %msg_len, align 4, !dbg !6171
  store i32 0, i32* %i, align 4, !dbg !6172
  br label %for.cond, !dbg !6174

for.cond:                                         ; preds = %for.inc, %if.end22
  %18 = load i32, i32* %i, align 4, !dbg !6175
  %19 = load i32, i32* %length, align 4, !dbg !6177
  %cmp24 = icmp slt i32 %18, %19, !dbg !6178
  br i1 %cmp24, label %for.body, label %for.end, !dbg !6179

for.body:                                         ; preds = %for.cond
  %20 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6180
  %21 = load i32, i32* %i, align 4, !dbg !6182
  %add26 = add i32 61, %21, !dbg !6183
  %conv27 = trunc i32 %add26 to i8, !dbg !6184
  %call28 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %20, i8 zeroext %conv27) #8, !dbg !6185
  %22 = load %struct.dvb_diseqc_slave_reply*, %struct.dvb_diseqc_slave_reply** %reply.addr, align 8, !dbg !6186
  %msg = getelementptr inbounds %struct.dvb_diseqc_slave_reply, %struct.dvb_diseqc_slave_reply* %22, i32 0, i32 0, !dbg !6187
  %23 = load i32, i32* %i, align 4, !dbg !6188
  %idxprom = sext i32 %23 to i64, !dbg !6186
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %msg, i64 0, i64 %idxprom, !dbg !6186
  store i8 %call28, i8* %arrayidx, align 1, !dbg !6189
  br label %for.inc, !dbg !6190

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %i, align 4, !dbg !6191
  %inc = add i32 %24, 1, !dbg !6191
  store i32 %inc, i32* %i, align 4, !dbg !6191
  br label %for.cond, !dbg !6192, !llvm.loop !6193

for.end:                                          ; preds = %for.cond
  br label %exit, !dbg !6194

exit:                                             ; preds = %for.end, %if.then21, %if.then13, %if.then9
  call void @llvm.dbg.label(metadata !6195), !dbg !6196
  %25 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6197
  %26 = load i8, i8* %val, align 1, !dbg !6198
  %call29 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %25, i8 zeroext 59, i8 zeroext %26) #8, !dbg !6199
  call void @msleep(i32 15) #8, !dbg !6200
  %27 = load i32, i32* %result, align 4, !dbg !6201
  ret i32 %27, !dbg !6202
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_send_burst(%struct.dvb_frontend* %fe, i32 %minicmd) #0 !dbg !6203 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %minicmd.addr = alloca i32, align 4
  %state = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  %result = alloca i32, align 4
  %timeout = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6204, metadata !DIExpression()), !dbg !6205
  store i32 %minicmd, i32* %minicmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %minicmd.addr, metadata !6206, metadata !DIExpression()), !dbg !6207
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6208, metadata !DIExpression()), !dbg !6209
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6210
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6211
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6211
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6210
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6209
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6212, metadata !DIExpression()), !dbg !6213
  call void @llvm.dbg.declare(metadata i32* %result, metadata !6214, metadata !DIExpression()), !dbg !6215
  store i32 0, i32* %result, align 4, !dbg !6215
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6216, metadata !DIExpression()), !dbg !6217
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6218
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %3, i8 zeroext 59) #8, !dbg !6219
  store i8 %call, i8* %val, align 1, !dbg !6220
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6221
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6222
  %call1 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %5, i8 zeroext 59) #8, !dbg !6223
  %conv = zext i8 %call1 to i32, !dbg !6223
  %and = and i32 %conv, 112, !dbg !6224
  %or = or i32 %and, 1, !dbg !6225
  %conv2 = trunc i32 %or to i8, !dbg !6226
  %call3 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %4, i8 zeroext 59, i8 zeroext %conv2) #8, !dbg !6227
  %6 = load i32, i32* %minicmd.addr, align 4, !dbg !6228
  %cmp = icmp eq i32 %6, 1, !dbg !6230
  br i1 %cmp, label %if.then, label %if.end, !dbg !6231

if.then:                                          ; preds = %entry
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6232
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6234
  %call5 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %8, i8 zeroext 59) #8, !dbg !6235
  %conv6 = zext i8 %call5 to i32, !dbg !6235
  %or7 = or i32 %conv6, 4, !dbg !6236
  %conv8 = trunc i32 %or7 to i8, !dbg !6235
  %call9 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 59, i8 zeroext %conv8) #8, !dbg !6237
  br label %if.end, !dbg !6238

if.end:                                           ; preds = %if.then, %entry
  call void @msleep(i32 15) #8, !dbg !6239
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6240
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6241
  %call10 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %10, i8 zeroext 59) #8, !dbg !6242
  %conv11 = zext i8 %call10 to i32, !dbg !6242
  %or12 = or i32 %conv11, 8, !dbg !6243
  %conv13 = trunc i32 %or12 to i8, !dbg !6242
  %call14 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %9, i8 zeroext 59, i8 zeroext %conv13) #8, !dbg !6244
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !6245
  %add = add i64 %11, 25, !dbg !6246
  store i64 %add, i64* %timeout, align 8, !dbg !6247
  br label %while.cond, !dbg !6248

while.cond:                                       ; preds = %if.end21, %if.end
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !6249
  %13 = load i64, i64* %timeout, align 8, !dbg !6249
  %sub = sub i64 %12, %13, !dbg !6249
  %cmp15 = icmp slt i64 %sub, 0, !dbg !6249
  br i1 %cmp15, label %while.body, label %while.end, !dbg !6248

while.body:                                       ; preds = %while.cond
  %14 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6250
  %call17 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %14, i8 zeroext 59) #8, !dbg !6253
  %conv18 = zext i8 %call17 to i32, !dbg !6253
  %and19 = and i32 %conv18, 8, !dbg !6254
  %tobool = icmp ne i32 %and19, 0, !dbg !6254
  br i1 %tobool, label %if.end21, label %if.then20, !dbg !6255

if.then20:                                        ; preds = %while.body
  br label %while.end, !dbg !6256

if.end21:                                         ; preds = %while.body
  call void @msleep(i32 5) #8, !dbg !6257
  br label %while.cond, !dbg !6248, !llvm.loop !6258

while.end:                                        ; preds = %if.then20, %while.cond
  %15 = load i64, i64* %timeout, align 8, !dbg !6260
  %16 = load volatile i64, i64* @jiffies, align 8, !dbg !6260
  %sub22 = sub i64 %15, %16, !dbg !6260
  %cmp23 = icmp slt i64 %sub22, 0, !dbg !6260
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !6262

if.then25:                                        ; preds = %while.end
  store i32 -110, i32* %result, align 4, !dbg !6263
  br label %if.end26, !dbg !6264

if.end26:                                         ; preds = %if.then25, %while.end
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6265
  %18 = load i8, i8* %val, align 1, !dbg !6266
  %call27 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %17, i8 zeroext 59, i8 zeroext %18) #8, !dbg !6267
  call void @msleep(i32 15) #8, !dbg !6268
  %19 = load i32, i32* %result, align 4, !dbg !6269
  ret i32 %19, !dbg !6270
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !6271 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6272, metadata !DIExpression()), !dbg !6273
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !6274, metadata !DIExpression()), !dbg !6275
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6276, metadata !DIExpression()), !dbg !6277
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6278
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6279
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6279
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6278
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6277
  br label %do.body, !dbg !6280

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6281
  %tobool = icmp ne i32 %3, 0, !dbg !6281
  br i1 %tobool, label %if.then, label %if.end, !dbg !6284

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s5h1420_set_tone, i64 0, i64 0)) #9, !dbg !6281
  br label %if.end, !dbg !6281

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6284

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %tone.addr, align 4, !dbg !6285
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
  ], !dbg !6286

sw.bb:                                            ; preds = %do.end
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6287
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6289
  %call1 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %6, i8 zeroext 59) #8, !dbg !6290
  %conv = zext i8 %call1 to i32, !dbg !6290
  %and = and i32 %conv, 116, !dbg !6291
  %or = or i32 %and, 8, !dbg !6292
  %conv2 = trunc i32 %or to i8, !dbg !6293
  %call3 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %5, i8 zeroext 59, i8 zeroext %conv2) #8, !dbg !6294
  br label %sw.epilog, !dbg !6295

sw.bb4:                                           ; preds = %do.end
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6296
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6297
  %call5 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %8, i8 zeroext 59) #8, !dbg !6298
  %conv6 = zext i8 %call5 to i32, !dbg !6298
  %and7 = and i32 %conv6, 116, !dbg !6299
  %or8 = or i32 %and7, 1, !dbg !6300
  %conv9 = trunc i32 %or8 to i8, !dbg !6301
  %call10 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 59, i8 zeroext %conv9) #8, !dbg !6302
  br label %sw.epilog, !dbg !6303

sw.epilog:                                        ; preds = %do.end, %sw.bb4, %sw.bb
  br label %do.body11, !dbg !6304

do.body11:                                        ; preds = %sw.epilog
  %9 = load i32, i32* @debug, align 4, !dbg !6305
  %tobool12 = icmp ne i32 %9, 0, !dbg !6305
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6308

if.then13:                                        ; preds = %do.body11
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s5h1420_set_tone, i64 0, i64 0)) #9, !dbg !6305
  br label %if.end15, !dbg !6305

if.end15:                                         ; preds = %if.then13, %do.body11
  br label %do.end16, !dbg !6308

do.end16:                                         ; preds = %if.end15
  ret i32 0, !dbg !6309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_set_voltage(%struct.dvb_frontend* %fe, i32 %voltage) #0 !dbg !6310 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %voltage.addr = alloca i32, align 4
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6311, metadata !DIExpression()), !dbg !6312
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !6313, metadata !DIExpression()), !dbg !6314
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6315, metadata !DIExpression()), !dbg !6316
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6317
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6318
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6318
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6317
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6316
  br label %do.body, !dbg !6319

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6320
  %tobool = icmp ne i32 %3, 0, !dbg !6320
  br i1 %tobool, label %if.then, label %if.end, !dbg !6323

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s5h1420_set_voltage, i64 0, i64 0)) #9, !dbg !6320
  br label %if.end, !dbg !6320

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6323

do.end:                                           ; preds = %if.end
  %4 = load i32, i32* %voltage.addr, align 4, !dbg !6324
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb10
  ], !dbg !6325

sw.bb:                                            ; preds = %do.end
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6326
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6328
  %call1 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %6, i8 zeroext 60) #8, !dbg !6329
  %conv = zext i8 %call1 to i32, !dbg !6329
  %and = and i32 %conv, 254, !dbg !6330
  %or = or i32 %and, 2, !dbg !6331
  %conv2 = trunc i32 %or to i8, !dbg !6332
  %call3 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %5, i8 zeroext 60, i8 zeroext %conv2) #8, !dbg !6333
  br label %sw.epilog, !dbg !6334

sw.bb4:                                           ; preds = %do.end
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6335
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6336
  %call5 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %8, i8 zeroext 60) #8, !dbg !6337
  %conv6 = zext i8 %call5 to i32, !dbg !6337
  %or7 = or i32 %conv6, 3, !dbg !6338
  %conv8 = trunc i32 %or7 to i8, !dbg !6337
  %call9 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 60, i8 zeroext %conv8) #8, !dbg !6339
  br label %sw.epilog, !dbg !6340

sw.bb10:                                          ; preds = %do.end
  %9 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6341
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6342
  %call11 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %10, i8 zeroext 60) #8, !dbg !6343
  %conv12 = zext i8 %call11 to i32, !dbg !6343
  %and13 = and i32 %conv12, 253, !dbg !6344
  %conv14 = trunc i32 %and13 to i8, !dbg !6343
  %call15 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %9, i8 zeroext 60, i8 zeroext %conv14) #8, !dbg !6345
  br label %sw.epilog, !dbg !6346

sw.epilog:                                        ; preds = %do.end, %sw.bb10, %sw.bb4, %sw.bb
  br label %do.body16, !dbg !6347

do.body16:                                        ; preds = %sw.epilog
  %11 = load i32, i32* @debug, align 4, !dbg !6348
  %tobool17 = icmp ne i32 %11, 0, !dbg !6348
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !6351

if.then18:                                        ; preds = %do.body16
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.s5h1420_set_voltage, i64 0, i64 0)) #9, !dbg !6348
  br label %if.end20, !dbg !6348

if.end20:                                         ; preds = %if.then18, %do.body16
  br label %do.end21, !dbg !6351

do.end21:                                         ; preds = %if.end20
  ret i32 0, !dbg !6352
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !6353 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %state = alloca %struct.s5h1420_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6354, metadata !DIExpression()), !dbg !6355
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state, metadata !6358, metadata !DIExpression()), !dbg !6359
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6360
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6361
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6361
  %2 = bitcast i8* %1 to %struct.s5h1420_state*, !dbg !6360
  store %struct.s5h1420_state* %2, %struct.s5h1420_state** %state, align 8, !dbg !6359
  %3 = load i32, i32* %enable.addr, align 4, !dbg !6362
  %tobool = icmp ne i32 %3, 0, !dbg !6362
  br i1 %tobool, label %if.then, label %if.else, !dbg !6364

if.then:                                          ; preds = %entry
  %4 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6365
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6366
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %5, i32 0, i32 4, !dbg !6367
  %6 = load i8, i8* %CON_1_val, align 8, !dbg !6367
  %conv = zext i8 %6 to i32, !dbg !6366
  %or = or i32 %conv, 1, !dbg !6368
  %conv1 = trunc i32 %or to i8, !dbg !6366
  %call = call i32 @s5h1420_writereg(%struct.s5h1420_state* %4, i8 zeroext 2, i8 zeroext %conv1) #8, !dbg !6369
  store i32 %call, i32* %retval, align 4, !dbg !6370
  br label %return, !dbg !6370

if.else:                                          ; preds = %entry
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6371
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state, align 8, !dbg !6372
  %CON_1_val2 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %8, i32 0, i32 4, !dbg !6373
  %9 = load i8, i8* %CON_1_val2, align 8, !dbg !6373
  %conv3 = zext i8 %9 to i32, !dbg !6372
  %and = and i32 %conv3, 254, !dbg !6374
  %conv4 = trunc i32 %and to i8, !dbg !6372
  %call5 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 2, i8 zeroext %conv4) #8, !dbg !6375
  store i32 %call5, i32* %retval, align 4, !dbg !6376
  br label %return, !dbg !6376

return:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !6377
  ret i32 %10, !dbg !6377
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_writereg(%struct.s5h1420_state* %state, i8 zeroext %reg, i8 zeroext %data) #0 !dbg !6378 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %reg.addr = alloca i8, align 1
  %data.addr = alloca i8, align 1
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !6383, metadata !DIExpression()), !dbg !6384
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !6385, metadata !DIExpression()), !dbg !6386
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !6387, metadata !DIExpression()), !dbg !6388
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6389
  %0 = load i8, i8* %reg.addr, align 1, !dbg !6390
  store i8 %0, i8* %arrayinit.begin, align 1, !dbg !6389
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !6389
  %1 = load i8, i8* %data.addr, align 1, !dbg !6391
  store i8 %1, i8* %arrayinit.element, align 1, !dbg !6389
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6392, metadata !DIExpression()), !dbg !6393
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6394
  %2 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6395
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %2, i32 0, i32 1, !dbg !6396
  %3 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !6396
  %demod_address = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %3, i32 0, i32 0, !dbg !6397
  %4 = load i8, i8* %demod_address, align 1, !dbg !6397
  %conv = zext i8 %4 to i16, !dbg !6395
  store i16 %conv, i16* %addr, align 8, !dbg !6394
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6394
  store i16 0, i16* %flags, align 2, !dbg !6394
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6394
  store i16 2, i16* %len, align 4, !dbg !6394
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6394
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6398
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !6394
  call void @llvm.dbg.declare(metadata i32* %err, metadata !6399, metadata !DIExpression()), !dbg !6400
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6401
  %i2c = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %5, i32 0, i32 0, !dbg !6402
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !6402
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %6, %struct.i2c_msg* %msg, i32 1) #8, !dbg !6403
  store i32 %call, i32* %err, align 4, !dbg !6404
  %7 = load i32, i32* %err, align 4, !dbg !6405
  %cmp = icmp ne i32 %7, 1, !dbg !6407
  br i1 %cmp, label %if.then, label %if.end7, !dbg !6408

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6409

do.body:                                          ; preds = %if.then
  %8 = load i32, i32* @debug, align 4, !dbg !6411
  %tobool = icmp ne i32 %8, 0, !dbg !6411
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6414

if.then3:                                         ; preds = %do.body
  %9 = load i32, i32* %err, align 4, !dbg !6411
  %10 = load i8, i8* %reg.addr, align 1, !dbg !6411
  %conv4 = zext i8 %10 to i32, !dbg !6411
  %11 = load i8, i8* %data.addr, align 1, !dbg !6411
  %conv5 = zext i8 %11 to i32, !dbg !6411
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.s5h1420_writereg, i64 0, i64 0), i32 %9, i32 %conv4, i32 %conv5) #9, !dbg !6411
  br label %if.end, !dbg !6411

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !6414

do.end:                                           ; preds = %if.end
  store i32 -121, i32* %retval, align 4, !dbg !6415
  br label %return, !dbg !6415

if.end7:                                          ; preds = %entry
  %12 = load i8, i8* %data.addr, align 1, !dbg !6416
  %13 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6417
  %shadow = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %13, i32 0, i32 10, !dbg !6418
  %14 = load i8, i8* %reg.addr, align 1, !dbg !6419
  %idxprom = zext i8 %14 to i64, !dbg !6417
  %arrayidx = getelementptr [256 x i8], [256 x i8]* %shadow, i64 0, i64 %idxprom, !dbg !6417
  store i8 %12, i8* %arrayidx, align 1, !dbg !6420
  store i32 0, i32* %retval, align 4, !dbg !6421
  br label %return, !dbg !6421

return:                                           ; preds = %if.end7, %do.end
  %15 = load i32, i32* %retval, align 4, !dbg !6422
  ret i32 %15, !dbg !6422
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @s5h1420_reset(%struct.s5h1420_state* %state) #0 !dbg !6423 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6426, metadata !DIExpression()), !dbg !6427
  br label %do.body, !dbg !6428

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6429
  %tobool = icmp ne i32 %0, 0, !dbg !6429
  br i1 %tobool, label %if.then, label %if.end, !dbg !6432

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.s5h1420_reset, i64 0, i64 0)) #9, !dbg !6429
  br label %if.end, !dbg !6429

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6432

do.end:                                           ; preds = %if.end
  %1 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6433
  %call1 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %1, i8 zeroext 1, i8 zeroext 8) #8, !dbg !6434
  %2 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6435
  %call2 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %2, i8 zeroext 1, i8 zeroext 0) #8, !dbg !6436
  call void @__const_udelay(i64 42950) #8, !dbg !6437
  ret void, !dbg !6442
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @s5h1420_setfreqoffset(%struct.s5h1420_state* %state, i32 %freqoffset) #0 !dbg !6443 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %freqoffset.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %v = alloca i8, align 1
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6446, metadata !DIExpression()), !dbg !6447
  store i32 %freqoffset, i32* %freqoffset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freqoffset.addr, metadata !6448, metadata !DIExpression()), !dbg !6449
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6450, metadata !DIExpression()), !dbg !6451
  call void @llvm.dbg.declare(metadata i8* %v, metadata !6452, metadata !DIExpression()), !dbg !6453
  br label %do.body, !dbg !6454

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6455
  %tobool = icmp ne i32 %0, 0, !dbg !6455
  br i1 %tobool, label %if.then, label %if.end, !dbg !6458

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.s5h1420_setfreqoffset, i64 0, i64 0)) #9, !dbg !6455
  br label %if.end, !dbg !6455

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6458

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %freqoffset.addr, align 4, !dbg !6459
  %mul = mul i32 %1, 16777216, !dbg !6460
  %2 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6461
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %2, i32 0, i32 6, !dbg !6462
  %3 = load i32, i32* %fclk, align 4, !dbg !6462
  %div = udiv i32 %3, 1000000, !dbg !6463
  %div1 = udiv i32 %mul, %div, !dbg !6464
  %sub = sub i32 0, %div1, !dbg !6465
  store i32 %sub, i32* %val, align 4, !dbg !6466
  br label %do.body2, !dbg !6467

do.body2:                                         ; preds = %do.end
  %4 = load i32, i32* @debug, align 4, !dbg !6468
  %tobool3 = icmp ne i32 %4, 0, !dbg !6468
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6471

if.then4:                                         ; preds = %do.body2
  %5 = load i32, i32* %freqoffset.addr, align 4, !dbg !6468
  %6 = load i32, i32* %val, align 4, !dbg !6468
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i32 %5, i32 %6) #9, !dbg !6468
  br label %if.end6, !dbg !6468

if.end6:                                          ; preds = %if.then4, %do.body2
  br label %do.end7, !dbg !6471

do.end7:                                          ; preds = %if.end6
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6472
  %call8 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %7, i8 zeroext 9) #8, !dbg !6473
  store i8 %call8, i8* %v, align 1, !dbg !6474
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6475
  %9 = load i8, i8* %v, align 1, !dbg !6476
  %conv = zext i8 %9 to i32, !dbg !6476
  %and = and i32 %conv, 191, !dbg !6477
  %conv9 = trunc i32 %and to i8, !dbg !6476
  %call10 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %8, i8 zeroext 9, i8 zeroext %conv9) #8, !dbg !6478
  %10 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6479
  %11 = load i32, i32* %val, align 4, !dbg !6480
  %shr = ashr i32 %11, 16, !dbg !6481
  %conv11 = trunc i32 %shr to i8, !dbg !6480
  %call12 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %10, i8 zeroext 14, i8 zeroext %conv11) #8, !dbg !6482
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6483
  %13 = load i32, i32* %val, align 4, !dbg !6484
  %shr13 = ashr i32 %13, 8, !dbg !6485
  %conv14 = trunc i32 %shr13 to i8, !dbg !6484
  %call15 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %12, i8 zeroext 15, i8 zeroext %conv14) #8, !dbg !6486
  %14 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6487
  %15 = load i32, i32* %val, align 4, !dbg !6488
  %and16 = and i32 %15, 255, !dbg !6489
  %conv17 = trunc i32 %and16 to i8, !dbg !6488
  %call18 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %14, i8 zeroext 16, i8 zeroext %conv17) #8, !dbg !6490
  %16 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6491
  %17 = load i8, i8* %v, align 1, !dbg !6492
  %conv19 = zext i8 %17 to i32, !dbg !6492
  %or = or i32 %conv19, 64, !dbg !6493
  %conv20 = trunc i32 %or to i8, !dbg !6492
  %call21 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %16, i8 zeroext 9, i8 zeroext %conv20) #8, !dbg !6494
  br label %do.body22, !dbg !6495

do.body22:                                        ; preds = %do.end7
  %18 = load i32, i32* @debug, align 4, !dbg !6496
  %tobool23 = icmp ne i32 %18, 0, !dbg !6496
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !6499

if.then24:                                        ; preds = %do.body22
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.s5h1420_setfreqoffset, i64 0, i64 0)) #9, !dbg !6496
  br label %if.end26, !dbg !6496

if.end26:                                         ; preds = %if.then24, %do.body22
  br label %do.end27, !dbg !6499

do.end27:                                         ; preds = %if.end26
  ret void, !dbg !6500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @s5h1420_setsymbolrate(%struct.s5h1420_state* %state, %struct.dtv_frontend_properties* %p) #0 !dbg !6501 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %v = alloca i8, align 1
  %val = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6504, metadata !DIExpression()), !dbg !6505
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !6506, metadata !DIExpression()), !dbg !6507
  call void @llvm.dbg.declare(metadata i8* %v, metadata !6508, metadata !DIExpression()), !dbg !6509
  call void @llvm.dbg.declare(metadata i64* %val, metadata !6510, metadata !DIExpression()), !dbg !6511
  br label %do.body, !dbg !6512

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6513
  %tobool = icmp ne i32 %0, 0, !dbg !6513
  br i1 %tobool, label %if.then, label %if.end, !dbg !6516

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.s5h1420_setsymbolrate, i64 0, i64 0)) #9, !dbg !6513
  br label %if.end, !dbg !6513

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6516

do.end:                                           ; preds = %if.end
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6517
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 10, !dbg !6518
  %2 = load i32, i32* %symbol_rate, align 4, !dbg !6518
  %conv = zext i32 %2 to i64, !dbg !6519
  %div = udiv i64 %conv, 1000, !dbg !6520
  %mul = mul i64 %div, 16777216, !dbg !6521
  store i64 %mul, i64* %val, align 8, !dbg !6522
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6523
  %symbol_rate1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 10, !dbg !6525
  %4 = load i32, i32* %symbol_rate1, align 4, !dbg !6525
  %cmp = icmp ult i32 %4, 29000000, !dbg !6526
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !6527

if.then3:                                         ; preds = %do.end
  %5 = load i64, i64* %val, align 8, !dbg !6528
  %mul4 = mul i64 %5, 2, !dbg !6528
  store i64 %mul4, i64* %val, align 8, !dbg !6528
  br label %if.end5, !dbg !6529

if.end5:                                          ; preds = %if.then3, %do.end
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !6530, metadata !DIExpression()), !dbg !6532
  %6 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6532
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %6, i32 0, i32 6, !dbg !6532
  %7 = load i32, i32* %fclk, align 4, !dbg !6532
  %div6 = udiv i32 %7, 1000, !dbg !6532
  store i32 %div6, i32* %__base, align 4, !dbg !6532
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !6533, metadata !DIExpression()), !dbg !6532
  %8 = load i64, i64* %val, align 8, !dbg !6532
  %9 = load i32, i32* %__base, align 4, !dbg !6532
  %conv7 = zext i32 %9 to i64, !dbg !6532
  %rem = urem i64 %8, %conv7, !dbg !6532
  %conv8 = trunc i64 %rem to i32, !dbg !6532
  store i32 %conv8, i32* %__rem, align 4, !dbg !6532
  %10 = load i64, i64* %val, align 8, !dbg !6532
  %11 = load i32, i32* %__base, align 4, !dbg !6532
  %conv9 = zext i32 %11 to i64, !dbg !6532
  %div10 = udiv i64 %10, %conv9, !dbg !6532
  store i64 %div10, i64* %val, align 8, !dbg !6532
  %12 = load i32, i32* %__rem, align 4, !dbg !6532
  store i32 %12, i32* %tmp, align 4, !dbg !6532
  %13 = load i32, i32* %tmp, align 4, !dbg !6532
  br label %do.body11, !dbg !6534

do.body11:                                        ; preds = %if.end5
  %14 = load i32, i32* @debug, align 4, !dbg !6535
  %tobool12 = icmp ne i32 %14, 0, !dbg !6535
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6538

if.then13:                                        ; preds = %do.body11
  %15 = load i64, i64* %val, align 8, !dbg !6535
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i64 %15) #9, !dbg !6535
  br label %if.end15, !dbg !6535

if.end15:                                         ; preds = %if.then13, %do.body11
  br label %do.end16, !dbg !6538

do.end16:                                         ; preds = %if.end15
  %16 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6539
  %call17 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %16, i8 zeroext 9) #8, !dbg !6540
  store i8 %call17, i8* %v, align 1, !dbg !6541
  %17 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6542
  %18 = load i8, i8* %v, align 1, !dbg !6543
  %conv18 = zext i8 %18 to i32, !dbg !6543
  %and = and i32 %conv18, 127, !dbg !6544
  %conv19 = trunc i32 %and to i8, !dbg !6543
  %call20 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %17, i8 zeroext 9, i8 zeroext %conv19) #8, !dbg !6545
  %19 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6546
  %20 = load i64, i64* %val, align 8, !dbg !6547
  %shr = lshr i64 %20, 16, !dbg !6548
  %conv21 = trunc i64 %shr to i8, !dbg !6547
  %call22 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %19, i8 zeroext 17, i8 zeroext %conv21) #8, !dbg !6549
  %21 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6550
  %22 = load i64, i64* %val, align 8, !dbg !6551
  %shr23 = lshr i64 %22, 8, !dbg !6552
  %conv24 = trunc i64 %shr23 to i8, !dbg !6551
  %call25 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %21, i8 zeroext 18, i8 zeroext %conv24) #8, !dbg !6553
  %23 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6554
  %24 = load i64, i64* %val, align 8, !dbg !6555
  %and26 = and i64 %24, 255, !dbg !6556
  %conv27 = trunc i64 %and26 to i8, !dbg !6555
  %call28 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %23, i8 zeroext 19, i8 zeroext %conv27) #8, !dbg !6557
  %25 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6558
  %26 = load i8, i8* %v, align 1, !dbg !6559
  %conv29 = zext i8 %26 to i32, !dbg !6559
  %or = or i32 %conv29, 128, !dbg !6560
  %conv30 = trunc i32 %or to i8, !dbg !6559
  %call31 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %25, i8 zeroext 9, i8 zeroext %conv30) #8, !dbg !6561
  br label %do.body32, !dbg !6562

do.body32:                                        ; preds = %do.end16
  %27 = load i32, i32* @debug, align 4, !dbg !6563
  %tobool33 = icmp ne i32 %27, 0, !dbg !6563
  br i1 %tobool33, label %if.then34, label %if.end36, !dbg !6566

if.then34:                                        ; preds = %do.body32
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.s5h1420_setsymbolrate, i64 0, i64 0)) #9, !dbg !6563
  br label %if.end36, !dbg !6563

if.end36:                                         ; preds = %if.then34, %do.body32
  br label %do.end37, !dbg !6566

do.end37:                                         ; preds = %if.end36
  ret void, !dbg !6567
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @s5h1420_setfec_inversion(%struct.s5h1420_state* %state, %struct.dtv_frontend_properties* %p) #0 !dbg !6568 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %inversion = alloca i8, align 1
  %vit08 = alloca i8, align 1
  %vit09 = alloca i8, align 1
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6569, metadata !DIExpression()), !dbg !6570
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !6571, metadata !DIExpression()), !dbg !6572
  call void @llvm.dbg.declare(metadata i8* %inversion, metadata !6573, metadata !DIExpression()), !dbg !6574
  store i8 0, i8* %inversion, align 1, !dbg !6574
  call void @llvm.dbg.declare(metadata i8* %vit08, metadata !6575, metadata !DIExpression()), !dbg !6576
  call void @llvm.dbg.declare(metadata i8* %vit09, metadata !6577, metadata !DIExpression()), !dbg !6578
  br label %do.body, !dbg !6579

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !6580
  %tobool = icmp ne i32 %0, 0, !dbg !6580
  br i1 %tobool, label %if.then, label %if.end, !dbg !6583

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.s5h1420_setfec_inversion, i64 0, i64 0)) #9, !dbg !6580
  br label %if.end, !dbg !6580

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6583

do.end:                                           ; preds = %if.end
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6584
  %inversion1 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 4, !dbg !6586
  %2 = load i32, i32* %inversion1, align 4, !dbg !6586
  %cmp = icmp eq i32 %2, 0, !dbg !6587
  br i1 %cmp, label %if.then2, label %if.else, !dbg !6588

if.then2:                                         ; preds = %do.end
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6589
  %config = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %3, i32 0, i32 1, !dbg !6590
  %4 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config, align 8, !dbg !6590
  %invert = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %4, i32 0, i32 1, !dbg !6591
  %bf.load = load i8, i8* %invert, align 1, !dbg !6591
  %bf.clear = and i8 %bf.load, 1, !dbg !6591
  %conv = zext i8 %bf.clear to i32, !dbg !6589
  %tobool3 = icmp ne i32 %conv, 0, !dbg !6589
  %5 = zext i1 %tobool3 to i64, !dbg !6589
  %cond = select i1 %tobool3, i32 8, i32 0, !dbg !6589
  %conv4 = trunc i32 %cond to i8, !dbg !6589
  store i8 %conv4, i8* %inversion, align 1, !dbg !6592
  br label %if.end18, !dbg !6593

if.else:                                          ; preds = %do.end
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6594
  %inversion5 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 4, !dbg !6596
  %7 = load i32, i32* %inversion5, align 4, !dbg !6596
  %cmp6 = icmp eq i32 %7, 1, !dbg !6597
  br i1 %cmp6, label %if.then8, label %if.end17, !dbg !6598

if.then8:                                         ; preds = %if.else
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6599
  %config9 = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %8, i32 0, i32 1, !dbg !6600
  %9 = load %struct.s5h1420_config*, %struct.s5h1420_config** %config9, align 8, !dbg !6600
  %invert10 = getelementptr inbounds %struct.s5h1420_config, %struct.s5h1420_config* %9, i32 0, i32 1, !dbg !6601
  %bf.load11 = load i8, i8* %invert10, align 1, !dbg !6601
  %bf.clear12 = and i8 %bf.load11, 1, !dbg !6601
  %conv13 = zext i8 %bf.clear12 to i32, !dbg !6599
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !6599
  %10 = zext i1 %tobool14 to i64, !dbg !6599
  %cond15 = select i1 %tobool14, i32 0, i32 8, !dbg !6599
  %conv16 = trunc i32 %cond15 to i8, !dbg !6599
  store i8 %conv16, i8* %inversion, align 1, !dbg !6602
  br label %if.end17, !dbg !6603

if.end17:                                         ; preds = %if.then8, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6604
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 5, !dbg !6606
  %12 = load i32, i32* %fec_inner, align 4, !dbg !6606
  %cmp19 = icmp eq i32 %12, 9, !dbg !6607
  br i1 %cmp19, label %if.then24, label %lor.lhs.false, !dbg !6608

lor.lhs.false:                                    ; preds = %if.end18
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6609
  %inversion21 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 4, !dbg !6610
  %14 = load i32, i32* %inversion21, align 4, !dbg !6610
  %cmp22 = icmp eq i32 %14, 2, !dbg !6611
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !6612

if.then24:                                        ; preds = %lor.lhs.false, %if.end18
  store i8 63, i8* %vit08, align 1, !dbg !6613
  store i8 0, i8* %vit09, align 1, !dbg !6615
  br label %if.end32, !dbg !6616

if.else25:                                        ; preds = %lor.lhs.false
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !6617
  %fec_inner26 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 5, !dbg !6619
  %16 = load i32, i32* %fec_inner26, align 4, !dbg !6619
  switch i32 %16, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb27
    i32 3, label %sw.bb28
    i32 5, label %sw.bb29
    i32 6, label %sw.bb30
    i32 7, label %sw.bb31
  ], !dbg !6620

sw.bb:                                            ; preds = %if.else25
  store i8 1, i8* %vit08, align 1, !dbg !6621
  store i8 16, i8* %vit09, align 1, !dbg !6623
  br label %sw.epilog, !dbg !6624

sw.bb27:                                          ; preds = %if.else25
  store i8 2, i8* %vit08, align 1, !dbg !6625
  store i8 17, i8* %vit09, align 1, !dbg !6626
  br label %sw.epilog, !dbg !6627

sw.bb28:                                          ; preds = %if.else25
  store i8 4, i8* %vit08, align 1, !dbg !6628
  store i8 18, i8* %vit09, align 1, !dbg !6629
  br label %sw.epilog, !dbg !6630

sw.bb29:                                          ; preds = %if.else25
  store i8 8, i8* %vit08, align 1, !dbg !6631
  store i8 19, i8* %vit09, align 1, !dbg !6632
  br label %sw.epilog, !dbg !6633

sw.bb30:                                          ; preds = %if.else25
  store i8 16, i8* %vit08, align 1, !dbg !6634
  store i8 20, i8* %vit09, align 1, !dbg !6635
  br label %sw.epilog, !dbg !6636

sw.bb31:                                          ; preds = %if.else25
  store i8 32, i8* %vit08, align 1, !dbg !6637
  store i8 21, i8* %vit09, align 1, !dbg !6638
  br label %sw.epilog, !dbg !6639

sw.default:                                       ; preds = %if.else25
  br label %do.end51, !dbg !6640

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb
  br label %if.end32

if.end32:                                         ; preds = %sw.epilog, %if.then24
  %17 = load i8, i8* %inversion, align 1, !dbg !6641
  %conv33 = zext i8 %17 to i32, !dbg !6641
  %18 = load i8, i8* %vit09, align 1, !dbg !6642
  %conv34 = zext i8 %18 to i32, !dbg !6642
  %or = or i32 %conv34, %conv33, !dbg !6642
  %conv35 = trunc i32 %or to i8, !dbg !6642
  store i8 %conv35, i8* %vit09, align 1, !dbg !6642
  br label %do.body36, !dbg !6643

do.body36:                                        ; preds = %if.end32
  %19 = load i32, i32* @debug, align 4, !dbg !6644
  %tobool37 = icmp ne i32 %19, 0, !dbg !6644
  br i1 %tobool37, label %if.then38, label %if.end42, !dbg !6647

if.then38:                                        ; preds = %do.body36
  %20 = load i8, i8* %vit08, align 1, !dbg !6644
  %conv39 = zext i8 %20 to i32, !dbg !6644
  %21 = load i8, i8* %vit09, align 1, !dbg !6644
  %conv40 = zext i8 %21 to i32, !dbg !6644
  %call41 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %conv39, i32 %conv40) #9, !dbg !6644
  br label %if.end42, !dbg !6644

if.end42:                                         ; preds = %if.then38, %do.body36
  br label %do.end43, !dbg !6647

do.end43:                                         ; preds = %if.end42
  %22 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6648
  %23 = load i8, i8* %vit08, align 1, !dbg !6649
  %call44 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %22, i8 zeroext 48, i8 zeroext %23) #8, !dbg !6650
  %24 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6651
  %25 = load i8, i8* %vit09, align 1, !dbg !6652
  %call45 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %24, i8 zeroext 49, i8 zeroext %25) #8, !dbg !6653
  br label %do.body46, !dbg !6654

do.body46:                                        ; preds = %do.end43
  %26 = load i32, i32* @debug, align 4, !dbg !6655
  %tobool47 = icmp ne i32 %26, 0, !dbg !6655
  br i1 %tobool47, label %if.then48, label %if.end50, !dbg !6658

if.then48:                                        ; preds = %do.body46
  %call49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.s5h1420_setfec_inversion, i64 0, i64 0)) #9, !dbg !6655
  br label %if.end50, !dbg !6655

if.end50:                                         ; preds = %if.then48, %do.body46
  br label %do.end51, !dbg !6658

do.end51:                                         ; preds = %sw.default, %if.end50
  ret void, !dbg !6659
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_getfreqoffset(%struct.s5h1420_state* %state) #0 !dbg !6660 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %val = alloca i32, align 4
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6663, metadata !DIExpression()), !dbg !6664
  call void @llvm.dbg.declare(metadata i32* %val, metadata !6665, metadata !DIExpression()), !dbg !6666
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6667
  %1 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6668
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %1, i8 zeroext 6) #8, !dbg !6669
  %conv = zext i8 %call to i32, !dbg !6669
  %or = or i32 %conv, 8, !dbg !6670
  %conv1 = trunc i32 %or to i8, !dbg !6669
  %call2 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %0, i8 zeroext 6, i8 zeroext %conv1) #8, !dbg !6671
  %2 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6672
  %call3 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %2, i8 zeroext 14) #8, !dbg !6673
  %conv4 = zext i8 %call3 to i32, !dbg !6673
  %shl = shl i32 %conv4, 16, !dbg !6674
  store i32 %shl, i32* %val, align 4, !dbg !6675
  %3 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6676
  %call5 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %3, i8 zeroext 15) #8, !dbg !6677
  %conv6 = zext i8 %call5 to i32, !dbg !6677
  %shl7 = shl i32 %conv6, 8, !dbg !6678
  %4 = load i32, i32* %val, align 4, !dbg !6679
  %or8 = or i32 %4, %shl7, !dbg !6679
  store i32 %or8, i32* %val, align 4, !dbg !6679
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6680
  %call9 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %5, i8 zeroext 16) #8, !dbg !6681
  %conv10 = zext i8 %call9 to i32, !dbg !6681
  %6 = load i32, i32* %val, align 4, !dbg !6682
  %or11 = or i32 %6, %conv10, !dbg !6682
  store i32 %or11, i32* %val, align 4, !dbg !6682
  %7 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6683
  %8 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6684
  %call12 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %8, i8 zeroext 6) #8, !dbg !6685
  %conv13 = zext i8 %call12 to i32, !dbg !6685
  %and = and i32 %conv13, 247, !dbg !6686
  %conv14 = trunc i32 %and to i8, !dbg !6685
  %call15 = call i32 @s5h1420_writereg(%struct.s5h1420_state* %7, i8 zeroext 6, i8 zeroext %conv14) #8, !dbg !6687
  %9 = load i32, i32* %val, align 4, !dbg !6688
  %and16 = and i32 %9, 8388608, !dbg !6690
  %tobool = icmp ne i32 %and16, 0, !dbg !6690
  br i1 %tobool, label %if.then, label %if.end, !dbg !6691

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %val, align 4, !dbg !6692
  %or17 = or i32 %10, -16777216, !dbg !6692
  store i32 %or17, i32* %val, align 4, !dbg !6692
  br label %if.end, !dbg !6693

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, i32* %val, align 4, !dbg !6694
  %sub = sub i32 0, %11, !dbg !6695
  %12 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6696
  %fclk = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %12, i32 0, i32 6, !dbg !6697
  %13 = load i32, i32* %fclk, align 4, !dbg !6697
  %div = udiv i32 %13, 1000000, !dbg !6698
  %mul = mul i32 %sub, %div, !dbg !6699
  %div18 = udiv i32 %mul, 16777216, !dbg !6700
  store i32 %div18, i32* %val, align 4, !dbg !6701
  %14 = load i32, i32* %val, align 4, !dbg !6702
  ret i32 %14, !dbg !6703
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_getinversion(%struct.s5h1420_state* %state) #0 !dbg !6704 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.s5h1420_state*, align 8
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6707, metadata !DIExpression()), !dbg !6708
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6709
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %0, i8 zeroext 50) #8, !dbg !6711
  %conv = zext i8 %call to i32, !dbg !6711
  %and = and i32 %conv, 8, !dbg !6712
  %tobool = icmp ne i32 %and, 0, !dbg !6712
  br i1 %tobool, label %if.then, label %if.end, !dbg !6713

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6714
  br label %return, !dbg !6714

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6715
  br label %return, !dbg !6715

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, i32* %retval, align 4, !dbg !6716
  ret i32 %1, !dbg !6716
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_getsymbolrate(%struct.s5h1420_state* %state) #0 !dbg !6717 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6720, metadata !DIExpression()), !dbg !6721
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6722
  %symbol_rate = getelementptr inbounds %struct.s5h1420_state, %struct.s5h1420_state* %0, i32 0, i32 9, !dbg !6723
  %1 = load i32, i32* %symbol_rate, align 8, !dbg !6723
  ret i32 %1, !dbg !6724
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_getfec(%struct.s5h1420_state* %state) #0 !dbg !6725 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.s5h1420_state*, align 8
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6728, metadata !DIExpression()), !dbg !6729
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6730
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %0, i8 zeroext 50) #8, !dbg !6731
  %conv = zext i8 %call to i32, !dbg !6731
  %and = and i32 %conv, 7, !dbg !6732
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
  ], !dbg !6733

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !6734
  br label %return, !dbg !6734

sw.bb1:                                           ; preds = %entry
  store i32 2, i32* %retval, align 4, !dbg !6736
  br label %return, !dbg !6736

sw.bb2:                                           ; preds = %entry
  store i32 3, i32* %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

sw.bb3:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4, !dbg !6738
  br label %return, !dbg !6738

sw.bb4:                                           ; preds = %entry
  store i32 6, i32* %retval, align 4, !dbg !6739
  br label %return, !dbg !6739

sw.bb5:                                           ; preds = %entry
  store i32 7, i32* %retval, align 4, !dbg !6740
  br label %return, !dbg !6740

sw.epilog:                                        ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !6741
  br label %return, !dbg !6741

return:                                           ; preds = %sw.epilog, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4, !dbg !6742
  ret i32 %1, !dbg !6742
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @s5h1420_get_status_bits(%struct.s5h1420_state* %state) #0 !dbg !6743 {
entry:
  %state.addr = alloca %struct.s5h1420_state*, align 8
  %val = alloca i8, align 1
  %status = alloca i32, align 4
  store %struct.s5h1420_state* %state, %struct.s5h1420_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.s5h1420_state** %state.addr, metadata !6746, metadata !DIExpression()), !dbg !6747
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6748, metadata !DIExpression()), !dbg !6749
  call void @llvm.dbg.declare(metadata i32* %status, metadata !6750, metadata !DIExpression()), !dbg !6751
  store i32 0, i32* %status, align 4, !dbg !6751
  %0 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6752
  %call = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %0, i8 zeroext 20) #8, !dbg !6753
  store i8 %call, i8* %val, align 1, !dbg !6754
  %1 = load i8, i8* %val, align 1, !dbg !6755
  %conv = zext i8 %1 to i32, !dbg !6755
  %and = and i32 %conv, 2, !dbg !6757
  %tobool = icmp ne i32 %and, 0, !dbg !6757
  br i1 %tobool, label %if.then, label %if.end, !dbg !6758

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %status, align 4, !dbg !6759
  %or = or i32 %2, 1, !dbg !6759
  store i32 %or, i32* %status, align 4, !dbg !6759
  br label %if.end, !dbg !6760

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %val, align 1, !dbg !6761
  %conv1 = zext i8 %3 to i32, !dbg !6761
  %and2 = and i32 %conv1, 1, !dbg !6763
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6763
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !6764

if.then4:                                         ; preds = %if.end
  %4 = load i32, i32* %status, align 4, !dbg !6765
  %or5 = or i32 %4, 2, !dbg !6765
  store i32 %or5, i32* %status, align 4, !dbg !6765
  br label %if.end6, !dbg !6766

if.end6:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.s5h1420_state*, %struct.s5h1420_state** %state.addr, align 8, !dbg !6767
  %call7 = call zeroext i8 @s5h1420_readreg(%struct.s5h1420_state* %5, i8 zeroext 54) #8, !dbg !6768
  store i8 %call7, i8* %val, align 1, !dbg !6769
  %6 = load i8, i8* %val, align 1, !dbg !6770
  %conv8 = zext i8 %6 to i32, !dbg !6770
  %and9 = and i32 %conv8, 1, !dbg !6772
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6772
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !6773

if.then11:                                        ; preds = %if.end6
  %7 = load i32, i32* %status, align 4, !dbg !6774
  %or12 = or i32 %7, 4, !dbg !6774
  store i32 %or12, i32* %status, align 4, !dbg !6774
  br label %if.end13, !dbg !6775

if.end13:                                         ; preds = %if.then11, %if.end6
  %8 = load i8, i8* %val, align 1, !dbg !6776
  %conv14 = zext i8 %8 to i32, !dbg !6776
  %and15 = and i32 %conv14, 32, !dbg !6778
  %tobool16 = icmp ne i32 %and15, 0, !dbg !6778
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !6779

if.then17:                                        ; preds = %if.end13
  %9 = load i32, i32* %status, align 4, !dbg !6780
  %or18 = or i32 %9, 8, !dbg !6780
  store i32 %or18, i32* %status, align 4, !dbg !6780
  br label %if.end19, !dbg !6781

if.end19:                                         ; preds = %if.then17, %if.end13
  %10 = load i32, i32* %status, align 4, !dbg !6782
  %cmp = icmp eq i32 %10, 15, !dbg !6784
  br i1 %cmp, label %if.then21, label %if.end23, !dbg !6785

if.then21:                                        ; preds = %if.end19
  %11 = load i32, i32* %status, align 4, !dbg !6786
  %or22 = or i32 %11, 16, !dbg !6786
  store i32 %or22, i32* %status, align 4, !dbg !6786
  br label %if.end23, !dbg !6787

if.end23:                                         ; preds = %if.then21, %if.end19
  %12 = load i32, i32* %status, align 4, !dbg !6788
  ret i32 %12, !dbg !6789
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4495, !4496, !4497, !4498}
!llvm.ident = !{!4499}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 57, type: !4492, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !361, globals: !376, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/s5h1420.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !128, !138, !145, !161, !166, !170, !175, !190, !201, !214, !221, !226, !232, !253, !259, !263, !271, !283, !354}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !19, line: 54, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22, !23}
!21 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!23 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !25, line: 26, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!28 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !31, line: 296, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37, !38}
!33 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!38 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !40, line: 9, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!41 = !{!42, !43, !44, !45, !46}
!42 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!46 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !48, line: 16, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52}
!50 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !54, line: 44, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!57 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !60, line: 343, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !67, line: 524, baseType: !7, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !67, line: 502, baseType: !7, size: 32, elements: !75)
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!79 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !95, line: 72, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!97 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!101 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!102 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!103 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!104 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!105 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!106 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!107 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!108 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!109 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!110 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!111 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!112 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!113 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!114 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!115 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!116 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!117 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!118 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!119 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!120 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!121 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!122 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!123 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!124 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!125 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!126 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!127 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !95, line: 252, baseType: !7, size: 32, elements: !129)
!129 = !{!130, !131, !132, !133, !134, !135, !136, !137}
!130 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!132 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!133 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!134 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!135 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!136 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!137 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !139, line: 144, baseType: !7, size: 32, elements: !140)
!139 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !142, !143, !144}
!141 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!144 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !95, line: 338, baseType: !7, size: 32, elements: !146)
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!147 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!148 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!149 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!150 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!151 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!152 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!153 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!154 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!155 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!156 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!157 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!158 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!159 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!160 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!161 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !95, line: 208, baseType: !7, size: 32, elements: !162)
!162 = !{!163, !164, !165}
!163 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!164 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!165 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !95, line: 220, baseType: !7, size: 32, elements: !167)
!167 = !{!168, !169}
!168 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!169 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !95, line: 276, baseType: !7, size: 32, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!173 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!174 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !95, line: 302, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!177 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!178 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!179 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!180 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!181 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!182 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!183 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!184 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!185 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!186 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!187 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!188 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!189 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !95, line: 381, baseType: !7, size: 32, elements: !191)
!191 = !{!192, !193, !194, !195, !196, !197, !198, !199, !200}
!192 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!193 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!194 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!195 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!196 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!197 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!198 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!199 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!200 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !95, line: 410, baseType: !7, size: 32, elements: !202)
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213}
!203 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!204 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!205 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!206 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!207 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!208 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!209 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!210 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!211 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!212 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!213 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !95, line: 434, baseType: !7, size: 32, elements: !215)
!215 = !{!216, !217, !218, !219, !220}
!216 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!217 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!218 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!219 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!220 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !95, line: 562, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225}
!223 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!226 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !95, line: 579, baseType: !7, size: 32, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!229 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!230 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!231 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!232 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !95, line: 628, baseType: !7, size: 32, elements: !233)
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252}
!234 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!235 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!236 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!237 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!238 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!239 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!240 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!241 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!242 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!243 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!244 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!245 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!246 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!247 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!248 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!249 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!250 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!251 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!252 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !95, line: 451, baseType: !7, size: 32, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!256 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!257 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!258 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !95, line: 233, baseType: !7, size: 32, elements: !260)
!260 = !{!261, !262}
!261 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!262 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!263 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !139, line: 173, baseType: !7, size: 32, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270}
!265 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!266 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!267 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!268 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!269 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!270 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !272, line: 57, baseType: !7, size: 32, elements: !273)
!272 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !275, !276, !277, !278, !279, !280, !281, !282}
!274 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!275 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!276 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!277 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!278 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!279 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!280 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!281 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!282 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "s5h1420_register", file: !284, line: 15, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/dvb-frontends/s5h1420_priv.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!286 = !DIEnumerator(name: "ID01", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "CON_0", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "CON_1", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "PLL01", value: 3, isUnsigned: true)
!290 = !DIEnumerator(name: "PLL02", value: 4, isUnsigned: true)
!291 = !DIEnumerator(name: "QPSK01", value: 5, isUnsigned: true)
!292 = !DIEnumerator(name: "QPSK02", value: 6, isUnsigned: true)
!293 = !DIEnumerator(name: "Pre01", value: 7, isUnsigned: true)
!294 = !DIEnumerator(name: "Post01", value: 8, isUnsigned: true)
!295 = !DIEnumerator(name: "Loop01", value: 9, isUnsigned: true)
!296 = !DIEnumerator(name: "Loop02", value: 10, isUnsigned: true)
!297 = !DIEnumerator(name: "Loop03", value: 11, isUnsigned: true)
!298 = !DIEnumerator(name: "Loop04", value: 12, isUnsigned: true)
!299 = !DIEnumerator(name: "Loop05", value: 13, isUnsigned: true)
!300 = !DIEnumerator(name: "Pnco01", value: 14, isUnsigned: true)
!301 = !DIEnumerator(name: "Pnco02", value: 15, isUnsigned: true)
!302 = !DIEnumerator(name: "Pnco03", value: 16, isUnsigned: true)
!303 = !DIEnumerator(name: "Tnco01", value: 17, isUnsigned: true)
!304 = !DIEnumerator(name: "Tnco02", value: 18, isUnsigned: true)
!305 = !DIEnumerator(name: "Tnco03", value: 19, isUnsigned: true)
!306 = !DIEnumerator(name: "Monitor01", value: 20, isUnsigned: true)
!307 = !DIEnumerator(name: "Monitor02", value: 21, isUnsigned: true)
!308 = !DIEnumerator(name: "Monitor03", value: 22, isUnsigned: true)
!309 = !DIEnumerator(name: "Monitor04", value: 23, isUnsigned: true)
!310 = !DIEnumerator(name: "Monitor05", value: 24, isUnsigned: true)
!311 = !DIEnumerator(name: "Monitor06", value: 25, isUnsigned: true)
!312 = !DIEnumerator(name: "Monitor07", value: 26, isUnsigned: true)
!313 = !DIEnumerator(name: "Monitor12", value: 31, isUnsigned: true)
!314 = !DIEnumerator(name: "FEC01", value: 34, isUnsigned: true)
!315 = !DIEnumerator(name: "Soft01", value: 35, isUnsigned: true)
!316 = !DIEnumerator(name: "Soft02", value: 36, isUnsigned: true)
!317 = !DIEnumerator(name: "Soft03", value: 37, isUnsigned: true)
!318 = !DIEnumerator(name: "Soft04", value: 38, isUnsigned: true)
!319 = !DIEnumerator(name: "Soft05", value: 39, isUnsigned: true)
!320 = !DIEnumerator(name: "Soft06", value: 40, isUnsigned: true)
!321 = !DIEnumerator(name: "Vit01", value: 41, isUnsigned: true)
!322 = !DIEnumerator(name: "Vit02", value: 42, isUnsigned: true)
!323 = !DIEnumerator(name: "Vit03", value: 43, isUnsigned: true)
!324 = !DIEnumerator(name: "Vit04", value: 44, isUnsigned: true)
!325 = !DIEnumerator(name: "Vit05", value: 45, isUnsigned: true)
!326 = !DIEnumerator(name: "Vit06", value: 46, isUnsigned: true)
!327 = !DIEnumerator(name: "Vit07", value: 47, isUnsigned: true)
!328 = !DIEnumerator(name: "Vit08", value: 48, isUnsigned: true)
!329 = !DIEnumerator(name: "Vit09", value: 49, isUnsigned: true)
!330 = !DIEnumerator(name: "Vit10", value: 50, isUnsigned: true)
!331 = !DIEnumerator(name: "Vit11", value: 51, isUnsigned: true)
!332 = !DIEnumerator(name: "Vit12", value: 52, isUnsigned: true)
!333 = !DIEnumerator(name: "Sync01", value: 53, isUnsigned: true)
!334 = !DIEnumerator(name: "Sync02", value: 54, isUnsigned: true)
!335 = !DIEnumerator(name: "Rs01", value: 55, isUnsigned: true)
!336 = !DIEnumerator(name: "Mpeg01", value: 56, isUnsigned: true)
!337 = !DIEnumerator(name: "Mpeg02", value: 57, isUnsigned: true)
!338 = !DIEnumerator(name: "DiS01", value: 58, isUnsigned: true)
!339 = !DIEnumerator(name: "DiS02", value: 59, isUnsigned: true)
!340 = !DIEnumerator(name: "DiS03", value: 60, isUnsigned: true)
!341 = !DIEnumerator(name: "DiS04", value: 61, isUnsigned: true)
!342 = !DIEnumerator(name: "DiS05", value: 62, isUnsigned: true)
!343 = !DIEnumerator(name: "DiS06", value: 63, isUnsigned: true)
!344 = !DIEnumerator(name: "DiS07", value: 64, isUnsigned: true)
!345 = !DIEnumerator(name: "DiS08", value: 65, isUnsigned: true)
!346 = !DIEnumerator(name: "DiS09", value: 66, isUnsigned: true)
!347 = !DIEnumerator(name: "DiS10", value: 67, isUnsigned: true)
!348 = !DIEnumerator(name: "DiS11", value: 68, isUnsigned: true)
!349 = !DIEnumerator(name: "Rf01", value: 69, isUnsigned: true)
!350 = !DIEnumerator(name: "Err01", value: 70, isUnsigned: true)
!351 = !DIEnumerator(name: "Err02", value: 71, isUnsigned: true)
!352 = !DIEnumerator(name: "Err03", value: 72, isUnsigned: true)
!353 = !DIEnumerator(name: "Err04", value: 73, isUnsigned: true)
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !355, line: 305, baseType: !7, size: 32, elements: !356)
!355 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!356 = !{!357, !358, !359, !360}
!357 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!358 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!359 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!360 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!361 = !{!362, !364, !365, !366, !371, !370, !372, !375}
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !363, line: 148, baseType: !7)
!363 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!365 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !367, line: 23, baseType: !368)
!367 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !369, line: 31, baseType: !370)
!369 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!370 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !363, line: 107, baseType: !366)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !367, line: 19, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !369, line: 24, baseType: !374)
!374 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!375 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!376 = !{!377, !443, !448, !453, !458, !463, !468, !473, !0, !475, !4169}
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 57, type: !379, isLocal: true, isDefinition: true, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !381, line: 69, size: 320, elements: !382)
!381 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!382 = !{!383, !387, !391, !411, !413, !417, !421}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !381, line: 70, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!386 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !380, file: !381, line: 71, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !390, line: 76, flags: DIFlagFwdDecl)
!390 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !380, file: !381, line: 72, baseType: !392, size: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !381, line: 47, size: 256, elements: !395)
!395 = !{!396, !397, !402, !407}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !381, line: 49, baseType: !7, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !394, file: !381, line: 51, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!365, !384, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !394, file: !381, line: 53, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{!365, !406, !401}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !394, file: !381, line: 55, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !364}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !380, file: !381, line: 73, baseType: !412, size: 16, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !380, file: !381, line: 74, baseType: !414, size: 8, offset: 208)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !367, line: 16, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !369, line: 20, baseType: !416)
!416 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !381, line: 75, baseType: !418, size: 8, offset: 216)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !367, line: 17, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !369, line: 21, baseType: !420)
!420 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!421 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !381, line: 76, baseType: !422, size: 64, offset: 256)
!422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 76, size: 64, elements: !423)
!423 = !{!424, !425, !432}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !422, file: !381, line: 77, baseType: !364, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !422, file: !381, line: 78, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !381, line: 86, size: 128, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !428, file: !381, line: 87, baseType: !7, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !428, file: !381, line: 88, baseType: !406, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !422, file: !381, line: 79, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !381, line: 92, size: 256, elements: !436)
!436 = !{!437, !438, !439, !441, !442}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !435, file: !381, line: 94, baseType: !7, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !435, file: !381, line: 95, baseType: !7, size: 32, offset: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !435, file: !381, line: 96, baseType: !440, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !435, file: !381, line: 97, baseType: !392, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !435, file: !381, line: 98, baseType: !364, size: 64, offset: 192)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 57, type: !445, isLocal: true, isDefinition: true, align: 8)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 216, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 27)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 58, type: !450, isLocal: true, isDefinition: true, align: 8)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 288, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 36)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 962, type: !455, isLocal: true, isDefinition: true, align: 8)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 632, elements: !456)
!456 = !{!457}
!457 = !DISubrange(count: 79)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 963, type: !460, isLocal: true, isDefinition: true, align: 8)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 416, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 52)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 964, type: !465, isLocal: true, isDefinition: true, align: 8)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 392, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 49)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 964, type: !470, isLocal: true, isDefinition: true, align: 8)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 160, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 20)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 56, type: !365, isLocal: true, isDefinition: true)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(name: "s5h1420_tuner_i2c_algo", scope: !2, file: !3, line: 857, type: !477, isLocal: true, isDefinition: true)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !479, line: 519, size: 320, elements: !480)
!479 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !4150, !4151, !4164, !4165}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !478, file: !479, line: 529, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!365, !485, !4141, !365}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !479, line: 695, size: 7552, elements: !487)
!487 = !{!488, !489, !490, !492, !493, !507, !3534, !3535, !3536, !3537, !4088, !4089, !4090, !4094, !4095, !4096, !4097, !4129, !4140}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !486, file: !479, line: 696, baseType: !388, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !486, file: !479, line: 697, baseType: !7, size: 32, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !486, file: !479, line: 698, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !486, file: !479, line: 699, baseType: !364, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !486, file: !479, line: 702, baseType: !494, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !479, line: 557, size: 192, elements: !497)
!497 = !{!498, !502, !506}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !496, file: !479, line: 558, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !485, !7}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !496, file: !479, line: 559, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!365, !485, !7}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !496, file: !479, line: 560, baseType: !499, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !486, file: !479, line: 703, baseType: !508, size: 192, offset: 320)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !509, line: 30, size: 192, elements: !510)
!509 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !521, !537}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !508, file: !509, line: 31, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !513, line: 29, baseType: !514)
!513 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !513, line: 20, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !514, file: !513, line: 21, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !518, line: 25, baseType: !519)
!518 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 25, elements: !520)
!520 = !{}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !508, file: !509, line: 32, baseType: !522, size: 128)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !523, line: 125, size: 128, elements: !524)
!523 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!524 = !{!525, !536}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !522, file: !523, line: 126, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !523, line: 31, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !526, file: !523, line: 32, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !523, line: 24, size: 192, align: 64, elements: !531)
!531 = !{!532, !534, !535}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !530, file: !523, line: 25, baseType: !533, size: 64)
!533 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !530, file: !523, line: 26, baseType: !529, size: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !530, file: !523, line: 27, baseType: !529, size: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !522, file: !523, line: 127, baseType: !529, size: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !508, file: !509, line: 33, baseType: !538, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !540, line: 640, size: 48640, elements: !541)
!540 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!541 = !{!542, !550, !552, !553, !563, !564, !565, !566, !567, !568, !569, !570, !574, !597, !608, !700, !701, !702, !713, !714, !716, !717, !2838, !2839, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2921, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2936, !2937, !2938, !2940, !2941, !2942, !2943, !2944, !2945, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2969, !2974, !2975, !2976, !2977, !2978, !2980, !2983, !2986, !2989, !2992, !2996, !3097, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3143, !3144, !3145, !3146, !3147, !3152, !3153, !3154, !3157, !3158, !3161, !3164, !3167, !3168, !3200, !3203, !3204, !3283, !3284, !3287, !3288, !3291, !3292, !3293, !3297, !3298, !3299, !3312, !3313, !3314, !3324, !3329, !3330, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !539, file: !540, line: 646, baseType: !543, size: 128)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !544, line: 56, size: 128, elements: !545)
!544 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !544, line: 57, baseType: !533, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !543, file: !544, line: 58, baseType: !548, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !367, line: 21, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !369, line: 27, baseType: !7)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !539, file: !540, line: 649, baseType: !551, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !375)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !539, file: !540, line: 657, baseType: !364, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !539, file: !540, line: 658, baseType: !554, size: 32, offset: 256)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !555, line: 113, baseType: !556)
!555 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !555, line: 111, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !556, file: !555, line: 112, baseType: !559, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !363, line: 168, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 166, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !560, file: !363, line: 167, baseType: !365, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !539, file: !540, line: 660, baseType: !7, size: 32, offset: 288)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !539, file: !540, line: 661, baseType: !7, size: 32, offset: 320)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !539, file: !540, line: 684, baseType: !365, size: 32, offset: 352)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !539, file: !540, line: 686, baseType: !365, size: 32, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !539, file: !540, line: 687, baseType: !365, size: 32, offset: 416)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !539, file: !540, line: 688, baseType: !365, size: 32, offset: 448)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !539, file: !540, line: 689, baseType: !7, size: 32, offset: 480)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !539, file: !540, line: 691, baseType: !571, size: 64, offset: 512)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !540, line: 691, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !539, file: !540, line: 692, baseType: !575, size: 832, offset: 576)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !540, line: 451, size: 832, elements: !576)
!576 = !{!577, !582, !583, !589, !590, !591, !592, !593, !594, !595}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !575, file: !540, line: 453, baseType: !578, size: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !540, line: 325, size: 128, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !578, file: !540, line: 326, baseType: !533, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !578, file: !540, line: 327, baseType: !548, size: 32, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !575, file: !540, line: 454, baseType: !530, size: 192, align: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !575, file: !540, line: 455, baseType: !584, size: 128, offset: 320)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !363, line: 178, size: 128, elements: !585)
!585 = !{!586, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !584, file: !363, line: 179, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !584, file: !363, line: 179, baseType: !587, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !575, file: !540, line: 456, baseType: !7, size: 32, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !575, file: !540, line: 458, baseType: !366, size: 64, offset: 512)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !575, file: !540, line: 459, baseType: !366, size: 64, offset: 576)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !575, file: !540, line: 460, baseType: !366, size: 64, offset: 640)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !575, file: !540, line: 461, baseType: !366, size: 64, offset: 704)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !575, file: !540, line: 463, baseType: !366, size: 64, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !575, file: !540, line: 465, baseType: !596, offset: 832)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !540, line: 415, elements: !520)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !539, file: !540, line: 693, baseType: !598, size: 384, offset: 1408)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !540, line: 489, size: 384, elements: !599)
!599 = !{!600, !601, !602, !603, !604, !605, !606}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !598, file: !540, line: 490, baseType: !584, size: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !598, file: !540, line: 491, baseType: !533, size: 64, offset: 128)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !598, file: !540, line: 492, baseType: !533, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !598, file: !540, line: 493, baseType: !7, size: 32, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !598, file: !540, line: 494, baseType: !374, size: 16, offset: 288)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !598, file: !540, line: 495, baseType: !374, size: 16, offset: 304)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !598, file: !540, line: 497, baseType: !607, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !539, file: !540, line: 697, baseType: !609, size: 1792, offset: 1792)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !540, line: 507, size: 1792, elements: !610)
!610 = !{!611, !612, !613, !614, !615, !616, !617, !621, !622, !623, !624, !625, !626, !627, !697, !698}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !609, file: !540, line: 508, baseType: !530, size: 192, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !609, file: !540, line: 515, baseType: !366, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !609, file: !540, line: 516, baseType: !366, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !609, file: !540, line: 517, baseType: !366, size: 64, offset: 320)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !609, file: !540, line: 518, baseType: !366, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !609, file: !540, line: 519, baseType: !366, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !609, file: !540, line: 526, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !367, line: 22, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !369, line: 30, baseType: !620)
!620 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !609, file: !540, line: 527, baseType: !366, size: 64, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !609, file: !540, line: 528, baseType: !7, size: 32, offset: 640)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !609, file: !540, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !609, file: !540, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !609, file: !540, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !609, file: !540, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !609, file: !540, line: 563, baseType: !628, size: 512, offset: 704)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !629)
!629 = !{!630, !638, !639, !644, !693, !694, !695, !696}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !628, file: !6, line: 119, baseType: !631, size: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !632, line: 9, size: 256, elements: !633)
!632 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !631, file: !632, line: 10, baseType: !530, size: 192, align: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !631, file: !632, line: 11, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !637, line: 29, baseType: !618)
!637 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!638 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !628, file: !6, line: 120, baseType: !636, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !628, file: !6, line: 121, baseType: !640, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!5, !643}
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !628, file: !6, line: 122, baseType: !645, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !647)
!647 = !{!648, !668, !669, !673, !683, !684, !688, !692}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !646, file: !6, line: 160, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !651)
!651 = !{!652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !650, file: !6, line: 215, baseType: !512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !650, file: !6, line: 216, baseType: !7, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !650, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !650, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !650, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !650, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !650, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !650, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !650, file: !6, line: 233, baseType: !636, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !650, file: !6, line: 234, baseType: !643, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !650, file: !6, line: 235, baseType: !636, size: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !650, file: !6, line: 236, baseType: !643, size: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !650, file: !6, line: 237, baseType: !665, size: 4096, offset: 512)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !646, size: 4096, elements: !666)
!666 = !{!667}
!667 = !DISubrange(count: 8)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !646, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !646, file: !6, line: 162, baseType: !670, size: 32, offset: 96)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !363, line: 27, baseType: !671)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !672, line: 96, baseType: !365)
!672 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !646, file: !6, line: 163, baseType: !674, size: 32, offset: 128)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !675, line: 276, baseType: !676)
!675 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !675, line: 276, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !676, file: !675, line: 276, baseType: !679, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !675, line: 70, baseType: !680)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !675, line: 65, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !680, file: !675, line: 66, baseType: !7, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !646, file: !6, line: 164, baseType: !643, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !646, file: !6, line: 165, baseType: !685, size: 128, offset: 256)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !632, line: 14, size: 128, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !685, file: !632, line: 15, baseType: !522, size: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !646, file: !6, line: 166, baseType: !689, size: 64, offset: 384)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!636}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !646, file: !6, line: 167, baseType: !636, size: 64, offset: 448)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !628, file: !6, line: 123, baseType: !418, size: 8, offset: 448)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !628, file: !6, line: 124, baseType: !418, size: 8, offset: 456)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !628, file: !6, line: 125, baseType: !418, size: 8, offset: 464)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !628, file: !6, line: 126, baseType: !418, size: 8, offset: 472)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !609, file: !540, line: 572, baseType: !628, size: 512, offset: 1216)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !609, file: !540, line: 580, baseType: !699, size: 64, offset: 1728)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !539, file: !540, line: 721, baseType: !7, size: 32, offset: 3584)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !539, file: !540, line: 722, baseType: !365, size: 32, offset: 3616)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !539, file: !540, line: 723, baseType: !703, size: 64, offset: 3648)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !706, line: 17, baseType: !707)
!706 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !706, line: 17, size: 64, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !707, file: !706, line: 17, baseType: !710, size: 64)
!710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 64, elements: !711)
!711 = !{!712}
!712 = !DISubrange(count: 1)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !539, file: !540, line: 724, baseType: !705, size: 64, offset: 3712)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !539, file: !540, line: 749, baseType: !715, offset: 3776)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !540, line: 290, elements: !520)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !539, file: !540, line: 751, baseType: !584, size: 128, offset: 3776)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !539, file: !540, line: 757, baseType: !718, size: 64, offset: 3904)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !720, line: 388, size: 7296, elements: !721)
!720 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !2834}
!722 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 389, baseType: !723, size: 7296)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !719, file: !720, line: 389, size: 7296, elements: !724)
!724 = !{!725, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2747, !2753, !2756, !2795, !2796, !2818, !2819, !2822, !2823, !2824, !2827, !2828, !2829, !2832, !2833}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !723, file: !720, line: 390, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !720, line: 305, size: 1472, elements: !728)
!728 = !{!729, !730, !731, !732, !733, !734, !735, !736, !744, !745, !750, !751, !754, !758, !759, !2695, !2696, !2697}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !727, file: !720, line: 308, baseType: !533, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !727, file: !720, line: 309, baseType: !533, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !727, file: !720, line: 313, baseType: !726, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !727, file: !720, line: 313, baseType: !726, size: 64, offset: 192)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !727, file: !720, line: 315, baseType: !530, size: 192, align: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !727, file: !720, line: 323, baseType: !533, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !727, file: !720, line: 327, baseType: !718, size: 64, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !727, file: !720, line: 333, baseType: !737, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !738, line: 284, baseType: !739)
!738 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !738, line: 284, size: 64, elements: !740)
!740 = !{!741}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !739, file: !738, line: 284, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !743, line: 19, baseType: !533)
!743 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !727, file: !720, line: 334, baseType: !533, size: 64, offset: 640)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !727, file: !720, line: 343, baseType: !746, size: 256, offset: 704)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !727, file: !720, line: 340, size: 256, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !746, file: !720, line: 341, baseType: !530, size: 192, align: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !746, file: !720, line: 342, baseType: !533, size: 64, offset: 192)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !727, file: !720, line: 351, baseType: !584, size: 128, offset: 960)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !727, file: !720, line: 353, baseType: !752, size: 64, offset: 1088)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !720, line: 353, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !727, file: !720, line: 356, baseType: !755, size: 64, offset: 1152)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !720, line: 356, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !727, file: !720, line: 359, baseType: !533, size: 64, offset: 1216)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !727, file: !720, line: 361, baseType: !760, size: 64, offset: 1280)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !762)
!762 = !{!763, !781, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2494, !2679, !2688, !2689, !2690, !2691, !2692, !2693, !2694}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !761, file: !31, line: 920, baseType: !764, size: 128)
!764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !761, file: !31, line: 917, size: 128, elements: !765)
!765 = !{!766, !772}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !764, file: !31, line: 918, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !768, line: 58, size: 64, elements: !769)
!768 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !767, file: !768, line: 59, baseType: !771, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !764, file: !31, line: 919, baseType: !773, size: 128, align: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !363, line: 216, size: 128, align: 64, elements: !774)
!774 = !{!775, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !773, file: !363, line: 217, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !773, file: !363, line: 218, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !776}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !761, file: !31, line: 921, baseType: !782, size: 128, offset: 128)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !783, line: 8, size: 128, elements: !784)
!783 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !789}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !782, file: !783, line: 9, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !788, line: 18, flags: DIFlagFwdDecl)
!788 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !782, file: !783, line: 10, baseType: !790, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !788, line: 89, size: 1536, elements: !792)
!792 = !{!793, !794, !799, !807, !808, !823, !2424, !2426, !2438, !2439, !2440, !2441, !2442, !2447, !2448, !2449}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !791, file: !788, line: 91, baseType: !7, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !791, file: !788, line: 92, baseType: !795, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !675, line: 277, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !675, line: 277, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !796, file: !675, line: 277, baseType: !679, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !791, file: !788, line: 93, baseType: !800, size: 128, offset: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !801, line: 38, size: 128, elements: !802)
!801 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !800, file: !801, line: 39, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !800, file: !801, line: 39, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !791, file: !788, line: 94, baseType: !790, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !791, file: !788, line: 95, baseType: !809, size: 128, offset: 256)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !788, line: 47, size: 128, elements: !810)
!810 = !{!811, !820}
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !788, line: 48, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !809, file: !788, line: 48, size: 64, elements: !813)
!813 = !{!814, !819}
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !812, file: !788, line: 49, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !812, file: !788, line: 49, size: 64, elements: !816)
!816 = !{!817, !818}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !815, file: !788, line: 50, baseType: !548, size: 32)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !815, file: !788, line: 50, baseType: !548, size: 32, offset: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !812, file: !788, line: 52, baseType: !366, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !788, line: 54, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !791, file: !788, line: 96, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !826)
!826 = !{!827, !829, !830, !838, !845, !846, !995, !1813, !1814, !1815, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !2092, !2100, !2101, !2102, !2420, !2421, !2422, !2423}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !825, file: !31, line: 611, baseType: !828, size: 16)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !363, line: 19, baseType: !374)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !825, file: !31, line: 612, baseType: !374, size: 16, offset: 16)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !825, file: !31, line: 613, baseType: !831, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !832, line: 23, baseType: !833)
!832 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !832, line: 21, size: 32, elements: !834)
!834 = !{!835}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !833, file: !832, line: 22, baseType: !836, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !363, line: 32, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !672, line: 49, baseType: !7)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !825, file: !31, line: 614, baseType: !839, size: 32, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !832, line: 28, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !832, line: 26, size: 32, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !840, file: !832, line: 27, baseType: !843, size: 32)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !363, line: 33, baseType: !844)
!844 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !672, line: 50, baseType: !7)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !825, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !825, file: !31, line: 622, baseType: !847, size: 64, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !850)
!850 = !{!851, !855, !865, !869, !875, !879, !885, !889, !893, !897, !901, !902, !908, !912, !936, !965, !975, !981, !986, !990, !991}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !849, file: !31, line: 1865, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!790, !824, !790, !7}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !849, file: !31, line: 1866, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!384, !790, !824, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !861, line: 10, size: 128, elements: !862)
!861 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !860, file: !861, line: 11, baseType: !408, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !860, file: !861, line: 12, baseType: !364, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !849, file: !31, line: 1867, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!365, !824, !365}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !849, file: !31, line: 1868, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!873, !824, !365}
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !849, file: !31, line: 1870, baseType: !876, size: 64, offset: 256)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!365, !790, !406, !365}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !849, file: !31, line: 1872, baseType: !880, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!365, !824, !790, !828, !883}
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !363, line: 30, baseType: !884)
!884 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !849, file: !31, line: 1873, baseType: !886, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!365, !790, !824, !790}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !849, file: !31, line: 1874, baseType: !890, size: 64, offset: 448)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = !DISubroutineType(types: !892)
!892 = !{!365, !824, !790}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !849, file: !31, line: 1875, baseType: !894, size: 64, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!365, !824, !790, !384}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !849, file: !31, line: 1876, baseType: !898, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!365, !824, !790, !828}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !849, file: !31, line: 1877, baseType: !890, size: 64, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !849, file: !31, line: 1878, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!365, !824, !790, !828, !906}
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !363, line: 16, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !363, line: 13, baseType: !548)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !849, file: !31, line: 1879, baseType: !909, size: 64, offset: 768)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!365, !824, !790, !824, !790, !7}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !849, file: !31, line: 1881, baseType: !913, size: 64, offset: 832)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!365, !790, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !918)
!918 = !{!919, !920, !921, !922, !923, !926, !933, !934, !935}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !917, file: !31, line: 220, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !917, file: !31, line: 221, baseType: !828, size: 16, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !917, file: !31, line: 222, baseType: !831, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !917, file: !31, line: 223, baseType: !839, size: 32, offset: 96)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !917, file: !31, line: 224, baseType: !924, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !363, line: 46, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !672, line: 88, baseType: !620)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !917, file: !31, line: 225, baseType: !927, size: 128, offset: 192)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !928, line: 13, size: 128, elements: !929)
!928 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!929 = !{!930, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !927, file: !928, line: 14, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !928, line: 8, baseType: !619)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !927, file: !928, line: 15, baseType: !375, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !917, file: !31, line: 226, baseType: !927, size: 128, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !917, file: !31, line: 227, baseType: !927, size: 128, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !917, file: !31, line: 234, baseType: !760, size: 64, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !849, file: !31, line: 1882, baseType: !937, size: 64, offset: 896)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!365, !940, !942, !548, !7}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !944, line: 22, size: 1152, elements: !945)
!944 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !947, !948, !949, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !943, file: !944, line: 23, baseType: !548, size: 32)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !943, file: !944, line: 24, baseType: !828, size: 16, offset: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !943, file: !944, line: 25, baseType: !7, size: 32, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !943, file: !944, line: 26, baseType: !950, size: 32, offset: 96)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !363, line: 104, baseType: !548)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !943, file: !944, line: 27, baseType: !366, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !943, file: !944, line: 28, baseType: !366, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !943, file: !944, line: 37, baseType: !366, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !943, file: !944, line: 38, baseType: !906, size: 32, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !943, file: !944, line: 39, baseType: !906, size: 32, offset: 352)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !943, file: !944, line: 40, baseType: !831, size: 32, offset: 384)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !943, file: !944, line: 41, baseType: !839, size: 32, offset: 416)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !943, file: !944, line: 42, baseType: !924, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !943, file: !944, line: 43, baseType: !927, size: 128, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !943, file: !944, line: 44, baseType: !927, size: 128, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !943, file: !944, line: 45, baseType: !927, size: 128, offset: 768)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !943, file: !944, line: 46, baseType: !927, size: 128, offset: 896)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !943, file: !944, line: 47, baseType: !366, size: 64, offset: 1024)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !943, file: !944, line: 48, baseType: !366, size: 64, offset: 1088)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !849, file: !31, line: 1883, baseType: !966, size: 64, offset: 960)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!969, !790, !406, !972}
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !363, line: 60, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !672, line: 73, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !672, line: 15, baseType: !375)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 55, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !672, line: 72, baseType: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !672, line: 16, baseType: !533)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !849, file: !31, line: 1884, baseType: !976, size: 64, offset: 1024)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!365, !824, !979, !366, !366}
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !849, file: !31, line: 1886, baseType: !982, size: 64, offset: 1088)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!365, !824, !985, !365}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !849, file: !31, line: 1887, baseType: !987, size: 64, offset: 1152)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!365, !824, !790, !760, !7, !828}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !849, file: !31, line: 1890, baseType: !898, size: 64, offset: 1216)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !849, file: !31, line: 1891, baseType: !992, size: 64, offset: 1280)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!365, !824, !873, !365}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !825, file: !31, line: 623, baseType: !996, size: 64, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !998)
!998 = !{!999, !1000, !1001, !1002, !1003, !1004, !1053, !1390, !1478, !1561, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1577, !1581, !1582, !1585, !1588, !1591, !1592, !1593, !1634, !1666, !1667, !1668, !1669, !1670, !1671, !1674, !1678, !1687, !1688, !1690, !1691, !1692, !1751, !1752, !1767, !1768, !1769, !1770, !1771, !1775, !1776, !1779, !1794, !1795, !1796, !1807, !1808, !1809, !1810, !1811, !1812}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !997, file: !31, line: 1417, baseType: !584, size: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !997, file: !31, line: 1418, baseType: !906, size: 32, offset: 128)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !997, file: !31, line: 1419, baseType: !420, size: 8, offset: 160)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !997, file: !31, line: 1420, baseType: !533, size: 64, offset: 192)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !997, file: !31, line: 1421, baseType: !924, size: 64, offset: 256)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !997, file: !31, line: 1422, baseType: !1005, size: 64, offset: 320)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1017, !1021, !1025, !1029, !1030, !1031, !1041, !1044, !1045, !1046, !1050, !1051, !1052}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1006, file: !31, line: 2229, baseType: !384, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1006, file: !31, line: 2230, baseType: !365, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1006, file: !31, line: 2238, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!365, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1016, line: 28, flags: DIFlagFwdDecl)
!1016 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1006, file: !31, line: 2239, baseType: !1018, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1006, file: !31, line: 2240, baseType: !1022, size: 64, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!790, !1005, !365, !384, !364}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1006, file: !31, line: 2242, baseType: !1026, size: 64, offset: 320)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !996}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1006, file: !31, line: 2243, baseType: !388, size: 64, offset: 384)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1006, file: !31, line: 2244, baseType: !1005, size: 64, offset: 448)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1006, file: !31, line: 2245, baseType: !1032, size: 64, offset: 512)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !363, line: 182, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1032, file: !363, line: 183, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !363, line: 186, size: 128, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1036, file: !363, line: 187, baseType: !1035, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1036, file: !363, line: 187, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1006, file: !31, line: 2247, baseType: !1042, offset: 576)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1043, line: 187, elements: !520)
!1043 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1006, file: !31, line: 2248, baseType: !1042, offset: 576)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1006, file: !31, line: 2249, baseType: !1042, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1006, file: !31, line: 2250, baseType: !1047, offset: 576)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 3)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1006, file: !31, line: 2252, baseType: !1042, offset: 576)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1006, file: !31, line: 2253, baseType: !1042, offset: 576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1006, file: !31, line: 2254, baseType: !1042, offset: 576)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !997, file: !31, line: 1423, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1057)
!1057 = !{!1058, !1062, !1066, !1067, !1071, !1077, !1081, !1082, !1083, !1087, !1091, !1092, !1093, !1094, !1100, !1105, !1106, !1112, !1113, !1114, !1115, !1374, !1389}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1056, file: !31, line: 1936, baseType: !1059, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!824, !996}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1056, file: !31, line: 1937, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{null, !824}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1056, file: !31, line: 1938, baseType: !1063, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1056, file: !31, line: 1940, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{null, !824, !365}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1056, file: !31, line: 1941, baseType: !1072, size: 64, offset: 256)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!365, !824, !1075}
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1056, file: !31, line: 1942, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!365, !824}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1056, file: !31, line: 1943, baseType: !1063, size: 64, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1056, file: !31, line: 1944, baseType: !1026, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1056, file: !31, line: 1945, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!365, !996, !365}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1056, file: !31, line: 1946, baseType: !1088, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{!365, !996}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1056, file: !31, line: 1947, baseType: !1088, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1056, file: !31, line: 1948, baseType: !1088, size: 64, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1056, file: !31, line: 1949, baseType: !1088, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1056, file: !31, line: 1950, baseType: !1095, size: 64, offset: 832)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{!365, !790, !1098}
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1056, file: !31, line: 1951, baseType: !1101, size: 64, offset: 896)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!365, !996, !1104, !406}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1056, file: !31, line: 1952, baseType: !1026, size: 64, offset: 960)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1056, file: !31, line: 1954, baseType: !1107, size: 64, offset: 1024)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!365, !1110, !790}
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !738, line: 539, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1056, file: !31, line: 1955, baseType: !1107, size: 64, offset: 1088)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1056, file: !31, line: 1956, baseType: !1107, size: 64, offset: 1152)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1056, file: !31, line: 1957, baseType: !1107, size: 64, offset: 1216)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1056, file: !31, line: 1963, baseType: !1116, size: 64, offset: 1280)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{!365, !996, !1119, !362}
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !720, line: 68, size: 512, align: 128, elements: !1121)
!1121 = !{!1122, !1123, !1366, !1373}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !720, line: 69, baseType: !533, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !720, line: 77, baseType: !1124, size: 320, offset: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !720, line: 77, size: 320, elements: !1125)
!1125 = !{!1126, !1298, !1303, !1331, !1339, !1345, !1358, !1365}
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 78, baseType: !1127, size: 320)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 78, size: 320, elements: !1128)
!1128 = !{!1129, !1130, !1296, !1297}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1127, file: !720, line: 84, baseType: !584, size: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1127, file: !720, line: 86, baseType: !1131, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1133)
!1133 = !{!1134, !1135, !1149, !1150, !1151, !1152, !1166, !1167, !1168, !1169, !1289, !1290, !1293, !1294, !1295}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1132, file: !31, line: 452, baseType: !824, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1132, file: !31, line: 453, baseType: !1136, size: 128, offset: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1137, line: 292, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1138 = !{!1139, !1147, !1148}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1136, file: !1137, line: 293, baseType: !1140)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !513, line: 83, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !513, line: 71, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !513, line: 72, baseType: !1144)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !513, line: 72, elements: !1145)
!1145 = !{!1146}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1144, file: !513, line: 73, baseType: !514)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1136, file: !1137, line: 295, baseType: !362, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1136, file: !1137, line: 296, baseType: !364, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1132, file: !31, line: 454, baseType: !362, size: 32, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1132, file: !31, line: 455, baseType: !559, size: 32, offset: 224)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1132, file: !31, line: 460, baseType: !522, size: 128, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1132, file: !31, line: 461, baseType: !1153, size: 256, offset: 384)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1154, line: 35, size: 256, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1155 = !{!1156, !1163, !1164, !1165}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1153, file: !1154, line: 36, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1158, line: 13, baseType: !1159)
!1158 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !363, line: 175, baseType: !1160)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 173, size: 64, elements: !1161)
!1161 = !{!1162}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1160, file: !363, line: 174, baseType: !618, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1153, file: !1154, line: 42, baseType: !1157, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1153, file: !1154, line: 46, baseType: !512, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1153, file: !1154, line: 47, baseType: !584, size: 128, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1132, file: !31, line: 462, baseType: !533, size: 64, offset: 640)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1132, file: !31, line: 463, baseType: !533, size: 64, offset: 704)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1132, file: !31, line: 464, baseType: !533, size: 64, offset: 768)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1132, file: !31, line: 465, baseType: !1170, size: 64, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1173)
!1173 = !{!1174, !1178, !1182, !1186, !1190, !1194, !1200, !1206, !1210, !1215, !1219, !1223, !1227, !1253, !1257, !1263, !1264, !1265, !1269, !1274, !1278, !1285}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1172, file: !31, line: 368, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!365, !1119, !1075}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1172, file: !31, line: 369, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!365, !760, !1119}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1172, file: !31, line: 372, baseType: !1183, size: 64, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!365, !1131, !1075}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1172, file: !31, line: 375, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!365, !1119}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1172, file: !31, line: 381, baseType: !1191, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!365, !760, !1131, !587, !7}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1172, file: !31, line: 383, baseType: !1195, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1172, file: !31, line: 385, baseType: !1201, size: 64, offset: 384)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!365, !760, !1131, !924, !7, !7, !1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1172, file: !31, line: 388, baseType: !1207, size: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!365, !760, !1131, !924, !7, !7, !1119, !364}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1172, file: !31, line: 393, baseType: !1211, size: 64, offset: 512)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!1214, !1131, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !363, line: 125, baseType: !366)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1172, file: !31, line: 394, baseType: !1216, size: 64, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{null, !1119, !7, !7}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1172, file: !31, line: 395, baseType: !1220, size: 64, offset: 640)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!365, !1119, !362}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1172, file: !31, line: 396, baseType: !1224, size: 64, offset: 704)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !1119}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1172, file: !31, line: 397, baseType: !1228, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!969, !1231, !1251}
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1233)
!1233 = !{!1234, !1235, !1236, !1240, !1241, !1242, !1243, !1244}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1232, file: !31, line: 321, baseType: !760, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1232, file: !31, line: 326, baseType: !924, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1232, file: !31, line: 327, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{null, !1231, !375, !375}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1232, file: !31, line: 328, baseType: !364, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1232, file: !31, line: 329, baseType: !365, size: 32, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1232, file: !31, line: 330, baseType: !372, size: 16, offset: 288)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1232, file: !31, line: 331, baseType: !372, size: 16, offset: 304)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !31, line: 332, baseType: !1245, size: 64, offset: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !31, line: 332, size: 64, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1245, file: !31, line: 333, baseType: !7, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1245, file: !31, line: 334, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1172, file: !31, line: 402, baseType: !1254, size: 64, offset: 832)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!365, !1131, !1119, !1119, !11}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1172, file: !31, line: 404, baseType: !1258, size: 64, offset: 896)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!883, !1119, !1261}
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1262, line: 305, baseType: !7)
!1262 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1172, file: !31, line: 405, baseType: !1224, size: 64, offset: 960)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1172, file: !31, line: 406, baseType: !1187, size: 64, offset: 1024)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1172, file: !31, line: 407, baseType: !1266, size: 64, offset: 1088)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!365, !1119, !533, !533}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1172, file: !31, line: 409, baseType: !1270, size: 64, offset: 1152)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1119, !1273, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1172, file: !31, line: 410, baseType: !1275, size: 64, offset: 1216)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!365, !1131, !1119}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1172, file: !31, line: 413, baseType: !1279, size: 64, offset: 1280)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!365, !1282, !760, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1172, file: !31, line: 415, baseType: !1286, size: 64, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !760}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1132, file: !31, line: 466, baseType: !533, size: 64, offset: 896)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1132, file: !31, line: 467, baseType: !1291, size: 32, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1292, line: 8, baseType: !548)
!1292 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1132, file: !31, line: 468, baseType: !1140, offset: 992)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1132, file: !31, line: 469, baseType: !584, size: 128, offset: 1024)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1132, file: !31, line: 470, baseType: !364, size: 64, offset: 1152)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1127, file: !720, line: 87, baseType: !533, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1127, file: !720, line: 94, baseType: !533, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 96, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 96, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1299, file: !720, line: 101, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !363, line: 143, baseType: !366)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 103, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 103, size: 320, elements: !1305)
!1305 = !{!1306, !1316, !1319, !1320}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !720, line: 104, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !720, line: 104, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1307, file: !720, line: 105, baseType: !584, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !720, line: 106, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1307, file: !720, line: 106, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !720, line: 107, baseType: !1119, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1311, file: !720, line: 109, baseType: !365, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1311, file: !720, line: 110, baseType: !365, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1304, file: !720, line: 117, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !720, line: 117, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1304, file: !720, line: 119, baseType: !364, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !720, line: 120, baseType: !1321, size: 64, offset: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !720, line: 120, size: 64, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1321, file: !720, line: 121, baseType: !364, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1321, file: !720, line: 122, baseType: !533, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !720, line: 123, baseType: !1326, size: 32)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !720, line: 123, size: 32, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1326, file: !720, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1326, file: !720, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1326, file: !720, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 130, baseType: !1332, size: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 130, size: 192, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1332, file: !720, line: 131, baseType: !533, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1332, file: !720, line: 134, baseType: !420, size: 8, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1332, file: !720, line: 135, baseType: !420, size: 8, offset: 72)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1332, file: !720, line: 136, baseType: !559, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1332, file: !720, line: 137, baseType: !7, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 139, baseType: !1340, size: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 139, size: 256, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1340, file: !720, line: 140, baseType: !533, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1340, file: !720, line: 141, baseType: !559, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1340, file: !720, line: 143, baseType: !584, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 145, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 145, size: 256, elements: !1347)
!1347 = !{!1348, !1349, !1351, !1352, !1357}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1346, file: !720, line: 146, baseType: !533, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1346, file: !720, line: 147, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !738, line: 509, baseType: !1119)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1346, file: !720, line: 148, baseType: !533, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !720, line: 149, baseType: !1353, size: 64, offset: 192)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !720, line: 149, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1353, file: !720, line: 150, baseType: !718, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1353, file: !720, line: 151, baseType: !559, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1346, file: !720, line: 156, baseType: !1140, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1124, file: !720, line: 159, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !720, line: 159, size: 128, elements: !1360)
!1360 = !{!1361, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1359, file: !720, line: 161, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !720, line: 161, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1359, file: !720, line: 162, baseType: !364, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1124, file: !720, line: 176, baseType: !773, size: 128, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !720, line: 179, baseType: !1367, size: 32, offset: 384)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1120, file: !720, line: 179, size: 32, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1367, file: !720, line: 184, baseType: !559, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1367, file: !720, line: 192, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1367, file: !720, line: 194, baseType: !7, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1367, file: !720, line: 195, baseType: !365, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1120, file: !720, line: 199, baseType: !559, size: 32, offset: 416)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1056, file: !31, line: 1964, baseType: !1375, size: 64, offset: 1344)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{!375, !996, !1378}
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1380, line: 12, size: 256, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1381 = !{!1382, !1383, !1384, !1385, !1386}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1379, file: !1380, line: 13, baseType: !362, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1379, file: !1380, line: 16, baseType: !365, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1379, file: !1380, line: 23, baseType: !533, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1379, file: !1380, line: 30, baseType: !533, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1379, file: !1380, line: 33, baseType: !1387, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !720, line: 27, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1056, file: !31, line: 1966, baseType: !1375, size: 64, offset: 1408)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !997, file: !31, line: 1424, baseType: !1391, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !1394)
!1394 = !{!1395, !1447, !1451, !1455, !1456, !1457, !1458, !1459, !1464, !1469, !1473}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1393, file: !19, line: 323, baseType: !1396, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!365, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1413, !1414, !1415, !1416, !1432, !1433, !1434}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1400, file: !19, line: 295, baseType: !1036, size: 128)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1400, file: !19, line: 296, baseType: !584, size: 128, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1400, file: !19, line: 297, baseType: !584, size: 128, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1400, file: !19, line: 298, baseType: !584, size: 128, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1400, file: !19, line: 299, baseType: !1407, size: 192, offset: 512)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1408, line: 53, size: 192, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1407, file: !1408, line: 54, baseType: !1157, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1407, file: !1408, line: 55, baseType: !1140, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1407, file: !1408, line: 59, baseType: !584, size: 128, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1400, file: !19, line: 300, baseType: !1140, offset: 704)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1400, file: !19, line: 301, baseType: !559, size: 32, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1400, file: !19, line: 302, baseType: !996, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1400, file: !19, line: 303, baseType: !1417, size: 64, offset: 832)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1418)
!1418 = !{!1419, !1431}
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1417, file: !19, line: 69, baseType: !1420, size: 32)
!1420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1417, file: !19, line: 69, size: 32, elements: !1421)
!1421 = !{!1422, !1423, !1424}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1420, file: !19, line: 70, baseType: !831, size: 32)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1420, file: !19, line: 71, baseType: !839, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1420, file: !19, line: 72, baseType: !1425, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1426, line: 24, baseType: !1427)
!1426 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1426, line: 22, size: 32, elements: !1428)
!1428 = !{!1429}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1427, file: !1426, line: 23, baseType: !1430, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1426, line: 20, baseType: !837)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1417, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1400, file: !19, line: 304, baseType: !924, size: 64, offset: 896)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1400, file: !19, line: 305, baseType: !533, size: 64, offset: 960)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1400, file: !19, line: 306, baseType: !1435, size: 576, offset: 1024)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1436)
!1436 = !{!1437, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1435, file: !19, line: 206, baseType: !1438, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !620)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1435, file: !19, line: 207, baseType: !1438, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1435, file: !19, line: 208, baseType: !1438, size: 64, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1435, file: !19, line: 209, baseType: !1438, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1435, file: !19, line: 210, baseType: !1438, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1435, file: !19, line: 211, baseType: !1438, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1435, file: !19, line: 212, baseType: !1438, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1435, file: !19, line: 213, baseType: !931, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1435, file: !19, line: 214, baseType: !931, size: 64, offset: 512)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1393, file: !19, line: 324, baseType: !1448, size: 64, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1399, !996, !365}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1393, file: !19, line: 325, baseType: !1452, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1399}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1393, file: !19, line: 326, baseType: !1396, size: 64, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1393, file: !19, line: 327, baseType: !1396, size: 64, offset: 256)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1393, file: !19, line: 328, baseType: !1396, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1393, file: !19, line: 329, baseType: !1084, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1393, file: !19, line: 332, baseType: !1460, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!1463, !824}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1393, file: !19, line: 333, baseType: !1465, size: 64, offset: 512)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!365, !824, !1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1393, file: !19, line: 335, baseType: !1470, size: 64, offset: 576)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!365, !824, !1463}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1393, file: !19, line: 337, baseType: !1474, size: 64, offset: 640)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!365, !996, !1477}
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !997, file: !31, line: 1425, baseType: !1479, size: 64, offset: 512)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !1482)
!1482 = !{!1483, !1487, !1488, !1492, !1493, !1494, !1509, !1532, !1536, !1537, !1560}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1481, file: !19, line: 429, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{!365, !996, !365, !365, !940}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1481, file: !19, line: 430, baseType: !1084, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1481, file: !19, line: 431, baseType: !1489, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!365, !996, !7}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1481, file: !19, line: 432, baseType: !1489, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1481, file: !19, line: 433, baseType: !1084, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1481, file: !19, line: 434, baseType: !1495, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!365, !996, !365, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !1500)
!1500 = !{!1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1499, file: !19, line: 416, baseType: !365, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1499, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1499, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1499, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1499, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1499, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1499, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1499, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1481, file: !19, line: 435, baseType: !1510, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!365, !996, !1417, !1513}
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !1515)
!1515 = !{!1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1514, file: !19, line: 344, baseType: !365, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1514, file: !19, line: 345, baseType: !366, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1514, file: !19, line: 346, baseType: !366, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1514, file: !19, line: 347, baseType: !366, size: 64, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1514, file: !19, line: 348, baseType: !366, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1514, file: !19, line: 349, baseType: !366, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1514, file: !19, line: 350, baseType: !366, size: 64, offset: 384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1514, file: !19, line: 351, baseType: !618, size: 64, offset: 448)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1514, file: !19, line: 353, baseType: !618, size: 64, offset: 512)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1514, file: !19, line: 354, baseType: !365, size: 32, offset: 576)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1514, file: !19, line: 355, baseType: !365, size: 32, offset: 608)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1514, file: !19, line: 356, baseType: !366, size: 64, offset: 640)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1514, file: !19, line: 357, baseType: !366, size: 64, offset: 704)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1514, file: !19, line: 358, baseType: !366, size: 64, offset: 768)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1514, file: !19, line: 359, baseType: !618, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1514, file: !19, line: 360, baseType: !365, size: 32, offset: 896)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1481, file: !19, line: 436, baseType: !1533, size: 64, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!365, !996, !1477, !1513}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1481, file: !19, line: 438, baseType: !1510, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1481, file: !19, line: 439, baseType: !1538, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!365, !996, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1542, file: !19, line: 410, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1542, file: !19, line: 411, baseType: !1546, size: 1344, offset: 64)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 1344, elements: !1048)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !1548)
!1548 = !{!1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1559}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !19, line: 396, baseType: !7, size: 32)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1547, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1547, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1547, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1547, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1547, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1547, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1547, file: !19, line: 404, baseType: !370, size: 64, offset: 256)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1547, file: !19, line: 405, baseType: !1558, size: 64, offset: 320)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !363, line: 126, baseType: !366)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1547, file: !19, line: 406, baseType: !1558, size: 64, offset: 384)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1481, file: !19, line: 440, baseType: !1489, size: 64, offset: 640)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !997, file: !31, line: 1426, baseType: !1562, size: 64, offset: 576)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1564)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !997, file: !31, line: 1427, baseType: !533, size: 64, offset: 640)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !997, file: !31, line: 1428, baseType: !533, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !997, file: !31, line: 1429, baseType: !533, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !997, file: !31, line: 1430, baseType: !790, size: 64, offset: 832)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !997, file: !31, line: 1431, baseType: !1153, size: 256, offset: 896)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !997, file: !31, line: 1432, baseType: !365, size: 32, offset: 1152)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !997, file: !31, line: 1433, baseType: !559, size: 32, offset: 1184)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !997, file: !31, line: 1437, baseType: !1573, size: 64, offset: 1216)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1576 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !997, file: !31, line: 1449, baseType: !1578, size: 64, offset: 1280)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !801, line: 34, size: 64, elements: !1579)
!1579 = !{!1580}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1578, file: !801, line: 35, baseType: !804, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !997, file: !31, line: 1450, baseType: !584, size: 128, offset: 1344)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !997, file: !31, line: 1451, baseType: !1583, size: 64, offset: 1472)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !997, file: !31, line: 1452, baseType: !1586, size: 64, offset: 1536)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !540, line: 40, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !997, file: !31, line: 1453, baseType: !1589, size: 64, offset: 1600)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !997, file: !31, line: 1454, baseType: !1036, size: 128, offset: 1664)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !997, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !997, file: !31, line: 1456, baseType: !1594, size: 2432, offset: 1856)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1600, !1632}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1594, file: !19, line: 519, baseType: !7, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1594, file: !19, line: 520, baseType: !1153, size: 256, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1594, file: !19, line: 521, baseType: !1599, size: 192, offset: 320)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 192, elements: !1048)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1594, file: !19, line: 522, baseType: !1601, size: 1728, offset: 512)
!1601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1602, size: 1728, elements: !1048)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1603)
!1603 = !{!1604, !1624, !1625, !1626, !1627, !1628, !1629, !1630, !1631}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1602, file: !19, line: 223, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !1607)
!1607 = !{!1608, !1609, !1622, !1623}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1606, file: !19, line: 444, baseType: !365, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1606, file: !19, line: 445, baseType: !1610, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1612, file: !19, line: 311, baseType: !1084, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1612, file: !19, line: 312, baseType: !1084, size: 64, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1612, file: !19, line: 313, baseType: !1084, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1612, file: !19, line: 314, baseType: !1084, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1612, file: !19, line: 315, baseType: !1396, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1612, file: !19, line: 316, baseType: !1396, size: 64, offset: 320)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1612, file: !19, line: 317, baseType: !1396, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1612, file: !19, line: 318, baseType: !1474, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1606, file: !19, line: 446, baseType: !388, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1606, file: !19, line: 447, baseType: !1605, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1602, file: !19, line: 224, baseType: !365, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1602, file: !19, line: 226, baseType: !584, size: 128, offset: 128)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1602, file: !19, line: 227, baseType: !533, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1602, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1602, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1602, file: !19, line: 230, baseType: !1438, size: 64, offset: 384)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1602, file: !19, line: 231, baseType: !1438, size: 64, offset: 448)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1602, file: !19, line: 232, baseType: !364, size: 64, offset: 512)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1594, file: !19, line: 523, baseType: !1633, size: 192, offset: 2240)
!1633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1610, size: 192, elements: !1048)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !997, file: !31, line: 1458, baseType: !1635, size: 2112, offset: 4288)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !1636)
!1636 = !{!1637, !1638, !1645}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1635, file: !31, line: 1411, baseType: !365, size: 32)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1635, file: !31, line: 1412, baseType: !1639, size: 128, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1640, line: 40, baseType: !1641)
!1640 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1640, line: 36, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1641, file: !1640, line: 37, baseType: !1140)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1641, file: !1640, line: 38, baseType: !584, size: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1635, file: !31, line: 1413, baseType: !1646, size: 1920, offset: 192)
!1646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1647, size: 1920, elements: !1048)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1648, line: 12, size: 640, elements: !1649)
!1648 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1649 = !{!1650, !1658, !1659, !1664, !1665}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1647, file: !1648, line: 13, baseType: !1651, size: 320)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1652, line: 17, size: 320, elements: !1653)
!1652 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1653 = !{!1654, !1655, !1656, !1657}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1651, file: !1652, line: 18, baseType: !365, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1651, file: !1652, line: 19, baseType: !365, size: 32, offset: 32)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1651, file: !1652, line: 20, baseType: !1639, size: 128, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1651, file: !1652, line: 22, baseType: !773, size: 128, align: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1647, file: !1648, line: 14, baseType: !440, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1647, file: !1648, line: 15, baseType: !1660, size: 64, offset: 384)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1661, line: 16, size: 64, elements: !1662)
!1661 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1662 = !{!1663}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1660, file: !1661, line: 17, baseType: !538, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1647, file: !1648, line: 16, baseType: !1639, size: 128, offset: 448)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1647, file: !1648, line: 17, baseType: !559, size: 32, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !997, file: !31, line: 1465, baseType: !364, size: 64, offset: 6400)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !997, file: !31, line: 1468, baseType: !548, size: 32, offset: 6464)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !997, file: !31, line: 1470, baseType: !931, size: 64, offset: 6528)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !997, file: !31, line: 1471, baseType: !931, size: 64, offset: 6592)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !997, file: !31, line: 1473, baseType: !549, size: 32, offset: 6656)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !997, file: !31, line: 1474, baseType: !1672, size: 64, offset: 6720)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !997, file: !31, line: 1477, baseType: !1675, size: 256, offset: 6784)
!1675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 256, elements: !1676)
!1676 = !{!1677}
!1677 = !DISubrange(count: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !997, file: !31, line: 1478, baseType: !1679, size: 128, offset: 7040)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1680, line: 18, baseType: !1681)
!1680 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1680, line: 16, size: 128, elements: !1682)
!1682 = !{!1683}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1681, file: !1680, line: 17, baseType: !1684, size: 128)
!1684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !1685)
!1685 = !{!1686}
!1686 = !DISubrange(count: 16)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !997, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !997, file: !31, line: 1481, baseType: !1689, size: 32, offset: 7200)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !363, line: 150, baseType: !7)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !997, file: !31, line: 1487, baseType: !1407, size: 192, offset: 7232)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !997, file: !31, line: 1493, baseType: !384, size: 64, offset: 7424)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !997, file: !31, line: 1495, baseType: !1693, size: 64, offset: 7488)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1695)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !788, line: 135, size: 1024, align: 512, elements: !1696)
!1696 = !{!1697, !1701, !1702, !1709, !1715, !1719, !1723, !1727, !1728, !1732, !1736, !1741, !1745}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1695, file: !788, line: 136, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!365, !790, !7}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1695, file: !788, line: 137, baseType: !1698, size: 64, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1695, file: !788, line: 138, baseType: !1703, size: 64, offset: 128)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!365, !1706, !1708}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1695, file: !788, line: 139, baseType: !1710, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!365, !1706, !7, !384, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1695, file: !788, line: 141, baseType: !1716, size: 64, offset: 256)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!365, !1706}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1695, file: !788, line: 142, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!365, !790}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1695, file: !788, line: 143, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !790}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1695, file: !788, line: 144, baseType: !1724, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1695, file: !788, line: 145, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{null, !790, !824}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1695, file: !788, line: 146, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!406, !790, !406, !365}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1695, file: !788, line: 147, baseType: !1737, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!786, !1740}
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1695, file: !788, line: 148, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!365, !940, !883}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1695, file: !788, line: 149, baseType: !1746, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!790, !790, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !997, file: !31, line: 1500, baseType: !365, size: 32, offset: 7552)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !997, file: !31, line: 1502, baseType: !1753, size: 448, offset: 7616)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1380, line: 60, size: 448, elements: !1754)
!1754 = !{!1755, !1760, !1761, !1762, !1763, !1764, !1765}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1753, file: !1380, line: 61, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!533, !1759, !1378}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1753, file: !1380, line: 63, baseType: !1756, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1753, file: !1380, line: 66, baseType: !375, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1753, file: !1380, line: 67, baseType: !365, size: 32, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1753, file: !1380, line: 68, baseType: !7, size: 32, offset: 224)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1753, file: !1380, line: 71, baseType: !584, size: 128, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1753, file: !1380, line: 77, baseType: !1766, size: 64, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !997, file: !31, line: 1505, baseType: !1157, size: 64, offset: 8064)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !997, file: !31, line: 1508, baseType: !1157, size: 64, offset: 8128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !997, file: !31, line: 1511, baseType: !365, size: 32, offset: 8192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !997, file: !31, line: 1514, baseType: !1291, size: 32, offset: 8224)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !997, file: !31, line: 1517, baseType: !1772, size: 64, offset: 8256)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1774, line: 18, flags: DIFlagFwdDecl)
!1774 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !997, file: !31, line: 1518, baseType: !1032, size: 64, offset: 8320)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !997, file: !31, line: 1525, baseType: !1777, size: 64, offset: 8384)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !832, line: 18, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !997, file: !31, line: 1532, baseType: !1780, size: 64, offset: 8448)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1781, line: 52, size: 64, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1780, file: !1781, line: 53, baseType: !1784, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1781, line: 40, size: 256, elements: !1786)
!1786 = !{!1787, !1788, !1793}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1785, file: !1781, line: 42, baseType: !1140)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1785, file: !1781, line: 44, baseType: !1789, size: 192)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1781, line: 28, size: 192, elements: !1790)
!1790 = !{!1791, !1792}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1789, file: !1781, line: 29, baseType: !584, size: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1789, file: !1781, line: 31, baseType: !375, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1785, file: !1781, line: 49, baseType: !375, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !997, file: !31, line: 1533, baseType: !1780, size: 64, offset: 8512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !997, file: !31, line: 1534, baseType: !773, size: 128, align: 64, offset: 8576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !997, file: !31, line: 1535, baseType: !1797, size: 256, offset: 8704)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1774, line: 102, size: 256, elements: !1798)
!1798 = !{!1799, !1800, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1797, file: !1774, line: 103, baseType: !1157, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1797, file: !1774, line: 104, baseType: !584, size: 128, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1797, file: !1774, line: 105, baseType: !1802, size: 64, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1774, line: 21, baseType: !1803)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !1806}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !997, file: !31, line: 1537, baseType: !1407, size: 192, offset: 8960)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !997, file: !31, line: 1542, baseType: !365, size: 32, offset: 9152)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !997, file: !31, line: 1545, baseType: !1140, offset: 9184)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !997, file: !31, line: 1546, baseType: !584, size: 128, offset: 9216)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !997, file: !31, line: 1548, baseType: !1140, offset: 9344)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !997, file: !31, line: 1549, baseType: !584, size: 128, offset: 9344)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !825, file: !31, line: 624, baseType: !1131, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !825, file: !31, line: 631, baseType: !533, size: 64, offset: 320)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !31, line: 639, baseType: !1816, size: 32, offset: 384)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !31, line: 639, size: 32, elements: !1817)
!1817 = !{!1818, !1820}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1816, file: !31, line: 640, baseType: !1819, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1816, file: !31, line: 641, baseType: !7, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !825, file: !31, line: 643, baseType: !906, size: 32, offset: 416)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !825, file: !31, line: 644, baseType: !924, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !825, file: !31, line: 645, baseType: !927, size: 128, offset: 512)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !825, file: !31, line: 646, baseType: !927, size: 128, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !825, file: !31, line: 647, baseType: !927, size: 128, offset: 768)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !825, file: !31, line: 648, baseType: !1140, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !825, file: !31, line: 649, baseType: !374, size: 16, offset: 896)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !825, file: !31, line: 650, baseType: !418, size: 8, offset: 912)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !825, file: !31, line: 651, baseType: !418, size: 8, offset: 920)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !825, file: !31, line: 652, baseType: !1558, size: 64, offset: 960)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !825, file: !31, line: 659, baseType: !533, size: 64, offset: 1024)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !825, file: !31, line: 660, baseType: !1153, size: 256, offset: 1088)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !825, file: !31, line: 662, baseType: !533, size: 64, offset: 1344)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !825, file: !31, line: 663, baseType: !533, size: 64, offset: 1408)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !825, file: !31, line: 665, baseType: !1036, size: 128, offset: 1472)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !825, file: !31, line: 666, baseType: !584, size: 128, offset: 1600)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !825, file: !31, line: 675, baseType: !584, size: 128, offset: 1728)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !825, file: !31, line: 676, baseType: !584, size: 128, offset: 1856)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !825, file: !31, line: 677, baseType: !584, size: 128, offset: 1984)
!1840 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !31, line: 678, baseType: !1841, size: 128, offset: 2112)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !31, line: 678, size: 128, elements: !1842)
!1842 = !{!1843, !1844}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1841, file: !31, line: 679, baseType: !1032, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1841, file: !31, line: 680, baseType: !773, size: 128, align: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !825, file: !31, line: 682, baseType: !1159, size: 64, offset: 2240)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !825, file: !31, line: 683, baseType: !1159, size: 64, offset: 2304)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !825, file: !31, line: 684, baseType: !559, size: 32, offset: 2368)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !825, file: !31, line: 685, baseType: !559, size: 32, offset: 2400)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !825, file: !31, line: 686, baseType: !559, size: 32, offset: 2432)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !825, file: !31, line: 688, baseType: !559, size: 32, offset: 2464)
!1851 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !31, line: 690, baseType: !1852, size: 64, offset: 2496)
!1852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !31, line: 690, size: 64, elements: !1853)
!1853 = !{!1854, !2091}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1852, file: !31, line: 691, baseType: !1855, size: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1858)
!1858 = !{!1859, !1860, !1864, !1869, !1873, !1874, !1875, !1879, !1892, !1893, !1910, !1914, !1915, !1919, !1920, !1924, !1929, !1930, !1934, !1938, !2046, !2050, !2054, !2058, !2059, !2065, !2069, !2074, !2078, !2082, !2086, !2090}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1857, file: !31, line: 1823, baseType: !388, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1857, file: !31, line: 1824, baseType: !1861, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!924, !760, !924, !365}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1857, file: !31, line: 1825, baseType: !1865, size: 64, offset: 128)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!969, !760, !406, !972, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1857, file: !31, line: 1826, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!969, !760, !384, !972, !1868}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1857, file: !31, line: 1827, baseType: !1228, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1857, file: !31, line: 1828, baseType: !1228, size: 64, offset: 320)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1857, file: !31, line: 1829, baseType: !1876, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!365, !1231, !883}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1857, file: !31, line: 1830, baseType: !1880, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!365, !760, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1885)
!1885 = !{!1886, !1891}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1884, file: !31, line: 1777, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1888)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!365, !1883, !384, !365, !924, !366, !7}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1884, file: !31, line: 1778, baseType: !924, size: 64, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1857, file: !31, line: 1831, baseType: !1880, size: 64, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1857, file: !31, line: 1832, baseType: !1894, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!1897, !760, !1899}
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1898, line: 52, baseType: !7)
!1898 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1901, line: 43, size: 128, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1902 = !{!1903, !1909}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1900, file: !1901, line: 44, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1901, line: 37, baseType: !1905)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !760, !1908, !1899}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1900, file: !1901, line: 45, baseType: !1897, size: 32, offset: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1857, file: !31, line: 1833, baseType: !1911, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!375, !760, !7, !533}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1857, file: !31, line: 1834, baseType: !1911, size: 64, offset: 704)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1857, file: !31, line: 1835, baseType: !1916, size: 64, offset: 768)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!365, !760, !726}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1857, file: !31, line: 1836, baseType: !533, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1857, file: !31, line: 1837, baseType: !1921, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!365, !824, !760}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1857, file: !31, line: 1838, baseType: !1925, size: 64, offset: 960)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!365, !760, !1928}
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !364)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1857, file: !31, line: 1839, baseType: !1921, size: 64, offset: 1024)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1857, file: !31, line: 1840, baseType: !1931, size: 64, offset: 1088)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!365, !760, !924, !924, !365}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1857, file: !31, line: 1841, baseType: !1935, size: 64, offset: 1152)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!365, !365, !760, !365}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1857, file: !31, line: 1842, baseType: !1939, size: 64, offset: 1216)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!365, !760, !365, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1944)
!1944 = !{!1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1976, !1977, !1978, !1991, !2022}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1943, file: !31, line: 1063, baseType: !1942, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1943, file: !31, line: 1064, baseType: !584, size: 128, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1943, file: !31, line: 1065, baseType: !1036, size: 128, offset: 192)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1943, file: !31, line: 1066, baseType: !584, size: 128, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1943, file: !31, line: 1069, baseType: !584, size: 128, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1943, file: !31, line: 1072, baseType: !1928, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1943, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1943, file: !31, line: 1074, baseType: !420, size: 8, offset: 672)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1943, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1943, file: !31, line: 1076, baseType: !365, size: 32, offset: 736)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1943, file: !31, line: 1077, baseType: !1639, size: 128, offset: 768)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1943, file: !31, line: 1078, baseType: !760, size: 64, offset: 896)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1943, file: !31, line: 1079, baseType: !924, size: 64, offset: 960)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1943, file: !31, line: 1080, baseType: !924, size: 64, offset: 1024)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1943, file: !31, line: 1082, baseType: !1960, size: 64, offset: 1088)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1962)
!1962 = !{!1963, !1971, !1972, !1973, !1974, !1975}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1961, file: !31, line: 1315, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1965, line: 20, baseType: !1966)
!1965 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1965, line: 11, elements: !1967)
!1967 = !{!1968}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1966, file: !1965, line: 12, baseType: !1969)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !518, line: 33, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !518, line: 31, elements: !520)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1961, file: !31, line: 1316, baseType: !365, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1961, file: !31, line: 1317, baseType: !365, size: 32, offset: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1961, file: !31, line: 1318, baseType: !1960, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1961, file: !31, line: 1319, baseType: !760, size: 64, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1961, file: !31, line: 1320, baseType: !773, size: 128, align: 64, offset: 192)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1943, file: !31, line: 1084, baseType: !533, size: 64, offset: 1152)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1943, file: !31, line: 1085, baseType: !533, size: 64, offset: 1216)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1943, file: !31, line: 1087, baseType: !1979, size: 64, offset: 1280)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1982)
!1982 = !{!1983, !1987}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1981, file: !31, line: 1012, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{null, !1942, !1942}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1981, file: !31, line: 1013, baseType: !1988, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{null, !1942}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1943, file: !31, line: 1088, baseType: !1992, size: 64, offset: 1344)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1995)
!1995 = !{!1996, !2000, !2004, !2005, !2009, !2013, !2017, !2021}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1994, file: !31, line: 1017, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!1928, !1928}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1994, file: !31, line: 1018, baseType: !2001, size: 64, offset: 64)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{null, !1928}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1994, file: !31, line: 1019, baseType: !1988, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1994, file: !31, line: 1020, baseType: !2006, size: 64, offset: 192)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DISubroutineType(types: !2008)
!2008 = !{!365, !1942, !365}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1994, file: !31, line: 1021, baseType: !2010, size: 64, offset: 256)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!883, !1942}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1994, file: !31, line: 1022, baseType: !2014, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{!365, !1942, !365, !587}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1994, file: !31, line: 1023, baseType: !2018, size: 64, offset: 384)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !1942, !1205}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1994, file: !31, line: 1024, baseType: !2010, size: 64, offset: 448)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1943, file: !31, line: 1097, baseType: !2023, size: 256, offset: 1408)
!2023 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !31, line: 1089, size: 256, elements: !2024)
!2024 = !{!2025, !2034, !2040}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2023, file: !31, line: 1090, baseType: !2026, size: 256)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2027, line: 10, size: 256, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !{!2029, !2030, !2033}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2026, file: !2027, line: 11, baseType: !548, size: 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2026, file: !2027, line: 12, baseType: !2031, size: 64, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2027, line: 5, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2026, file: !2027, line: 13, baseType: !584, size: 128, offset: 128)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2023, file: !31, line: 1091, baseType: !2035, size: 64)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2027, line: 17, size: 64, elements: !2036)
!2036 = !{!2037}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2035, file: !2027, line: 18, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2027, line: 16, flags: DIFlagFwdDecl)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2023, file: !31, line: 1096, baseType: !2041, size: 192)
!2041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2023, file: !31, line: 1092, size: 192, elements: !2042)
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2041, file: !31, line: 1093, baseType: !584, size: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2041, file: !31, line: 1094, baseType: !365, size: 32, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2041, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1857, file: !31, line: 1843, baseType: !2047, size: 64, offset: 1280)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!969, !760, !1119, !365, !972, !1868, !365}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1857, file: !31, line: 1844, baseType: !2051, size: 64, offset: 1344)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!533, !760, !533, !533, !533, !533}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1857, file: !31, line: 1845, baseType: !2055, size: 64, offset: 1408)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!365, !365}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1857, file: !31, line: 1846, baseType: !1939, size: 64, offset: 1472)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1857, file: !31, line: 1847, baseType: !2060, size: 64, offset: 1536)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!969, !2063, !760, !1868, !972, !7}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !540, line: 53, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1857, file: !31, line: 1848, baseType: !2066, size: 64, offset: 1600)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!969, !760, !1868, !2063, !972, !7}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1857, file: !31, line: 1849, baseType: !2070, size: 64, offset: 1664)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!365, !760, !375, !2073, !1205}
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1857, file: !31, line: 1850, baseType: !2075, size: 64, offset: 1728)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!375, !760, !365, !924, !924}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1857, file: !31, line: 1852, baseType: !2079, size: 64, offset: 1792)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{null, !1110, !760}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1857, file: !31, line: 1856, baseType: !2083, size: 64, offset: 1856)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!969, !760, !924, !760, !924, !972, !7}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1857, file: !31, line: 1858, baseType: !2087, size: 64, offset: 1920)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!924, !760, !924, !760, !924, !924, !7}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1857, file: !31, line: 1861, baseType: !1931, size: 64, offset: 1984)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1852, file: !31, line: 692, baseType: !1063, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !825, file: !31, line: 694, baseType: !2093, size: 64, offset: 2560)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2094, file: !31, line: 1101, baseType: !1140)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2094, file: !31, line: 1102, baseType: !584, size: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2094, file: !31, line: 1103, baseType: !584, size: 128, offset: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2094, file: !31, line: 1104, baseType: !584, size: 128, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !825, file: !31, line: 695, baseType: !1132, size: 1216, align: 64, offset: 2624)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !825, file: !31, line: 696, baseType: !584, size: 128, offset: 3840)
!2102 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !31, line: 697, baseType: !2103, size: 64, offset: 3968)
!2103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !31, line: 697, size: 64, elements: !2104)
!2104 = !{!2105, !2106, !2107, !2418, !2419}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2103, file: !31, line: 698, baseType: !2063, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2103, file: !31, line: 699, baseType: !1583, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2103, file: !31, line: 700, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2110, line: 14, size: 832, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2413, !2414, !2415, !2416, !2417}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2109, file: !2110, line: 15, baseType: !2113, size: 512)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2114, line: 64, size: 512, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2120, !2162, !2264, !2403, !2408, !2409, !2410, !2411, !2412}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2113, file: !2114, line: 65, baseType: !384, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2113, file: !2114, line: 66, baseType: !584, size: 128, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2113, file: !2114, line: 67, baseType: !2119, size: 64, offset: 192)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2113, file: !2114, line: 68, baseType: !2121, size: 64, offset: 256)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2114, line: 192, size: 704, elements: !2123)
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2122, file: !2114, line: 193, baseType: !584, size: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2122, file: !2114, line: 194, baseType: !1140, offset: 128)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2122, file: !2114, line: 195, baseType: !2113, size: 512, offset: 128)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2122, file: !2114, line: 196, baseType: !2128, size: 64, offset: 640)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2114, line: 156, size: 192, elements: !2131)
!2131 = !{!2132, !2137, !2142}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2130, file: !2114, line: 157, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!365, !2121, !2119}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !2114, line: 158, baseType: !2138, size: 64, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{!384, !2121, !2119}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2130, file: !2114, line: 159, baseType: !2143, size: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!365, !2121, !2119, !2147}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2114, line: 148, size: 20736, elements: !2149)
!2149 = !{!2150, !2152, !2156, !2157, !2161}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2148, file: !2114, line: 149, baseType: !2151, size: 192)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 192, elements: !1048)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2148, file: !2114, line: 150, baseType: !2153, size: 4096, offset: 192)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !406, size: 4096, elements: !2154)
!2154 = !{!2155}
!2155 = !DISubrange(count: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2148, file: !2114, line: 151, baseType: !365, size: 32, offset: 4288)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2148, file: !2114, line: 152, baseType: !2158, size: 16384, offset: 4320)
!2158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 16384, elements: !2159)
!2159 = !{!2160}
!2160 = !DISubrange(count: 2048)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2148, file: !2114, line: 153, baseType: !365, size: 32, offset: 20704)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2113, file: !2114, line: 69, baseType: !2163, size: 64, offset: 320)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2114, line: 138, size: 448, elements: !2165)
!2165 = !{!2166, !2170, !2189, !2191, !2224, !2254, !2258}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2164, file: !2114, line: 139, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !2119}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2164, file: !2114, line: 140, baseType: !2171, size: 64, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2174, line: 230, size: 128, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !{!2176, !2185}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2173, file: !2174, line: 231, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!969, !2119, !2180, !406}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2174, line: 30, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2181, file: !2174, line: 31, baseType: !384, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2181, file: !2174, line: 32, baseType: !828, size: 16, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2173, file: !2174, line: 232, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!969, !2119, !2180, !384, !972}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2164, file: !2114, line: 141, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2164, file: !2114, line: 142, baseType: !2192, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2174, line: 84, size: 320, elements: !2196)
!2196 = !{!2197, !2198, !2202, !2221, !2222}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2195, file: !2174, line: 85, baseType: !384, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2195, file: !2174, line: 86, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!828, !2119, !2180, !365}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2195, file: !2174, line: 88, baseType: !2203, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!828, !2119, !2206, !365}
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2174, line: 168, size: 448, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2216, !2217}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2207, file: !2174, line: 169, baseType: !2181, size: 128)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2207, file: !2174, line: 170, baseType: !972, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2207, file: !2174, line: 171, baseType: !364, size: 64, offset: 192)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2207, file: !2174, line: 172, baseType: !2213, size: 64, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!969, !760, !2119, !2206, !406, !924, !972}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2207, file: !2174, line: 174, baseType: !2213, size: 64, offset: 320)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2207, file: !2174, line: 176, baseType: !2218, size: 64, offset: 384)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!365, !760, !2119, !2206, !726}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2195, file: !2174, line: 90, baseType: !2190, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2195, file: !2174, line: 91, baseType: !2223, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2164, file: !2114, line: 143, baseType: !2225, size: 64, offset: 256)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!2228, !2119}
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2230)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !2231)
!2231 = !{!2232, !2233, !2237, !2241, !2249, !2253}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2230, file: !25, line: 40, baseType: !24, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2230, file: !25, line: 41, baseType: !2234, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!883}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2230, file: !25, line: 42, baseType: !2238, size: 64, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!364}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2230, file: !25, line: 43, baseType: !2242, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!2245, !2247}
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2230, file: !25, line: 44, baseType: !2250, size: 64, offset: 256)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2245}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2230, file: !25, line: 45, baseType: !408, size: 64, offset: 320)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2164, file: !2114, line: 144, baseType: !2255, size: 64, offset: 320)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2245, !2119}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2164, file: !2114, line: 145, baseType: !2259, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{null, !2119, !2262, !2263}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2113, file: !2114, line: 70, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1016, line: 123, size: 1024, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2396, !2397, !2398, !2399, !2400}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2266, file: !1016, line: 124, baseType: !559, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2266, file: !1016, line: 125, baseType: !559, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2266, file: !1016, line: 135, baseType: !2265, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2266, file: !1016, line: 136, baseType: !384, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2266, file: !1016, line: 138, baseType: !530, size: 192, align: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2266, file: !1016, line: 140, baseType: !2245, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2266, file: !1016, line: 141, baseType: !7, size: 32, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !1016, line: 142, baseType: !2276, size: 256, offset: 512)
!2276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !1016, line: 142, size: 256, elements: !2277)
!2277 = !{!2278, !2324, !2328}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2276, file: !1016, line: 143, baseType: !2279, size: 192)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1016, line: 91, size: 192, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2279, file: !1016, line: 92, baseType: !533, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2279, file: !1016, line: 94, baseType: !526, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2279, file: !1016, line: 100, baseType: !2284, size: 64, offset: 128)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1016, line: 180, size: 704, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2296, !2297, !2298, !2322, !2323}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2285, file: !1016, line: 182, baseType: !2265, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2285, file: !1016, line: 183, baseType: !7, size: 32, offset: 64)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2285, file: !1016, line: 186, baseType: !2290, size: 192, offset: 128)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2291, line: 19, size: 192, elements: !2292)
!2291 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2292 = !{!2293, !2294, !2295}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2290, file: !2291, line: 20, baseType: !1136, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2290, file: !2291, line: 21, baseType: !7, size: 32, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2290, file: !2291, line: 22, baseType: !7, size: 32, offset: 160)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2285, file: !1016, line: 187, baseType: !548, size: 32, offset: 320)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2285, file: !1016, line: 188, baseType: !548, size: 32, offset: 352)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2285, file: !1016, line: 189, baseType: !2299, size: 64, offset: 384)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1016, line: 168, size: 320, elements: !2301)
!2301 = !{!2302, !2306, !2310, !2314, !2318}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2300, file: !1016, line: 169, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!365, !1110, !2284}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2300, file: !1016, line: 171, baseType: !2307, size: 64, offset: 64)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!365, !2265, !384, !828}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2300, file: !1016, line: 173, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!365, !2265}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2300, file: !1016, line: 174, baseType: !2315, size: 64, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!365, !2265, !2265, !384}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2300, file: !1016, line: 176, baseType: !2319, size: 64, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!365, !1110, !2265, !2284}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2285, file: !1016, line: 192, baseType: !584, size: 128, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2285, file: !1016, line: 194, baseType: !1639, size: 128, offset: 576)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2276, file: !1016, line: 144, baseType: !2325, size: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1016, line: 103, size: 64, elements: !2326)
!2326 = !{!2327}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2325, file: !1016, line: 104, baseType: !2265, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2276, file: !1016, line: 145, baseType: !2329, size: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1016, line: 107, size: 256, elements: !2330)
!2330 = !{!2331, !2391, !2394, !2395}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !1016, line: 108, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2334)
!2334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1016, line: 217, size: 768, elements: !2335)
!2335 = !{!2336, !2356, !2360, !2364, !2368, !2372, !2376, !2380, !2381, !2382, !2383, !2387}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2334, file: !1016, line: 222, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DISubroutineType(types: !2339)
!2339 = !{!365, !2340}
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1016, line: 197, size: 1088, elements: !2342)
!2342 = !{!2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2341, file: !1016, line: 199, baseType: !2265, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2341, file: !1016, line: 200, baseType: !760, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2341, file: !1016, line: 201, baseType: !1110, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2341, file: !1016, line: 202, baseType: !364, size: 64, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2341, file: !1016, line: 205, baseType: !1407, size: 192, offset: 256)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2341, file: !1016, line: 206, baseType: !1407, size: 192, offset: 448)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2341, file: !1016, line: 207, baseType: !365, size: 32, offset: 640)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2341, file: !1016, line: 208, baseType: !584, size: 128, offset: 704)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2341, file: !1016, line: 209, baseType: !406, size: 64, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2341, file: !1016, line: 211, baseType: !972, size: 64, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2341, file: !1016, line: 212, baseType: !883, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2341, file: !1016, line: 213, baseType: !883, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2341, file: !1016, line: 214, baseType: !755, size: 64, offset: 1024)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2334, file: !1016, line: 223, baseType: !2357, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !2340}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2334, file: !1016, line: 236, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DISubroutineType(types: !2363)
!2363 = !{!365, !1110, !364}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2334, file: !1016, line: 238, baseType: !2365, size: 64, offset: 192)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!364, !1110, !1868}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2334, file: !1016, line: 239, baseType: !2369, size: 64, offset: 256)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!364, !1110, !364, !1868}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2334, file: !1016, line: 240, baseType: !2373, size: 64, offset: 320)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{null, !1110, !364}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2334, file: !1016, line: 242, baseType: !2377, size: 64, offset: 384)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!969, !2340, !406, !972, !924}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2334, file: !1016, line: 252, baseType: !972, size: 64, offset: 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2334, file: !1016, line: 259, baseType: !883, size: 8, offset: 512)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2334, file: !1016, line: 260, baseType: !2377, size: 64, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2334, file: !1016, line: 263, baseType: !2384, size: 64, offset: 640)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!1897, !2340, !1899}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2334, file: !1016, line: 266, baseType: !2388, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!365, !2340, !726}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2329, file: !1016, line: 109, baseType: !2392, size: 64, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1016, line: 31, flags: DIFlagFwdDecl)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2329, file: !1016, line: 110, baseType: !924, size: 64, offset: 128)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2329, file: !1016, line: 111, baseType: !2265, size: 64, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2266, file: !1016, line: 148, baseType: !364, size: 64, offset: 768)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2266, file: !1016, line: 154, baseType: !366, size: 64, offset: 832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2266, file: !1016, line: 156, baseType: !374, size: 16, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2266, file: !1016, line: 157, baseType: !828, size: 16, offset: 912)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2266, file: !1016, line: 158, baseType: !2401, size: 64, offset: 960)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1016, line: 32, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2113, file: !2114, line: 71, baseType: !2404, size: 32, offset: 448)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2405, line: 19, size: 32, elements: !2406)
!2405 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2406 = !{!2407}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2404, file: !2405, line: 20, baseType: !554, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2113, file: !2114, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2113, file: !2114, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2113, file: !2114, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2113, file: !2114, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2113, file: !2114, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2109, file: !2110, line: 16, baseType: !388, size: 64, offset: 512)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2109, file: !2110, line: 17, baseType: !1855, size: 64, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2109, file: !2110, line: 18, baseType: !584, size: 128, offset: 640)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2109, file: !2110, line: 19, baseType: !906, size: 32, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2109, file: !2110, line: 20, baseType: !7, size: 32, offset: 800)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2103, file: !31, line: 701, baseType: !406, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2103, file: !31, line: 702, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !825, file: !31, line: 705, baseType: !549, size: 32, offset: 4032)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !825, file: !31, line: 708, baseType: !549, size: 32, offset: 4064)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !825, file: !31, line: 709, baseType: !1672, size: 64, offset: 4096)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !825, file: !31, line: 720, baseType: !364, size: 64, offset: 4160)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !791, file: !788, line: 98, baseType: !2425, size: 256, offset: 448)
!2425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !1676)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !791, file: !788, line: 101, baseType: !2427, size: 32, offset: 704)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2428, line: 25, size: 32, elements: !2429)
!2428 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2429 = !{!2430}
!2430 = !DIDerivedType(tag: DW_TAG_member, scope: !2427, file: !2428, line: 26, baseType: !2431, size: 32)
!2431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2427, file: !2428, line: 26, size: 32, elements: !2432)
!2432 = !{!2433}
!2433 = !DIDerivedType(tag: DW_TAG_member, scope: !2431, file: !2428, line: 30, baseType: !2434, size: 32)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2431, file: !2428, line: 30, size: 32, elements: !2435)
!2435 = !{!2436, !2437}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2434, file: !2428, line: 31, baseType: !1140)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2434, file: !2428, line: 32, baseType: !365, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !791, file: !788, line: 102, baseType: !1693, size: 64, offset: 768)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !791, file: !788, line: 103, baseType: !996, size: 64, offset: 832)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !791, file: !788, line: 104, baseType: !533, size: 64, offset: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !791, file: !788, line: 105, baseType: !364, size: 64, offset: 960)
!2442 = !DIDerivedType(tag: DW_TAG_member, scope: !791, file: !788, line: 107, baseType: !2443, size: 128, offset: 1024)
!2443 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !788, line: 107, size: 128, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2443, file: !788, line: 108, baseType: !584, size: 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2443, file: !788, line: 109, baseType: !1908, size: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !791, file: !788, line: 111, baseType: !584, size: 128, offset: 1152)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !791, file: !788, line: 112, baseType: !584, size: 128, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !791, file: !788, line: 120, baseType: !2450, size: 128, offset: 1408)
!2450 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !791, file: !788, line: 116, size: 128, elements: !2451)
!2451 = !{!2452, !2453, !2454}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2450, file: !788, line: 117, baseType: !1036, size: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2450, file: !788, line: 118, baseType: !800, size: 128)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2450, file: !788, line: 119, baseType: !773, size: 128, align: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !761, file: !31, line: 922, baseType: !824, size: 64, offset: 256)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !761, file: !31, line: 923, baseType: !1855, size: 64, offset: 320)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !761, file: !31, line: 929, baseType: !1140, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !761, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !761, file: !31, line: 931, baseType: !1157, size: 64, offset: 448)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !761, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !761, file: !31, line: 933, baseType: !1689, size: 32, offset: 544)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !761, file: !31, line: 934, baseType: !1407, size: 192, offset: 576)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !761, file: !31, line: 935, baseType: !924, size: 64, offset: 768)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !761, file: !31, line: 936, baseType: !2465, size: 192, offset: 832)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2466)
!2466 = !{!2467, !2468, !2490, !2491, !2492, !2493}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2465, file: !31, line: 886, baseType: !1964)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2465, file: !31, line: 887, baseType: !2469, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !2471)
!2471 = !{!2472, !2473, !2474, !2475, !2479, !2480, !2481, !2482}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2470, file: !40, line: 61, baseType: !554, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2470, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2470, file: !40, line: 63, baseType: !1140, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2470, file: !40, line: 65, baseType: !2476, size: 256, offset: 64)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1032, size: 256, elements: !2477)
!2477 = !{!2478}
!2478 = !DISubrange(count: 4)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2470, file: !40, line: 66, baseType: !1032, size: 64, offset: 320)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2470, file: !40, line: 68, baseType: !1639, size: 128, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2470, file: !40, line: 69, baseType: !773, size: 128, align: 64, offset: 512)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2470, file: !40, line: 70, baseType: !2483, size: 128, offset: 640)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2484, size: 128, elements: !711)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2484, file: !40, line: 55, baseType: !365, size: 32)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2484, file: !40, line: 56, baseType: !2488, size: 64, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2465, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2465, file: !31, line: 889, baseType: !831, size: 32, offset: 96)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2465, file: !31, line: 889, baseType: !831, size: 32, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2465, file: !31, line: 890, baseType: !365, size: 32, offset: 160)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !761, file: !31, line: 937, baseType: !2495, size: 64, offset: 1024)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2497)
!2497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2498, line: 111, size: 1280, elements: !2499)
!2498 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2519, !2520, !2521, !2522, !2523, !2524, !2634, !2635, !2636, !2637, !2663, !2664, !2674}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2497, file: !2498, line: 112, baseType: !559, size: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2497, file: !2498, line: 120, baseType: !831, size: 32, offset: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2497, file: !2498, line: 121, baseType: !839, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2497, file: !2498, line: 122, baseType: !831, size: 32, offset: 96)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2497, file: !2498, line: 123, baseType: !839, size: 32, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2497, file: !2498, line: 124, baseType: !831, size: 32, offset: 160)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2497, file: !2498, line: 125, baseType: !839, size: 32, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2497, file: !2498, line: 126, baseType: !831, size: 32, offset: 224)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2497, file: !2498, line: 127, baseType: !839, size: 32, offset: 256)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2497, file: !2498, line: 128, baseType: !7, size: 32, offset: 288)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2497, file: !2498, line: 129, baseType: !2511, size: 64, offset: 320)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2512, line: 26, baseType: !2513)
!2512 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2512, line: 24, size: 64, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2513, file: !2512, line: 25, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !549, size: 64, elements: !2517)
!2517 = !{!2518}
!2518 = !DISubrange(count: 2)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2497, file: !2498, line: 130, baseType: !2511, size: 64, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2497, file: !2498, line: 131, baseType: !2511, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2497, file: !2498, line: 132, baseType: !2511, size: 64, offset: 512)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2497, file: !2498, line: 133, baseType: !2511, size: 64, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2497, file: !2498, line: 135, baseType: !420, size: 8, offset: 640)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2497, file: !2498, line: 137, baseType: !2525, size: 64, offset: 704)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2527, line: 189, size: 1664, elements: !2528)
!2527 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2528 = !{!2529, !2530, !2535, !2540, !2541, !2544, !2545, !2550, !2551, !2552, !2553, !2555, !2556, !2557, !2559, !2560, !2598, !2619}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2526, file: !2527, line: 190, baseType: !554, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2526, file: !2527, line: 191, baseType: !2531, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2527, line: 28, baseType: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !363, line: 98, baseType: !2533)
!2533 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !367, line: 20, baseType: !2534)
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !369, line: 26, baseType: !365)
!2535 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !2527, line: 192, baseType: !2536, size: 192, offset: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !2527, line: 192, size: 192, elements: !2537)
!2537 = !{!2538, !2539}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2536, file: !2527, line: 193, baseType: !584, size: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2536, file: !2527, line: 194, baseType: !530, size: 192, align: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2526, file: !2527, line: 199, baseType: !1153, size: 256, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2526, file: !2527, line: 200, baseType: !2542, size: 64, offset: 512)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2527, line: 200, flags: DIFlagFwdDecl)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2526, file: !2527, line: 201, baseType: !364, size: 64, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !2527, line: 202, baseType: !2546, size: 64, offset: 640)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !2527, line: 202, size: 64, elements: !2547)
!2547 = !{!2548, !2549}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2546, file: !2527, line: 203, baseType: !931, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2546, file: !2527, line: 204, baseType: !931, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2526, file: !2527, line: 206, baseType: !931, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2526, file: !2527, line: 207, baseType: !831, size: 32, offset: 768)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2526, file: !2527, line: 208, baseType: !839, size: 32, offset: 800)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2526, file: !2527, line: 209, baseType: !2554, size: 32, offset: 832)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2527, line: 31, baseType: !950)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2526, file: !2527, line: 210, baseType: !374, size: 16, offset: 864)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2526, file: !2527, line: 211, baseType: !374, size: 16, offset: 880)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2526, file: !2527, line: 215, baseType: !2558, size: 16, offset: 896)
!2558 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2526, file: !2527, line: 222, baseType: !533, size: 64, offset: 960)
!2560 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !2527, line: 239, baseType: !2561, size: 320, offset: 1024)
!2561 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !2527, line: 239, size: 320, elements: !2562)
!2562 = !{!2563, !2590}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2561, file: !2527, line: 240, baseType: !2564, size: 320)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2527, line: 108, size: 320, elements: !2565)
!2565 = !{!2566, !2567, !2579, !2582, !2589}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2564, file: !2527, line: 110, baseType: !533, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, scope: !2564, file: !2527, line: 111, baseType: !2568, size: 64, offset: 64)
!2568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2564, file: !2527, line: 111, size: 64, elements: !2569)
!2569 = !{!2570, !2578}
!2570 = !DIDerivedType(tag: DW_TAG_member, scope: !2568, file: !2527, line: 112, baseType: !2571, size: 64)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2568, file: !2527, line: 112, size: 64, elements: !2572)
!2572 = !{!2573, !2574}
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2571, file: !2527, line: 114, baseType: !372, size: 16)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2571, file: !2527, line: 115, baseType: !2575, size: 48, offset: 16)
!2575 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 48, elements: !2576)
!2576 = !{!2577}
!2577 = !DISubrange(count: 6)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2568, file: !2527, line: 121, baseType: !533, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2564, file: !2527, line: 123, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2527, line: 96, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2564, file: !2527, line: 124, baseType: !2583, size: 64, offset: 192)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2527, line: 102, size: 192, elements: !2585)
!2585 = !{!2586, !2587, !2588}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2584, file: !2527, line: 103, baseType: !773, size: 128, align: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2584, file: !2527, line: 104, baseType: !554, size: 32, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2584, file: !2527, line: 105, baseType: !883, size: 8, offset: 160)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2564, file: !2527, line: 125, baseType: !384, size: 64, offset: 256)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2561, file: !2527, line: 241, baseType: !2591, size: 320)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2561, file: !2527, line: 241, size: 320, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2591, file: !2527, line: 242, baseType: !533, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2591, file: !2527, line: 243, baseType: !533, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2591, file: !2527, line: 244, baseType: !2580, size: 64, offset: 128)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2591, file: !2527, line: 245, baseType: !2583, size: 64, offset: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2591, file: !2527, line: 246, baseType: !406, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2526, file: !2527, line: 254, baseType: !2599, size: 256, offset: 1344)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2526, file: !2527, line: 254, size: 256, elements: !2600)
!2600 = !{!2601, !2607}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2599, file: !2527, line: 255, baseType: !2602, size: 256)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2527, line: 128, size: 256, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2602, file: !2527, line: 129, baseType: !364, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2602, file: !2527, line: 130, baseType: !2606, size: 256)
!2606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 256, elements: !2477)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !2527, line: 256, baseType: !2608, size: 256)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !2527, line: 256, size: 256, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2608, file: !2527, line: 258, baseType: !584, size: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2608, file: !2527, line: 259, baseType: !2612, size: 128, offset: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2613, line: 22, size: 128, elements: !2614)
!2613 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2614 = !{!2615, !2618}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2612, file: !2613, line: 23, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2613, line: 23, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2612, file: !2613, line: 24, baseType: !533, size: 64, offset: 64)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2526, file: !2527, line: 274, baseType: !2620, size: 64, offset: 1600)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2527, line: 170, size: 192, elements: !2622)
!2622 = !{!2623, !2632, !2633}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2621, file: !2527, line: 171, baseType: !2624, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2527, line: 165, baseType: !2625)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DISubroutineType(types: !2627)
!2627 = !{!365, !2525, !2628, !2630, !2525}
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2581)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2621, file: !2527, line: 172, baseType: !2525, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2621, file: !2527, line: 173, baseType: !2580, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2497, file: !2498, line: 138, baseType: !2525, size: 64, offset: 768)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2497, file: !2498, line: 139, baseType: !2525, size: 64, offset: 832)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2497, file: !2498, line: 140, baseType: !2525, size: 64, offset: 896)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2497, file: !2498, line: 145, baseType: !2638, size: 64, offset: 960)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2640, line: 13, size: 896, elements: !2641)
!2640 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2639, file: !2640, line: 14, baseType: !554, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2639, file: !2640, line: 15, baseType: !559, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2639, file: !2640, line: 16, baseType: !559, size: 32, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2639, file: !2640, line: 21, baseType: !1157, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2639, file: !2640, line: 27, baseType: !533, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2639, file: !2640, line: 28, baseType: !533, size: 64, offset: 256)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2639, file: !2640, line: 29, baseType: !1157, size: 64, offset: 320)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2639, file: !2640, line: 32, baseType: !1036, size: 128, offset: 384)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2639, file: !2640, line: 33, baseType: !831, size: 32, offset: 512)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2639, file: !2640, line: 37, baseType: !1157, size: 64, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2639, file: !2640, line: 44, baseType: !2653, size: 256, offset: 640)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2654, line: 15, size: 256, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2653, file: !2654, line: 16, baseType: !512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2653, file: !2654, line: 18, baseType: !365, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2653, file: !2654, line: 19, baseType: !365, size: 32, offset: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2653, file: !2654, line: 20, baseType: !365, size: 32, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2653, file: !2654, line: 21, baseType: !365, size: 32, offset: 96)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2653, file: !2654, line: 22, baseType: !533, size: 64, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2653, file: !2654, line: 23, baseType: !533, size: 64, offset: 192)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2497, file: !2498, line: 146, baseType: !1777, size: 64, offset: 1024)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2497, file: !2498, line: 147, baseType: !2665, size: 64, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2498, line: 25, size: 64, elements: !2667)
!2667 = !{!2668, !2669, !2670}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2666, file: !2498, line: 26, baseType: !559, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2666, file: !2498, line: 27, baseType: !365, size: 32, offset: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2666, file: !2498, line: 28, baseType: !2671, offset: 64)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, elements: !2672)
!2672 = !{!2673}
!2673 = !DISubrange(count: 0)
!2674 = !DIDerivedType(tag: DW_TAG_member, scope: !2497, file: !2498, line: 149, baseType: !2675, size: 128, offset: 1152)
!2675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2497, file: !2498, line: 149, size: 128, elements: !2676)
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2675, file: !2498, line: 150, baseType: !365, size: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2675, file: !2498, line: 151, baseType: !773, size: 128, align: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !761, file: !31, line: 938, baseType: !2680, size: 256, offset: 1088)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2680, file: !31, line: 897, baseType: !533, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2680, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2680, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2680, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2680, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2680, file: !31, line: 904, baseType: !924, size: 64, offset: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !761, file: !31, line: 940, baseType: !366, size: 64, offset: 1344)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !761, file: !31, line: 945, baseType: !364, size: 64, offset: 1408)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !761, file: !31, line: 949, baseType: !584, size: 128, offset: 1472)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !761, file: !31, line: 950, baseType: !584, size: 128, offset: 1600)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !761, file: !31, line: 952, baseType: !1131, size: 64, offset: 1728)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !761, file: !31, line: 953, baseType: !1291, size: 32, offset: 1792)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !761, file: !31, line: 954, baseType: !1291, size: 32, offset: 1824)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !727, file: !720, line: 362, baseType: !364, size: 64, offset: 1344)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !727, file: !720, line: 365, baseType: !1157, size: 64, offset: 1408)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !727, file: !720, line: 373, baseType: !2698, offset: 1472)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !720, line: 296, elements: !520)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !723, file: !720, line: 391, baseType: !526, size: 64, offset: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !723, file: !720, line: 392, baseType: !366, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !723, file: !720, line: 394, baseType: !2051, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !723, file: !720, line: 398, baseType: !533, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !723, file: !720, line: 399, baseType: !533, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !723, file: !720, line: 405, baseType: !533, size: 64, offset: 384)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !723, file: !720, line: 406, baseType: !533, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !723, file: !720, line: 407, baseType: !2707, size: 64, offset: 512)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !738, line: 286, baseType: !2709)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 286, size: 64, elements: !2710)
!2710 = !{!2711}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2709, file: !738, line: 286, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !743, line: 18, baseType: !533)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !723, file: !720, line: 416, baseType: !559, size: 32, offset: 576)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !723, file: !720, line: 428, baseType: !559, size: 32, offset: 608)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !723, file: !720, line: 437, baseType: !559, size: 32, offset: 640)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !723, file: !720, line: 447, baseType: !559, size: 32, offset: 672)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !723, file: !720, line: 450, baseType: !1157, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !723, file: !720, line: 452, baseType: !365, size: 32, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !723, file: !720, line: 454, baseType: !1140, offset: 800)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !723, file: !720, line: 457, baseType: !1153, size: 256, offset: 832)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !723, file: !720, line: 459, baseType: !584, size: 128, offset: 1088)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !723, file: !720, line: 466, baseType: !533, size: 64, offset: 1216)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !723, file: !720, line: 467, baseType: !533, size: 64, offset: 1280)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !723, file: !720, line: 469, baseType: !533, size: 64, offset: 1344)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !723, file: !720, line: 470, baseType: !533, size: 64, offset: 1408)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !723, file: !720, line: 471, baseType: !1159, size: 64, offset: 1472)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !723, file: !720, line: 472, baseType: !533, size: 64, offset: 1536)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !723, file: !720, line: 473, baseType: !533, size: 64, offset: 1600)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !723, file: !720, line: 474, baseType: !533, size: 64, offset: 1664)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !723, file: !720, line: 475, baseType: !533, size: 64, offset: 1728)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !723, file: !720, line: 477, baseType: !1140, offset: 1792)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !723, file: !720, line: 478, baseType: !533, size: 64, offset: 1792)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !723, file: !720, line: 478, baseType: !533, size: 64, offset: 1856)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !723, file: !720, line: 478, baseType: !533, size: 64, offset: 1920)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !723, file: !720, line: 478, baseType: !533, size: 64, offset: 1984)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !723, file: !720, line: 479, baseType: !533, size: 64, offset: 2048)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !723, file: !720, line: 479, baseType: !533, size: 64, offset: 2112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !723, file: !720, line: 479, baseType: !533, size: 64, offset: 2176)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !723, file: !720, line: 480, baseType: !533, size: 64, offset: 2240)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !723, file: !720, line: 480, baseType: !533, size: 64, offset: 2304)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !723, file: !720, line: 480, baseType: !533, size: 64, offset: 2368)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !723, file: !720, line: 480, baseType: !533, size: 64, offset: 2432)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !723, file: !720, line: 482, baseType: !2744, size: 2816, offset: 2496)
!2744 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 2816, elements: !2745)
!2745 = !{!2746}
!2746 = !DISubrange(count: 44)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !723, file: !720, line: 488, baseType: !2748, size: 256, offset: 5312)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2749, line: 60, size: 256, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2750 = !{!2751}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2748, file: !2749, line: 61, baseType: !2752, size: 256)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 256, elements: !2477)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !723, file: !720, line: 490, baseType: !2754, size: 64, offset: 5568)
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2755 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !720, line: 490, flags: DIFlagFwdDecl)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !723, file: !720, line: 493, baseType: !2757, size: 896, offset: 5632)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2758, line: 53, baseType: !2759)
!2758 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2758, line: 13, size: 896, elements: !2760)
!2760 = !{!2761, !2762, !2763, !2764, !2767, !2768, !2769, !2770, !2790, !2791, !2792}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2759, file: !2758, line: 18, baseType: !366, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2759, file: !2758, line: 28, baseType: !1159, size: 64, offset: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2759, file: !2758, line: 31, baseType: !1153, size: 256, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2759, file: !2758, line: 32, baseType: !2765, size: 64, offset: 384)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2758, line: 32, flags: DIFlagFwdDecl)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2759, file: !2758, line: 37, baseType: !374, size: 16, offset: 448)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2759, file: !2758, line: 40, baseType: !1407, size: 192, offset: 512)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2759, file: !2758, line: 41, baseType: !364, size: 64, offset: 704)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2759, file: !2758, line: 42, baseType: !2771, size: 64, offset: 768)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2773)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2774, line: 13, size: 896, elements: !2775)
!2774 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !{!2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2773, file: !2774, line: 14, baseType: !364, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2773, file: !2774, line: 15, baseType: !533, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2773, file: !2774, line: 17, baseType: !533, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2773, file: !2774, line: 17, baseType: !533, size: 64, offset: 192)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2773, file: !2774, line: 19, baseType: !375, size: 64, offset: 256)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2773, file: !2774, line: 21, baseType: !375, size: 64, offset: 320)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2773, file: !2774, line: 22, baseType: !375, size: 64, offset: 384)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2773, file: !2774, line: 23, baseType: !375, size: 64, offset: 448)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2773, file: !2774, line: 24, baseType: !375, size: 64, offset: 512)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2773, file: !2774, line: 25, baseType: !375, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2773, file: !2774, line: 26, baseType: !375, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2773, file: !2774, line: 27, baseType: !375, size: 64, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2773, file: !2774, line: 28, baseType: !375, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2773, file: !2774, line: 29, baseType: !375, size: 64, offset: 832)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2759, file: !2758, line: 44, baseType: !559, size: 32, offset: 832)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2759, file: !2758, line: 50, baseType: !372, size: 16, offset: 864)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2759, file: !2758, line: 51, baseType: !2793, size: 16, offset: 880)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !367, line: 18, baseType: !2794)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !369, line: 23, baseType: !2558)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !723, file: !720, line: 495, baseType: !533, size: 64, offset: 6528)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !723, file: !720, line: 497, baseType: !2797, size: 64, offset: 6592)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !720, line: 381, size: 384, elements: !2799)
!2799 = !{!2800, !2801, !2807}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2798, file: !720, line: 382, baseType: !559, size: 32)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2798, file: !720, line: 383, baseType: !2802, size: 128, offset: 64)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !720, line: 376, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2802, file: !720, line: 377, baseType: !538, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2802, file: !720, line: 378, baseType: !2806, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2798, file: !720, line: 384, baseType: !2808, size: 192, offset: 192)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2809, line: 26, size: 192, elements: !2810)
!2809 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !{!2811, !2812}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2808, file: !2809, line: 27, baseType: !7, size: 32)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2808, file: !2809, line: 28, baseType: !2813, size: 128, offset: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2814, line: 43, size: 128, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2813, file: !2814, line: 44, baseType: !512)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2813, file: !2814, line: 45, baseType: !584, size: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !723, file: !720, line: 500, baseType: !1140, offset: 6656)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !723, file: !720, line: 501, baseType: !2820, size: 64, offset: 6656)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !720, line: 387, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !723, file: !720, line: 516, baseType: !1777, size: 64, offset: 6720)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !723, file: !720, line: 519, baseType: !760, size: 64, offset: 6784)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !723, file: !720, line: 521, baseType: !2825, size: 64, offset: 6848)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !720, line: 521, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !723, file: !720, line: 545, baseType: !559, size: 32, offset: 6912)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !723, file: !720, line: 548, baseType: !883, size: 8, offset: 6944)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !723, file: !720, line: 550, baseType: !2830, offset: 6952)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2831, line: 142, elements: !520)
!2831 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !723, file: !720, line: 554, baseType: !1797, size: 256, offset: 6976)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !723, file: !720, line: 557, baseType: !548, size: 32, offset: 7232)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !719, file: !720, line: 565, baseType: !2835, offset: 7296)
!2835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, elements: !2836)
!2836 = !{!2837}
!2837 = !DISubrange(count: -1)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !539, file: !540, line: 758, baseType: !718, size: 64, offset: 3968)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !539, file: !540, line: 761, baseType: !2840, size: 320, offset: 4032)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2749, line: 34, size: 320, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2840, file: !2749, line: 35, baseType: !366, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2840, file: !2749, line: 36, baseType: !2844, size: 256, offset: 64)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !726, size: 256, elements: !2477)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !539, file: !540, line: 766, baseType: !365, size: 32, offset: 4352)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !539, file: !540, line: 767, baseType: !365, size: 32, offset: 4384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !539, file: !540, line: 768, baseType: !365, size: 32, offset: 4416)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !539, file: !540, line: 770, baseType: !365, size: 32, offset: 4448)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !539, file: !540, line: 772, baseType: !533, size: 64, offset: 4480)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !539, file: !540, line: 775, baseType: !7, size: 32, offset: 4544)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !539, file: !540, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !539, file: !540, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !539, file: !540, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !539, file: !540, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !539, file: !540, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !539, file: !540, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !539, file: !540, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !539, file: !540, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !539, file: !540, line: 831, baseType: !533, size: 64, offset: 4672)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !539, file: !540, line: 833, baseType: !2861, size: 384, offset: 4736)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !2862)
!2862 = !{!2863, !2868}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2861, file: !48, line: 26, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!375, !2867}
!2867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, scope: !2861, file: !48, line: 27, baseType: !2869, size: 320, offset: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2861, file: !48, line: 27, size: 320, elements: !2870)
!2870 = !{!2871, !2881, !2906}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2869, file: !48, line: 36, baseType: !2872, size: 320)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !48, line: 29, size: 320, elements: !2873)
!2873 = !{!2874, !2876, !2877, !2878, !2879, !2880}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2872, file: !48, line: 30, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2872, file: !48, line: 31, baseType: !548, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2872, file: !48, line: 32, baseType: !548, size: 32, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2872, file: !48, line: 33, baseType: !548, size: 32, offset: 128)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2872, file: !48, line: 34, baseType: !366, size: 64, offset: 192)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2872, file: !48, line: 35, baseType: !2875, size: 64, offset: 256)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2869, file: !48, line: 46, baseType: !2882, size: 192)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !48, line: 38, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886, !2905}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2882, file: !48, line: 39, baseType: !670, size: 32)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2882, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!2886 = !DIDerivedType(tag: DW_TAG_member, scope: !2882, file: !48, line: 41, baseType: !2887, size: 64, offset: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2882, file: !48, line: 41, size: 64, elements: !2888)
!2888 = !{!2889, !2897}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2887, file: !48, line: 42, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2892, line: 7, size: 128, elements: !2893)
!2892 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2893 = !{!2894, !2896}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2891, file: !2892, line: 8, baseType: !2895, size: 64)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !672, line: 93, baseType: !620)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2891, file: !2892, line: 9, baseType: !620, size: 64, offset: 64)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2887, file: !48, line: 43, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2900, line: 7, size: 64, elements: !2901)
!2900 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2901 = !{!2902, !2904}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2899, file: !2900, line: 8, baseType: !2903, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2900, line: 5, baseType: !2533)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2899, file: !2900, line: 9, baseType: !2533, size: 32, offset: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2882, file: !48, line: 45, baseType: !366, size: 64, offset: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2869, file: !48, line: 54, baseType: !2907, size: 256)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2869, file: !48, line: 48, size: 256, elements: !2908)
!2908 = !{!2909, !2917, !2918, !2919, !2920}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2907, file: !48, line: 49, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2912, line: 36, size: 64, elements: !2913)
!2912 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2913 = !{!2914, !2915, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2911, file: !2912, line: 37, baseType: !365, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2911, file: !2912, line: 38, baseType: !2558, size: 16, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2911, file: !2912, line: 39, baseType: !2558, size: 16, offset: 48)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2907, file: !48, line: 50, baseType: !365, size: 32, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2907, file: !48, line: 51, baseType: !365, size: 32, offset: 96)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2907, file: !48, line: 52, baseType: !533, size: 64, offset: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2907, file: !48, line: 53, baseType: !533, size: 64, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !539, file: !540, line: 835, baseType: !2922, size: 32, offset: 5120)
!2922 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !363, line: 22, baseType: !2923)
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !672, line: 28, baseType: !365)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !539, file: !540, line: 836, baseType: !2922, size: 32, offset: 5152)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !539, file: !540, line: 840, baseType: !533, size: 64, offset: 5184)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !539, file: !540, line: 849, baseType: !538, size: 64, offset: 5248)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !539, file: !540, line: 852, baseType: !538, size: 64, offset: 5312)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !539, file: !540, line: 857, baseType: !584, size: 128, offset: 5376)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !539, file: !540, line: 858, baseType: !584, size: 128, offset: 5504)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !539, file: !540, line: 859, baseType: !538, size: 64, offset: 5632)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !539, file: !540, line: 867, baseType: !584, size: 128, offset: 5696)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !539, file: !540, line: 868, baseType: !584, size: 128, offset: 5824)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !539, file: !540, line: 871, baseType: !2469, size: 64, offset: 5952)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !539, file: !540, line: 872, baseType: !2935, size: 512, offset: 6016)
!2935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1036, size: 512, elements: !2477)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !539, file: !540, line: 873, baseType: !584, size: 128, offset: 6528)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !539, file: !540, line: 874, baseType: !584, size: 128, offset: 6656)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !539, file: !540, line: 876, baseType: !2939, size: 64, offset: 6784)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !539, file: !540, line: 879, baseType: !1104, size: 64, offset: 6848)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !539, file: !540, line: 882, baseType: !1104, size: 64, offset: 6912)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !539, file: !540, line: 884, baseType: !366, size: 64, offset: 6976)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !539, file: !540, line: 885, baseType: !366, size: 64, offset: 7040)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !539, file: !540, line: 890, baseType: !366, size: 64, offset: 7104)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !539, file: !540, line: 891, baseType: !2946, size: 128, offset: 7168)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !540, line: 242, size: 128, elements: !2947)
!2947 = !{!2948, !2949, !2950}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2946, file: !540, line: 244, baseType: !366, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2946, file: !540, line: 245, baseType: !366, size: 64, offset: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2946, file: !540, line: 246, baseType: !512, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !539, file: !540, line: 900, baseType: !533, size: 64, offset: 7296)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !539, file: !540, line: 901, baseType: !533, size: 64, offset: 7360)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !539, file: !540, line: 904, baseType: !366, size: 64, offset: 7424)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !539, file: !540, line: 907, baseType: !366, size: 64, offset: 7488)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !539, file: !540, line: 910, baseType: !533, size: 64, offset: 7552)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !539, file: !540, line: 911, baseType: !533, size: 64, offset: 7616)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !539, file: !540, line: 914, baseType: !2958, size: 640, offset: 7680)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2959, line: 123, size: 640, elements: !2960)
!2959 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2960 = !{!2961, !2967, !2968}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2958, file: !2959, line: 124, baseType: !2962, size: 576)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, size: 576, elements: !1048)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2959, line: 108, size: 192, elements: !2964)
!2964 = !{!2965, !2966}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2963, file: !2959, line: 109, baseType: !366, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2963, file: !2959, line: 110, baseType: !685, size: 128, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2958, file: !2959, line: 125, baseType: !7, size: 32, offset: 576)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2958, file: !2959, line: 126, baseType: !7, size: 32, offset: 608)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !539, file: !540, line: 917, baseType: !2970, size: 192, offset: 8320)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2959, line: 134, size: 192, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2970, file: !2959, line: 135, baseType: !773, size: 128, align: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2970, file: !2959, line: 136, baseType: !7, size: 32, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !539, file: !540, line: 923, baseType: !2495, size: 64, offset: 8512)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !539, file: !540, line: 926, baseType: !2495, size: 64, offset: 8576)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !539, file: !540, line: 929, baseType: !2495, size: 64, offset: 8640)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !539, file: !540, line: 933, baseType: !2525, size: 64, offset: 8704)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !539, file: !540, line: 943, baseType: !2979, size: 128, offset: 8768)
!2979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 128, elements: !1685)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !539, file: !540, line: 945, baseType: !2981, size: 64, offset: 8896)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !540, line: 49, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !539, file: !540, line: 956, baseType: !2984, size: 64, offset: 8960)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !540, line: 45, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !539, file: !540, line: 959, baseType: !2987, size: 64, offset: 9024)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !540, line: 959, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !539, file: !540, line: 962, baseType: !2990, size: 64, offset: 9088)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !540, line: 66, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !539, file: !540, line: 966, baseType: !2993, size: 64, offset: 9152)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2995, line: 35, flags: DIFlagFwdDecl)
!2995 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !539, file: !540, line: 969, baseType: !2997, size: 64, offset: 9216)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2999, line: 82, size: 7296, elements: !3000)
!2999 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !{!3001, !3002, !3003, !3004, !3005, !3006, !3007, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3036, !3045, !3046, !3048, !3049, !3050, !3053, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3083, !3084, !3091, !3092, !3093, !3094, !3095, !3096}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2998, file: !2999, line: 83, baseType: !554, size: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2998, file: !2999, line: 84, baseType: !559, size: 32, offset: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2998, file: !2999, line: 85, baseType: !365, size: 32, offset: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2998, file: !2999, line: 86, baseType: !584, size: 128, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2998, file: !2999, line: 88, baseType: !1639, size: 128, offset: 256)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2998, file: !2999, line: 91, baseType: !538, size: 64, offset: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2998, file: !2999, line: 94, baseType: !3008, size: 192, offset: 448)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3009, line: 30, size: 192, elements: !3010)
!3009 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3008, file: !3009, line: 31, baseType: !584, size: 128)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3008, file: !3009, line: 32, baseType: !3013, size: 64, offset: 128)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3014, line: 25, baseType: !3015)
!3014 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3014, line: 23, size: 64, elements: !3016)
!3016 = !{!3017}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3015, file: !3014, line: 24, baseType: !710, size: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2998, file: !2999, line: 97, baseType: !1032, size: 64, offset: 640)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2998, file: !2999, line: 100, baseType: !365, size: 32, offset: 704)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2998, file: !2999, line: 106, baseType: !365, size: 32, offset: 736)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2998, file: !2999, line: 107, baseType: !538, size: 64, offset: 768)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2998, file: !2999, line: 110, baseType: !365, size: 32, offset: 832)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2998, file: !2999, line: 111, baseType: !7, size: 32, offset: 864)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2998, file: !2999, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2998, file: !2999, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2998, file: !2999, line: 128, baseType: !365, size: 32, offset: 928)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2998, file: !2999, line: 129, baseType: !584, size: 128, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2998, file: !2999, line: 132, baseType: !628, size: 512, offset: 1088)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2998, file: !2999, line: 133, baseType: !636, size: 64, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2998, file: !2999, line: 140, baseType: !3031, size: 256, offset: 1664)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3032, size: 256, elements: !2517)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2999, line: 38, size: 128, elements: !3033)
!3033 = !{!3034, !3035}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3032, file: !2999, line: 39, baseType: !366, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3032, file: !2999, line: 40, baseType: !366, size: 64, offset: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2998, file: !2999, line: 146, baseType: !3037, size: 192, offset: 1920)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2999, line: 66, size: 192, elements: !3038)
!3038 = !{!3039}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3037, file: !2999, line: 67, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2999, line: 47, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3040, file: !2999, line: 48, baseType: !1159, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3040, file: !2999, line: 49, baseType: !1159, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3040, file: !2999, line: 50, baseType: !1159, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2998, file: !2999, line: 150, baseType: !2958, size: 640, offset: 2112)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2998, file: !2999, line: 153, baseType: !3047, size: 256, offset: 2752)
!3047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2469, size: 256, elements: !2477)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2998, file: !2999, line: 159, baseType: !2469, size: 64, offset: 3008)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2998, file: !2999, line: 162, baseType: !365, size: 32, offset: 3072)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2998, file: !2999, line: 164, baseType: !3051, size: 64, offset: 3136)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2999, line: 164, flags: DIFlagFwdDecl)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2998, file: !2999, line: 175, baseType: !3054, size: 32, offset: 3200)
!3054 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !675, line: 805, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 798, size: 32, elements: !3056)
!3056 = !{!3057, !3058}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3055, file: !675, line: 803, baseType: !795, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3055, file: !675, line: 804, baseType: !1140, offset: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2998, file: !2999, line: 176, baseType: !366, size: 64, offset: 3264)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2998, file: !2999, line: 176, baseType: !366, size: 64, offset: 3328)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2998, file: !2999, line: 176, baseType: !366, size: 64, offset: 3392)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2998, file: !2999, line: 176, baseType: !366, size: 64, offset: 3456)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2998, file: !2999, line: 177, baseType: !366, size: 64, offset: 3520)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2998, file: !2999, line: 178, baseType: !366, size: 64, offset: 3584)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2998, file: !2999, line: 179, baseType: !2946, size: 128, offset: 3648)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2998, file: !2999, line: 180, baseType: !533, size: 64, offset: 3776)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2998, file: !2999, line: 180, baseType: !533, size: 64, offset: 3840)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2998, file: !2999, line: 180, baseType: !533, size: 64, offset: 3904)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2998, file: !2999, line: 180, baseType: !533, size: 64, offset: 3968)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2998, file: !2999, line: 181, baseType: !533, size: 64, offset: 4032)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2998, file: !2999, line: 181, baseType: !533, size: 64, offset: 4096)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2998, file: !2999, line: 181, baseType: !533, size: 64, offset: 4160)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2998, file: !2999, line: 181, baseType: !533, size: 64, offset: 4224)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2998, file: !2999, line: 182, baseType: !533, size: 64, offset: 4288)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2998, file: !2999, line: 182, baseType: !533, size: 64, offset: 4352)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2998, file: !2999, line: 182, baseType: !533, size: 64, offset: 4416)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2998, file: !2999, line: 182, baseType: !533, size: 64, offset: 4480)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2998, file: !2999, line: 183, baseType: !533, size: 64, offset: 4544)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2998, file: !2999, line: 183, baseType: !533, size: 64, offset: 4608)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2998, file: !2999, line: 184, baseType: !3081, offset: 4672)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3082, line: 12, elements: !520)
!3082 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2998, file: !2999, line: 192, baseType: !370, size: 64, offset: 4672)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2998, file: !2999, line: 203, baseType: !3085, size: 2048, offset: 4736)
!3085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3086, size: 2048, elements: !1685)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3087, line: 43, size: 128, elements: !3088)
!3087 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3088 = !{!3089, !3090}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3086, file: !3087, line: 44, baseType: !974, size: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3086, file: !3087, line: 45, baseType: !974, size: 64, offset: 64)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2998, file: !2999, line: 220, baseType: !883, size: 8, offset: 6784)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2998, file: !2999, line: 221, baseType: !2558, size: 16, offset: 6800)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2998, file: !2999, line: 222, baseType: !2558, size: 16, offset: 6816)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2998, file: !2999, line: 224, baseType: !718, size: 64, offset: 6848)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2998, file: !2999, line: 227, baseType: !1407, size: 192, offset: 6912)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2998, file: !2999, line: 233, baseType: !1407, size: 192, offset: 7104)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !539, file: !540, line: 970, baseType: !3098, size: 64, offset: 9280)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2999, line: 20, size: 16576, elements: !3100)
!3100 = !{!3101, !3102, !3103, !3104}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3099, file: !2999, line: 21, baseType: !1140)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3099, file: !2999, line: 22, baseType: !554, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3099, file: !2999, line: 23, baseType: !1639, size: 128, offset: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3099, file: !2999, line: 24, baseType: !3105, size: 16384, offset: 192)
!3105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3106, size: 16384, elements: !2154)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3009, line: 49, size: 256, elements: !3107)
!3107 = !{!3108}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3106, file: !3009, line: 50, baseType: !3109, size: 256)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3009, line: 35, size: 256, elements: !3110)
!3110 = !{!3111, !3118, !3119, !3125}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3109, file: !3009, line: 37, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3113, line: 19, baseType: !3114)
!3113 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3113, line: 18, baseType: !3116)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !365}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3109, file: !3009, line: 38, baseType: !533, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3109, file: !3009, line: 44, baseType: !3120, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3113, line: 22, baseType: !3121)
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3113, line: 21, baseType: !3123)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3109, file: !3009, line: 46, baseType: !3013, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !539, file: !540, line: 971, baseType: !3013, size: 64, offset: 9344)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !539, file: !540, line: 972, baseType: !3013, size: 64, offset: 9408)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !539, file: !540, line: 974, baseType: !3013, size: 64, offset: 9472)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !539, file: !540, line: 975, baseType: !3008, size: 192, offset: 9536)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !539, file: !540, line: 976, baseType: !533, size: 64, offset: 9728)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !539, file: !540, line: 977, baseType: !972, size: 64, offset: 9792)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !539, file: !540, line: 978, baseType: !7, size: 32, offset: 9856)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !539, file: !540, line: 980, baseType: !776, size: 64, offset: 9920)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !539, file: !540, line: 989, baseType: !3135, size: 128, offset: 9984)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3136, line: 35, size: 128, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138, !3139, !3140}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3135, file: !3136, line: 36, baseType: !365, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3135, file: !3136, line: 37, baseType: !559, size: 32, offset: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3135, file: !3136, line: 38, baseType: !3141, size: 64, offset: 64)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3136, line: 23, flags: DIFlagFwdDecl)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !539, file: !540, line: 992, baseType: !366, size: 64, offset: 10112)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !539, file: !540, line: 993, baseType: !366, size: 64, offset: 10176)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !539, file: !540, line: 996, baseType: !1140, offset: 10240)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !539, file: !540, line: 999, baseType: !512, offset: 10240)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !539, file: !540, line: 1001, baseType: !3148, size: 64, offset: 10240)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !540, line: 636, size: 64, elements: !3149)
!3149 = !{!3150}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3148, file: !540, line: 637, baseType: !3151, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !539, file: !540, line: 1005, baseType: !522, size: 128, offset: 10304)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !539, file: !540, line: 1007, baseType: !538, size: 64, offset: 10432)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !539, file: !540, line: 1009, baseType: !3155, size: 64, offset: 10496)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !540, line: 1009, flags: DIFlagFwdDecl)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !539, file: !540, line: 1043, baseType: !364, size: 64, offset: 10560)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !539, file: !540, line: 1046, baseType: !3159, size: 64, offset: 10624)
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !540, line: 41, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !539, file: !540, line: 1050, baseType: !3162, size: 64, offset: 10688)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !540, line: 42, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !539, file: !540, line: 1054, baseType: !3165, size: 64, offset: 10752)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !540, line: 55, flags: DIFlagFwdDecl)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !539, file: !540, line: 1056, baseType: !1586, size: 64, offset: 10816)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !539, file: !540, line: 1058, baseType: !3169, size: 64, offset: 10880)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3171, line: 99, size: 704, elements: !3172)
!3171 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3198, !3199}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3170, file: !3171, line: 100, baseType: !1157, size: 64)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3170, file: !3171, line: 101, baseType: !559, size: 32, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3170, file: !3171, line: 102, baseType: !559, size: 32, offset: 96)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3170, file: !3171, line: 105, baseType: !1140, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3170, file: !3171, line: 107, baseType: !374, size: 16, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3170, file: !3171, line: 109, baseType: !1136, size: 128, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3170, file: !3171, line: 110, baseType: !3180, size: 64, offset: 320)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3171, line: 73, size: 448, elements: !3182)
!3182 = !{!3183, !3186, !3187, !3192, !3197}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3181, file: !3171, line: 74, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3171, line: 74, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3181, file: !3171, line: 75, baseType: !3169, size: 64, offset: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3171, line: 83, baseType: !3188, size: 128, offset: 128)
!3188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !3171, line: 83, size: 128, elements: !3189)
!3189 = !{!3190, !3191}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3188, file: !3171, line: 84, baseType: !584, size: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3188, file: !3171, line: 85, baseType: !1317, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, scope: !3181, file: !3171, line: 87, baseType: !3193, size: 128, offset: 256)
!3193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3181, file: !3171, line: 87, size: 128, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3193, file: !3171, line: 88, baseType: !1036, size: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3193, file: !3171, line: 89, baseType: !773, size: 128, align: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3181, file: !3171, line: 92, baseType: !7, size: 32, offset: 384)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3170, file: !3171, line: 111, baseType: !1032, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3170, file: !3171, line: 113, baseType: !1797, size: 256, offset: 448)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !539, file: !540, line: 1061, baseType: !3201, size: 64, offset: 10944)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !540, line: 43, flags: DIFlagFwdDecl)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !539, file: !540, line: 1064, baseType: !533, size: 64, offset: 11008)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !539, file: !540, line: 1065, baseType: !3205, size: 64, offset: 11072)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3009, line: 14, baseType: !3207)
!3207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3009, line: 12, size: 384, elements: !3208)
!3208 = !{!3209}
!3209 = !DIDerivedType(tag: DW_TAG_member, scope: !3207, file: !3009, line: 13, baseType: !3210, size: 384)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3207, file: !3009, line: 13, size: 384, elements: !3211)
!3211 = !{!3212, !3213, !3214, !3215}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3210, file: !3009, line: 13, baseType: !365, size: 32)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3210, file: !3009, line: 13, baseType: !365, size: 32, offset: 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3210, file: !3009, line: 13, baseType: !365, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3210, file: !3009, line: 13, baseType: !3216, size: 256, offset: 128)
!3216 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3217, line: 32, size: 256, elements: !3218)
!3217 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3218 = !{!3219, !3224, !3237, !3243, !3252, !3272, !3277}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3216, file: !3217, line: 37, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 34, size: 64, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3220, file: !3217, line: 35, baseType: !2923, size: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3220, file: !3217, line: 36, baseType: !837, size: 32, offset: 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3216, file: !3217, line: 45, baseType: !3225, size: 192)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 40, size: 192, elements: !3226)
!3226 = !{!3227, !3229, !3230, !3236}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3225, file: !3217, line: 41, baseType: !3228, size: 32)
!3228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !672, line: 95, baseType: !365)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3225, file: !3217, line: 42, baseType: !365, size: 32, offset: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3225, file: !3217, line: 43, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3217, line: 11, baseType: !3232)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3217, line: 8, size: 64, elements: !3233)
!3233 = !{!3234, !3235}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3232, file: !3217, line: 9, baseType: !365, size: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3232, file: !3217, line: 10, baseType: !364, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3225, file: !3217, line: 44, baseType: !365, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3216, file: !3217, line: 52, baseType: !3238, size: 128)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 48, size: 128, elements: !3239)
!3239 = !{!3240, !3241, !3242}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3238, file: !3217, line: 49, baseType: !2923, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3238, file: !3217, line: 50, baseType: !837, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3238, file: !3217, line: 51, baseType: !3231, size: 64, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3216, file: !3217, line: 61, baseType: !3244, size: 256)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 55, size: 256, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3251}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3244, file: !3217, line: 56, baseType: !2923, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3244, file: !3217, line: 57, baseType: !837, size: 32, offset: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3244, file: !3217, line: 58, baseType: !365, size: 32, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3244, file: !3217, line: 59, baseType: !3250, size: 64, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !672, line: 94, baseType: !971)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3244, file: !3217, line: 60, baseType: !3250, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3216, file: !3217, line: 95, baseType: !3253, size: 256)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 64, size: 256, elements: !3254)
!3254 = !{!3255, !3256}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3253, file: !3217, line: 65, baseType: !364, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, scope: !3253, file: !3217, line: 77, baseType: !3257, size: 192, offset: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !3217, line: 77, size: 192, elements: !3258)
!3258 = !{!3259, !3260, !3267}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3257, file: !3217, line: 82, baseType: !2558, size: 16)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3257, file: !3217, line: 88, baseType: !3261, size: 192)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3257, file: !3217, line: 84, size: 192, elements: !3262)
!3262 = !{!3263, !3265, !3266}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3261, file: !3217, line: 85, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 64, elements: !666)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3261, file: !3217, line: 86, baseType: !364, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3261, file: !3217, line: 87, baseType: !364, size: 64, offset: 128)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3257, file: !3217, line: 93, baseType: !3268, size: 96)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3257, file: !3217, line: 90, size: 96, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3268, file: !3217, line: 91, baseType: !3264, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3268, file: !3217, line: 92, baseType: !549, size: 32, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3216, file: !3217, line: 101, baseType: !3273, size: 128)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 98, size: 128, elements: !3274)
!3274 = !{!3275, !3276}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3273, file: !3217, line: 99, baseType: !375, size: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3273, file: !3217, line: 100, baseType: !365, size: 32, offset: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3216, file: !3217, line: 108, baseType: !3278, size: 128)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3216, file: !3217, line: 104, size: 128, elements: !3279)
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3278, file: !3217, line: 105, baseType: !364, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3278, file: !3217, line: 106, baseType: !365, size: 32, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3278, file: !3217, line: 107, baseType: !7, size: 32, offset: 96)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !539, file: !540, line: 1067, baseType: !3081, offset: 11136)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !539, file: !540, line: 1099, baseType: !3285, size: 64, offset: 11136)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !540, line: 56, flags: DIFlagFwdDecl)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !539, file: !540, line: 1103, baseType: !584, size: 128, offset: 11200)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !539, file: !540, line: 1104, baseType: !3289, size: 64, offset: 11328)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !540, line: 46, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !539, file: !540, line: 1105, baseType: !1407, size: 192, offset: 11392)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !539, file: !540, line: 1106, baseType: !7, size: 32, offset: 11584)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !539, file: !540, line: 1109, baseType: !3294, size: 128, offset: 11648)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3295, size: 128, elements: !2517)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !540, line: 51, flags: DIFlagFwdDecl)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !539, file: !540, line: 1110, baseType: !1407, size: 192, offset: 11776)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !539, file: !540, line: 1111, baseType: !584, size: 128, offset: 11968)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !539, file: !540, line: 1173, baseType: !3300, size: 64, offset: 12096)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3302, line: 62, size: 256, align: 256, elements: !3303)
!3302 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3303 = !{!3304, !3305, !3306, !3311}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3301, file: !3302, line: 75, baseType: !549, size: 32)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3301, file: !3302, line: 90, baseType: !549, size: 32, offset: 32)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3301, file: !3302, line: 124, baseType: !3307, size: 64, offset: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3301, file: !3302, line: 109, size: 64, elements: !3308)
!3308 = !{!3309, !3310}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3307, file: !3302, line: 110, baseType: !368, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3307, file: !3302, line: 112, baseType: !368, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3301, file: !3302, line: 144, baseType: !549, size: 32, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !539, file: !540, line: 1174, baseType: !548, size: 32, offset: 12160)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !539, file: !540, line: 1179, baseType: !533, size: 64, offset: 12224)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !539, file: !540, line: 1182, baseType: !3315, size: 128, offset: 12288)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2749, line: 76, size: 128, elements: !3316)
!3316 = !{!3317, !3322, !3323}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3315, file: !2749, line: 85, baseType: !3318, size: 64)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3319, line: 7, size: 64, elements: !3320)
!3319 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3320 = !{!3321}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3318, file: !3319, line: 12, baseType: !707, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3315, file: !2749, line: 88, baseType: !883, size: 8, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3315, file: !2749, line: 95, baseType: !883, size: 8, offset: 72)
!3324 = !DIDerivedType(tag: DW_TAG_member, scope: !539, file: !540, line: 1184, baseType: !3325, size: 128, offset: 12416)
!3325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !539, file: !540, line: 1184, size: 128, elements: !3326)
!3326 = !{!3327, !3328}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3325, file: !540, line: 1185, baseType: !554, size: 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3325, file: !540, line: 1186, baseType: !773, size: 128, align: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !539, file: !540, line: 1190, baseType: !2063, size: 64, offset: 12544)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !539, file: !540, line: 1192, baseType: !3331, size: 128, offset: 12608)
!3331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2749, line: 64, size: 128, elements: !3332)
!3332 = !{!3333, !3334, !3335}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3331, file: !2749, line: 65, baseType: !1119, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3331, file: !2749, line: 67, baseType: !549, size: 32, offset: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3331, file: !2749, line: 68, baseType: !549, size: 32, offset: 96)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !539, file: !540, line: 1206, baseType: !365, size: 32, offset: 12736)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !539, file: !540, line: 1207, baseType: !365, size: 32, offset: 12768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !539, file: !540, line: 1209, baseType: !533, size: 64, offset: 12800)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !539, file: !540, line: 1219, baseType: !366, size: 64, offset: 12864)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !539, file: !540, line: 1220, baseType: !366, size: 64, offset: 12928)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !539, file: !540, line: 1317, baseType: !365, size: 32, offset: 12992)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !539, file: !540, line: 1319, baseType: !538, size: 64, offset: 13056)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !539, file: !540, line: 1322, baseType: !3344, size: 64, offset: 13120)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3346, line: 56, size: 512, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3347 = !{!3348, !3349, !3350, !3351, !3352, !3353, !3354, !3356}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3345, file: !3346, line: 57, baseType: !3344, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3345, file: !3346, line: 58, baseType: !364, size: 64, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3345, file: !3346, line: 59, baseType: !533, size: 64, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3345, file: !3346, line: 60, baseType: !533, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3345, file: !3346, line: 61, baseType: !1204, size: 64, offset: 256)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3345, file: !3346, line: 62, baseType: !7, size: 32, offset: 320)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3345, file: !3346, line: 63, baseType: !3355, size: 64, offset: 384)
!3355 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !363, line: 153, baseType: !366)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3345, file: !3346, line: 64, baseType: !2245, size: 64, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !539, file: !540, line: 1326, baseType: !554, size: 32, offset: 13184)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !539, file: !540, line: 1342, baseType: !364, size: 64, offset: 13248)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !539, file: !540, line: 1343, baseType: !368, size: 64, offset: 13312)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !539, file: !540, line: 1344, baseType: !366, size: 64, offset: 13376)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !539, file: !540, line: 1345, baseType: !368, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !539, file: !540, line: 1346, baseType: !368, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !539, file: !540, line: 1347, baseType: !368, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !539, file: !540, line: 1348, baseType: !773, size: 128, align: 64, offset: 13504)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !539, file: !540, line: 1358, baseType: !3366, size: 34816, offset: 13824)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3367, line: 485, size: 34816, elements: !3368)
!3367 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3368 = !{!3369, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3398, !3399, !3400, !3401, !3402, !3403, !3406, !3407, !3408}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3366, file: !3367, line: 487, baseType: !3370, size: 192)
!3370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3371, size: 192, elements: !1048)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3372, line: 16, size: 64, elements: !3373)
!3372 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3373 = !{!3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3371, file: !3372, line: 17, baseType: !372, size: 16)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3371, file: !3372, line: 18, baseType: !372, size: 16, offset: 16)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3371, file: !3372, line: 19, baseType: !372, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3371, file: !3372, line: 19, baseType: !372, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3371, file: !3372, line: 19, baseType: !372, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3371, file: !3372, line: 19, baseType: !372, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3371, file: !3372, line: 19, baseType: !372, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3371, file: !3372, line: 20, baseType: !372, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3371, file: !3372, line: 20, baseType: !372, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3371, file: !3372, line: 20, baseType: !372, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3371, file: !3372, line: 20, baseType: !372, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3371, file: !3372, line: 20, baseType: !372, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3371, file: !3372, line: 20, baseType: !372, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3366, file: !3367, line: 491, baseType: !533, size: 64, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3366, file: !3367, line: 495, baseType: !374, size: 16, offset: 256)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3366, file: !3367, line: 496, baseType: !374, size: 16, offset: 272)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3366, file: !3367, line: 497, baseType: !374, size: 16, offset: 288)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3366, file: !3367, line: 498, baseType: !374, size: 16, offset: 304)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3366, file: !3367, line: 502, baseType: !533, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3366, file: !3367, line: 503, baseType: !533, size: 64, offset: 384)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3366, file: !3367, line: 514, baseType: !3395, size: 256, offset: 448)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3396, size: 256, elements: !2477)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3367, line: 483, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3366, file: !3367, line: 516, baseType: !533, size: 64, offset: 704)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3366, file: !3367, line: 518, baseType: !533, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3366, file: !3367, line: 520, baseType: !533, size: 64, offset: 832)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3366, file: !3367, line: 521, baseType: !533, size: 64, offset: 896)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3366, file: !3367, line: 522, baseType: !533, size: 64, offset: 960)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3366, file: !3367, line: 528, baseType: !3404, size: 64, offset: 1024)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3367, line: 10, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3366, file: !3367, line: 535, baseType: !533, size: 64, offset: 1088)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3366, file: !3367, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3366, file: !3367, line: 540, baseType: !3409, size: 33280, offset: 1536)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3410, line: 317, size: 33280, elements: !3411)
!3410 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3411 = !{!3412, !3413, !3414}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3409, file: !3410, line: 330, baseType: !7, size: 32)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3409, file: !3410, line: 337, baseType: !533, size: 64, offset: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3409, file: !3410, line: 348, baseType: !3415, size: 32768, offset: 512)
!3415 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3410, line: 304, size: 32768, elements: !3416)
!3416 = !{!3417, !3430, !3467, !3517, !3530}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3415, file: !3410, line: 305, baseType: !3418, size: 896)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3410, line: 12, size: 896, elements: !3419)
!3419 = !{!3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3429}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3418, file: !3410, line: 13, baseType: !548, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3418, file: !3410, line: 14, baseType: !548, size: 32, offset: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3418, file: !3410, line: 15, baseType: !548, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3418, file: !3410, line: 16, baseType: !548, size: 32, offset: 96)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3418, file: !3410, line: 17, baseType: !548, size: 32, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3418, file: !3410, line: 18, baseType: !548, size: 32, offset: 160)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3418, file: !3410, line: 19, baseType: !548, size: 32, offset: 192)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3418, file: !3410, line: 22, baseType: !3428, size: 640, offset: 224)
!3428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 640, elements: !471)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3418, file: !3410, line: 25, baseType: !548, size: 32, offset: 864)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3415, file: !3410, line: 306, baseType: !3431, size: 4096, align: 128)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3410, line: 34, size: 4096, align: 128, elements: !3432)
!3432 = !{!3433, !3434, !3435, !3436, !3437, !3452, !3453, !3454, !3456, !3458, !3462}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3431, file: !3410, line: 35, baseType: !372, size: 16)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3431, file: !3410, line: 36, baseType: !372, size: 16, offset: 16)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3431, file: !3410, line: 37, baseType: !372, size: 16, offset: 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3431, file: !3410, line: 38, baseType: !372, size: 16, offset: 48)
!3437 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3410, line: 39, baseType: !3438, size: 128, offset: 64)
!3438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3410, line: 39, size: 128, elements: !3439)
!3439 = !{!3440, !3445}
!3440 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3410, line: 40, baseType: !3441, size: 128)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3410, line: 40, size: 128, elements: !3442)
!3442 = !{!3443, !3444}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3441, file: !3410, line: 41, baseType: !366, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3441, file: !3410, line: 42, baseType: !366, size: 64, offset: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, scope: !3438, file: !3410, line: 44, baseType: !3446, size: 128)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3438, file: !3410, line: 44, size: 128, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3446, file: !3410, line: 45, baseType: !548, size: 32)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3446, file: !3410, line: 46, baseType: !548, size: 32, offset: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3446, file: !3410, line: 47, baseType: !548, size: 32, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3446, file: !3410, line: 48, baseType: !548, size: 32, offset: 96)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3431, file: !3410, line: 51, baseType: !548, size: 32, offset: 192)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3431, file: !3410, line: 52, baseType: !548, size: 32, offset: 224)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3431, file: !3410, line: 55, baseType: !3455, size: 1024, offset: 256)
!3455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 1024, elements: !1676)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3431, file: !3410, line: 58, baseType: !3457, size: 2048, offset: 1280)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 2048, elements: !2154)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3431, file: !3410, line: 60, baseType: !3459, size: 384, offset: 3328)
!3459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 384, elements: !3460)
!3460 = !{!3461}
!3461 = !DISubrange(count: 12)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !3431, file: !3410, line: 62, baseType: !3463, size: 384, offset: 3712)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3431, file: !3410, line: 62, size: 384, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3463, file: !3410, line: 63, baseType: !3459, size: 384)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3463, file: !3410, line: 64, baseType: !3459, size: 384)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3415, file: !3410, line: 307, baseType: !3468, size: 1088)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3410, line: 79, size: 1088, elements: !3469)
!3469 = !{!3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3516}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3468, file: !3410, line: 80, baseType: !548, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3468, file: !3410, line: 81, baseType: !548, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3468, file: !3410, line: 82, baseType: !548, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3468, file: !3410, line: 83, baseType: !548, size: 32, offset: 96)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3468, file: !3410, line: 84, baseType: !548, size: 32, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3468, file: !3410, line: 85, baseType: !548, size: 32, offset: 160)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3468, file: !3410, line: 86, baseType: !548, size: 32, offset: 192)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3468, file: !3410, line: 88, baseType: !3428, size: 640, offset: 224)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3468, file: !3410, line: 89, baseType: !418, size: 8, offset: 864)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3468, file: !3410, line: 90, baseType: !418, size: 8, offset: 872)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3468, file: !3410, line: 91, baseType: !418, size: 8, offset: 880)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3468, file: !3410, line: 92, baseType: !418, size: 8, offset: 888)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3468, file: !3410, line: 93, baseType: !418, size: 8, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3468, file: !3410, line: 94, baseType: !418, size: 8, offset: 904)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3468, file: !3410, line: 95, baseType: !3485, size: 64, offset: 960)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3487, line: 11, size: 128, elements: !3488)
!3487 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3486, file: !3487, line: 12, baseType: !375, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3486, file: !3487, line: 13, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3493, line: 56, size: 1344, elements: !3494)
!3493 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3494 = !{!3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3492, file: !3493, line: 61, baseType: !533, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3492, file: !3493, line: 62, baseType: !533, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3492, file: !3493, line: 63, baseType: !533, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3492, file: !3493, line: 64, baseType: !533, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3492, file: !3493, line: 65, baseType: !533, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3492, file: !3493, line: 66, baseType: !533, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3492, file: !3493, line: 68, baseType: !533, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3492, file: !3493, line: 69, baseType: !533, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3492, file: !3493, line: 70, baseType: !533, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3492, file: !3493, line: 71, baseType: !533, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3492, file: !3493, line: 72, baseType: !533, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3492, file: !3493, line: 73, baseType: !533, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3492, file: !3493, line: 74, baseType: !533, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3492, file: !3493, line: 75, baseType: !533, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3492, file: !3493, line: 76, baseType: !533, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3492, file: !3493, line: 81, baseType: !533, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3492, file: !3493, line: 83, baseType: !533, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3492, file: !3493, line: 84, baseType: !533, size: 64, offset: 1088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3492, file: !3493, line: 85, baseType: !533, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3492, file: !3493, line: 86, baseType: !533, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3492, file: !3493, line: 87, baseType: !533, size: 64, offset: 1280)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3468, file: !3410, line: 96, baseType: !548, size: 32, offset: 1024)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3415, file: !3410, line: 308, baseType: !3518, size: 4608, align: 512)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3410, line: 289, size: 4608, align: 512, elements: !3519)
!3519 = !{!3520, !3521, !3528}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3518, file: !3410, line: 290, baseType: !3431, size: 4096, align: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3518, file: !3410, line: 291, baseType: !3522, size: 512, offset: 4096)
!3522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3410, line: 268, size: 512, elements: !3523)
!3523 = !{!3524, !3525, !3526}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3522, file: !3410, line: 269, baseType: !366, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3522, file: !3410, line: 270, baseType: !366, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3522, file: !3410, line: 271, baseType: !3527, size: 384, offset: 128)
!3527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 384, elements: !2576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3518, file: !3410, line: 292, baseType: !3529, offset: 4608)
!3529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, elements: !2672)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3415, file: !3410, line: 309, baseType: !3531, size: 32768)
!3531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 32768, elements: !3532)
!3532 = !{!3533}
!3533 = !DISubrange(count: 4096)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !486, file: !479, line: 704, baseType: !508, size: 192, offset: 512)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !486, file: !479, line: 706, baseType: !365, size: 32, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !486, file: !479, line: 707, baseType: !365, size: 32, offset: 736)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !486, file: !479, line: 708, baseType: !3538, size: 5568, offset: 768)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3539)
!3539 = !{!3540, !3541, !3543, !3546, !3547, !3598, !3689, !3690, !3691, !3692, !3693, !3702, !3807, !3820, !4015, !4016, !4020, !4022, !4023, !4024, !4028, !4034, !4035, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4076, !4077, !4078, !4081, !4084, !4085, !4086, !4087}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3538, file: !60, line: 462, baseType: !2113, size: 512)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3538, file: !60, line: 463, baseType: !3542, size: 64, offset: 512)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3538, file: !60, line: 465, baseType: !3544, size: 64, offset: 576)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3538, file: !60, line: 467, baseType: !384, size: 64, offset: 640)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3538, file: !60, line: 468, baseType: !3548, size: 64, offset: 704)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3550)
!3550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3551)
!3551 = !{!3552, !3553, !3554, !3558, !3563, !3567}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3550, file: !60, line: 88, baseType: !384, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3550, file: !60, line: 89, baseType: !2192, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3550, file: !60, line: 90, baseType: !3555, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!365, !3542, !2147}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3550, file: !60, line: 91, baseType: !3559, size: 64, offset: 192)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!406, !3542, !3562, !2262, !2263}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3550, file: !60, line: 93, baseType: !3564, size: 64, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !3542}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3550, file: !60, line: 95, baseType: !3568, size: 64, offset: 320)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3570)
!3570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3571)
!3571 = !{!3572, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3570, file: !67, line: 279, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!365, !3542}
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3570, file: !67, line: 280, baseType: !3564, size: 64, offset: 64)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3570, file: !67, line: 281, baseType: !3573, size: 64, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3570, file: !67, line: 282, baseType: !3573, size: 64, offset: 192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3570, file: !67, line: 283, baseType: !3573, size: 64, offset: 256)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3570, file: !67, line: 284, baseType: !3573, size: 64, offset: 320)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3570, file: !67, line: 285, baseType: !3573, size: 64, offset: 384)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3570, file: !67, line: 286, baseType: !3573, size: 64, offset: 448)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3570, file: !67, line: 287, baseType: !3573, size: 64, offset: 512)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3570, file: !67, line: 288, baseType: !3573, size: 64, offset: 576)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3570, file: !67, line: 289, baseType: !3573, size: 64, offset: 640)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3570, file: !67, line: 290, baseType: !3573, size: 64, offset: 704)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3570, file: !67, line: 291, baseType: !3573, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3570, file: !67, line: 292, baseType: !3573, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3570, file: !67, line: 293, baseType: !3573, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3570, file: !67, line: 294, baseType: !3573, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3570, file: !67, line: 295, baseType: !3573, size: 64, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3570, file: !67, line: 296, baseType: !3573, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3570, file: !67, line: 297, baseType: !3573, size: 64, offset: 1152)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3570, file: !67, line: 298, baseType: !3573, size: 64, offset: 1216)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3570, file: !67, line: 299, baseType: !3573, size: 64, offset: 1280)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3570, file: !67, line: 300, baseType: !3573, size: 64, offset: 1344)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3570, file: !67, line: 301, baseType: !3573, size: 64, offset: 1408)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3538, file: !60, line: 470, baseType: !3599, size: 64, offset: 768)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3601, line: 82, size: 1408, elements: !3602)
!3601 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3602 = !{!3603, !3604, !3605, !3606, !3607, !3608, !3609, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3684, !3687, !3688}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3600, file: !3601, line: 83, baseType: !384, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3600, file: !3601, line: 84, baseType: !384, size: 64, offset: 64)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3600, file: !3601, line: 85, baseType: !3542, size: 64, offset: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3600, file: !3601, line: 86, baseType: !2192, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3600, file: !3601, line: 87, baseType: !2192, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3600, file: !3601, line: 88, baseType: !2192, size: 64, offset: 320)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3600, file: !3601, line: 90, baseType: !3610, size: 64, offset: 384)
!3610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3611, size: 64)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{!365, !3542, !3613}
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621, !3622, !3635, !3648, !3649, !3650, !3651, !3652, !3660, !3661, !3662, !3663, !3664, !3665}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3614, file: !54, line: 96, baseType: !384, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3614, file: !54, line: 97, baseType: !3599, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3614, file: !54, line: 99, baseType: !388, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3614, file: !54, line: 100, baseType: !384, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3614, file: !54, line: 102, baseType: !883, size: 8, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3614, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3614, file: !54, line: 105, baseType: !3623, size: 64, offset: 320)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3625)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3626, line: 262, size: 1600, elements: !3627)
!3626 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3627 = !{!3628, !3629, !3630, !3634}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3625, file: !3626, line: 263, baseType: !1675, size: 256)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3625, file: !3626, line: 264, baseType: !1675, size: 256, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3625, file: !3626, line: 265, baseType: !3631, size: 1024, offset: 512)
!3631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 1024, elements: !3632)
!3632 = !{!3633}
!3633 = !DISubrange(count: 128)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3625, file: !3626, line: 266, baseType: !2245, size: 64, offset: 1536)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3614, file: !54, line: 106, baseType: !3636, size: 64, offset: 384)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3638)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3626, line: 210, size: 256, elements: !3639)
!3639 = !{!3640, !3644, !3646, !3647}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3638, file: !3626, line: 211, baseType: !3641, size: 72)
!3641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 72, elements: !3642)
!3642 = !{!3643}
!3643 = !DISubrange(count: 9)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3638, file: !3626, line: 212, baseType: !3645, size: 64, offset: 128)
!3645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3626, line: 14, baseType: !533)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3638, file: !3626, line: 213, baseType: !549, size: 32, offset: 192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3638, file: !3626, line: 214, baseType: !549, size: 32, offset: 224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3614, file: !54, line: 108, baseType: !3573, size: 64, offset: 448)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3614, file: !54, line: 109, baseType: !3564, size: 64, offset: 512)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3614, file: !54, line: 110, baseType: !3573, size: 64, offset: 576)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3614, file: !54, line: 111, baseType: !3564, size: 64, offset: 640)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3614, file: !54, line: 112, baseType: !3653, size: 64, offset: 704)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!365, !3542, !3656}
!3656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3657)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3658)
!3658 = !{!3659}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3657, file: !67, line: 51, baseType: !365, size: 32)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3614, file: !54, line: 113, baseType: !3573, size: 64, offset: 768)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3614, file: !54, line: 114, baseType: !2192, size: 64, offset: 832)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3614, file: !54, line: 115, baseType: !2192, size: 64, offset: 896)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3614, file: !54, line: 117, baseType: !3568, size: 64, offset: 960)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3614, file: !54, line: 118, baseType: !3564, size: 64, offset: 1024)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3614, file: !54, line: 120, baseType: !3666, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3600, file: !3601, line: 91, baseType: !3555, size: 64, offset: 448)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3600, file: !3601, line: 92, baseType: !3573, size: 64, offset: 512)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3600, file: !3601, line: 93, baseType: !3564, size: 64, offset: 576)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3600, file: !3601, line: 94, baseType: !3573, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3600, file: !3601, line: 95, baseType: !3564, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3600, file: !3601, line: 97, baseType: !3573, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3600, file: !3601, line: 98, baseType: !3573, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3600, file: !3601, line: 100, baseType: !3653, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3600, file: !3601, line: 101, baseType: !3573, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3600, file: !3601, line: 103, baseType: !3573, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3600, file: !3601, line: 105, baseType: !3573, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3600, file: !3601, line: 107, baseType: !3568, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3600, file: !3601, line: 109, baseType: !3681, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3683)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3601, line: 109, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3600, file: !3601, line: 111, baseType: !3685, size: 64, offset: 1280)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3601, line: 111, flags: DIFlagFwdDecl)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3600, file: !3601, line: 112, baseType: !1042, offset: 1344)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3600, file: !3601, line: 114, baseType: !883, size: 8, offset: 1344)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3538, file: !60, line: 471, baseType: !3613, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3538, file: !60, line: 473, baseType: !364, size: 64, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3538, file: !60, line: 475, baseType: !364, size: 64, offset: 960)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3538, file: !60, line: 480, baseType: !1407, size: 192, offset: 1024)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3538, file: !60, line: 484, baseType: !3694, size: 576, offset: 1216)
!3694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3695)
!3695 = !{!3696, !3697, !3698, !3699, !3700, !3701}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3694, file: !60, line: 362, baseType: !584, size: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3694, file: !60, line: 363, baseType: !584, size: 128, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3694, file: !60, line: 364, baseType: !584, size: 128, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3694, file: !60, line: 365, baseType: !584, size: 128, offset: 384)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3694, file: !60, line: 366, baseType: !883, size: 8, offset: 512)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3694, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3538, file: !60, line: 485, baseType: !3703, size: 2304, offset: 1792)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3704)
!3704 = !{!3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3800, !3804}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3703, file: !67, line: 566, baseType: !3656, size: 32)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3703, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3703, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3703, file: !67, line: 569, baseType: !883, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3703, file: !67, line: 570, baseType: !883, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3703, file: !67, line: 571, baseType: !883, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3703, file: !67, line: 572, baseType: !883, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3703, file: !67, line: 573, baseType: !883, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3703, file: !67, line: 574, baseType: !883, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3703, file: !67, line: 575, baseType: !883, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3703, file: !67, line: 576, baseType: !883, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3703, file: !67, line: 577, baseType: !548, size: 32, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3703, file: !67, line: 578, baseType: !1140, offset: 96)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3703, file: !67, line: 580, baseType: !584, size: 128, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3703, file: !67, line: 581, baseType: !2808, size: 192, offset: 256)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3703, file: !67, line: 582, baseType: !3721, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3723, line: 43, size: 1472, elements: !3724)
!3723 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !{!3725, !3726, !3727, !3728, !3729, !3732, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3722, file: !3723, line: 44, baseType: !384, size: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3722, file: !3723, line: 45, baseType: !365, size: 32, offset: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3722, file: !3723, line: 46, baseType: !584, size: 128, offset: 128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3722, file: !3723, line: 47, baseType: !1140, offset: 256)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3722, file: !3723, line: 48, baseType: !3730, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3722, file: !3723, line: 49, baseType: !3733, size: 320, offset: 320)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3734, line: 11, size: 320, elements: !3735)
!3734 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3735 = !{!3736, !3737, !3738, !3743}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3733, file: !3734, line: 16, baseType: !1036, size: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3733, file: !3734, line: 17, baseType: !533, size: 64, offset: 128)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3733, file: !3734, line: 18, baseType: !3739, size: 64, offset: 192)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{null, !3742}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3733, file: !3734, line: 19, baseType: !548, size: 32, offset: 256)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3722, file: !3723, line: 50, baseType: !533, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3722, file: !3723, line: 51, baseType: !636, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3722, file: !3723, line: 52, baseType: !636, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3722, file: !3723, line: 53, baseType: !636, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3722, file: !3723, line: 54, baseType: !636, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3722, file: !3723, line: 55, baseType: !636, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3722, file: !3723, line: 56, baseType: !533, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3722, file: !3723, line: 57, baseType: !533, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3722, file: !3723, line: 58, baseType: !533, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3722, file: !3723, line: 59, baseType: !533, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3722, file: !3723, line: 60, baseType: !533, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3722, file: !3723, line: 61, baseType: !3542, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3722, file: !3723, line: 62, baseType: !883, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3722, file: !3723, line: 63, baseType: !883, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3703, file: !67, line: 583, baseType: !883, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3703, file: !67, line: 584, baseType: !883, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3703, file: !67, line: 585, baseType: !883, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3703, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3703, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3703, file: !67, line: 592, baseType: !628, size: 512, offset: 576)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3703, file: !67, line: 593, baseType: !366, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3703, file: !67, line: 594, baseType: !1797, size: 256, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3703, file: !67, line: 595, baseType: !1639, size: 128, offset: 1408)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3703, file: !67, line: 596, baseType: !3730, size: 64, offset: 1536)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3703, file: !67, line: 597, baseType: !559, size: 32, offset: 1600)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3703, file: !67, line: 598, baseType: !559, size: 32, offset: 1632)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3703, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3703, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3703, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3703, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3703, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3703, file: !67, line: 604, baseType: !883, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3703, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3703, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3703, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3703, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3703, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3703, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3703, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3703, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3703, file: !67, line: 613, baseType: !365, size: 32, offset: 1792)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3703, file: !67, line: 614, baseType: !365, size: 32, offset: 1824)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3703, file: !67, line: 615, baseType: !366, size: 64, offset: 1856)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3703, file: !67, line: 616, baseType: !366, size: 64, offset: 1920)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3703, file: !67, line: 617, baseType: !366, size: 64, offset: 1984)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3703, file: !67, line: 618, baseType: !366, size: 64, offset: 2048)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3703, file: !67, line: 620, baseType: !3791, size: 64, offset: 2112)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3793)
!3793 = !{!3794, !3795, !3796, !3797}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3792, file: !67, line: 537, baseType: !1140)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3792, file: !67, line: 538, baseType: !7, size: 32)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3792, file: !67, line: 540, baseType: !584, size: 128, offset: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3792, file: !67, line: 543, baseType: !3798, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3703, file: !67, line: 621, baseType: !3801, size: 64, offset: 2176)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{null, !3542, !2533}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3703, file: !67, line: 622, baseType: !3805, size: 64, offset: 2240)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3538, file: !60, line: 486, baseType: !3808, size: 64, offset: 4096)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3810)
!3810 = !{!3811, !3812, !3813, !3817, !3818, !3819}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3809, file: !67, line: 643, baseType: !3570, size: 1472)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3809, file: !67, line: 644, baseType: !3573, size: 64, offset: 1472)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3809, file: !67, line: 645, baseType: !3814, size: 64, offset: 1536)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{null, !3542, !883}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3809, file: !67, line: 646, baseType: !3573, size: 64, offset: 1600)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3809, file: !67, line: 647, baseType: !3564, size: 64, offset: 1664)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3809, file: !67, line: 648, baseType: !3564, size: 64, offset: 1728)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3538, file: !60, line: 493, baseType: !3821, size: 64, offset: 4160)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3999, !4000, !4001, !4002, !4003, !4004, !4007, !4008, !4009, !4010, !4011, !4012, !4013}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3822, file: !81, line: 163, baseType: !584, size: 128)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3822, file: !81, line: 164, baseType: !384, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3822, file: !81, line: 165, baseType: !3827, size: 64, offset: 192)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3830)
!3830 = !{!3831, !3949, !3960, !3965, !3969, !3976, !3980, !3984, !3991, !3995}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3829, file: !81, line: 106, baseType: !3832, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!365, !3821, !3835, !80}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3837, line: 51, size: 1344, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3838 = !{!3839, !3840, !3842, !3843, !3933, !3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3836, file: !3837, line: 52, baseType: !384, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3836, file: !3837, line: 53, baseType: !3841, size: 32, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3837, line: 28, baseType: !548)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3836, file: !3837, line: 54, baseType: !384, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3837, line: 55, baseType: !3844, size: 192, offset: 192)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3845, line: 17, size: 192, elements: !3846)
!3845 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3846 = !{!3847, !3849, !3932}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3844, file: !3845, line: 18, baseType: !3848, size: 64)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3844, file: !3845, line: 19, baseType: !3850, size: 64, offset: 64)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3845, line: 110, size: 1152, elements: !3853)
!3853 = !{!3854, !3858, !3862, !3868, !3874, !3878, !3882, !3887, !3891, !3892, !3896, !3900, !3904, !3915, !3916, !3917, !3918, !3928}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3852, file: !3845, line: 111, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!3848, !3848}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3852, file: !3845, line: 112, baseType: !3859, size: 64, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DISubroutineType(types: !3861)
!3861 = !{null, !3848}
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3852, file: !3845, line: 113, baseType: !3863, size: 64, offset: 128)
!3863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3864, size: 64)
!3864 = !DISubroutineType(types: !3865)
!3865 = !{!883, !3866}
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3844)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3852, file: !3845, line: 114, baseType: !3869, size: 64, offset: 192)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!2245, !3866, !3872}
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3538)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3852, file: !3845, line: 116, baseType: !3875, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!883, !3866, !384}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3852, file: !3845, line: 118, baseType: !3879, size: 64, offset: 320)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!365, !3866, !384, !7, !364, !972}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3852, file: !3845, line: 123, baseType: !3883, size: 64, offset: 384)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!365, !3866, !384, !3886, !972}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3852, file: !3845, line: 126, baseType: !3888, size: 64, offset: 448)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!384, !3866}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3852, file: !3845, line: 127, baseType: !3888, size: 64, offset: 512)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3852, file: !3845, line: 128, baseType: !3893, size: 64, offset: 576)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!3848, !3866}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3852, file: !3845, line: 130, baseType: !3897, size: 64, offset: 640)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!3848, !3866, !3848}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3852, file: !3845, line: 133, baseType: !3901, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!3848, !3866, !384}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3852, file: !3845, line: 135, baseType: !3905, size: 64, offset: 768)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!365, !3866, !384, !384, !7, !7, !3908}
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3845, line: 43, size: 640, elements: !3910)
!3910 = !{!3911, !3912, !3913}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3909, file: !3845, line: 44, baseType: !3848, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3909, file: !3845, line: 45, baseType: !7, size: 32, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3909, file: !3845, line: 46, baseType: !3914, size: 512, offset: 128)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !666)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3852, file: !3845, line: 140, baseType: !3897, size: 64, offset: 832)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3852, file: !3845, line: 143, baseType: !3893, size: 64, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3852, file: !3845, line: 145, baseType: !3855, size: 64, offset: 960)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3852, file: !3845, line: 146, baseType: !3919, size: 64, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!365, !3866, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3845, line: 29, size: 128, elements: !3924)
!3924 = !{!3925, !3926, !3927}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3923, file: !3845, line: 30, baseType: !7, size: 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3923, file: !3845, line: 31, baseType: !7, size: 32, offset: 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3923, file: !3845, line: 32, baseType: !3866, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3852, file: !3845, line: 148, baseType: !3929, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!365, !3866, !3542}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3844, file: !3845, line: 20, baseType: !3542, size: 64, offset: 128)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3836, file: !3837, line: 57, baseType: !3934, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3837, line: 31, size: 704, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3935, file: !3837, line: 32, baseType: !406, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3935, file: !3837, line: 33, baseType: !365, size: 32, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3935, file: !3837, line: 34, baseType: !364, size: 64, offset: 128)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3935, file: !3837, line: 35, baseType: !3934, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3935, file: !3837, line: 43, baseType: !2207, size: 448, offset: 256)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3836, file: !3837, line: 58, baseType: !3934, size: 64, offset: 448)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3836, file: !3837, line: 59, baseType: !3835, size: 64, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3836, file: !3837, line: 60, baseType: !3835, size: 64, offset: 576)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3836, file: !3837, line: 61, baseType: !3835, size: 64, offset: 640)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3836, file: !3837, line: 63, baseType: !2113, size: 512, offset: 704)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3836, file: !3837, line: 65, baseType: !533, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3836, file: !3837, line: 66, baseType: !364, size: 64, offset: 1280)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3829, file: !81, line: 108, baseType: !3950, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!365, !3821, !3953, !80}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3955)
!3955 = !{!3956, !3957, !3958}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3954, file: !81, line: 64, baseType: !3848, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3954, file: !81, line: 65, baseType: !365, size: 32, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3954, file: !81, line: 66, baseType: !3959, size: 512, offset: 96)
!3959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !548, size: 512, elements: !1685)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3829, file: !81, line: 110, baseType: !3961, size: 64, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!365, !3821, !7, !3964}
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !363, line: 164, baseType: !533)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3829, file: !81, line: 111, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3821, !7}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3829, file: !81, line: 112, baseType: !3970, size: 64, offset: 256)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!365, !3821, !3835, !3973, !7, !3975, !440}
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3829, file: !81, line: 117, baseType: !3977, size: 64, offset: 320)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!365, !3821, !7, !7, !364}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3829, file: !81, line: 119, baseType: !3981, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{null, !3821, !7, !7}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3829, file: !81, line: 121, baseType: !3985, size: 64, offset: 448)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!365, !3821, !3988, !883}
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3990, line: 11, flags: DIFlagFwdDecl)
!3990 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3829, file: !81, line: 122, baseType: !3992, size: 64, offset: 512)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3821, !3988}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3829, file: !81, line: 123, baseType: !3996, size: 64, offset: 576)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!365, !3821, !3953, !3975, !440}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3822, file: !81, line: 166, baseType: !364, size: 64, offset: 256)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3822, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3822, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3822, file: !81, line: 171, baseType: !3848, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3822, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3822, file: !81, line: 173, baseType: !4005, size: 64, offset: 512)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3822, file: !81, line: 175, baseType: !3821, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3822, file: !81, line: 182, baseType: !3964, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3822, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3822, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3822, file: !81, line: 185, baseType: !1136, size: 128, offset: 768)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3822, file: !81, line: 186, baseType: !1407, size: 192, offset: 896)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3822, file: !81, line: 187, baseType: !4014, offset: 1088)
!4014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2836)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3538, file: !60, line: 499, baseType: !584, size: 128, offset: 4224)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3538, file: !60, line: 502, baseType: !4017, size: 64, offset: 4352)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4019)
!4019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3538, file: !60, line: 504, baseType: !4021, size: 64, offset: 4416)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3538, file: !60, line: 505, baseType: !366, size: 64, offset: 4480)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3538, file: !60, line: 510, baseType: !366, size: 64, offset: 4544)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3538, file: !60, line: 511, baseType: !4025, size: 64, offset: 4608)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3538, file: !60, line: 513, baseType: !4029, size: 64, offset: 4672)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !4031)
!4031 = !{!4032, !4033}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4030, file: !60, line: 293, baseType: !7, size: 32)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4030, file: !60, line: 294, baseType: !533, size: 64, offset: 64)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3538, file: !60, line: 515, baseType: !584, size: 128, offset: 4736)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3538, file: !60, line: 526, baseType: !4036, offset: 4864)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4037, line: 5, elements: !520)
!4037 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3538, file: !60, line: 528, baseType: !3835, size: 64, offset: 4864)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3538, file: !60, line: 529, baseType: !3848, size: 64, offset: 4928)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3538, file: !60, line: 534, baseType: !906, size: 32, offset: 4992)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3538, file: !60, line: 535, baseType: !548, size: 32, offset: 5024)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3538, file: !60, line: 537, baseType: !1140, offset: 5056)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3538, file: !60, line: 538, baseType: !584, size: 128, offset: 5056)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3538, file: !60, line: 540, baseType: !4045, size: 64, offset: 5184)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4047, line: 54, size: 960, elements: !4048)
!4047 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4048 = !{!4049, !4050, !4051, !4052, !4053, !4054, !4055, !4059, !4063, !4064, !4065, !4066, !4070, !4074, !4075}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4046, file: !4047, line: 55, baseType: !384, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4046, file: !4047, line: 56, baseType: !388, size: 64, offset: 64)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4046, file: !4047, line: 58, baseType: !2192, size: 64, offset: 128)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4046, file: !4047, line: 59, baseType: !2192, size: 64, offset: 192)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4046, file: !4047, line: 60, baseType: !2119, size: 64, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4046, file: !4047, line: 62, baseType: !3555, size: 64, offset: 320)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4046, file: !4047, line: 63, baseType: !4056, size: 64, offset: 384)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!406, !3542, !3562}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4046, file: !4047, line: 65, baseType: !4060, size: 64, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{null, !4045}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4046, file: !4047, line: 66, baseType: !3564, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4046, file: !4047, line: 68, baseType: !3573, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4046, file: !4047, line: 70, baseType: !2228, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4046, file: !4047, line: 71, baseType: !4067, size: 64, offset: 704)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!2245, !3542}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4046, file: !4047, line: 73, baseType: !4071, size: 64, offset: 768)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !3542, !2262, !2263}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4046, file: !4047, line: 75, baseType: !3568, size: 64, offset: 832)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4046, file: !4047, line: 77, baseType: !3685, size: 64, offset: 896)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3538, file: !60, line: 541, baseType: !2192, size: 64, offset: 5248)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3538, file: !60, line: 543, baseType: !3564, size: 64, offset: 5312)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3538, file: !60, line: 544, baseType: !4079, size: 64, offset: 5376)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3538, file: !60, line: 545, baseType: !4082, size: 64, offset: 5440)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3538, file: !60, line: 547, baseType: !883, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3538, file: !60, line: 548, baseType: !883, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3538, file: !60, line: 549, baseType: !883, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3538, file: !60, line: 550, baseType: !883, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !486, file: !479, line: 709, baseType: !533, size: 64, offset: 6336)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !486, file: !479, line: 713, baseType: !365, size: 32, offset: 6400)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !479, line: 714, baseType: !4091, size: 384, offset: 6432)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 384, elements: !4092)
!4092 = !{!4093}
!4093 = !DISubrange(count: 48)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !486, file: !479, line: 715, baseType: !2808, size: 192, offset: 6848)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !486, file: !479, line: 717, baseType: !1407, size: 192, offset: 7040)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !486, file: !479, line: 718, baseType: !584, size: 128, offset: 7232)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !486, file: !479, line: 720, baseType: !4098, size: 64, offset: 7360)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !479, line: 618, size: 832, elements: !4100)
!4100 = !{!4101, !4105, !4106, !4110, !4111, !4112, !4113, !4117, !4118, !4121, !4122, !4125, !4128}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4099, file: !479, line: 619, baseType: !4102, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DISubroutineType(types: !4104)
!4104 = !{!365, !485}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4099, file: !479, line: 621, baseType: !4102, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4099, file: !479, line: 622, baseType: !4107, size: 64, offset: 128)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !485, !365}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4099, file: !479, line: 623, baseType: !4102, size: 64, offset: 192)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4099, file: !479, line: 624, baseType: !4107, size: 64, offset: 256)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4099, file: !479, line: 625, baseType: !4102, size: 64, offset: 320)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4099, file: !479, line: 627, baseType: !4114, size: 64, offset: 384)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{null, !485}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4099, file: !479, line: 628, baseType: !4114, size: 64, offset: 448)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4099, file: !479, line: 631, baseType: !4119, size: 64, offset: 512)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !479, line: 631, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4099, file: !479, line: 632, baseType: !4119, size: 64, offset: 576)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4099, file: !479, line: 633, baseType: !4123, size: 64, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !479, line: 633, flags: DIFlagFwdDecl)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4099, file: !479, line: 634, baseType: !4126, size: 64, offset: 704)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !479, line: 634, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4099, file: !479, line: 635, baseType: !4126, size: 64, offset: 768)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !486, file: !479, line: 721, baseType: !4130, size: 64, offset: 7424)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4132)
!4132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !479, line: 664, size: 192, elements: !4133)
!4133 = !{!4134, !4135, !4136, !4137, !4138, !4139}
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4132, file: !479, line: 665, baseType: !366, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4132, file: !479, line: 666, baseType: !365, size: 32, offset: 64)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4132, file: !479, line: 667, baseType: !372, size: 16, offset: 96)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4132, file: !479, line: 668, baseType: !372, size: 16, offset: 112)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4132, file: !479, line: 669, baseType: !372, size: 16, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4132, file: !479, line: 670, baseType: !372, size: 16, offset: 144)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !486, file: !479, line: 723, baseType: !3821, size: 64, offset: 7488)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4143, line: 69, size: 128, elements: !4144)
!4143 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4144 = !{!4145, !4146, !4147, !4148}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4142, file: !4143, line: 70, baseType: !373, size: 16)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4142, file: !4143, line: 71, baseType: !373, size: 16, offset: 16)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4142, file: !4143, line: 84, baseType: !373, size: 16, offset: 32)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4142, file: !4143, line: 85, baseType: !4149, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !478, file: !479, line: 531, baseType: !482, size: 64, offset: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !478, file: !479, line: 533, baseType: !4152, size: 64, offset: 128)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!365, !485, !372, !374, !386, !418, !365, !4155}
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4143, line: 135, size: 272, elements: !4157)
!4157 = !{!4158, !4159, !4160}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4156, file: !4143, line: 136, baseType: !419, size: 8)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4156, file: !4143, line: 137, baseType: !373, size: 16)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4156, file: !4143, line: 138, baseType: !4161, size: 272)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 272, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 34)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !478, file: !479, line: 536, baseType: !4152, size: 64, offset: 192)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !478, file: !479, line: 541, baseType: !4166, size: 64, offset: 256)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!548, !485}
!4169 = !DIGlobalVariableExpression(var: !4170, expr: !DIExpression())
!4170 = distinct !DIGlobalVariable(name: "s5h1420_ops", scope: !2, file: !3, line: 923, type: !4171, isLocal: true, isDefinition: true)
!4171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4172)
!4172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !139, line: 435, size: 6016, elements: !4173)
!4173 = !{!4174, !4186, !4188, !4315, !4316, !4317, !4321, !4322, !4328, !4333, !4337, !4338, !4348, !4353, !4357, !4361, !4366, !4367, !4368, !4369, !4379, !4390, !4394, !4398, !4402, !4406, !4410, !4414, !4415, !4416, !4420, !4474}
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4172, file: !139, line: 436, baseType: !4175, size: 1280)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !139, line: 338, size: 1280, elements: !4176)
!4176 = !{!4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !139, line: 339, baseType: !3631, size: 1024)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4175, file: !139, line: 340, baseType: !548, size: 32, offset: 1024)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4175, file: !139, line: 341, baseType: !548, size: 32, offset: 1056)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4175, file: !139, line: 342, baseType: !548, size: 32, offset: 1088)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4175, file: !139, line: 343, baseType: !548, size: 32, offset: 1120)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4175, file: !139, line: 344, baseType: !548, size: 32, offset: 1152)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4175, file: !139, line: 345, baseType: !548, size: 32, offset: 1184)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4175, file: !139, line: 346, baseType: !548, size: 32, offset: 1216)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4175, file: !139, line: 347, baseType: !94, size: 32, offset: 1248)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4172, file: !139, line: 438, baseType: !4187, size: 64, offset: 1280)
!4187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 64, elements: !666)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4172, file: !139, line: 440, baseType: !4189, size: 64, offset: 1344)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{null, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !139, line: 686, size: 10240, elements: !4194)
!4194 = !{!4195, !4196, !4197, !4231, !4232, !4233, !4234, !4235, !4236, !4309, !4313, !4314}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4193, file: !139, line: 687, baseType: !2404, size: 32)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4193, file: !139, line: 688, baseType: !4172, size: 6016, offset: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4193, file: !139, line: 689, baseType: !4198, size: 64, offset: 6080)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4207, !4208, !4209, !4210, !4211, !4230}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4199, file: !272, line: 102, baseType: !365, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4199, file: !272, line: 103, baseType: !584, size: 128, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4199, file: !272, line: 104, baseType: !584, size: 128, offset: 192)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4199, file: !272, line: 105, baseType: !384, size: 64, offset: 320)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4199, file: !272, line: 106, baseType: !4206, size: 48, offset: 384)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 48, elements: !2576)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4199, file: !272, line: 107, baseType: !364, size: 64, offset: 448)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4199, file: !272, line: 109, baseType: !3542, size: 64, offset: 512)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4199, file: !272, line: 111, baseType: !388, size: 64, offset: 576)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4199, file: !272, line: 113, baseType: !365, size: 32, offset: 640)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4199, file: !272, line: 114, baseType: !4212, size: 64, offset: 704)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4214)
!4214 = !{!4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4229}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4213, file: !272, line: 158, baseType: !584, size: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4213, file: !272, line: 159, baseType: !1855, size: 64, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4213, file: !272, line: 160, baseType: !4198, size: 64, offset: 192)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4213, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4213, file: !272, line: 162, baseType: !365, size: 32, offset: 288)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4213, file: !272, line: 163, baseType: !548, size: 32, offset: 320)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4213, file: !272, line: 167, baseType: !365, size: 32, offset: 352)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4213, file: !272, line: 168, baseType: !365, size: 32, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4213, file: !272, line: 169, baseType: !365, size: 32, offset: 416)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4213, file: !272, line: 171, baseType: !1639, size: 128, offset: 448)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4213, file: !272, line: 173, baseType: !4226, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!365, !760, !7, !364}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4213, file: !272, line: 187, baseType: !364, size: 64, offset: 640)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4199, file: !272, line: 115, baseType: !1407, size: 192, offset: 768)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4193, file: !139, line: 690, baseType: !364, size: 64, offset: 6144)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4193, file: !139, line: 691, baseType: !364, size: 64, offset: 6208)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4193, file: !139, line: 692, baseType: !364, size: 64, offset: 6272)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4193, file: !139, line: 693, baseType: !364, size: 64, offset: 6336)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4193, file: !139, line: 694, baseType: !364, size: 64, offset: 6400)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4193, file: !139, line: 695, baseType: !4237, size: 3648, offset: 6464)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !139, line: 586, size: 3648, elements: !4238)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4302, !4303, !4304, !4305, !4306, !4307, !4308}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4237, file: !139, line: 587, baseType: !548, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4237, file: !139, line: 588, baseType: !145, size: 32, offset: 32)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4237, file: !139, line: 590, baseType: !161, size: 32, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4237, file: !139, line: 591, baseType: !166, size: 32, offset: 96)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4237, file: !139, line: 592, baseType: !170, size: 32, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4237, file: !139, line: 593, baseType: !175, size: 32, offset: 160)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4237, file: !139, line: 594, baseType: !190, size: 32, offset: 192)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4237, file: !139, line: 595, baseType: !548, size: 32, offset: 224)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4237, file: !139, line: 596, baseType: !201, size: 32, offset: 256)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4237, file: !139, line: 597, baseType: !214, size: 32, offset: 288)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4237, file: !139, line: 598, baseType: !548, size: 32, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4237, file: !139, line: 599, baseType: !175, size: 32, offset: 352)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4237, file: !139, line: 600, baseType: !175, size: 32, offset: 384)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4237, file: !139, line: 602, baseType: !221, size: 32, offset: 416)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4237, file: !139, line: 603, baseType: !226, size: 32, offset: 448)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4237, file: !139, line: 605, baseType: !232, size: 32, offset: 480)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4237, file: !139, line: 607, baseType: !253, size: 32, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4237, file: !139, line: 610, baseType: !418, size: 8, offset: 544)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4237, file: !139, line: 611, baseType: !418, size: 8, offset: 552)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4237, file: !139, line: 612, baseType: !418, size: 8, offset: 560)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4237, file: !139, line: 613, baseType: !548, size: 32, offset: 576)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4237, file: !139, line: 614, baseType: !548, size: 32, offset: 608)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4237, file: !139, line: 615, baseType: !418, size: 8, offset: 640)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4237, file: !139, line: 621, baseType: !4263, size: 384, offset: 672)
!4263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4264, size: 384, elements: !1048)
!4264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4237, file: !139, line: 616, size: 128, elements: !4265)
!4265 = !{!4266, !4267, !4268, !4269}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4264, file: !139, line: 617, baseType: !418, size: 8)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4264, file: !139, line: 618, baseType: !175, size: 32, offset: 32)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4264, file: !139, line: 619, baseType: !145, size: 32, offset: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4264, file: !139, line: 620, baseType: !418, size: 8, offset: 96)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4237, file: !139, line: 624, baseType: !548, size: 32, offset: 1056)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4237, file: !139, line: 627, baseType: !548, size: 32, offset: 1088)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4237, file: !139, line: 630, baseType: !418, size: 8, offset: 1120)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4237, file: !139, line: 631, baseType: !418, size: 8, offset: 1128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4237, file: !139, line: 632, baseType: !418, size: 8, offset: 1136)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4237, file: !139, line: 633, baseType: !418, size: 8, offset: 1144)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4237, file: !139, line: 634, baseType: !418, size: 8, offset: 1152)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4237, file: !139, line: 635, baseType: !418, size: 8, offset: 1160)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4237, file: !139, line: 637, baseType: !418, size: 8, offset: 1168)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4237, file: !139, line: 638, baseType: !418, size: 8, offset: 1176)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4237, file: !139, line: 639, baseType: !418, size: 8, offset: 1184)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4237, file: !139, line: 640, baseType: !418, size: 8, offset: 1192)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4237, file: !139, line: 641, baseType: !418, size: 8, offset: 1200)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4237, file: !139, line: 642, baseType: !418, size: 8, offset: 1208)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4237, file: !139, line: 643, baseType: !418, size: 8, offset: 1216)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4237, file: !139, line: 644, baseType: !418, size: 8, offset: 1224)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4237, file: !139, line: 645, baseType: !418, size: 8, offset: 1232)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4237, file: !139, line: 647, baseType: !548, size: 32, offset: 1248)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4237, file: !139, line: 650, baseType: !4289, size: 296, offset: 1280)
!4289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !95, line: 825, size: 296, elements: !4290)
!4290 = !{!4291, !4292}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4289, file: !95, line: 826, baseType: !419, size: 8)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4289, file: !95, line: 827, baseType: !4293, size: 288, offset: 8)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4294, size: 288, elements: !2477)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !95, line: 803, size: 72, elements: !4295)
!4295 = !{!4296, !4297}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4294, file: !95, line: 804, baseType: !419, size: 8)
!4297 = !DIDerivedType(tag: DW_TAG_member, scope: !4294, file: !95, line: 805, baseType: !4298, size: 64, offset: 8)
!4298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4294, file: !95, line: 805, size: 64, elements: !4299)
!4299 = !{!4300, !4301}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4298, file: !95, line: 806, baseType: !368, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4298, file: !95, line: 807, baseType: !619, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4237, file: !139, line: 651, baseType: !4289, size: 296, offset: 1576)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4237, file: !139, line: 652, baseType: !4289, size: 296, offset: 1872)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4237, file: !139, line: 653, baseType: !4289, size: 296, offset: 2168)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4237, file: !139, line: 654, baseType: !4289, size: 296, offset: 2464)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4237, file: !139, line: 655, baseType: !4289, size: 296, offset: 2760)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4237, file: !139, line: 656, baseType: !4289, size: 296, offset: 3056)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4237, file: !139, line: 657, baseType: !4289, size: 296, offset: 3352)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4193, file: !139, line: 698, baseType: !4310, size: 64, offset: 10112)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4311, size: 64)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!365, !364, !365, !365, !365}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4193, file: !139, line: 699, baseType: !365, size: 32, offset: 10176)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4193, file: !139, line: 700, baseType: !7, size: 32, offset: 10208)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4172, file: !139, line: 441, baseType: !4189, size: 64, offset: 1408)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4172, file: !139, line: 442, baseType: !4189, size: 64, offset: 1472)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4172, file: !139, line: 444, baseType: !4318, size: 64, offset: 1536)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!365, !4192}
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4172, file: !139, line: 445, baseType: !4318, size: 64, offset: 1600)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4172, file: !139, line: 447, baseType: !4323, size: 64, offset: 1664)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!365, !4192, !4326, !365}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4172, file: !139, line: 450, baseType: !4329, size: 64, offset: 1728)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!365, !4192, !883, !7, !440, !4332}
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4172, file: !139, line: 457, baseType: !4334, size: 64, offset: 1792)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!138, !4192}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4172, file: !139, line: 460, baseType: !4318, size: 64, offset: 1856)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4172, file: !139, line: 461, baseType: !4339, size: 64, offset: 1920)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!365, !4192, !4342}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !139, line: 69, size: 96, elements: !4344)
!4344 = !{!4345, !4346, !4347}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4343, file: !139, line: 70, baseType: !365, size: 32)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4343, file: !139, line: 71, baseType: !365, size: 32, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4343, file: !139, line: 72, baseType: !365, size: 32, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4172, file: !139, line: 463, baseType: !4349, size: 64, offset: 1984)
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = !DISubroutineType(types: !4351)
!4351 = !{!365, !4192, !4352}
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4172, file: !139, line: 466, baseType: !4354, size: 64, offset: 2048)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!365, !4192, !4332}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4172, file: !139, line: 467, baseType: !4358, size: 64, offset: 2112)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!365, !4192, !2875}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4172, file: !139, line: 468, baseType: !4362, size: 64, offset: 2176)
!4362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4363, size: 64)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{!365, !4192, !4365}
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4172, file: !139, line: 469, baseType: !4362, size: 64, offset: 2240)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4172, file: !139, line: 470, baseType: !4358, size: 64, offset: 2304)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4172, file: !139, line: 472, baseType: !4318, size: 64, offset: 2368)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4172, file: !139, line: 473, baseType: !4370, size: 64, offset: 2432)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{!365, !4192, !4373}
!4373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4374, size: 64)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !95, line: 173, size: 56, elements: !4375)
!4375 = !{!4376, !4378}
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4374, file: !95, line: 174, baseType: !4377, size: 48)
!4377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 48, elements: !2576)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4374, file: !95, line: 175, baseType: !419, size: 8, offset: 48)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4172, file: !139, line: 474, baseType: !4380, size: 64, offset: 2496)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!365, !4192, !4383}
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !95, line: 195, size: 96, elements: !4385)
!4385 = !{!4386, !4388, !4389}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4384, file: !95, line: 196, baseType: !4387, size: 32)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 32, elements: !2477)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4384, file: !95, line: 197, baseType: !419, size: 8, offset: 32)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4384, file: !95, line: 198, baseType: !365, size: 32, offset: 64)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4172, file: !139, line: 475, baseType: !4391, size: 64, offset: 2560)
!4391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!365, !4192, !259}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4172, file: !139, line: 477, baseType: !4395, size: 64, offset: 2624)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!365, !4192, !166}
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4172, file: !139, line: 478, baseType: !4399, size: 64, offset: 2688)
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = !DISubroutineType(types: !4401)
!4401 = !{!365, !4192, !161}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4172, file: !139, line: 480, baseType: !4403, size: 64, offset: 2752)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!365, !4192, !375}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4172, file: !139, line: 481, baseType: !4407, size: 64, offset: 2816)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!365, !4192, !533}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4172, file: !139, line: 482, baseType: !4411, size: 64, offset: 2880)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!365, !4192, !365}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4172, file: !139, line: 483, baseType: !4411, size: 64, offset: 2944)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4172, file: !139, line: 484, baseType: !4318, size: 64, offset: 3008)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4172, file: !139, line: 490, baseType: !4417, size: 64, offset: 3072)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!263, !4192}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4172, file: !139, line: 492, baseType: !4421, size: 2304, offset: 3136)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !139, line: 226, size: 2304, elements: !4422)
!4422 = !{!4423, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4450, !4454, !4455, !4456, !4457, !4458, !4459, !4464, !4469, !4473}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4421, file: !139, line: 228, baseType: !4424, size: 1216)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !139, line: 88, size: 1216, elements: !4425)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431, !4432}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4424, file: !139, line: 89, baseType: !3631, size: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4424, file: !139, line: 91, baseType: !548, size: 32, offset: 1024)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4424, file: !139, line: 92, baseType: !548, size: 32, offset: 1056)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4424, file: !139, line: 93, baseType: !548, size: 32, offset: 1088)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4424, file: !139, line: 95, baseType: !548, size: 32, offset: 1120)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4424, file: !139, line: 96, baseType: !548, size: 32, offset: 1152)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4424, file: !139, line: 97, baseType: !548, size: 32, offset: 1184)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4421, file: !139, line: 230, baseType: !4189, size: 64, offset: 1216)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4421, file: !139, line: 231, baseType: !4318, size: 64, offset: 1280)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4421, file: !139, line: 232, baseType: !4318, size: 64, offset: 1344)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4421, file: !139, line: 233, baseType: !4318, size: 64, offset: 1408)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4421, file: !139, line: 234, baseType: !4318, size: 64, offset: 1472)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4421, file: !139, line: 237, baseType: !4318, size: 64, offset: 1536)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4421, file: !139, line: 238, baseType: !4440, size: 64, offset: 1600)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!365, !4192, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !139, line: 114, size: 192, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4444, file: !139, line: 115, baseType: !7, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4444, file: !139, line: 116, baseType: !7, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4444, file: !139, line: 117, baseType: !7, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4444, file: !139, line: 118, baseType: !366, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4421, file: !139, line: 240, baseType: !4451, size: 64, offset: 1664)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!365, !4192, !364}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4421, file: !139, line: 242, baseType: !4358, size: 64, offset: 1728)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4421, file: !139, line: 243, baseType: !4358, size: 64, offset: 1792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4421, file: !139, line: 244, baseType: !4358, size: 64, offset: 1856)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4421, file: !139, line: 248, baseType: !4358, size: 64, offset: 1920)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4421, file: !139, line: 249, baseType: !4362, size: 64, offset: 1984)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4421, file: !139, line: 250, baseType: !4460, size: 64, offset: 2048)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!365, !4192, !4463}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4421, file: !139, line: 258, baseType: !4465, size: 64, offset: 2112)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!365, !4192, !4468, !365}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4421, file: !139, line: 267, baseType: !4470, size: 64, offset: 2176)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{!365, !4192, !548}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4421, file: !139, line: 268, baseType: !4470, size: 64, offset: 2240)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4172, file: !139, line: 493, baseType: !4475, size: 576, offset: 5440)
!4475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !139, line: 302, size: 576, elements: !4476)
!4476 = !{!4477, !4481, !4485, !4486, !4487, !4488, !4489, !4490, !4491}
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4475, file: !139, line: 304, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !139, line: 276, size: 64, elements: !4479)
!4479 = !{!4480}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4478, file: !139, line: 277, baseType: !406, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4475, file: !139, line: 306, baseType: !4482, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DISubroutineType(types: !4484)
!4484 = !{null, !4192, !4443}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4475, file: !139, line: 308, baseType: !4362, size: 64, offset: 128)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4475, file: !139, line: 309, baseType: !4460, size: 64, offset: 192)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4475, file: !139, line: 310, baseType: !4189, size: 64, offset: 256)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4475, file: !139, line: 311, baseType: !4189, size: 64, offset: 320)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4475, file: !139, line: 312, baseType: !4189, size: 64, offset: 384)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4475, file: !139, line: 313, baseType: !4411, size: 64, offset: 448)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4475, file: !139, line: 316, baseType: !4451, size: 64, offset: 512)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !385, size: 112, elements: !4493)
!4493 = !{!4494}
!4494 = !DISubrange(count: 14)
!4495 = !{i32 7, !"Dwarf Version", i32 4}
!4496 = !{i32 2, !"Debug Info Version", i32 3}
!4497 = !{i32 1, !"wchar_size", i32 2}
!4498 = !{i32 1, !"Code Model", i32 2}
!4499 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4500 = distinct !DISubprogram(name: "s5h1420_get_tuner_i2c_adapter", scope: !3, file: !3, line: 862, type: !4501, scopeLine: 863, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!485, !4192}
!4503 = !DILocalVariable(name: "fe", arg: 1, scope: !4500, file: !3, line: 862, type: !4192)
!4504 = !DILocation(line: 862, column: 72, scope: !4500)
!4505 = !DILocalVariable(name: "state", scope: !4500, file: !3, line: 864, type: !4506)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4507, size: 64)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s5h1420_state", file: !3, line: 29, size: 20160, elements: !4508)
!4508 = !{!4509, !4510, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4507, file: !3, line: 30, baseType: !485, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4507, file: !3, line: 31, baseType: !4511, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4513)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "s5h1420_config", file: !4514, line: 15, size: 16, elements: !4515)
!4514 = !DIFile(filename: "drivers/media/dvb-frontends/s5h1420.h", directory: "/home/lizy2001/genbc/linux")
!4515 = !{!4516, !4517, !4518, !4519, !4520}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4513, file: !4514, line: 18, baseType: !418, size: 8)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "invert", scope: !4513, file: !4514, line: 21, baseType: !418, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "repeated_start_workaround", scope: !4513, file: !4514, line: 23, baseType: !418, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "cdclk_polarity", scope: !4513, file: !4514, line: 24, baseType: !418, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "serial_mpeg", scope: !4513, file: !4514, line: 26, baseType: !418, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4507, file: !3, line: 33, baseType: !4193, size: 10240, offset: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_i2c_adapter", scope: !4507, file: !3, line: 34, baseType: !486, size: 7552, offset: 10368)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "CON_1_val", scope: !4507, file: !3, line: 36, baseType: !418, size: 8, offset: 17920)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "postlocked", scope: !4507, file: !3, line: 38, baseType: !418, size: 1, offset: 17928, flags: DIFlagBitField, extraData: i64 17928)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "fclk", scope: !4507, file: !3, line: 39, baseType: !548, size: 32, offset: 17952)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "tunedfreq", scope: !4507, file: !3, line: 40, baseType: !548, size: 32, offset: 17984)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4507, file: !3, line: 41, baseType: !175, size: 32, offset: 18016)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4507, file: !3, line: 42, baseType: !548, size: 32, offset: 18048)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "shadow", scope: !4507, file: !3, line: 48, baseType: !4530, size: 2048, offset: 18080)
!4530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 2048, elements: !4531)
!4531 = !{!4532}
!4532 = !DISubrange(count: 256)
!4533 = !DILocation(line: 864, column: 24, scope: !4500)
!4534 = !DILocation(line: 864, column: 32, scope: !4500)
!4535 = !DILocation(line: 864, column: 36, scope: !4500)
!4536 = !DILocation(line: 865, column: 10, scope: !4500)
!4537 = !DILocation(line: 865, column: 17, scope: !4500)
!4538 = !DILocation(line: 865, column: 2, scope: !4500)
!4539 = distinct !DISubprogram(name: "s5h1420_attach", scope: !3, file: !3, line: 871, type: !4540, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!4192, !4511, !485}
!4542 = !DILocalVariable(name: "config", arg: 1, scope: !4539, file: !3, line: 871, type: !4511)
!4543 = !DILocation(line: 871, column: 66, scope: !4539)
!4544 = !DILocalVariable(name: "i2c", arg: 2, scope: !4539, file: !3, line: 872, type: !485)
!4545 = !DILocation(line: 872, column: 29, scope: !4539)
!4546 = !DILocalVariable(name: "state", scope: !4539, file: !3, line: 875, type: !4506)
!4547 = !DILocation(line: 875, column: 24, scope: !4539)
!4548 = !DILocation(line: 875, column: 32, scope: !4539)
!4549 = !DILocalVariable(name: "i", scope: !4539, file: !3, line: 876, type: !418)
!4550 = !DILocation(line: 876, column: 5, scope: !4539)
!4551 = !DILocation(line: 878, column: 6, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 878, column: 6)
!4553 = !DILocation(line: 878, column: 12, scope: !4552)
!4554 = !DILocation(line: 878, column: 6, scope: !4539)
!4555 = !DILocation(line: 879, column: 3, scope: !4552)
!4556 = !DILocation(line: 882, column: 18, scope: !4539)
!4557 = !DILocation(line: 882, column: 2, scope: !4539)
!4558 = !DILocation(line: 882, column: 9, scope: !4539)
!4559 = !DILocation(line: 882, column: 16, scope: !4539)
!4560 = !DILocation(line: 883, column: 15, scope: !4539)
!4561 = !DILocation(line: 883, column: 2, scope: !4539)
!4562 = !DILocation(line: 883, column: 9, scope: !4539)
!4563 = !DILocation(line: 883, column: 13, scope: !4539)
!4564 = !DILocation(line: 884, column: 2, scope: !4539)
!4565 = !DILocation(line: 884, column: 9, scope: !4539)
!4566 = !DILocation(line: 884, column: 20, scope: !4539)
!4567 = !DILocation(line: 885, column: 2, scope: !4539)
!4568 = !DILocation(line: 885, column: 9, scope: !4539)
!4569 = !DILocation(line: 885, column: 14, scope: !4539)
!4570 = !DILocation(line: 886, column: 2, scope: !4539)
!4571 = !DILocation(line: 886, column: 9, scope: !4539)
!4572 = !DILocation(line: 886, column: 19, scope: !4539)
!4573 = !DILocation(line: 887, column: 2, scope: !4539)
!4574 = !DILocation(line: 887, column: 9, scope: !4539)
!4575 = !DILocation(line: 887, column: 19, scope: !4539)
!4576 = !DILocation(line: 888, column: 2, scope: !4539)
!4577 = !DILocation(line: 888, column: 9, scope: !4539)
!4578 = !DILocation(line: 888, column: 21, scope: !4539)
!4579 = !DILocation(line: 891, column: 22, scope: !4539)
!4580 = !DILocation(line: 891, column: 6, scope: !4539)
!4581 = !DILocation(line: 891, column: 4, scope: !4539)
!4582 = !DILocation(line: 892, column: 6, scope: !4583)
!4583 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 892, column: 6)
!4584 = !DILocation(line: 892, column: 8, scope: !4583)
!4585 = !DILocation(line: 892, column: 6, scope: !4539)
!4586 = !DILocation(line: 893, column: 3, scope: !4583)
!4587 = !DILocation(line: 895, column: 9, scope: !4539)
!4588 = !DILocation(line: 895, column: 16, scope: !4539)
!4589 = !DILocation(line: 895, column: 2, scope: !4539)
!4590 = !DILocation(line: 897, column: 9, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 897, column: 2)
!4592 = !DILocation(line: 897, column: 7, scope: !4591)
!4593 = !DILocation(line: 897, column: 14, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4591, file: !3, line: 897, column: 2)
!4595 = !DILocation(line: 897, column: 16, scope: !4594)
!4596 = !DILocation(line: 897, column: 2, scope: !4591)
!4597 = !DILocation(line: 898, column: 38, scope: !4594)
!4598 = !DILocation(line: 898, column: 45, scope: !4594)
!4599 = !DILocation(line: 898, column: 22, scope: !4594)
!4600 = !DILocation(line: 898, column: 3, scope: !4594)
!4601 = !DILocation(line: 898, column: 10, scope: !4594)
!4602 = !DILocation(line: 898, column: 17, scope: !4594)
!4603 = !DILocation(line: 898, column: 20, scope: !4594)
!4604 = !DILocation(line: 897, column: 25, scope: !4594)
!4605 = !DILocation(line: 897, column: 2, scope: !4594)
!4606 = distinct !{!4606, !4596, !4607}
!4607 = !DILocation(line: 898, column: 46, scope: !4591)
!4608 = !DILocation(line: 901, column: 10, scope: !4539)
!4609 = !DILocation(line: 901, column: 17, scope: !4539)
!4610 = !DILocation(line: 901, column: 26, scope: !4539)
!4611 = !DILocation(line: 901, column: 2, scope: !4539)
!4612 = !DILocation(line: 902, column: 37, scope: !4539)
!4613 = !DILocation(line: 902, column: 2, scope: !4539)
!4614 = !DILocation(line: 902, column: 9, scope: !4539)
!4615 = !DILocation(line: 902, column: 18, scope: !4539)
!4616 = !DILocation(line: 902, column: 35, scope: !4539)
!4617 = !DILocation(line: 905, column: 10, scope: !4539)
!4618 = !DILocation(line: 905, column: 17, scope: !4539)
!4619 = !DILocation(line: 905, column: 35, scope: !4539)
!4620 = !DILocation(line: 905, column: 2, scope: !4539)
!4621 = !DILocation(line: 907, column: 2, scope: !4539)
!4622 = !DILocation(line: 907, column: 9, scope: !4539)
!4623 = !DILocation(line: 907, column: 27, scope: !4539)
!4624 = !DILocation(line: 907, column: 37, scope: !4539)
!4625 = !DILocation(line: 908, column: 2, scope: !4539)
!4626 = !DILocation(line: 908, column: 9, scope: !4539)
!4627 = !DILocation(line: 908, column: 27, scope: !4539)
!4628 = !DILocation(line: 908, column: 37, scope: !4539)
!4629 = !DILocation(line: 909, column: 20, scope: !4539)
!4630 = !DILocation(line: 909, column: 27, scope: !4539)
!4631 = !DILocation(line: 909, column: 46, scope: !4539)
!4632 = !DILocation(line: 909, column: 2, scope: !4539)
!4633 = !DILocation(line: 910, column: 23, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4539, file: !3, line: 910, column: 6)
!4635 = !DILocation(line: 910, column: 30, scope: !4634)
!4636 = !DILocation(line: 910, column: 6, scope: !4634)
!4637 = !DILocation(line: 910, column: 49, scope: !4634)
!4638 = !DILocation(line: 910, column: 6, scope: !4539)
!4639 = !DILocation(line: 911, column: 3, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 910, column: 54)
!4641 = !DILocation(line: 912, column: 3, scope: !4640)
!4642 = !DILocation(line: 915, column: 10, scope: !4539)
!4643 = !DILocation(line: 915, column: 17, scope: !4539)
!4644 = !DILocation(line: 915, column: 2, scope: !4539)
!4645 = !DILabel(scope: !4539, name: "error", file: !3, line: 917)
!4646 = !DILocation(line: 917, column: 1, scope: !4539)
!4647 = !DILocation(line: 918, column: 8, scope: !4539)
!4648 = !DILocation(line: 918, column: 2, scope: !4539)
!4649 = !DILocation(line: 919, column: 2, scope: !4539)
!4650 = !DILocation(line: 920, column: 1, scope: !4539)
!4651 = distinct !DISubprogram(name: "kzalloc", scope: !355, file: !355, line: 662, type: !4652, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4652 = !DISubroutineType(types: !4653)
!4653 = !{!364, !972, !362}
!4654 = !DILocalVariable(name: "s", arg: 1, scope: !4655, file: !355, line: 445, type: !1317)
!4655 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !355, file: !355, line: 445, type: !4656, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4656 = !DISubroutineType(types: !4657)
!4657 = !{!364, !1317, !362, !972}
!4658 = !DILocation(line: 445, column: 72, scope: !4655, inlinedAt: !4659)
!4659 = distinct !DILocation(line: 552, column: 10, scope: !4660, inlinedAt: !4663)
!4660 = distinct !DILexicalBlock(scope: !4661, file: !355, line: 540, column: 34)
!4661 = distinct !DILexicalBlock(scope: !4662, file: !355, line: 540, column: 6)
!4662 = distinct !DISubprogram(name: "kmalloc", scope: !355, file: !355, line: 538, type: !4652, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4663 = distinct !DILocation(line: 664, column: 9, scope: !4651)
!4664 = !DILocalVariable(name: "flags", arg: 2, scope: !4655, file: !355, line: 446, type: !362)
!4665 = !DILocation(line: 446, column: 9, scope: !4655, inlinedAt: !4659)
!4666 = !DILocalVariable(name: "size", arg: 3, scope: !4655, file: !355, line: 446, type: !972)
!4667 = !DILocation(line: 446, column: 23, scope: !4655, inlinedAt: !4659)
!4668 = !DILocalVariable(name: "ret", scope: !4655, file: !355, line: 448, type: !364)
!4669 = !DILocation(line: 448, column: 8, scope: !4655, inlinedAt: !4659)
!4670 = !DILocalVariable(name: "flags", arg: 1, scope: !4671, file: !355, line: 318, type: !362)
!4671 = distinct !DISubprogram(name: "kmalloc_type", scope: !355, file: !355, line: 318, type: !4672, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!354, !362}
!4674 = !DILocation(line: 318, column: 67, scope: !4671, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 553, column: 20, scope: !4660, inlinedAt: !4663)
!4676 = !DILocalVariable(name: "size", arg: 1, scope: !4677, file: !355, line: 346, type: !972)
!4677 = distinct !DISubprogram(name: "kmalloc_index", scope: !355, file: !355, line: 346, type: !4678, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!7, !972}
!4680 = !DILocation(line: 346, column: 58, scope: !4677, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 547, column: 11, scope: !4660, inlinedAt: !4663)
!4682 = !DILocalVariable(name: "size", arg: 1, scope: !4683, file: !355, line: 472, type: !972)
!4683 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !355, file: !355, line: 472, type: !4684, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!364, !972, !362, !7}
!4686 = !DILocation(line: 472, column: 28, scope: !4683, inlinedAt: !4687)
!4687 = distinct !DILocation(line: 481, column: 9, scope: !4688, inlinedAt: !4689)
!4688 = distinct !DISubprogram(name: "kmalloc_large", scope: !355, file: !355, line: 478, type: !4652, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4689 = distinct !DILocation(line: 545, column: 11, scope: !4690, inlinedAt: !4663)
!4690 = distinct !DILexicalBlock(scope: !4660, file: !355, line: 544, column: 7)
!4691 = !DILocalVariable(name: "flags", arg: 2, scope: !4683, file: !355, line: 472, type: !362)
!4692 = !DILocation(line: 472, column: 40, scope: !4683, inlinedAt: !4687)
!4693 = !DILocalVariable(name: "order", arg: 3, scope: !4683, file: !355, line: 472, type: !7)
!4694 = !DILocation(line: 472, column: 60, scope: !4683, inlinedAt: !4687)
!4695 = !DILocalVariable(name: "size", arg: 1, scope: !4688, file: !355, line: 478, type: !972)
!4696 = !DILocation(line: 478, column: 51, scope: !4688, inlinedAt: !4689)
!4697 = !DILocalVariable(name: "flags", arg: 2, scope: !4688, file: !355, line: 478, type: !362)
!4698 = !DILocation(line: 478, column: 63, scope: !4688, inlinedAt: !4689)
!4699 = !DILocalVariable(name: "order", scope: !4688, file: !355, line: 480, type: !7)
!4700 = !DILocation(line: 480, column: 15, scope: !4688, inlinedAt: !4689)
!4701 = !DILocalVariable(name: "size", arg: 1, scope: !4662, file: !355, line: 538, type: !972)
!4702 = !DILocation(line: 538, column: 45, scope: !4662, inlinedAt: !4663)
!4703 = !DILocalVariable(name: "flags", arg: 2, scope: !4662, file: !355, line: 538, type: !362)
!4704 = !DILocation(line: 538, column: 57, scope: !4662, inlinedAt: !4663)
!4705 = !DILocalVariable(name: "index", scope: !4660, file: !355, line: 542, type: !7)
!4706 = !DILocation(line: 542, column: 16, scope: !4660, inlinedAt: !4663)
!4707 = !DILocalVariable(name: "size", arg: 1, scope: !4651, file: !355, line: 662, type: !972)
!4708 = !DILocation(line: 662, column: 36, scope: !4651)
!4709 = !DILocalVariable(name: "flags", arg: 2, scope: !4651, file: !355, line: 662, type: !362)
!4710 = !DILocation(line: 662, column: 48, scope: !4651)
!4711 = !DILocation(line: 664, column: 17, scope: !4651)
!4712 = !DILocation(line: 664, column: 23, scope: !4651)
!4713 = !DILocation(line: 664, column: 29, scope: !4651)
!4714 = !DILocation(line: 540, column: 27, scope: !4661, inlinedAt: !4663)
!4715 = !DILocation(line: 540, column: 6, scope: !4661, inlinedAt: !4663)
!4716 = !DILocation(line: 540, column: 6, scope: !4662, inlinedAt: !4663)
!4717 = !DILocation(line: 544, column: 7, scope: !4690, inlinedAt: !4663)
!4718 = !DILocation(line: 544, column: 12, scope: !4690, inlinedAt: !4663)
!4719 = !DILocation(line: 544, column: 7, scope: !4660, inlinedAt: !4663)
!4720 = !DILocation(line: 545, column: 25, scope: !4690, inlinedAt: !4663)
!4721 = !DILocation(line: 545, column: 31, scope: !4690, inlinedAt: !4663)
!4722 = !DILocation(line: 480, column: 33, scope: !4688, inlinedAt: !4689)
!4723 = !DILocation(line: 480, column: 23, scope: !4688, inlinedAt: !4689)
!4724 = !DILocation(line: 481, column: 29, scope: !4688, inlinedAt: !4689)
!4725 = !DILocation(line: 481, column: 35, scope: !4688, inlinedAt: !4689)
!4726 = !DILocation(line: 481, column: 42, scope: !4688, inlinedAt: !4689)
!4727 = !DILocation(line: 474, column: 23, scope: !4683, inlinedAt: !4687)
!4728 = !DILocation(line: 474, column: 29, scope: !4683, inlinedAt: !4687)
!4729 = !DILocation(line: 474, column: 36, scope: !4683, inlinedAt: !4687)
!4730 = !DILocation(line: 474, column: 9, scope: !4683, inlinedAt: !4687)
!4731 = !DILocation(line: 545, column: 4, scope: !4690, inlinedAt: !4663)
!4732 = !DILocation(line: 547, column: 25, scope: !4660, inlinedAt: !4663)
!4733 = !DILocation(line: 348, column: 7, scope: !4734, inlinedAt: !4681)
!4734 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 348, column: 6)
!4735 = !DILocation(line: 348, column: 6, scope: !4677, inlinedAt: !4681)
!4736 = !DILocation(line: 349, column: 3, scope: !4734, inlinedAt: !4681)
!4737 = !DILocation(line: 351, column: 6, scope: !4738, inlinedAt: !4681)
!4738 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 351, column: 6)
!4739 = !DILocation(line: 351, column: 11, scope: !4738, inlinedAt: !4681)
!4740 = !DILocation(line: 351, column: 6, scope: !4677, inlinedAt: !4681)
!4741 = !DILocation(line: 352, column: 3, scope: !4738, inlinedAt: !4681)
!4742 = !DILocation(line: 354, column: 32, scope: !4743, inlinedAt: !4681)
!4743 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 354, column: 6)
!4744 = !DILocation(line: 354, column: 37, scope: !4743, inlinedAt: !4681)
!4745 = !DILocation(line: 354, column: 42, scope: !4743, inlinedAt: !4681)
!4746 = !DILocation(line: 354, column: 45, scope: !4743, inlinedAt: !4681)
!4747 = !DILocation(line: 354, column: 50, scope: !4743, inlinedAt: !4681)
!4748 = !DILocation(line: 354, column: 6, scope: !4677, inlinedAt: !4681)
!4749 = !DILocation(line: 355, column: 3, scope: !4743, inlinedAt: !4681)
!4750 = !DILocation(line: 356, column: 32, scope: !4751, inlinedAt: !4681)
!4751 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 356, column: 6)
!4752 = !DILocation(line: 356, column: 37, scope: !4751, inlinedAt: !4681)
!4753 = !DILocation(line: 356, column: 43, scope: !4751, inlinedAt: !4681)
!4754 = !DILocation(line: 356, column: 46, scope: !4751, inlinedAt: !4681)
!4755 = !DILocation(line: 356, column: 51, scope: !4751, inlinedAt: !4681)
!4756 = !DILocation(line: 356, column: 6, scope: !4677, inlinedAt: !4681)
!4757 = !DILocation(line: 357, column: 3, scope: !4751, inlinedAt: !4681)
!4758 = !DILocation(line: 358, column: 6, scope: !4759, inlinedAt: !4681)
!4759 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 358, column: 6)
!4760 = !DILocation(line: 358, column: 11, scope: !4759, inlinedAt: !4681)
!4761 = !DILocation(line: 358, column: 6, scope: !4677, inlinedAt: !4681)
!4762 = !DILocation(line: 358, column: 26, scope: !4759, inlinedAt: !4681)
!4763 = !DILocation(line: 359, column: 6, scope: !4764, inlinedAt: !4681)
!4764 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 359, column: 6)
!4765 = !DILocation(line: 359, column: 11, scope: !4764, inlinedAt: !4681)
!4766 = !DILocation(line: 359, column: 6, scope: !4677, inlinedAt: !4681)
!4767 = !DILocation(line: 359, column: 26, scope: !4764, inlinedAt: !4681)
!4768 = !DILocation(line: 360, column: 6, scope: !4769, inlinedAt: !4681)
!4769 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 360, column: 6)
!4770 = !DILocation(line: 360, column: 11, scope: !4769, inlinedAt: !4681)
!4771 = !DILocation(line: 360, column: 6, scope: !4677, inlinedAt: !4681)
!4772 = !DILocation(line: 360, column: 26, scope: !4769, inlinedAt: !4681)
!4773 = !DILocation(line: 361, column: 6, scope: !4774, inlinedAt: !4681)
!4774 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 361, column: 6)
!4775 = !DILocation(line: 361, column: 11, scope: !4774, inlinedAt: !4681)
!4776 = !DILocation(line: 361, column: 6, scope: !4677, inlinedAt: !4681)
!4777 = !DILocation(line: 361, column: 26, scope: !4774, inlinedAt: !4681)
!4778 = !DILocation(line: 362, column: 6, scope: !4779, inlinedAt: !4681)
!4779 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 362, column: 6)
!4780 = !DILocation(line: 362, column: 11, scope: !4779, inlinedAt: !4681)
!4781 = !DILocation(line: 362, column: 6, scope: !4677, inlinedAt: !4681)
!4782 = !DILocation(line: 362, column: 26, scope: !4779, inlinedAt: !4681)
!4783 = !DILocation(line: 363, column: 6, scope: !4784, inlinedAt: !4681)
!4784 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 363, column: 6)
!4785 = !DILocation(line: 363, column: 11, scope: !4784, inlinedAt: !4681)
!4786 = !DILocation(line: 363, column: 6, scope: !4677, inlinedAt: !4681)
!4787 = !DILocation(line: 363, column: 26, scope: !4784, inlinedAt: !4681)
!4788 = !DILocation(line: 364, column: 6, scope: !4789, inlinedAt: !4681)
!4789 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 364, column: 6)
!4790 = !DILocation(line: 364, column: 11, scope: !4789, inlinedAt: !4681)
!4791 = !DILocation(line: 364, column: 6, scope: !4677, inlinedAt: !4681)
!4792 = !DILocation(line: 364, column: 26, scope: !4789, inlinedAt: !4681)
!4793 = !DILocation(line: 365, column: 6, scope: !4794, inlinedAt: !4681)
!4794 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 365, column: 6)
!4795 = !DILocation(line: 365, column: 11, scope: !4794, inlinedAt: !4681)
!4796 = !DILocation(line: 365, column: 6, scope: !4677, inlinedAt: !4681)
!4797 = !DILocation(line: 365, column: 26, scope: !4794, inlinedAt: !4681)
!4798 = !DILocation(line: 366, column: 6, scope: !4799, inlinedAt: !4681)
!4799 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 366, column: 6)
!4800 = !DILocation(line: 366, column: 11, scope: !4799, inlinedAt: !4681)
!4801 = !DILocation(line: 366, column: 6, scope: !4677, inlinedAt: !4681)
!4802 = !DILocation(line: 366, column: 26, scope: !4799, inlinedAt: !4681)
!4803 = !DILocation(line: 367, column: 6, scope: !4804, inlinedAt: !4681)
!4804 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 367, column: 6)
!4805 = !DILocation(line: 367, column: 11, scope: !4804, inlinedAt: !4681)
!4806 = !DILocation(line: 367, column: 6, scope: !4677, inlinedAt: !4681)
!4807 = !DILocation(line: 367, column: 26, scope: !4804, inlinedAt: !4681)
!4808 = !DILocation(line: 368, column: 6, scope: !4809, inlinedAt: !4681)
!4809 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 368, column: 6)
!4810 = !DILocation(line: 368, column: 11, scope: !4809, inlinedAt: !4681)
!4811 = !DILocation(line: 368, column: 6, scope: !4677, inlinedAt: !4681)
!4812 = !DILocation(line: 368, column: 26, scope: !4809, inlinedAt: !4681)
!4813 = !DILocation(line: 369, column: 6, scope: !4814, inlinedAt: !4681)
!4814 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 369, column: 6)
!4815 = !DILocation(line: 369, column: 11, scope: !4814, inlinedAt: !4681)
!4816 = !DILocation(line: 369, column: 6, scope: !4677, inlinedAt: !4681)
!4817 = !DILocation(line: 369, column: 26, scope: !4814, inlinedAt: !4681)
!4818 = !DILocation(line: 370, column: 6, scope: !4819, inlinedAt: !4681)
!4819 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 370, column: 6)
!4820 = !DILocation(line: 370, column: 11, scope: !4819, inlinedAt: !4681)
!4821 = !DILocation(line: 370, column: 6, scope: !4677, inlinedAt: !4681)
!4822 = !DILocation(line: 370, column: 26, scope: !4819, inlinedAt: !4681)
!4823 = !DILocation(line: 371, column: 6, scope: !4824, inlinedAt: !4681)
!4824 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 371, column: 6)
!4825 = !DILocation(line: 371, column: 11, scope: !4824, inlinedAt: !4681)
!4826 = !DILocation(line: 371, column: 6, scope: !4677, inlinedAt: !4681)
!4827 = !DILocation(line: 371, column: 26, scope: !4824, inlinedAt: !4681)
!4828 = !DILocation(line: 372, column: 6, scope: !4829, inlinedAt: !4681)
!4829 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 372, column: 6)
!4830 = !DILocation(line: 372, column: 11, scope: !4829, inlinedAt: !4681)
!4831 = !DILocation(line: 372, column: 6, scope: !4677, inlinedAt: !4681)
!4832 = !DILocation(line: 372, column: 26, scope: !4829, inlinedAt: !4681)
!4833 = !DILocation(line: 373, column: 6, scope: !4834, inlinedAt: !4681)
!4834 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 373, column: 6)
!4835 = !DILocation(line: 373, column: 11, scope: !4834, inlinedAt: !4681)
!4836 = !DILocation(line: 373, column: 6, scope: !4677, inlinedAt: !4681)
!4837 = !DILocation(line: 373, column: 26, scope: !4834, inlinedAt: !4681)
!4838 = !DILocation(line: 374, column: 6, scope: !4839, inlinedAt: !4681)
!4839 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 374, column: 6)
!4840 = !DILocation(line: 374, column: 11, scope: !4839, inlinedAt: !4681)
!4841 = !DILocation(line: 374, column: 6, scope: !4677, inlinedAt: !4681)
!4842 = !DILocation(line: 374, column: 26, scope: !4839, inlinedAt: !4681)
!4843 = !DILocation(line: 375, column: 6, scope: !4844, inlinedAt: !4681)
!4844 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 375, column: 6)
!4845 = !DILocation(line: 375, column: 11, scope: !4844, inlinedAt: !4681)
!4846 = !DILocation(line: 375, column: 6, scope: !4677, inlinedAt: !4681)
!4847 = !DILocation(line: 375, column: 27, scope: !4844, inlinedAt: !4681)
!4848 = !DILocation(line: 376, column: 6, scope: !4849, inlinedAt: !4681)
!4849 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 376, column: 6)
!4850 = !DILocation(line: 376, column: 11, scope: !4849, inlinedAt: !4681)
!4851 = !DILocation(line: 376, column: 6, scope: !4677, inlinedAt: !4681)
!4852 = !DILocation(line: 376, column: 32, scope: !4849, inlinedAt: !4681)
!4853 = !DILocation(line: 377, column: 6, scope: !4854, inlinedAt: !4681)
!4854 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 377, column: 6)
!4855 = !DILocation(line: 377, column: 11, scope: !4854, inlinedAt: !4681)
!4856 = !DILocation(line: 377, column: 6, scope: !4677, inlinedAt: !4681)
!4857 = !DILocation(line: 377, column: 32, scope: !4854, inlinedAt: !4681)
!4858 = !DILocation(line: 378, column: 6, scope: !4859, inlinedAt: !4681)
!4859 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 378, column: 6)
!4860 = !DILocation(line: 378, column: 11, scope: !4859, inlinedAt: !4681)
!4861 = !DILocation(line: 378, column: 6, scope: !4677, inlinedAt: !4681)
!4862 = !DILocation(line: 378, column: 32, scope: !4859, inlinedAt: !4681)
!4863 = !DILocation(line: 379, column: 6, scope: !4864, inlinedAt: !4681)
!4864 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 379, column: 6)
!4865 = !DILocation(line: 379, column: 11, scope: !4864, inlinedAt: !4681)
!4866 = !DILocation(line: 379, column: 6, scope: !4677, inlinedAt: !4681)
!4867 = !DILocation(line: 379, column: 33, scope: !4864, inlinedAt: !4681)
!4868 = !DILocation(line: 380, column: 6, scope: !4869, inlinedAt: !4681)
!4869 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 380, column: 6)
!4870 = !DILocation(line: 380, column: 11, scope: !4869, inlinedAt: !4681)
!4871 = !DILocation(line: 380, column: 6, scope: !4677, inlinedAt: !4681)
!4872 = !DILocation(line: 380, column: 33, scope: !4869, inlinedAt: !4681)
!4873 = !DILocation(line: 381, column: 6, scope: !4874, inlinedAt: !4681)
!4874 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 381, column: 6)
!4875 = !DILocation(line: 381, column: 11, scope: !4874, inlinedAt: !4681)
!4876 = !DILocation(line: 381, column: 6, scope: !4677, inlinedAt: !4681)
!4877 = !DILocation(line: 381, column: 33, scope: !4874, inlinedAt: !4681)
!4878 = !DILocation(line: 382, column: 2, scope: !4879, inlinedAt: !4681)
!4879 = distinct !DILexicalBlock(scope: !4880, file: !355, line: 382, column: 2)
!4880 = distinct !DILexicalBlock(scope: !4677, file: !355, line: 382, column: 2)
!4881 = !{i32 -2144222818, i32 -2144222789, i32 -2144222743, i32 -2144222685, i32 -2144222631, i32 -2144222577, i32 -2144222522, i32 -2144222491}
!4882 = !DILocation(line: 382, column: 2, scope: !4883, inlinedAt: !4681)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !355, line: 382, column: 2)
!4884 = distinct !DILexicalBlock(scope: !4880, file: !355, line: 382, column: 2)
!4885 = !{i32 -2144222048, i32 -2144222041, i32 -2144221987, i32 -2144221956, i32 -2144221926}
!4886 = !DILocation(line: 382, column: 2, scope: !4884, inlinedAt: !4681)
!4887 = !DILocation(line: 386, column: 1, scope: !4677, inlinedAt: !4681)
!4888 = !DILocation(line: 547, column: 9, scope: !4660, inlinedAt: !4663)
!4889 = !DILocation(line: 549, column: 8, scope: !4890, inlinedAt: !4663)
!4890 = distinct !DILexicalBlock(scope: !4660, file: !355, line: 549, column: 7)
!4891 = !DILocation(line: 549, column: 7, scope: !4660, inlinedAt: !4663)
!4892 = !DILocation(line: 550, column: 4, scope: !4890, inlinedAt: !4663)
!4893 = !DILocation(line: 553, column: 33, scope: !4660, inlinedAt: !4663)
!4894 = !DILocation(line: 325, column: 6, scope: !4895, inlinedAt: !4675)
!4895 = distinct !DILexicalBlock(scope: !4671, file: !355, line: 325, column: 6)
!4896 = !DILocation(line: 325, column: 6, scope: !4671, inlinedAt: !4675)
!4897 = !DILocation(line: 326, column: 3, scope: !4895, inlinedAt: !4675)
!4898 = !DILocation(line: 332, column: 9, scope: !4671, inlinedAt: !4675)
!4899 = !DILocation(line: 332, column: 15, scope: !4671, inlinedAt: !4675)
!4900 = !DILocation(line: 332, column: 2, scope: !4671, inlinedAt: !4675)
!4901 = !DILocation(line: 336, column: 1, scope: !4671, inlinedAt: !4675)
!4902 = !DILocation(line: 553, column: 5, scope: !4660, inlinedAt: !4663)
!4903 = !DILocation(line: 553, column: 41, scope: !4660, inlinedAt: !4663)
!4904 = !DILocation(line: 554, column: 5, scope: !4660, inlinedAt: !4663)
!4905 = !DILocation(line: 554, column: 12, scope: !4660, inlinedAt: !4663)
!4906 = !DILocation(line: 448, column: 31, scope: !4655, inlinedAt: !4659)
!4907 = !DILocation(line: 448, column: 34, scope: !4655, inlinedAt: !4659)
!4908 = !DILocation(line: 448, column: 14, scope: !4655, inlinedAt: !4659)
!4909 = !DILocation(line: 450, column: 22, scope: !4655, inlinedAt: !4659)
!4910 = !DILocation(line: 450, column: 25, scope: !4655, inlinedAt: !4659)
!4911 = !DILocation(line: 450, column: 30, scope: !4655, inlinedAt: !4659)
!4912 = !DILocation(line: 450, column: 36, scope: !4655, inlinedAt: !4659)
!4913 = !DILocation(line: 450, column: 8, scope: !4655, inlinedAt: !4659)
!4914 = !DILocation(line: 450, column: 6, scope: !4655, inlinedAt: !4659)
!4915 = !DILocation(line: 451, column: 9, scope: !4655, inlinedAt: !4659)
!4916 = !DILocation(line: 552, column: 3, scope: !4660, inlinedAt: !4663)
!4917 = !DILocation(line: 557, column: 19, scope: !4662, inlinedAt: !4663)
!4918 = !DILocation(line: 557, column: 25, scope: !4662, inlinedAt: !4663)
!4919 = !DILocation(line: 557, column: 9, scope: !4662, inlinedAt: !4663)
!4920 = !DILocation(line: 557, column: 2, scope: !4662, inlinedAt: !4663)
!4921 = !DILocation(line: 558, column: 1, scope: !4662, inlinedAt: !4663)
!4922 = !DILocation(line: 664, column: 2, scope: !4651)
!4923 = distinct !DISubprogram(name: "s5h1420_readreg", scope: !3, file: !3, line: 65, type: !4924, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!418, !4506, !418}
!4926 = !DILocalVariable(name: "state", arg: 1, scope: !4923, file: !3, line: 65, type: !4506)
!4927 = !DILocation(line: 65, column: 49, scope: !4923)
!4928 = !DILocalVariable(name: "reg", arg: 2, scope: !4923, file: !3, line: 65, type: !418)
!4929 = !DILocation(line: 65, column: 59, scope: !4923)
!4930 = !DILocalVariable(name: "ret", scope: !4923, file: !3, line: 67, type: !365)
!4931 = !DILocation(line: 67, column: 6, scope: !4923)
!4932 = !DILocalVariable(name: "b", scope: !4923, file: !3, line: 68, type: !4933)
!4933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 16, elements: !2517)
!4934 = !DILocation(line: 68, column: 5, scope: !4923)
!4935 = !DILocalVariable(name: "msg", scope: !4923, file: !3, line: 69, type: !4936)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4142, size: 384, elements: !1048)
!4937 = !DILocation(line: 69, column: 17, scope: !4923)
!4938 = !DILocation(line: 69, column: 25, scope: !4923)
!4939 = !DILocation(line: 70, column: 3, scope: !4923)
!4940 = !DILocation(line: 70, column: 13, scope: !4923)
!4941 = !DILocation(line: 70, column: 20, scope: !4923)
!4942 = !DILocation(line: 70, column: 28, scope: !4923)
!4943 = !DILocation(line: 70, column: 62, scope: !4923)
!4944 = !DILocation(line: 71, column: 3, scope: !4923)
!4945 = !DILocation(line: 71, column: 13, scope: !4923)
!4946 = !DILocation(line: 71, column: 20, scope: !4923)
!4947 = !DILocation(line: 71, column: 28, scope: !4923)
!4948 = !DILocation(line: 72, column: 3, scope: !4923)
!4949 = !DILocation(line: 72, column: 13, scope: !4923)
!4950 = !DILocation(line: 72, column: 20, scope: !4923)
!4951 = !DILocation(line: 72, column: 28, scope: !4923)
!4952 = !DILocation(line: 72, column: 69, scope: !4923)
!4953 = !DILocation(line: 75, column: 10, scope: !4923)
!4954 = !DILocation(line: 75, column: 14, scope: !4923)
!4955 = !DILocation(line: 75, column: 19, scope: !4923)
!4956 = !DILocation(line: 75, column: 9, scope: !4923)
!4957 = !DILocation(line: 75, column: 2, scope: !4923)
!4958 = !DILocation(line: 75, column: 7, scope: !4923)
!4959 = !DILocation(line: 76, column: 9, scope: !4923)
!4960 = !DILocation(line: 76, column: 16, scope: !4923)
!4961 = !DILocation(line: 76, column: 24, scope: !4923)
!4962 = !DILocation(line: 76, column: 28, scope: !4923)
!4963 = !DILocation(line: 76, column: 33, scope: !4923)
!4964 = !DILocation(line: 76, column: 2, scope: !4923)
!4965 = !DILocation(line: 76, column: 7, scope: !4923)
!4966 = !DILocation(line: 78, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 78, column: 6)
!4968 = !DILocation(line: 78, column: 13, scope: !4967)
!4969 = !DILocation(line: 78, column: 21, scope: !4967)
!4970 = !DILocation(line: 78, column: 6, scope: !4923)
!4971 = !DILocation(line: 79, column: 22, scope: !4972)
!4972 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 78, column: 48)
!4973 = !DILocation(line: 79, column: 29, scope: !4972)
!4974 = !DILocation(line: 79, column: 34, scope: !4972)
!4975 = !DILocation(line: 79, column: 9, scope: !4972)
!4976 = !DILocation(line: 79, column: 7, scope: !4972)
!4977 = !DILocation(line: 80, column: 7, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4972, file: !3, line: 80, column: 7)
!4979 = !DILocation(line: 80, column: 11, scope: !4978)
!4980 = !DILocation(line: 80, column: 7, scope: !4972)
!4981 = !DILocation(line: 81, column: 11, scope: !4978)
!4982 = !DILocation(line: 81, column: 4, scope: !4978)
!4983 = !DILocation(line: 82, column: 2, scope: !4972)
!4984 = !DILocation(line: 83, column: 22, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 82, column: 9)
!4986 = !DILocation(line: 83, column: 29, scope: !4985)
!4987 = !DILocation(line: 83, column: 35, scope: !4985)
!4988 = !DILocation(line: 83, column: 9, scope: !4985)
!4989 = !DILocation(line: 83, column: 7, scope: !4985)
!4990 = !DILocation(line: 84, column: 7, scope: !4991)
!4991 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 84, column: 7)
!4992 = !DILocation(line: 84, column: 11, scope: !4991)
!4993 = !DILocation(line: 84, column: 7, scope: !4985)
!4994 = !DILocation(line: 85, column: 11, scope: !4991)
!4995 = !DILocation(line: 85, column: 4, scope: !4991)
!4996 = !DILocation(line: 86, column: 22, scope: !4985)
!4997 = !DILocation(line: 86, column: 29, scope: !4985)
!4998 = !DILocation(line: 86, column: 35, scope: !4985)
!4999 = !DILocation(line: 86, column: 9, scope: !4985)
!5000 = !DILocation(line: 86, column: 7, scope: !4985)
!5001 = !DILocation(line: 87, column: 7, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 87, column: 7)
!5003 = !DILocation(line: 87, column: 11, scope: !5002)
!5004 = !DILocation(line: 87, column: 7, scope: !4985)
!5005 = !DILocation(line: 88, column: 11, scope: !5002)
!5006 = !DILocation(line: 88, column: 4, scope: !5002)
!5007 = !DILocation(line: 93, column: 9, scope: !4923)
!5008 = !DILocation(line: 93, column: 2, scope: !4923)
!5009 = !DILocation(line: 94, column: 1, scope: !4923)
!5010 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !479, file: !479, line: 732, type: !5011, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{null, !485, !364}
!5013 = !DILocalVariable(name: "adap", arg: 1, scope: !5010, file: !479, line: 732, type: !485)
!5014 = !DILocation(line: 732, column: 57, scope: !5010)
!5015 = !DILocalVariable(name: "data", arg: 2, scope: !5010, file: !479, line: 732, type: !364)
!5016 = !DILocation(line: 732, column: 69, scope: !5010)
!5017 = !DILocation(line: 734, column: 19, scope: !5010)
!5018 = !DILocation(line: 734, column: 25, scope: !5010)
!5019 = !DILocation(line: 734, column: 30, scope: !5010)
!5020 = !DILocation(line: 734, column: 2, scope: !5010)
!5021 = !DILocation(line: 735, column: 1, scope: !5010)
!5022 = distinct !DISubprogram(name: "get_order", scope: !5023, file: !5023, line: 29, type: !5024, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5023 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!365, !533}
!5026 = !DILocalVariable(name: "x", arg: 1, scope: !5027, file: !5028, line: 366, type: !368)
!5027 = distinct !DISubprogram(name: "fls64", scope: !5028, file: !5028, line: 366, type: !5029, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5028 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5029 = !DISubroutineType(types: !5030)
!5030 = !{!365, !368}
!5031 = !DILocation(line: 366, column: 40, scope: !5027, inlinedAt: !5032)
!5032 = distinct !DILocation(line: 46, column: 9, scope: !5022)
!5033 = !DILocalVariable(name: "bitpos", scope: !5027, file: !5028, line: 368, type: !365)
!5034 = !DILocation(line: 368, column: 6, scope: !5027, inlinedAt: !5032)
!5035 = !DILocalVariable(name: "size", arg: 1, scope: !5022, file: !5023, line: 29, type: !533)
!5036 = !DILocation(line: 29, column: 63, scope: !5022)
!5037 = !DILocation(line: 31, column: 27, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5022, file: !5023, line: 31, column: 6)
!5039 = !DILocation(line: 31, column: 6, scope: !5038)
!5040 = !DILocation(line: 31, column: 6, scope: !5022)
!5041 = !DILocation(line: 32, column: 8, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !5023, line: 32, column: 7)
!5043 = distinct !DILexicalBlock(scope: !5038, file: !5023, line: 31, column: 34)
!5044 = !DILocation(line: 32, column: 7, scope: !5043)
!5045 = !DILocation(line: 33, column: 4, scope: !5042)
!5046 = !DILocation(line: 35, column: 7, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5043, file: !5023, line: 35, column: 7)
!5048 = !DILocation(line: 35, column: 12, scope: !5047)
!5049 = !DILocation(line: 35, column: 7, scope: !5043)
!5050 = !DILocation(line: 36, column: 4, scope: !5047)
!5051 = !DILocation(line: 38, column: 10, scope: !5043)
!5052 = !DILocation(line: 38, column: 28, scope: !5043)
!5053 = !DILocation(line: 38, column: 41, scope: !5043)
!5054 = !DILocation(line: 38, column: 3, scope: !5043)
!5055 = !DILocation(line: 41, column: 6, scope: !5022)
!5056 = !DILocation(line: 42, column: 7, scope: !5022)
!5057 = !DILocation(line: 46, column: 15, scope: !5022)
!5058 = !DILocation(line: 374, column: 2, scope: !5027, inlinedAt: !5032)
!5059 = !DILocation(line: 376, column: 14, scope: !5027, inlinedAt: !5032)
!5060 = !{i32 263938}
!5061 = !DILocation(line: 377, column: 9, scope: !5027, inlinedAt: !5032)
!5062 = !DILocation(line: 377, column: 16, scope: !5027, inlinedAt: !5032)
!5063 = !DILocation(line: 46, column: 2, scope: !5022)
!5064 = !DILocation(line: 48, column: 1, scope: !5022)
!5065 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5066, file: !5066, line: 30, type: !5067, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5066 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!365, !366}
!5069 = !DILocation(line: 366, column: 40, scope: !5027, inlinedAt: !5070)
!5070 = distinct !DILocation(line: 32, column: 9, scope: !5065)
!5071 = !DILocation(line: 368, column: 6, scope: !5027, inlinedAt: !5070)
!5072 = !DILocalVariable(name: "n", arg: 1, scope: !5065, file: !5066, line: 30, type: !366)
!5073 = !DILocation(line: 30, column: 21, scope: !5065)
!5074 = !DILocation(line: 32, column: 15, scope: !5065)
!5075 = !DILocation(line: 374, column: 2, scope: !5027, inlinedAt: !5070)
!5076 = !DILocation(line: 376, column: 14, scope: !5027, inlinedAt: !5070)
!5077 = !DILocation(line: 377, column: 9, scope: !5027, inlinedAt: !5070)
!5078 = !DILocation(line: 377, column: 16, scope: !5027, inlinedAt: !5070)
!5079 = !DILocation(line: 32, column: 18, scope: !5065)
!5080 = !DILocation(line: 32, column: 2, scope: !5065)
!5081 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5082, file: !5082, line: 137, type: !5083, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5082 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!364, !1317, !2245, !972, !362}
!5085 = !DILocalVariable(name: "s", arg: 1, scope: !5081, file: !5082, line: 137, type: !1317)
!5086 = !DILocation(line: 137, column: 54, scope: !5081)
!5087 = !DILocalVariable(name: "object", arg: 2, scope: !5081, file: !5082, line: 137, type: !2245)
!5088 = !DILocation(line: 137, column: 69, scope: !5081)
!5089 = !DILocalVariable(name: "size", arg: 3, scope: !5081, file: !5082, line: 138, type: !972)
!5090 = !DILocation(line: 138, column: 12, scope: !5081)
!5091 = !DILocalVariable(name: "flags", arg: 4, scope: !5081, file: !5082, line: 138, type: !362)
!5092 = !DILocation(line: 138, column: 24, scope: !5081)
!5093 = !DILocation(line: 140, column: 17, scope: !5081)
!5094 = !DILocation(line: 140, column: 2, scope: !5081)
!5095 = distinct !DISubprogram(name: "s5h1420_tuner_i2c_tuner_xfer", scope: !3, file: !3, line: 833, type: !483, scopeLine: 834, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5096 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !5095, file: !3, line: 833, type: !485)
!5097 = !DILocation(line: 833, column: 61, scope: !5095)
!5098 = !DILocalVariable(name: "msg", arg: 2, scope: !5095, file: !3, line: 833, type: !4141)
!5099 = !DILocation(line: 833, column: 86, scope: !5095)
!5100 = !DILocalVariable(name: "num", arg: 3, scope: !5095, file: !3, line: 833, type: !365)
!5101 = !DILocation(line: 833, column: 97, scope: !5095)
!5102 = !DILocalVariable(name: "state", scope: !5095, file: !3, line: 835, type: !4506)
!5103 = !DILocation(line: 835, column: 24, scope: !5095)
!5104 = !DILocation(line: 835, column: 49, scope: !5095)
!5105 = !DILocation(line: 835, column: 32, scope: !5095)
!5106 = !DILocalVariable(name: "m", scope: !5095, file: !3, line: 836, type: !4936)
!5107 = !DILocation(line: 836, column: 17, scope: !5095)
!5108 = !DILocalVariable(name: "tx_open", scope: !5095, file: !3, line: 837, type: !4933)
!5109 = !DILocation(line: 837, column: 5, scope: !5095)
!5110 = !DILocation(line: 837, column: 18, scope: !5095)
!5111 = !DILocation(line: 837, column: 27, scope: !5095)
!5112 = !DILocation(line: 837, column: 34, scope: !5095)
!5113 = !DILocation(line: 837, column: 44, scope: !5095)
!5114 = !DILocation(line: 839, column: 10, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5095, file: !3, line: 839, column: 6)
!5116 = !DILocation(line: 839, column: 8, scope: !5115)
!5117 = !DILocation(line: 839, column: 6, scope: !5115)
!5118 = !DILocation(line: 839, column: 14, scope: !5115)
!5119 = !DILocation(line: 839, column: 6, scope: !5095)
!5120 = !DILocation(line: 842, column: 26, scope: !5121)
!5121 = distinct !DILexicalBlock(scope: !5115, file: !3, line: 839, column: 31)
!5122 = !DILocation(line: 840, column: 3, scope: !5121)
!5123 = !DILocation(line: 843, column: 3, scope: !5121)
!5124 = !DILocation(line: 846, column: 2, scope: !5095)
!5125 = !DILocation(line: 846, column: 45, scope: !5095)
!5126 = !DILocation(line: 846, column: 43, scope: !5095)
!5127 = !DILocation(line: 846, column: 40, scope: !5095)
!5128 = !DILocation(line: 846, column: 38, scope: !5095)
!5129 = !DILocation(line: 848, column: 14, scope: !5095)
!5130 = !DILocation(line: 848, column: 21, scope: !5095)
!5131 = !DILocation(line: 848, column: 29, scope: !5095)
!5132 = !DILocation(line: 848, column: 2, scope: !5095)
!5133 = !DILocation(line: 848, column: 7, scope: !5095)
!5134 = !DILocation(line: 848, column: 12, scope: !5095)
!5135 = !DILocation(line: 849, column: 14, scope: !5095)
!5136 = !DILocation(line: 849, column: 2, scope: !5095)
!5137 = !DILocation(line: 849, column: 7, scope: !5095)
!5138 = !DILocation(line: 849, column: 12, scope: !5095)
!5139 = !DILocation(line: 850, column: 2, scope: !5095)
!5140 = !DILocation(line: 850, column: 7, scope: !5095)
!5141 = !DILocation(line: 850, column: 12, scope: !5095)
!5142 = !DILocation(line: 852, column: 10, scope: !5095)
!5143 = !DILocation(line: 852, column: 2, scope: !5095)
!5144 = !DILocation(line: 852, column: 16, scope: !5095)
!5145 = !DILocation(line: 852, column: 46, scope: !5095)
!5146 = !DILocation(line: 852, column: 44, scope: !5095)
!5147 = !DILocation(line: 854, column: 22, scope: !5095)
!5148 = !DILocation(line: 854, column: 29, scope: !5095)
!5149 = !DILocation(line: 854, column: 34, scope: !5095)
!5150 = !DILocation(line: 854, column: 41, scope: !5095)
!5151 = !DILocation(line: 854, column: 39, scope: !5095)
!5152 = !DILocation(line: 854, column: 9, scope: !5095)
!5153 = !DILocation(line: 854, column: 53, scope: !5095)
!5154 = !DILocation(line: 854, column: 51, scope: !5095)
!5155 = !DILocation(line: 854, column: 46, scope: !5095)
!5156 = !DILocation(line: 854, column: 59, scope: !5095)
!5157 = !DILocation(line: 854, column: 2, scope: !5095)
!5158 = !DILocation(line: 855, column: 1, scope: !5095)
!5159 = distinct !DISubprogram(name: "s5h1420_tuner_i2c_func", scope: !3, file: !3, line: 828, type: !4167, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5160 = !DILocalVariable(name: "adapter", arg: 1, scope: !5159, file: !3, line: 828, type: !485)
!5161 = !DILocation(line: 828, column: 55, scope: !5159)
!5162 = !DILocation(line: 830, column: 2, scope: !5159)
!5163 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !479, file: !479, line: 727, type: !5164, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5164 = !DISubroutineType(types: !5165)
!5165 = !{!364, !5166}
!5166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5167, size: 64)
!5167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!5168 = !DILocalVariable(name: "adap", arg: 1, scope: !5163, file: !479, line: 727, type: !5166)
!5169 = !DILocation(line: 727, column: 64, scope: !5163)
!5170 = !DILocation(line: 729, column: 26, scope: !5163)
!5171 = !DILocation(line: 729, column: 32, scope: !5163)
!5172 = !DILocation(line: 729, column: 9, scope: !5163)
!5173 = !DILocation(line: 729, column: 2, scope: !5163)
!5174 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5175, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!364, !3872}
!5177 = !DILocalVariable(name: "dev", arg: 1, scope: !5174, file: !60, line: 655, type: !3872)
!5178 = !DILocation(line: 655, column: 58, scope: !5174)
!5179 = !DILocation(line: 657, column: 9, scope: !5174)
!5180 = !DILocation(line: 657, column: 14, scope: !5174)
!5181 = !DILocation(line: 657, column: 2, scope: !5174)
!5182 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !5183, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5183 = !DISubroutineType(types: !5184)
!5184 = !{null, !3542, !364}
!5185 = !DILocalVariable(name: "dev", arg: 1, scope: !5182, file: !60, line: 660, type: !3542)
!5186 = !DILocation(line: 660, column: 51, scope: !5182)
!5187 = !DILocalVariable(name: "data", arg: 2, scope: !5182, file: !60, line: 660, type: !364)
!5188 = !DILocation(line: 660, column: 62, scope: !5182)
!5189 = !DILocation(line: 662, column: 21, scope: !5182)
!5190 = !DILocation(line: 662, column: 2, scope: !5182)
!5191 = !DILocation(line: 662, column: 7, scope: !5182)
!5192 = !DILocation(line: 662, column: 19, scope: !5182)
!5193 = !DILocation(line: 663, column: 1, scope: !5182)
!5194 = distinct !DISubprogram(name: "s5h1420_release", scope: !3, file: !3, line: 821, type: !4190, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5195 = !DILocalVariable(name: "fe", arg: 1, scope: !5194, file: !3, line: 821, type: !4192)
!5196 = !DILocation(line: 821, column: 50, scope: !5194)
!5197 = !DILocalVariable(name: "state", scope: !5194, file: !3, line: 823, type: !4506)
!5198 = !DILocation(line: 823, column: 24, scope: !5194)
!5199 = !DILocation(line: 823, column: 32, scope: !5194)
!5200 = !DILocation(line: 823, column: 36, scope: !5194)
!5201 = !DILocation(line: 824, column: 19, scope: !5194)
!5202 = !DILocation(line: 824, column: 26, scope: !5194)
!5203 = !DILocation(line: 824, column: 2, scope: !5194)
!5204 = !DILocation(line: 825, column: 8, scope: !5194)
!5205 = !DILocation(line: 825, column: 2, scope: !5194)
!5206 = !DILocation(line: 826, column: 1, scope: !5194)
!5207 = distinct !DISubprogram(name: "s5h1420_init", scope: !3, file: !3, line: 801, type: !4319, scopeLine: 802, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5208 = !DILocalVariable(name: "fe", arg: 1, scope: !5207, file: !3, line: 801, type: !4192)
!5209 = !DILocation(line: 801, column: 47, scope: !5207)
!5210 = !DILocalVariable(name: "state", scope: !5207, file: !3, line: 803, type: !4506)
!5211 = !DILocation(line: 803, column: 24, scope: !5207)
!5212 = !DILocation(line: 803, column: 32, scope: !5207)
!5213 = !DILocation(line: 803, column: 36, scope: !5207)
!5214 = !DILocation(line: 806, column: 21, scope: !5207)
!5215 = !DILocation(line: 806, column: 28, scope: !5207)
!5216 = !DILocation(line: 806, column: 36, scope: !5207)
!5217 = !DILocation(line: 806, column: 48, scope: !5207)
!5218 = !DILocation(line: 806, column: 2, scope: !5207)
!5219 = !DILocation(line: 806, column: 9, scope: !5207)
!5220 = !DILocation(line: 806, column: 19, scope: !5207)
!5221 = !DILocation(line: 807, column: 19, scope: !5207)
!5222 = !DILocation(line: 807, column: 32, scope: !5207)
!5223 = !DILocation(line: 807, column: 39, scope: !5207)
!5224 = !DILocation(line: 807, column: 2, scope: !5207)
!5225 = !DILocation(line: 808, column: 2, scope: !5207)
!5226 = !DILocation(line: 809, column: 16, scope: !5207)
!5227 = !DILocation(line: 809, column: 2, scope: !5207)
!5228 = !DILocation(line: 811, column: 2, scope: !5207)
!5229 = distinct !DISubprogram(name: "s5h1420_sleep", scope: !3, file: !3, line: 814, type: !4319, scopeLine: 815, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5230 = !DILocalVariable(name: "fe", arg: 1, scope: !5229, file: !3, line: 814, type: !4192)
!5231 = !DILocation(line: 814, column: 47, scope: !5229)
!5232 = !DILocalVariable(name: "state", scope: !5229, file: !3, line: 816, type: !4506)
!5233 = !DILocation(line: 816, column: 24, scope: !5229)
!5234 = !DILocation(line: 816, column: 32, scope: !5229)
!5235 = !DILocation(line: 816, column: 36, scope: !5229)
!5236 = !DILocation(line: 817, column: 2, scope: !5229)
!5237 = !DILocation(line: 817, column: 9, scope: !5229)
!5238 = !DILocation(line: 817, column: 19, scope: !5229)
!5239 = !DILocation(line: 818, column: 26, scope: !5229)
!5240 = !DILocation(line: 818, column: 39, scope: !5229)
!5241 = !DILocation(line: 818, column: 46, scope: !5229)
!5242 = !DILocation(line: 818, column: 9, scope: !5229)
!5243 = !DILocation(line: 818, column: 2, scope: !5229)
!5244 = distinct !DISubprogram(name: "s5h1420_set_frontend", scope: !3, file: !3, line: 628, type: !4319, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5245 = !DILocalVariable(name: "fe", arg: 1, scope: !5244, file: !3, line: 628, type: !4192)
!5246 = !DILocation(line: 628, column: 54, scope: !5244)
!5247 = !DILocalVariable(name: "p", scope: !5244, file: !3, line: 630, type: !4352)
!5248 = !DILocation(line: 630, column: 34, scope: !5244)
!5249 = !DILocation(line: 630, column: 39, scope: !5244)
!5250 = !DILocation(line: 630, column: 43, scope: !5244)
!5251 = !DILocalVariable(name: "state", scope: !5244, file: !3, line: 631, type: !4506)
!5252 = !DILocation(line: 631, column: 24, scope: !5244)
!5253 = !DILocation(line: 631, column: 32, scope: !5244)
!5254 = !DILocation(line: 631, column: 36, scope: !5244)
!5255 = !DILocalVariable(name: "frequency_delta", scope: !5244, file: !3, line: 632, type: !365)
!5256 = !DILocation(line: 632, column: 6, scope: !5244)
!5257 = !DILocalVariable(name: "fesettings", scope: !5244, file: !3, line: 633, type: !4343)
!5258 = !DILocation(line: 633, column: 36, scope: !5244)
!5259 = !DILocation(line: 635, column: 2, scope: !5244)
!5260 = !DILocation(line: 635, column: 2, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5262, file: !3, line: 635, column: 2)
!5262 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 635, column: 2)
!5263 = !DILocation(line: 635, column: 2, scope: !5262)
!5264 = !DILocation(line: 638, column: 28, scope: !5244)
!5265 = !DILocation(line: 638, column: 2, scope: !5244)
!5266 = !DILocation(line: 639, column: 20, scope: !5244)
!5267 = !DILocation(line: 639, column: 23, scope: !5244)
!5268 = !DILocation(line: 639, column: 35, scope: !5244)
!5269 = !DILocation(line: 639, column: 42, scope: !5244)
!5270 = !DILocation(line: 639, column: 33, scope: !5244)
!5271 = !DILocation(line: 639, column: 18, scope: !5244)
!5272 = !DILocation(line: 640, column: 7, scope: !5273)
!5273 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 640, column: 6)
!5274 = !DILocation(line: 640, column: 37, scope: !5273)
!5275 = !DILocation(line: 640, column: 25, scope: !5273)
!5276 = !DILocation(line: 640, column: 23, scope: !5273)
!5277 = !DILocation(line: 640, column: 48, scope: !5273)
!5278 = !DILocation(line: 641, column: 5, scope: !5273)
!5279 = !DILocation(line: 641, column: 34, scope: !5273)
!5280 = !DILocation(line: 641, column: 21, scope: !5273)
!5281 = !DILocation(line: 641, column: 45, scope: !5273)
!5282 = !DILocation(line: 642, column: 5, scope: !5273)
!5283 = !DILocation(line: 642, column: 21, scope: !5273)
!5284 = !DILocation(line: 642, column: 27, scope: !5273)
!5285 = !DILocation(line: 643, column: 5, scope: !5273)
!5286 = !DILocation(line: 643, column: 12, scope: !5273)
!5287 = !DILocation(line: 643, column: 25, scope: !5273)
!5288 = !DILocation(line: 643, column: 28, scope: !5273)
!5289 = !DILocation(line: 643, column: 22, scope: !5273)
!5290 = !DILocation(line: 643, column: 39, scope: !5273)
!5291 = !DILocation(line: 644, column: 5, scope: !5273)
!5292 = !DILocation(line: 644, column: 12, scope: !5273)
!5293 = !DILocation(line: 644, column: 27, scope: !5273)
!5294 = !DILocation(line: 644, column: 30, scope: !5273)
!5295 = !DILocation(line: 644, column: 24, scope: !5273)
!5296 = !DILocation(line: 640, column: 6, scope: !5244)
!5297 = !DILocation(line: 646, column: 7, scope: !5298)
!5298 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 646, column: 7)
!5299 = distinct !DILexicalBlock(scope: !5273, file: !3, line: 644, column: 44)
!5300 = !DILocation(line: 646, column: 11, scope: !5298)
!5301 = !DILocation(line: 646, column: 15, scope: !5298)
!5302 = !DILocation(line: 646, column: 25, scope: !5298)
!5303 = !DILocation(line: 646, column: 7, scope: !5299)
!5304 = !DILocation(line: 647, column: 4, scope: !5305)
!5305 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 646, column: 37)
!5306 = !DILocation(line: 647, column: 8, scope: !5305)
!5307 = !DILocation(line: 647, column: 12, scope: !5305)
!5308 = !DILocation(line: 647, column: 22, scope: !5305)
!5309 = !DILocation(line: 647, column: 33, scope: !5305)
!5310 = !DILocation(line: 648, column: 8, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5305, file: !3, line: 648, column: 8)
!5312 = !DILocation(line: 648, column: 12, scope: !5311)
!5313 = !DILocation(line: 648, column: 16, scope: !5311)
!5314 = !DILocation(line: 648, column: 8, scope: !5305)
!5315 = !DILocation(line: 648, column: 31, scope: !5311)
!5316 = !DILocation(line: 648, column: 35, scope: !5311)
!5317 = !DILocation(line: 648, column: 39, scope: !5311)
!5318 = !DILocation(line: 648, column: 53, scope: !5311)
!5319 = !DILocation(line: 649, column: 3, scope: !5305)
!5320 = !DILocation(line: 650, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 650, column: 7)
!5322 = !DILocation(line: 650, column: 11, scope: !5321)
!5323 = !DILocation(line: 650, column: 15, scope: !5321)
!5324 = !DILocation(line: 650, column: 25, scope: !5321)
!5325 = !DILocation(line: 650, column: 7, scope: !5299)
!5326 = !DILocalVariable(name: "tmp", scope: !5327, file: !3, line: 651, type: !548)
!5327 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 650, column: 40)
!5328 = !DILocation(line: 651, column: 8, scope: !5327)
!5329 = !DILocation(line: 652, column: 4, scope: !5327)
!5330 = !DILocation(line: 652, column: 8, scope: !5327)
!5331 = !DILocation(line: 652, column: 12, scope: !5327)
!5332 = !DILocation(line: 652, column: 22, scope: !5327)
!5333 = !DILocation(line: 652, column: 36, scope: !5327)
!5334 = !DILocation(line: 653, column: 8, scope: !5335)
!5335 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 653, column: 8)
!5336 = !DILocation(line: 653, column: 12, scope: !5335)
!5337 = !DILocation(line: 653, column: 16, scope: !5335)
!5338 = !DILocation(line: 653, column: 8, scope: !5327)
!5339 = !DILocation(line: 653, column: 31, scope: !5335)
!5340 = !DILocation(line: 653, column: 35, scope: !5335)
!5341 = !DILocation(line: 653, column: 39, scope: !5335)
!5342 = !DILocation(line: 653, column: 53, scope: !5335)
!5343 = !DILocation(line: 654, column: 26, scope: !5327)
!5344 = !DILocation(line: 654, column: 33, scope: !5327)
!5345 = !DILocation(line: 654, column: 36, scope: !5327)
!5346 = !DILocation(line: 654, column: 48, scope: !5327)
!5347 = !DILocation(line: 654, column: 46, scope: !5327)
!5348 = !DILocation(line: 654, column: 4, scope: !5327)
!5349 = !DILocation(line: 655, column: 3, scope: !5327)
!5350 = !DILocation(line: 656, column: 26, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 655, column: 10)
!5352 = !DILocation(line: 656, column: 4, scope: !5351)
!5353 = !DILocation(line: 658, column: 3, scope: !5299)
!5354 = !DILocation(line: 658, column: 3, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 658, column: 3)
!5356 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 658, column: 3)
!5357 = !DILocation(line: 658, column: 3, scope: !5356)
!5358 = !DILocation(line: 659, column: 3, scope: !5299)
!5359 = !DILocation(line: 661, column: 2, scope: !5244)
!5360 = !DILocation(line: 661, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 661, column: 2)
!5362 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 661, column: 2)
!5363 = !DILocation(line: 661, column: 2, scope: !5362)
!5364 = !DILocation(line: 664, column: 16, scope: !5244)
!5365 = !DILocation(line: 664, column: 2, scope: !5244)
!5366 = !DILocation(line: 667, column: 6, scope: !5367)
!5367 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 667, column: 6)
!5368 = !DILocation(line: 667, column: 9, scope: !5367)
!5369 = !DILocation(line: 667, column: 21, scope: !5367)
!5370 = !DILocation(line: 667, column: 6, scope: !5244)
!5371 = !DILocation(line: 668, column: 3, scope: !5367)
!5372 = !DILocation(line: 668, column: 10, scope: !5367)
!5373 = !DILocation(line: 668, column: 15, scope: !5367)
!5374 = !DILocation(line: 669, column: 11, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 669, column: 11)
!5376 = !DILocation(line: 669, column: 14, scope: !5375)
!5377 = !DILocation(line: 669, column: 26, scope: !5375)
!5378 = !DILocation(line: 669, column: 11, scope: !5367)
!5379 = !DILocation(line: 670, column: 3, scope: !5375)
!5380 = !DILocation(line: 670, column: 10, scope: !5375)
!5381 = !DILocation(line: 670, column: 15, scope: !5375)
!5382 = !DILocation(line: 671, column: 11, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 671, column: 11)
!5384 = !DILocation(line: 671, column: 14, scope: !5383)
!5385 = !DILocation(line: 671, column: 26, scope: !5383)
!5386 = !DILocation(line: 671, column: 11, scope: !5375)
!5387 = !DILocation(line: 672, column: 3, scope: !5383)
!5388 = !DILocation(line: 672, column: 10, scope: !5383)
!5389 = !DILocation(line: 672, column: 15, scope: !5383)
!5390 = !DILocation(line: 673, column: 11, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 673, column: 11)
!5392 = !DILocation(line: 673, column: 14, scope: !5391)
!5393 = !DILocation(line: 673, column: 26, scope: !5391)
!5394 = !DILocation(line: 673, column: 11, scope: !5383)
!5395 = !DILocation(line: 674, column: 3, scope: !5391)
!5396 = !DILocation(line: 674, column: 10, scope: !5391)
!5397 = !DILocation(line: 674, column: 15, scope: !5391)
!5398 = !DILocation(line: 676, column: 3, scope: !5391)
!5399 = !DILocation(line: 676, column: 10, scope: !5391)
!5400 = !DILocation(line: 676, column: 15, scope: !5391)
!5401 = !DILocation(line: 678, column: 2, scope: !5244)
!5402 = !DILocation(line: 678, column: 2, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 678, column: 2)
!5404 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 678, column: 2)
!5405 = !DILocation(line: 678, column: 2, scope: !5404)
!5406 = !DILocation(line: 679, column: 19, scope: !5244)
!5407 = !DILocation(line: 679, column: 33, scope: !5244)
!5408 = !DILocation(line: 679, column: 40, scope: !5244)
!5409 = !DILocation(line: 679, column: 44, scope: !5244)
!5410 = !DILocation(line: 679, column: 53, scope: !5244)
!5411 = !DILocation(line: 679, column: 2, scope: !5244)
!5412 = !DILocation(line: 680, column: 19, scope: !5244)
!5413 = !DILocation(line: 680, column: 2, scope: !5244)
!5414 = !DILocation(line: 681, column: 19, scope: !5244)
!5415 = !DILocation(line: 681, column: 34, scope: !5244)
!5416 = !DILocation(line: 681, column: 41, scope: !5244)
!5417 = !DILocation(line: 681, column: 46, scope: !5244)
!5418 = !DILocation(line: 681, column: 65, scope: !5244)
!5419 = !DILocation(line: 681, column: 70, scope: !5244)
!5420 = !DILocation(line: 681, column: 33, scope: !5244)
!5421 = !DILocation(line: 681, column: 2, scope: !5244)
!5422 = !DILocation(line: 684, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 684, column: 6)
!5424 = !DILocation(line: 684, column: 9, scope: !5423)
!5425 = !DILocation(line: 684, column: 21, scope: !5423)
!5426 = !DILocation(line: 684, column: 6, scope: !5244)
!5427 = !DILocation(line: 685, column: 20, scope: !5423)
!5428 = !DILocation(line: 685, column: 3, scope: !5423)
!5429 = !DILocation(line: 687, column: 20, scope: !5423)
!5430 = !DILocation(line: 687, column: 3, scope: !5423)
!5431 = !DILocation(line: 690, column: 19, scope: !5244)
!5432 = !DILocation(line: 690, column: 2, scope: !5244)
!5433 = !DILocation(line: 691, column: 19, scope: !5244)
!5434 = !DILocation(line: 691, column: 2, scope: !5244)
!5435 = !DILocation(line: 692, column: 19, scope: !5244)
!5436 = !DILocation(line: 692, column: 2, scope: !5244)
!5437 = !DILocation(line: 694, column: 19, scope: !5244)
!5438 = !DILocation(line: 694, column: 2, scope: !5244)
!5439 = !DILocation(line: 695, column: 19, scope: !5244)
!5440 = !DILocation(line: 695, column: 2, scope: !5244)
!5441 = !DILocation(line: 696, column: 19, scope: !5244)
!5442 = !DILocation(line: 696, column: 2, scope: !5244)
!5443 = !DILocation(line: 697, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 697, column: 6)
!5445 = !DILocation(line: 697, column: 9, scope: !5444)
!5446 = !DILocation(line: 697, column: 21, scope: !5444)
!5447 = !DILocation(line: 697, column: 6, scope: !5244)
!5448 = !DILocation(line: 698, column: 20, scope: !5444)
!5449 = !DILocation(line: 698, column: 3, scope: !5444)
!5450 = !DILocation(line: 700, column: 20, scope: !5444)
!5451 = !DILocation(line: 700, column: 3, scope: !5444)
!5452 = !DILocation(line: 701, column: 19, scope: !5244)
!5453 = !DILocation(line: 701, column: 2, scope: !5244)
!5454 = !DILocation(line: 703, column: 6, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 703, column: 6)
!5456 = !DILocation(line: 703, column: 9, scope: !5455)
!5457 = !DILocation(line: 703, column: 21, scope: !5455)
!5458 = !DILocation(line: 703, column: 6, scope: !5244)
!5459 = !DILocation(line: 704, column: 20, scope: !5455)
!5460 = !DILocation(line: 704, column: 3, scope: !5455)
!5461 = !DILocation(line: 705, column: 11, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5455, file: !3, line: 705, column: 11)
!5463 = !DILocation(line: 705, column: 14, scope: !5462)
!5464 = !DILocation(line: 705, column: 26, scope: !5462)
!5465 = !DILocation(line: 705, column: 11, scope: !5455)
!5466 = !DILocation(line: 706, column: 20, scope: !5462)
!5467 = !DILocation(line: 706, column: 3, scope: !5462)
!5468 = !DILocation(line: 708, column: 20, scope: !5462)
!5469 = !DILocation(line: 708, column: 3, scope: !5462)
!5470 = !DILocation(line: 710, column: 19, scope: !5244)
!5471 = !DILocation(line: 710, column: 2, scope: !5244)
!5472 = !DILocation(line: 712, column: 19, scope: !5244)
!5473 = !DILocation(line: 712, column: 2, scope: !5244)
!5474 = !DILocation(line: 713, column: 19, scope: !5244)
!5475 = !DILocation(line: 713, column: 34, scope: !5244)
!5476 = !DILocation(line: 713, column: 41, scope: !5244)
!5477 = !DILocation(line: 713, column: 49, scope: !5244)
!5478 = !DILocation(line: 713, column: 2, scope: !5244)
!5479 = !DILocation(line: 714, column: 19, scope: !5244)
!5480 = !DILocation(line: 714, column: 2, scope: !5244)
!5481 = !DILocation(line: 715, column: 19, scope: !5244)
!5482 = !DILocation(line: 715, column: 2, scope: !5244)
!5483 = !DILocation(line: 717, column: 19, scope: !5244)
!5484 = !DILocation(line: 717, column: 2, scope: !5244)
!5485 = !DILocation(line: 718, column: 19, scope: !5244)
!5486 = !DILocation(line: 718, column: 2, scope: !5244)
!5487 = !DILocation(line: 719, column: 19, scope: !5244)
!5488 = !DILocation(line: 719, column: 2, scope: !5244)
!5489 = !DILocation(line: 722, column: 6, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 722, column: 6)
!5491 = !DILocation(line: 722, column: 10, scope: !5490)
!5492 = !DILocation(line: 722, column: 14, scope: !5490)
!5493 = !DILocation(line: 722, column: 24, scope: !5490)
!5494 = !DILocation(line: 722, column: 6, scope: !5244)
!5495 = !DILocation(line: 723, column: 3, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 722, column: 36)
!5497 = !DILocation(line: 723, column: 7, scope: !5496)
!5498 = !DILocation(line: 723, column: 11, scope: !5496)
!5499 = !DILocation(line: 723, column: 21, scope: !5496)
!5500 = !DILocation(line: 723, column: 32, scope: !5496)
!5501 = !DILocation(line: 724, column: 7, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 724, column: 7)
!5503 = !DILocation(line: 724, column: 11, scope: !5502)
!5504 = !DILocation(line: 724, column: 15, scope: !5502)
!5505 = !DILocation(line: 724, column: 7, scope: !5496)
!5506 = !DILocation(line: 725, column: 4, scope: !5502)
!5507 = !DILocation(line: 725, column: 8, scope: !5502)
!5508 = !DILocation(line: 725, column: 12, scope: !5502)
!5509 = !DILocation(line: 725, column: 26, scope: !5502)
!5510 = !DILocation(line: 726, column: 25, scope: !5496)
!5511 = !DILocation(line: 726, column: 3, scope: !5496)
!5512 = !DILocation(line: 727, column: 2, scope: !5496)
!5513 = !DILocation(line: 730, column: 24, scope: !5244)
!5514 = !DILocation(line: 730, column: 31, scope: !5244)
!5515 = !DILocation(line: 730, column: 2, scope: !5244)
!5516 = !DILocation(line: 731, column: 27, scope: !5244)
!5517 = !DILocation(line: 731, column: 34, scope: !5244)
!5518 = !DILocation(line: 731, column: 2, scope: !5244)
!5519 = !DILocation(line: 734, column: 19, scope: !5244)
!5520 = !DILocation(line: 734, column: 50, scope: !5244)
!5521 = !DILocation(line: 734, column: 34, scope: !5244)
!5522 = !DILocation(line: 734, column: 65, scope: !5244)
!5523 = !DILocation(line: 734, column: 2, scope: !5244)
!5524 = !DILocation(line: 736, column: 21, scope: !5244)
!5525 = !DILocation(line: 736, column: 24, scope: !5244)
!5526 = !DILocation(line: 736, column: 2, scope: !5244)
!5527 = !DILocation(line: 736, column: 9, scope: !5244)
!5528 = !DILocation(line: 736, column: 19, scope: !5244)
!5529 = !DILocation(line: 737, column: 23, scope: !5244)
!5530 = !DILocation(line: 737, column: 26, scope: !5244)
!5531 = !DILocation(line: 737, column: 2, scope: !5244)
!5532 = !DILocation(line: 737, column: 9, scope: !5244)
!5533 = !DILocation(line: 737, column: 21, scope: !5244)
!5534 = !DILocation(line: 738, column: 2, scope: !5244)
!5535 = !DILocation(line: 738, column: 9, scope: !5244)
!5536 = !DILocation(line: 738, column: 20, scope: !5244)
!5537 = !DILocation(line: 739, column: 21, scope: !5244)
!5538 = !DILocation(line: 739, column: 24, scope: !5244)
!5539 = !DILocation(line: 739, column: 2, scope: !5244)
!5540 = !DILocation(line: 739, column: 9, scope: !5244)
!5541 = !DILocation(line: 739, column: 19, scope: !5244)
!5542 = !DILocation(line: 741, column: 2, scope: !5244)
!5543 = !DILocation(line: 741, column: 2, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 741, column: 2)
!5545 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 741, column: 2)
!5546 = !DILocation(line: 741, column: 2, scope: !5545)
!5547 = !DILocation(line: 742, column: 2, scope: !5244)
!5548 = !DILocation(line: 743, column: 1, scope: !5244)
!5549 = distinct !DISubprogram(name: "s5h1420_get_tune_settings", scope: !3, file: !3, line: 758, type: !4340, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5550 = !DILocalVariable(name: "fe", arg: 1, scope: !5549, file: !3, line: 758, type: !4192)
!5551 = !DILocation(line: 758, column: 59, scope: !5549)
!5552 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5549, file: !3, line: 759, type: !4342)
!5553 = !DILocation(line: 759, column: 45, scope: !5549)
!5554 = !DILocalVariable(name: "p", scope: !5549, file: !3, line: 761, type: !4352)
!5555 = !DILocation(line: 761, column: 34, scope: !5549)
!5556 = !DILocation(line: 761, column: 39, scope: !5549)
!5557 = !DILocation(line: 761, column: 43, scope: !5549)
!5558 = !DILocation(line: 762, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5549, file: !3, line: 762, column: 6)
!5560 = !DILocation(line: 762, column: 9, scope: !5559)
!5561 = !DILocation(line: 762, column: 21, scope: !5559)
!5562 = !DILocation(line: 762, column: 6, scope: !5549)
!5563 = !DILocation(line: 763, column: 3, scope: !5564)
!5564 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 762, column: 33)
!5565 = !DILocation(line: 763, column: 15, scope: !5564)
!5566 = !DILocation(line: 763, column: 28, scope: !5564)
!5567 = !DILocation(line: 764, column: 3, scope: !5564)
!5568 = !DILocation(line: 764, column: 15, scope: !5564)
!5569 = !DILocation(line: 764, column: 25, scope: !5564)
!5570 = !DILocation(line: 765, column: 3, scope: !5564)
!5571 = !DILocation(line: 765, column: 15, scope: !5564)
!5572 = !DILocation(line: 765, column: 25, scope: !5564)
!5573 = !DILocation(line: 766, column: 2, scope: !5564)
!5574 = !DILocation(line: 766, column: 13, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5559, file: !3, line: 766, column: 13)
!5576 = !DILocation(line: 766, column: 16, scope: !5575)
!5577 = !DILocation(line: 766, column: 28, scope: !5575)
!5578 = !DILocation(line: 766, column: 13, scope: !5559)
!5579 = !DILocation(line: 767, column: 3, scope: !5580)
!5580 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 766, column: 40)
!5581 = !DILocation(line: 767, column: 15, scope: !5580)
!5582 = !DILocation(line: 767, column: 28, scope: !5580)
!5583 = !DILocation(line: 768, column: 3, scope: !5580)
!5584 = !DILocation(line: 768, column: 15, scope: !5580)
!5585 = !DILocation(line: 768, column: 25, scope: !5580)
!5586 = !DILocation(line: 769, column: 3, scope: !5580)
!5587 = !DILocation(line: 769, column: 15, scope: !5580)
!5588 = !DILocation(line: 769, column: 25, scope: !5580)
!5589 = !DILocation(line: 770, column: 2, scope: !5580)
!5590 = !DILocation(line: 770, column: 13, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5575, file: !3, line: 770, column: 13)
!5592 = !DILocation(line: 770, column: 16, scope: !5591)
!5593 = !DILocation(line: 770, column: 28, scope: !5591)
!5594 = !DILocation(line: 770, column: 13, scope: !5575)
!5595 = !DILocation(line: 771, column: 3, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 770, column: 39)
!5597 = !DILocation(line: 771, column: 15, scope: !5596)
!5598 = !DILocation(line: 771, column: 28, scope: !5596)
!5599 = !DILocation(line: 772, column: 3, scope: !5596)
!5600 = !DILocation(line: 772, column: 15, scope: !5596)
!5601 = !DILocation(line: 772, column: 25, scope: !5596)
!5602 = !DILocation(line: 773, column: 3, scope: !5596)
!5603 = !DILocation(line: 773, column: 15, scope: !5596)
!5604 = !DILocation(line: 773, column: 25, scope: !5596)
!5605 = !DILocation(line: 774, column: 2, scope: !5596)
!5606 = !DILocation(line: 774, column: 13, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5591, file: !3, line: 774, column: 13)
!5608 = !DILocation(line: 774, column: 16, scope: !5607)
!5609 = !DILocation(line: 774, column: 28, scope: !5607)
!5610 = !DILocation(line: 774, column: 13, scope: !5591)
!5611 = !DILocation(line: 775, column: 3, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 774, column: 39)
!5613 = !DILocation(line: 775, column: 15, scope: !5612)
!5614 = !DILocation(line: 775, column: 28, scope: !5612)
!5615 = !DILocation(line: 776, column: 3, scope: !5612)
!5616 = !DILocation(line: 776, column: 15, scope: !5612)
!5617 = !DILocation(line: 776, column: 25, scope: !5612)
!5618 = !DILocation(line: 777, column: 3, scope: !5612)
!5619 = !DILocation(line: 777, column: 15, scope: !5612)
!5620 = !DILocation(line: 777, column: 25, scope: !5612)
!5621 = !DILocation(line: 778, column: 2, scope: !5612)
!5622 = !DILocation(line: 778, column: 13, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5607, file: !3, line: 778, column: 13)
!5624 = !DILocation(line: 778, column: 16, scope: !5623)
!5625 = !DILocation(line: 778, column: 28, scope: !5623)
!5626 = !DILocation(line: 778, column: 13, scope: !5607)
!5627 = !DILocation(line: 779, column: 3, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 778, column: 39)
!5629 = !DILocation(line: 779, column: 15, scope: !5628)
!5630 = !DILocation(line: 779, column: 28, scope: !5628)
!5631 = !DILocation(line: 780, column: 28, scope: !5628)
!5632 = !DILocation(line: 780, column: 31, scope: !5628)
!5633 = !DILocation(line: 780, column: 43, scope: !5628)
!5634 = !DILocation(line: 780, column: 3, scope: !5628)
!5635 = !DILocation(line: 780, column: 15, scope: !5628)
!5636 = !DILocation(line: 780, column: 25, scope: !5628)
!5637 = !DILocation(line: 781, column: 32, scope: !5628)
!5638 = !DILocation(line: 781, column: 44, scope: !5628)
!5639 = !DILocation(line: 781, column: 30, scope: !5628)
!5640 = !DILocation(line: 781, column: 3, scope: !5628)
!5641 = !DILocation(line: 781, column: 15, scope: !5628)
!5642 = !DILocation(line: 781, column: 25, scope: !5628)
!5643 = !DILocation(line: 782, column: 2, scope: !5628)
!5644 = !DILocation(line: 783, column: 3, scope: !5645)
!5645 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 782, column: 9)
!5646 = !DILocation(line: 783, column: 15, scope: !5645)
!5647 = !DILocation(line: 783, column: 28, scope: !5645)
!5648 = !DILocation(line: 784, column: 28, scope: !5645)
!5649 = !DILocation(line: 784, column: 31, scope: !5645)
!5650 = !DILocation(line: 784, column: 43, scope: !5645)
!5651 = !DILocation(line: 784, column: 3, scope: !5645)
!5652 = !DILocation(line: 784, column: 15, scope: !5645)
!5653 = !DILocation(line: 784, column: 25, scope: !5645)
!5654 = !DILocation(line: 785, column: 32, scope: !5645)
!5655 = !DILocation(line: 785, column: 44, scope: !5645)
!5656 = !DILocation(line: 785, column: 30, scope: !5645)
!5657 = !DILocation(line: 785, column: 3, scope: !5645)
!5658 = !DILocation(line: 785, column: 15, scope: !5645)
!5659 = !DILocation(line: 785, column: 25, scope: !5645)
!5660 = !DILocation(line: 788, column: 2, scope: !5549)
!5661 = distinct !DISubprogram(name: "s5h1420_get_frontend", scope: !3, file: !3, line: 745, type: !4350, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5662 = !DILocalVariable(name: "fe", arg: 1, scope: !5661, file: !3, line: 745, type: !4192)
!5663 = !DILocation(line: 745, column: 54, scope: !5661)
!5664 = !DILocalVariable(name: "p", arg: 2, scope: !5661, file: !3, line: 746, type: !4352)
!5665 = !DILocation(line: 746, column: 37, scope: !5661)
!5666 = !DILocalVariable(name: "state", scope: !5661, file: !3, line: 748, type: !4506)
!5667 = !DILocation(line: 748, column: 24, scope: !5661)
!5668 = !DILocation(line: 748, column: 32, scope: !5661)
!5669 = !DILocation(line: 748, column: 36, scope: !5661)
!5670 = !DILocation(line: 750, column: 17, scope: !5661)
!5671 = !DILocation(line: 750, column: 24, scope: !5661)
!5672 = !DILocation(line: 750, column: 58, scope: !5661)
!5673 = !DILocation(line: 750, column: 36, scope: !5661)
!5674 = !DILocation(line: 750, column: 34, scope: !5661)
!5675 = !DILocation(line: 750, column: 2, scope: !5661)
!5676 = !DILocation(line: 750, column: 5, scope: !5661)
!5677 = !DILocation(line: 750, column: 15, scope: !5661)
!5678 = !DILocation(line: 751, column: 38, scope: !5661)
!5679 = !DILocation(line: 751, column: 17, scope: !5661)
!5680 = !DILocation(line: 751, column: 2, scope: !5661)
!5681 = !DILocation(line: 751, column: 5, scope: !5661)
!5682 = !DILocation(line: 751, column: 15, scope: !5661)
!5683 = !DILocation(line: 752, column: 41, scope: !5661)
!5684 = !DILocation(line: 752, column: 19, scope: !5661)
!5685 = !DILocation(line: 752, column: 2, scope: !5661)
!5686 = !DILocation(line: 752, column: 5, scope: !5661)
!5687 = !DILocation(line: 752, column: 17, scope: !5661)
!5688 = !DILocation(line: 753, column: 32, scope: !5661)
!5689 = !DILocation(line: 753, column: 17, scope: !5661)
!5690 = !DILocation(line: 753, column: 2, scope: !5661)
!5691 = !DILocation(line: 753, column: 5, scope: !5661)
!5692 = !DILocation(line: 753, column: 15, scope: !5661)
!5693 = !DILocation(line: 755, column: 2, scope: !5661)
!5694 = distinct !DISubprogram(name: "s5h1420_read_status", scope: !3, file: !3, line: 320, type: !4355, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5695 = !DILocalVariable(name: "fe", arg: 1, scope: !5694, file: !3, line: 320, type: !4192)
!5696 = !DILocation(line: 320, column: 53, scope: !5694)
!5697 = !DILocalVariable(name: "status", arg: 2, scope: !5694, file: !3, line: 321, type: !4332)
!5698 = !DILocation(line: 321, column: 27, scope: !5694)
!5699 = !DILocalVariable(name: "state", scope: !5694, file: !3, line: 323, type: !4506)
!5700 = !DILocation(line: 323, column: 24, scope: !5694)
!5701 = !DILocation(line: 323, column: 32, scope: !5694)
!5702 = !DILocation(line: 323, column: 36, scope: !5694)
!5703 = !DILocalVariable(name: "val", scope: !5694, file: !3, line: 324, type: !418)
!5704 = !DILocation(line: 324, column: 5, scope: !5694)
!5705 = !DILocation(line: 326, column: 2, scope: !5694)
!5706 = !DILocation(line: 326, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5708, file: !3, line: 326, column: 2)
!5708 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 326, column: 2)
!5709 = !DILocation(line: 326, column: 2, scope: !5708)
!5710 = !DILocation(line: 328, column: 6, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 328, column: 6)
!5712 = !DILocation(line: 328, column: 13, scope: !5711)
!5713 = !DILocation(line: 328, column: 6, scope: !5694)
!5714 = !DILocation(line: 329, column: 3, scope: !5711)
!5715 = !DILocation(line: 332, column: 36, scope: !5694)
!5716 = !DILocation(line: 332, column: 12, scope: !5694)
!5717 = !DILocation(line: 332, column: 3, scope: !5694)
!5718 = !DILocation(line: 332, column: 10, scope: !5694)
!5719 = !DILocation(line: 336, column: 7, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 336, column: 6)
!5721 = !DILocation(line: 336, column: 6, scope: !5720)
!5722 = !DILocation(line: 336, column: 14, scope: !5720)
!5723 = !DILocation(line: 336, column: 6, scope: !5694)
!5724 = !DILocation(line: 337, column: 25, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 336, column: 68)
!5726 = !DILocation(line: 337, column: 9, scope: !5725)
!5727 = !DILocation(line: 337, column: 7, scope: !5725)
!5728 = !DILocation(line: 338, column: 8, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 338, column: 7)
!5730 = !DILocation(line: 338, column: 12, scope: !5729)
!5731 = !DILocation(line: 338, column: 20, scope: !5729)
!5732 = !DILocation(line: 338, column: 7, scope: !5725)
!5733 = !DILocation(line: 339, column: 8, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 339, column: 8)
!5735 = distinct !DILexicalBlock(scope: !5729, file: !3, line: 338, column: 29)
!5736 = !DILocation(line: 339, column: 12, scope: !5734)
!5737 = !DILocation(line: 339, column: 8, scope: !5735)
!5738 = !DILocation(line: 340, column: 22, scope: !5734)
!5739 = !DILocation(line: 340, column: 5, scope: !5734)
!5740 = !DILocation(line: 342, column: 22, scope: !5734)
!5741 = !DILocation(line: 342, column: 5, scope: !5734)
!5742 = !DILocalVariable(name: "__ms", scope: !5743, file: !3, line: 345, type: !533)
!5743 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 345, column: 4)
!5744 = !DILocation(line: 345, column: 4, scope: !5743)
!5745 = !DILocation(line: 345, column: 4, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5747, file: !3, line: 345, column: 4)
!5747 = distinct !DILexicalBlock(scope: !5748, file: !3, line: 345, column: 4)
!5748 = distinct !DILexicalBlock(scope: !5749, file: !3, line: 345, column: 4)
!5749 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 345, column: 4)
!5750 = distinct !{!5750, !5744, !5744}
!5751 = !DILocation(line: 346, column: 38, scope: !5735)
!5752 = !DILocation(line: 346, column: 14, scope: !5735)
!5753 = !DILocation(line: 346, column: 5, scope: !5735)
!5754 = !DILocation(line: 346, column: 12, scope: !5735)
!5755 = !DILocation(line: 347, column: 3, scope: !5735)
!5756 = !DILocation(line: 348, column: 2, scope: !5725)
!5757 = !DILocation(line: 351, column: 8, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 351, column: 6)
!5759 = !DILocation(line: 351, column: 7, scope: !5758)
!5760 = !DILocation(line: 351, column: 15, scope: !5758)
!5761 = !DILocation(line: 351, column: 30, scope: !5758)
!5762 = !DILocation(line: 351, column: 34, scope: !5758)
!5763 = !DILocation(line: 351, column: 41, scope: !5758)
!5764 = !DILocation(line: 351, column: 6, scope: !5694)
!5765 = !DILocalVariable(name: "tmp", scope: !5766, file: !3, line: 354, type: !548)
!5766 = distinct !DILexicalBlock(scope: !5758, file: !3, line: 351, column: 53)
!5767 = !DILocation(line: 354, column: 7, scope: !5766)
!5768 = !DILocation(line: 354, column: 35, scope: !5766)
!5769 = !DILocation(line: 354, column: 13, scope: !5766)
!5770 = !DILocation(line: 355, column: 27, scope: !5766)
!5771 = !DILocation(line: 355, column: 11, scope: !5766)
!5772 = !DILocation(line: 355, column: 41, scope: !5766)
!5773 = !DILocation(line: 355, column: 3, scope: !5766)
!5774 = !DILocation(line: 356, column: 18, scope: !5775)
!5775 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 355, column: 49)
!5776 = !DILocation(line: 356, column: 22, scope: !5775)
!5777 = !DILocation(line: 356, column: 26, scope: !5775)
!5778 = !DILocation(line: 356, column: 31, scope: !5775)
!5779 = !DILocation(line: 356, column: 15, scope: !5775)
!5780 = !DILocation(line: 356, column: 36, scope: !5775)
!5781 = !DILocation(line: 357, column: 18, scope: !5775)
!5782 = !DILocation(line: 357, column: 22, scope: !5775)
!5783 = !DILocation(line: 357, column: 26, scope: !5775)
!5784 = !DILocation(line: 357, column: 31, scope: !5775)
!5785 = !DILocation(line: 357, column: 15, scope: !5775)
!5786 = !DILocation(line: 357, column: 36, scope: !5775)
!5787 = !DILocation(line: 358, column: 18, scope: !5775)
!5788 = !DILocation(line: 358, column: 22, scope: !5775)
!5789 = !DILocation(line: 358, column: 26, scope: !5775)
!5790 = !DILocation(line: 358, column: 31, scope: !5775)
!5791 = !DILocation(line: 358, column: 15, scope: !5775)
!5792 = !DILocation(line: 358, column: 36, scope: !5775)
!5793 = !DILocation(line: 359, column: 18, scope: !5775)
!5794 = !DILocation(line: 359, column: 22, scope: !5775)
!5795 = !DILocation(line: 359, column: 26, scope: !5775)
!5796 = !DILocation(line: 359, column: 31, scope: !5775)
!5797 = !DILocation(line: 359, column: 15, scope: !5775)
!5798 = !DILocation(line: 359, column: 36, scope: !5775)
!5799 = !DILocation(line: 360, column: 18, scope: !5775)
!5800 = !DILocation(line: 360, column: 22, scope: !5775)
!5801 = !DILocation(line: 360, column: 26, scope: !5775)
!5802 = !DILocation(line: 360, column: 31, scope: !5775)
!5803 = !DILocation(line: 360, column: 15, scope: !5775)
!5804 = !DILocation(line: 360, column: 36, scope: !5775)
!5805 = !DILocation(line: 361, column: 18, scope: !5775)
!5806 = !DILocation(line: 361, column: 22, scope: !5775)
!5807 = !DILocation(line: 361, column: 26, scope: !5775)
!5808 = !DILocation(line: 361, column: 31, scope: !5775)
!5809 = !DILocation(line: 361, column: 15, scope: !5775)
!5810 = !DILocation(line: 361, column: 36, scope: !5775)
!5811 = !DILocation(line: 364, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 364, column: 7)
!5813 = !DILocation(line: 364, column: 11, scope: !5812)
!5814 = !DILocation(line: 364, column: 7, scope: !5766)
!5815 = !DILocation(line: 365, column: 4, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 364, column: 17)
!5817 = !DILocation(line: 366, column: 8, scope: !5816)
!5818 = !DILocation(line: 367, column: 3, scope: !5816)
!5819 = !DILocation(line: 368, column: 9, scope: !5766)
!5820 = !DILocation(line: 368, column: 16, scope: !5766)
!5821 = !DILocation(line: 368, column: 23, scope: !5766)
!5822 = !DILocation(line: 368, column: 21, scope: !5766)
!5823 = !DILocation(line: 368, column: 7, scope: !5766)
!5824 = !DILocation(line: 372, column: 7, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 372, column: 7)
!5826 = !DILocation(line: 372, column: 11, scope: !5825)
!5827 = !DILocation(line: 372, column: 7, scope: !5766)
!5828 = !DILocation(line: 373, column: 8, scope: !5825)
!5829 = !DILocation(line: 373, column: 4, scope: !5825)
!5830 = !DILocation(line: 374, column: 12, scope: !5831)
!5831 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 374, column: 12)
!5832 = !DILocation(line: 374, column: 16, scope: !5831)
!5833 = !DILocation(line: 374, column: 12, scope: !5825)
!5834 = !DILocation(line: 375, column: 8, scope: !5831)
!5835 = !DILocation(line: 375, column: 4, scope: !5831)
!5836 = !DILocation(line: 376, column: 12, scope: !5837)
!5837 = distinct !DILexicalBlock(scope: !5831, file: !3, line: 376, column: 12)
!5838 = !DILocation(line: 376, column: 16, scope: !5837)
!5839 = !DILocation(line: 376, column: 12, scope: !5831)
!5840 = !DILocation(line: 377, column: 8, scope: !5837)
!5841 = !DILocation(line: 377, column: 4, scope: !5837)
!5842 = !DILocation(line: 378, column: 12, scope: !5843)
!5843 = distinct !DILexicalBlock(scope: !5837, file: !3, line: 378, column: 12)
!5844 = !DILocation(line: 378, column: 16, scope: !5843)
!5845 = !DILocation(line: 378, column: 12, scope: !5837)
!5846 = !DILocation(line: 379, column: 8, scope: !5843)
!5847 = !DILocation(line: 379, column: 4, scope: !5843)
!5848 = !DILocation(line: 380, column: 12, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5843, file: !3, line: 380, column: 12)
!5850 = !DILocation(line: 380, column: 16, scope: !5849)
!5851 = !DILocation(line: 380, column: 12, scope: !5843)
!5852 = !DILocation(line: 381, column: 8, scope: !5849)
!5853 = !DILocation(line: 381, column: 4, scope: !5849)
!5854 = !DILocation(line: 382, column: 12, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 382, column: 12)
!5856 = !DILocation(line: 382, column: 16, scope: !5855)
!5857 = !DILocation(line: 382, column: 12, scope: !5849)
!5858 = !DILocation(line: 383, column: 8, scope: !5855)
!5859 = !DILocation(line: 383, column: 4, scope: !5855)
!5860 = !DILocation(line: 384, column: 12, scope: !5861)
!5861 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 384, column: 12)
!5862 = !DILocation(line: 384, column: 16, scope: !5861)
!5863 = !DILocation(line: 384, column: 12, scope: !5855)
!5864 = !DILocation(line: 385, column: 8, scope: !5861)
!5865 = !DILocation(line: 385, column: 4, scope: !5861)
!5866 = !DILocation(line: 387, column: 8, scope: !5861)
!5867 = !DILocation(line: 388, column: 3, scope: !5766)
!5868 = !DILocation(line: 388, column: 3, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5870, file: !3, line: 388, column: 3)
!5870 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 388, column: 3)
!5871 = !DILocation(line: 388, column: 3, scope: !5870)
!5872 = !DILocation(line: 390, column: 20, scope: !5766)
!5873 = !DILocation(line: 390, column: 3, scope: !5766)
!5874 = !DILocation(line: 391, column: 20, scope: !5766)
!5875 = !DILocation(line: 391, column: 3, scope: !5766)
!5876 = !DILocation(line: 392, column: 20, scope: !5766)
!5877 = !DILocation(line: 392, column: 34, scope: !5766)
!5878 = !DILocation(line: 392, column: 3, scope: !5766)
!5879 = !DILocation(line: 395, column: 25, scope: !5766)
!5880 = !DILocation(line: 395, column: 9, scope: !5766)
!5881 = !DILocation(line: 395, column: 7, scope: !5766)
!5882 = !DILocation(line: 396, column: 20, scope: !5766)
!5883 = !DILocation(line: 396, column: 35, scope: !5766)
!5884 = !DILocation(line: 396, column: 39, scope: !5766)
!5885 = !DILocation(line: 396, column: 3, scope: !5766)
!5886 = !DILocation(line: 399, column: 25, scope: !5766)
!5887 = !DILocation(line: 399, column: 9, scope: !5766)
!5888 = !DILocation(line: 399, column: 40, scope: !5766)
!5889 = !DILocation(line: 399, column: 7, scope: !5766)
!5890 = !DILocation(line: 400, column: 20, scope: !5766)
!5891 = !DILocation(line: 400, column: 35, scope: !5766)
!5892 = !DILocation(line: 400, column: 3, scope: !5766)
!5893 = !DILocation(line: 404, column: 29, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5766, file: !3, line: 404, column: 7)
!5895 = !DILocation(line: 404, column: 7, scope: !5894)
!5896 = !DILocation(line: 404, column: 36, scope: !5894)
!5897 = !DILocation(line: 404, column: 7, scope: !5766)
!5898 = !DILocation(line: 405, column: 21, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 404, column: 49)
!5900 = !DILocation(line: 405, column: 4, scope: !5899)
!5901 = !DILocation(line: 406, column: 21, scope: !5899)
!5902 = !DILocation(line: 406, column: 4, scope: !5899)
!5903 = !DILocation(line: 407, column: 3, scope: !5899)
!5904 = !DILocation(line: 408, column: 21, scope: !5905)
!5905 = distinct !DILexicalBlock(scope: !5894, file: !3, line: 407, column: 10)
!5906 = !DILocation(line: 408, column: 4, scope: !5905)
!5907 = !DILocation(line: 409, column: 21, scope: !5905)
!5908 = !DILocation(line: 409, column: 4, scope: !5905)
!5909 = !DILocation(line: 413, column: 3, scope: !5766)
!5910 = !DILocation(line: 413, column: 10, scope: !5766)
!5911 = !DILocation(line: 413, column: 21, scope: !5766)
!5912 = !DILocation(line: 414, column: 2, scope: !5766)
!5913 = !DILocation(line: 416, column: 2, scope: !5694)
!5914 = !DILocation(line: 416, column: 2, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5916, file: !3, line: 416, column: 2)
!5916 = distinct !DILexicalBlock(scope: !5694, file: !3, line: 416, column: 2)
!5917 = !DILocation(line: 416, column: 2, scope: !5916)
!5918 = !DILocation(line: 418, column: 2, scope: !5694)
!5919 = !DILocation(line: 419, column: 1, scope: !5694)
!5920 = distinct !DISubprogram(name: "s5h1420_read_ber", scope: !3, file: !3, line: 421, type: !4359, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5921 = !DILocalVariable(name: "fe", arg: 1, scope: !5920, file: !3, line: 421, type: !4192)
!5922 = !DILocation(line: 421, column: 50, scope: !5920)
!5923 = !DILocalVariable(name: "ber", arg: 2, scope: !5920, file: !3, line: 421, type: !2875)
!5924 = !DILocation(line: 421, column: 59, scope: !5920)
!5925 = !DILocalVariable(name: "state", scope: !5920, file: !3, line: 423, type: !4506)
!5926 = !DILocation(line: 423, column: 24, scope: !5920)
!5927 = !DILocation(line: 423, column: 32, scope: !5920)
!5928 = !DILocation(line: 423, column: 36, scope: !5920)
!5929 = !DILocation(line: 425, column: 19, scope: !5920)
!5930 = !DILocation(line: 425, column: 2, scope: !5920)
!5931 = !DILocalVariable(name: "__ms", scope: !5932, file: !3, line: 426, type: !533)
!5932 = distinct !DILexicalBlock(scope: !5920, file: !3, line: 426, column: 2)
!5933 = !DILocation(line: 426, column: 2, scope: !5932)
!5934 = !DILocation(line: 426, column: 2, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5936, file: !3, line: 426, column: 2)
!5936 = distinct !DILexicalBlock(scope: !5937, file: !3, line: 426, column: 2)
!5937 = distinct !DILexicalBlock(scope: !5938, file: !3, line: 426, column: 2)
!5938 = distinct !DILexicalBlock(scope: !5932, file: !3, line: 426, column: 2)
!5939 = distinct !{!5939, !5933, !5933}
!5940 = !DILocation(line: 428, column: 26, scope: !5920)
!5941 = !DILocation(line: 428, column: 10, scope: !5920)
!5942 = !DILocation(line: 428, column: 39, scope: !5920)
!5943 = !DILocation(line: 428, column: 63, scope: !5920)
!5944 = !DILocation(line: 428, column: 47, scope: !5920)
!5945 = !DILocation(line: 428, column: 45, scope: !5920)
!5946 = !DILocation(line: 428, column: 3, scope: !5920)
!5947 = !DILocation(line: 428, column: 7, scope: !5920)
!5948 = !DILocation(line: 430, column: 2, scope: !5920)
!5949 = distinct !DISubprogram(name: "s5h1420_read_signal_strength", scope: !3, file: !3, line: 433, type: !4363, scopeLine: 434, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5950 = !DILocalVariable(name: "fe", arg: 1, scope: !5949, file: !3, line: 433, type: !4192)
!5951 = !DILocation(line: 433, column: 62, scope: !5949)
!5952 = !DILocalVariable(name: "strength", arg: 2, scope: !5949, file: !3, line: 433, type: !4365)
!5953 = !DILocation(line: 433, column: 71, scope: !5949)
!5954 = !DILocalVariable(name: "state", scope: !5949, file: !3, line: 435, type: !4506)
!5955 = !DILocation(line: 435, column: 24, scope: !5949)
!5956 = !DILocation(line: 435, column: 32, scope: !5949)
!5957 = !DILocation(line: 435, column: 36, scope: !5949)
!5958 = !DILocalVariable(name: "val", scope: !5949, file: !3, line: 437, type: !418)
!5959 = !DILocation(line: 437, column: 5, scope: !5949)
!5960 = !DILocation(line: 437, column: 27, scope: !5949)
!5961 = !DILocation(line: 437, column: 11, scope: !5949)
!5962 = !DILocation(line: 439, column: 23, scope: !5949)
!5963 = !DILocation(line: 439, column: 27, scope: !5949)
!5964 = !DILocation(line: 439, column: 35, scope: !5949)
!5965 = !DILocation(line: 439, column: 33, scope: !5949)
!5966 = !DILocation(line: 439, column: 15, scope: !5949)
!5967 = !DILocation(line: 439, column: 3, scope: !5949)
!5968 = !DILocation(line: 439, column: 12, scope: !5949)
!5969 = !DILocation(line: 441, column: 2, scope: !5949)
!5970 = distinct !DISubprogram(name: "s5h1420_read_ucblocks", scope: !3, file: !3, line: 444, type: !4359, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!5971 = !DILocalVariable(name: "fe", arg: 1, scope: !5970, file: !3, line: 444, type: !4192)
!5972 = !DILocation(line: 444, column: 55, scope: !5970)
!5973 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5970, file: !3, line: 444, type: !2875)
!5974 = !DILocation(line: 444, column: 64, scope: !5970)
!5975 = !DILocalVariable(name: "state", scope: !5970, file: !3, line: 446, type: !4506)
!5976 = !DILocation(line: 446, column: 24, scope: !5970)
!5977 = !DILocation(line: 446, column: 32, scope: !5970)
!5978 = !DILocation(line: 446, column: 36, scope: !5970)
!5979 = !DILocation(line: 448, column: 19, scope: !5970)
!5980 = !DILocation(line: 448, column: 2, scope: !5970)
!5981 = !DILocalVariable(name: "__ms", scope: !5982, file: !3, line: 449, type: !533)
!5982 = distinct !DILexicalBlock(scope: !5970, file: !3, line: 449, column: 2)
!5983 = !DILocation(line: 449, column: 2, scope: !5982)
!5984 = !DILocation(line: 449, column: 2, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5986, file: !3, line: 449, column: 2)
!5986 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 449, column: 2)
!5987 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 449, column: 2)
!5988 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 449, column: 2)
!5989 = distinct !{!5989, !5983, !5983}
!5990 = !DILocation(line: 451, column: 31, scope: !5970)
!5991 = !DILocation(line: 451, column: 15, scope: !5970)
!5992 = !DILocation(line: 451, column: 44, scope: !5970)
!5993 = !DILocation(line: 451, column: 68, scope: !5970)
!5994 = !DILocation(line: 451, column: 52, scope: !5970)
!5995 = !DILocation(line: 451, column: 50, scope: !5970)
!5996 = !DILocation(line: 451, column: 3, scope: !5970)
!5997 = !DILocation(line: 451, column: 12, scope: !5970)
!5998 = !DILocation(line: 453, column: 2, scope: !5970)
!5999 = distinct !DISubprogram(name: "s5h1420_send_master_cmd", scope: !3, file: !3, line: 161, type: !4371, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6000 = !DILocalVariable(name: "fe", arg: 1, scope: !5999, file: !3, line: 161, type: !4192)
!6001 = !DILocation(line: 161, column: 58, scope: !5999)
!6002 = !DILocalVariable(name: "cmd", arg: 2, scope: !5999, file: !3, line: 162, type: !4373)
!6003 = !DILocation(line: 162, column: 39, scope: !5999)
!6004 = !DILocalVariable(name: "state", scope: !5999, file: !3, line: 164, type: !4506)
!6005 = !DILocation(line: 164, column: 24, scope: !5999)
!6006 = !DILocation(line: 164, column: 32, scope: !5999)
!6007 = !DILocation(line: 164, column: 36, scope: !5999)
!6008 = !DILocalVariable(name: "val", scope: !5999, file: !3, line: 165, type: !418)
!6009 = !DILocation(line: 165, column: 5, scope: !5999)
!6010 = !DILocalVariable(name: "i", scope: !5999, file: !3, line: 166, type: !365)
!6011 = !DILocation(line: 166, column: 6, scope: !5999)
!6012 = !DILocalVariable(name: "timeout", scope: !5999, file: !3, line: 167, type: !533)
!6013 = !DILocation(line: 167, column: 16, scope: !5999)
!6014 = !DILocalVariable(name: "result", scope: !5999, file: !3, line: 168, type: !365)
!6015 = !DILocation(line: 168, column: 6, scope: !5999)
!6016 = !DILocation(line: 170, column: 2, scope: !5999)
!6017 = !DILocation(line: 170, column: 2, scope: !6018)
!6018 = distinct !DILexicalBlock(scope: !6019, file: !3, line: 170, column: 2)
!6019 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 170, column: 2)
!6020 = !DILocation(line: 170, column: 2, scope: !6019)
!6021 = !DILocation(line: 171, column: 6, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 171, column: 6)
!6023 = !DILocation(line: 171, column: 11, scope: !6022)
!6024 = !DILocation(line: 171, column: 19, scope: !6022)
!6025 = !DILocation(line: 171, column: 6, scope: !5999)
!6026 = !DILocation(line: 172, column: 3, scope: !6022)
!6027 = !DILocation(line: 175, column: 24, scope: !5999)
!6028 = !DILocation(line: 175, column: 8, scope: !5999)
!6029 = !DILocation(line: 175, column: 6, scope: !5999)
!6030 = !DILocation(line: 176, column: 19, scope: !5999)
!6031 = !DILocation(line: 176, column: 2, scope: !5999)
!6032 = !DILocation(line: 177, column: 2, scope: !5999)
!6033 = !DILocation(line: 180, column: 7, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 180, column: 2)
!6035 = !DILocation(line: 180, column: 6, scope: !6034)
!6036 = !DILocation(line: 180, column: 11, scope: !6037)
!6037 = distinct !DILexicalBlock(scope: !6034, file: !3, line: 180, column: 2)
!6038 = !DILocation(line: 180, column: 14, scope: !6037)
!6039 = !DILocation(line: 180, column: 19, scope: !6037)
!6040 = !DILocation(line: 180, column: 12, scope: !6037)
!6041 = !DILocation(line: 180, column: 2, scope: !6034)
!6042 = !DILocation(line: 181, column: 20, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6037, file: !3, line: 180, column: 33)
!6044 = !DILocation(line: 181, column: 34, scope: !6043)
!6045 = !DILocation(line: 181, column: 32, scope: !6043)
!6046 = !DILocation(line: 181, column: 27, scope: !6043)
!6047 = !DILocation(line: 181, column: 37, scope: !6043)
!6048 = !DILocation(line: 181, column: 42, scope: !6043)
!6049 = !DILocation(line: 181, column: 46, scope: !6043)
!6050 = !DILocation(line: 181, column: 3, scope: !6043)
!6051 = !DILocation(line: 182, column: 2, scope: !6043)
!6052 = !DILocation(line: 180, column: 29, scope: !6037)
!6053 = !DILocation(line: 180, column: 2, scope: !6037)
!6054 = distinct !{!6054, !6041, !6055}
!6055 = !DILocation(line: 182, column: 2, scope: !6034)
!6056 = !DILocation(line: 185, column: 19, scope: !5999)
!6057 = !DILocation(line: 185, column: 48, scope: !5999)
!6058 = !DILocation(line: 185, column: 32, scope: !5999)
!6059 = !DILocation(line: 186, column: 13, scope: !5999)
!6060 = !DILocation(line: 186, column: 18, scope: !5999)
!6061 = !DILocation(line: 186, column: 25, scope: !5999)
!6062 = !DILocation(line: 186, column: 29, scope: !5999)
!6063 = !DILocation(line: 185, column: 61, scope: !5999)
!6064 = !DILocation(line: 186, column: 35, scope: !5999)
!6065 = !DILocation(line: 185, column: 2, scope: !5999)
!6066 = !DILocation(line: 189, column: 12, scope: !5999)
!6067 = !DILocation(line: 189, column: 20, scope: !5999)
!6068 = !DILocation(line: 189, column: 10, scope: !5999)
!6069 = !DILocation(line: 190, column: 2, scope: !5999)
!6070 = !DILocation(line: 190, column: 8, scope: !5999)
!6071 = !DILocation(line: 191, column: 25, scope: !6072)
!6072 = distinct !DILexicalBlock(scope: !6073, file: !3, line: 191, column: 7)
!6073 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 190, column: 39)
!6074 = !DILocation(line: 191, column: 9, scope: !6072)
!6075 = !DILocation(line: 191, column: 38, scope: !6072)
!6076 = !DILocation(line: 191, column: 7, scope: !6073)
!6077 = !DILocation(line: 192, column: 4, scope: !6072)
!6078 = !DILocation(line: 194, column: 3, scope: !6073)
!6079 = distinct !{!6079, !6069, !6080}
!6080 = !DILocation(line: 195, column: 2, scope: !5999)
!6081 = !DILocation(line: 196, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 196, column: 6)
!6083 = !DILocation(line: 196, column: 6, scope: !5999)
!6084 = !DILocation(line: 197, column: 10, scope: !6082)
!6085 = !DILocation(line: 197, column: 3, scope: !6082)
!6086 = !DILocation(line: 200, column: 19, scope: !5999)
!6087 = !DILocation(line: 200, column: 32, scope: !5999)
!6088 = !DILocation(line: 200, column: 2, scope: !5999)
!6089 = !DILocation(line: 201, column: 2, scope: !5999)
!6090 = !DILocation(line: 202, column: 2, scope: !5999)
!6091 = !DILocation(line: 202, column: 2, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !6093, file: !3, line: 202, column: 2)
!6093 = distinct !DILexicalBlock(scope: !5999, file: !3, line: 202, column: 2)
!6094 = !DILocation(line: 202, column: 2, scope: !6093)
!6095 = !DILocation(line: 203, column: 9, scope: !5999)
!6096 = !DILocation(line: 203, column: 2, scope: !5999)
!6097 = !DILocation(line: 204, column: 1, scope: !5999)
!6098 = distinct !DISubprogram(name: "s5h1420_recv_slave_reply", scope: !3, file: !3, line: 206, type: !4381, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6099 = !DILocalVariable(name: "fe", arg: 1, scope: !6098, file: !3, line: 206, type: !4192)
!6100 = !DILocation(line: 206, column: 59, scope: !6098)
!6101 = !DILocalVariable(name: "reply", arg: 2, scope: !6098, file: !3, line: 207, type: !4383)
!6102 = !DILocation(line: 207, column: 41, scope: !6098)
!6103 = !DILocalVariable(name: "state", scope: !6098, file: !3, line: 209, type: !4506)
!6104 = !DILocation(line: 209, column: 24, scope: !6098)
!6105 = !DILocation(line: 209, column: 32, scope: !6098)
!6106 = !DILocation(line: 209, column: 36, scope: !6098)
!6107 = !DILocalVariable(name: "val", scope: !6098, file: !3, line: 210, type: !418)
!6108 = !DILocation(line: 210, column: 5, scope: !6098)
!6109 = !DILocalVariable(name: "i", scope: !6098, file: !3, line: 211, type: !365)
!6110 = !DILocation(line: 211, column: 6, scope: !6098)
!6111 = !DILocalVariable(name: "length", scope: !6098, file: !3, line: 212, type: !365)
!6112 = !DILocation(line: 212, column: 6, scope: !6098)
!6113 = !DILocalVariable(name: "timeout", scope: !6098, file: !3, line: 213, type: !533)
!6114 = !DILocation(line: 213, column: 16, scope: !6098)
!6115 = !DILocalVariable(name: "result", scope: !6098, file: !3, line: 214, type: !365)
!6116 = !DILocation(line: 214, column: 6, scope: !6098)
!6117 = !DILocation(line: 217, column: 24, scope: !6098)
!6118 = !DILocation(line: 217, column: 8, scope: !6098)
!6119 = !DILocation(line: 217, column: 6, scope: !6098)
!6120 = !DILocation(line: 218, column: 19, scope: !6098)
!6121 = !DILocation(line: 218, column: 2, scope: !6098)
!6122 = !DILocation(line: 219, column: 2, scope: !6098)
!6123 = !DILocation(line: 222, column: 12, scope: !6098)
!6124 = !DILocation(line: 222, column: 24, scope: !6098)
!6125 = !DILocation(line: 222, column: 31, scope: !6098)
!6126 = !DILocation(line: 222, column: 38, scope: !6098)
!6127 = !DILocation(line: 222, column: 43, scope: !6098)
!6128 = !DILocation(line: 222, column: 22, scope: !6098)
!6129 = !DILocation(line: 222, column: 20, scope: !6098)
!6130 = !DILocation(line: 222, column: 10, scope: !6098)
!6131 = !DILocation(line: 223, column: 2, scope: !6098)
!6132 = !DILocation(line: 223, column: 8, scope: !6098)
!6133 = !DILocation(line: 224, column: 25, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6135, file: !3, line: 224, column: 7)
!6135 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 223, column: 39)
!6136 = !DILocation(line: 224, column: 9, scope: !6134)
!6137 = !DILocation(line: 224, column: 38, scope: !6134)
!6138 = !DILocation(line: 224, column: 7, scope: !6135)
!6139 = !DILocation(line: 225, column: 4, scope: !6134)
!6140 = !DILocation(line: 227, column: 3, scope: !6135)
!6141 = distinct !{!6141, !6131, !6142}
!6142 = !DILocation(line: 228, column: 2, scope: !6098)
!6143 = !DILocation(line: 229, column: 6, scope: !6144)
!6144 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 229, column: 6)
!6145 = !DILocation(line: 229, column: 6, scope: !6098)
!6146 = !DILocation(line: 230, column: 10, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 229, column: 36)
!6148 = !DILocation(line: 231, column: 3, scope: !6147)
!6149 = !DILocation(line: 236, column: 22, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 236, column: 6)
!6151 = !DILocation(line: 236, column: 6, scope: !6150)
!6152 = !DILocation(line: 236, column: 6, scope: !6098)
!6153 = !DILocation(line: 237, column: 10, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6150, file: !3, line: 236, column: 36)
!6155 = !DILocation(line: 238, column: 3, scope: !6154)
!6156 = !DILocation(line: 242, column: 28, scope: !6098)
!6157 = !DILocation(line: 242, column: 12, scope: !6098)
!6158 = !DILocation(line: 242, column: 41, scope: !6098)
!6159 = !DILocation(line: 242, column: 49, scope: !6098)
!6160 = !DILocation(line: 242, column: 9, scope: !6098)
!6161 = !DILocation(line: 243, column: 6, scope: !6162)
!6162 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 243, column: 6)
!6163 = !DILocation(line: 243, column: 13, scope: !6162)
!6164 = !DILocation(line: 243, column: 6, scope: !6098)
!6165 = !DILocation(line: 244, column: 10, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6162, file: !3, line: 243, column: 35)
!6167 = !DILocation(line: 245, column: 3, scope: !6166)
!6168 = !DILocation(line: 247, column: 19, scope: !6098)
!6169 = !DILocation(line: 247, column: 2, scope: !6098)
!6170 = !DILocation(line: 247, column: 9, scope: !6098)
!6171 = !DILocation(line: 247, column: 17, scope: !6098)
!6172 = !DILocation(line: 250, column: 7, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6098, file: !3, line: 250, column: 2)
!6174 = !DILocation(line: 250, column: 6, scope: !6173)
!6175 = !DILocation(line: 250, column: 11, scope: !6176)
!6176 = distinct !DILexicalBlock(scope: !6173, file: !3, line: 250, column: 2)
!6177 = !DILocation(line: 250, column: 14, scope: !6176)
!6178 = !DILocation(line: 250, column: 12, scope: !6176)
!6179 = !DILocation(line: 250, column: 2, scope: !6173)
!6180 = !DILocation(line: 251, column: 35, scope: !6181)
!6181 = distinct !DILexicalBlock(scope: !6176, file: !3, line: 250, column: 27)
!6182 = !DILocation(line: 251, column: 49, scope: !6181)
!6183 = !DILocation(line: 251, column: 47, scope: !6181)
!6184 = !DILocation(line: 251, column: 42, scope: !6181)
!6185 = !DILocation(line: 251, column: 19, scope: !6181)
!6186 = !DILocation(line: 251, column: 3, scope: !6181)
!6187 = !DILocation(line: 251, column: 10, scope: !6181)
!6188 = !DILocation(line: 251, column: 14, scope: !6181)
!6189 = !DILocation(line: 251, column: 17, scope: !6181)
!6190 = !DILocation(line: 252, column: 2, scope: !6181)
!6191 = !DILocation(line: 250, column: 23, scope: !6176)
!6192 = !DILocation(line: 250, column: 2, scope: !6176)
!6193 = distinct !{!6193, !6179, !6194}
!6194 = !DILocation(line: 252, column: 2, scope: !6173)
!6195 = !DILabel(scope: !6098, name: "exit", file: !3, line: 254)
!6196 = !DILocation(line: 254, column: 1, scope: !6098)
!6197 = !DILocation(line: 256, column: 19, scope: !6098)
!6198 = !DILocation(line: 256, column: 32, scope: !6098)
!6199 = !DILocation(line: 256, column: 2, scope: !6098)
!6200 = !DILocation(line: 257, column: 2, scope: !6098)
!6201 = !DILocation(line: 258, column: 9, scope: !6098)
!6202 = !DILocation(line: 258, column: 2, scope: !6098)
!6203 = distinct !DISubprogram(name: "s5h1420_send_burst", scope: !3, file: !3, line: 261, type: !4392, scopeLine: 263, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6204 = !DILocalVariable(name: "fe", arg: 1, scope: !6203, file: !3, line: 261, type: !4192)
!6205 = !DILocation(line: 261, column: 52, scope: !6203)
!6206 = !DILocalVariable(name: "minicmd", arg: 2, scope: !6203, file: !3, line: 262, type: !259)
!6207 = !DILocation(line: 262, column: 31, scope: !6203)
!6208 = !DILocalVariable(name: "state", scope: !6203, file: !3, line: 264, type: !4506)
!6209 = !DILocation(line: 264, column: 24, scope: !6203)
!6210 = !DILocation(line: 264, column: 32, scope: !6203)
!6211 = !DILocation(line: 264, column: 36, scope: !6203)
!6212 = !DILocalVariable(name: "val", scope: !6203, file: !3, line: 265, type: !418)
!6213 = !DILocation(line: 265, column: 5, scope: !6203)
!6214 = !DILocalVariable(name: "result", scope: !6203, file: !3, line: 266, type: !365)
!6215 = !DILocation(line: 266, column: 6, scope: !6203)
!6216 = !DILocalVariable(name: "timeout", scope: !6203, file: !3, line: 267, type: !533)
!6217 = !DILocation(line: 267, column: 16, scope: !6203)
!6218 = !DILocation(line: 270, column: 24, scope: !6203)
!6219 = !DILocation(line: 270, column: 8, scope: !6203)
!6220 = !DILocation(line: 270, column: 6, scope: !6203)
!6221 = !DILocation(line: 271, column: 19, scope: !6203)
!6222 = !DILocation(line: 271, column: 49, scope: !6203)
!6223 = !DILocation(line: 271, column: 33, scope: !6203)
!6224 = !DILocation(line: 271, column: 62, scope: !6203)
!6225 = !DILocation(line: 271, column: 70, scope: !6203)
!6226 = !DILocation(line: 271, column: 32, scope: !6203)
!6227 = !DILocation(line: 271, column: 2, scope: !6203)
!6228 = !DILocation(line: 274, column: 6, scope: !6229)
!6229 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 274, column: 6)
!6230 = !DILocation(line: 274, column: 14, scope: !6229)
!6231 = !DILocation(line: 274, column: 6, scope: !6203)
!6232 = !DILocation(line: 275, column: 20, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 274, column: 29)
!6234 = !DILocation(line: 275, column: 49, scope: !6233)
!6235 = !DILocation(line: 275, column: 33, scope: !6233)
!6236 = !DILocation(line: 275, column: 62, scope: !6233)
!6237 = !DILocation(line: 275, column: 3, scope: !6233)
!6238 = !DILocation(line: 276, column: 2, scope: !6233)
!6239 = !DILocation(line: 277, column: 2, scope: !6203)
!6240 = !DILocation(line: 280, column: 19, scope: !6203)
!6241 = !DILocation(line: 280, column: 48, scope: !6203)
!6242 = !DILocation(line: 280, column: 32, scope: !6203)
!6243 = !DILocation(line: 280, column: 61, scope: !6203)
!6244 = !DILocation(line: 280, column: 2, scope: !6203)
!6245 = !DILocation(line: 283, column: 12, scope: !6203)
!6246 = !DILocation(line: 283, column: 20, scope: !6203)
!6247 = !DILocation(line: 283, column: 10, scope: !6203)
!6248 = !DILocation(line: 284, column: 2, scope: !6203)
!6249 = !DILocation(line: 284, column: 8, scope: !6203)
!6250 = !DILocation(line: 285, column: 25, scope: !6251)
!6251 = distinct !DILexicalBlock(scope: !6252, file: !3, line: 285, column: 7)
!6252 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 284, column: 39)
!6253 = !DILocation(line: 285, column: 9, scope: !6251)
!6254 = !DILocation(line: 285, column: 38, scope: !6251)
!6255 = !DILocation(line: 285, column: 7, scope: !6252)
!6256 = !DILocation(line: 286, column: 4, scope: !6251)
!6257 = !DILocation(line: 288, column: 3, scope: !6252)
!6258 = distinct !{!6258, !6248, !6259}
!6259 = !DILocation(line: 289, column: 2, scope: !6203)
!6260 = !DILocation(line: 290, column: 6, scope: !6261)
!6261 = distinct !DILexicalBlock(scope: !6203, file: !3, line: 290, column: 6)
!6262 = !DILocation(line: 290, column: 6, scope: !6203)
!6263 = !DILocation(line: 291, column: 10, scope: !6261)
!6264 = !DILocation(line: 291, column: 3, scope: !6261)
!6265 = !DILocation(line: 294, column: 19, scope: !6203)
!6266 = !DILocation(line: 294, column: 32, scope: !6203)
!6267 = !DILocation(line: 294, column: 2, scope: !6203)
!6268 = !DILocation(line: 295, column: 2, scope: !6203)
!6269 = !DILocation(line: 296, column: 9, scope: !6203)
!6270 = !DILocation(line: 296, column: 2, scope: !6203)
!6271 = distinct !DISubprogram(name: "s5h1420_set_tone", scope: !3, file: !3, line: 139, type: !4396, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6272 = !DILocalVariable(name: "fe", arg: 1, scope: !6271, file: !3, line: 139, type: !4192)
!6273 = !DILocation(line: 139, column: 50, scope: !6271)
!6274 = !DILocalVariable(name: "tone", arg: 2, scope: !6271, file: !3, line: 140, type: !166)
!6275 = !DILocation(line: 140, column: 30, scope: !6271)
!6276 = !DILocalVariable(name: "state", scope: !6271, file: !3, line: 142, type: !4506)
!6277 = !DILocation(line: 142, column: 24, scope: !6271)
!6278 = !DILocation(line: 142, column: 32, scope: !6271)
!6279 = !DILocation(line: 142, column: 36, scope: !6271)
!6280 = !DILocation(line: 144, column: 2, scope: !6271)
!6281 = !DILocation(line: 144, column: 2, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6283, file: !3, line: 144, column: 2)
!6283 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 144, column: 2)
!6284 = !DILocation(line: 144, column: 2, scope: !6283)
!6285 = !DILocation(line: 145, column: 9, scope: !6271)
!6286 = !DILocation(line: 145, column: 2, scope: !6271)
!6287 = !DILocation(line: 147, column: 20, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 145, column: 15)
!6289 = !DILocation(line: 148, column: 23, scope: !6288)
!6290 = !DILocation(line: 148, column: 7, scope: !6288)
!6291 = !DILocation(line: 148, column: 36, scope: !6288)
!6292 = !DILocation(line: 148, column: 44, scope: !6288)
!6293 = !DILocation(line: 148, column: 6, scope: !6288)
!6294 = !DILocation(line: 147, column: 3, scope: !6288)
!6295 = !DILocation(line: 149, column: 3, scope: !6288)
!6296 = !DILocation(line: 152, column: 20, scope: !6288)
!6297 = !DILocation(line: 153, column: 23, scope: !6288)
!6298 = !DILocation(line: 153, column: 7, scope: !6288)
!6299 = !DILocation(line: 153, column: 36, scope: !6288)
!6300 = !DILocation(line: 153, column: 44, scope: !6288)
!6301 = !DILocation(line: 153, column: 6, scope: !6288)
!6302 = !DILocation(line: 152, column: 3, scope: !6288)
!6303 = !DILocation(line: 154, column: 3, scope: !6288)
!6304 = !DILocation(line: 156, column: 2, scope: !6271)
!6305 = !DILocation(line: 156, column: 2, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6307, file: !3, line: 156, column: 2)
!6307 = distinct !DILexicalBlock(scope: !6271, file: !3, line: 156, column: 2)
!6308 = !DILocation(line: 156, column: 2, scope: !6307)
!6309 = !DILocation(line: 158, column: 2, scope: !6271)
!6310 = distinct !DISubprogram(name: "s5h1420_set_voltage", scope: !3, file: !3, line: 113, type: !4400, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6311 = !DILocalVariable(name: "fe", arg: 1, scope: !6310, file: !3, line: 113, type: !4192)
!6312 = !DILocation(line: 113, column: 53, scope: !6310)
!6313 = !DILocalVariable(name: "voltage", arg: 2, scope: !6310, file: !3, line: 114, type: !161)
!6314 = !DILocation(line: 114, column: 31, scope: !6310)
!6315 = !DILocalVariable(name: "state", scope: !6310, file: !3, line: 116, type: !4506)
!6316 = !DILocation(line: 116, column: 24, scope: !6310)
!6317 = !DILocation(line: 116, column: 32, scope: !6310)
!6318 = !DILocation(line: 116, column: 36, scope: !6310)
!6319 = !DILocation(line: 118, column: 2, scope: !6310)
!6320 = !DILocation(line: 118, column: 2, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 118, column: 2)
!6322 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 118, column: 2)
!6323 = !DILocation(line: 118, column: 2, scope: !6322)
!6324 = !DILocation(line: 120, column: 9, scope: !6310)
!6325 = !DILocation(line: 120, column: 2, scope: !6310)
!6326 = !DILocation(line: 122, column: 20, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 120, column: 18)
!6328 = !DILocation(line: 123, column: 23, scope: !6327)
!6329 = !DILocation(line: 123, column: 7, scope: !6327)
!6330 = !DILocation(line: 123, column: 36, scope: !6327)
!6331 = !DILocation(line: 123, column: 44, scope: !6327)
!6332 = !DILocation(line: 123, column: 6, scope: !6327)
!6333 = !DILocation(line: 122, column: 3, scope: !6327)
!6334 = !DILocation(line: 124, column: 3, scope: !6327)
!6335 = !DILocation(line: 127, column: 20, scope: !6327)
!6336 = !DILocation(line: 127, column: 49, scope: !6327)
!6337 = !DILocation(line: 127, column: 33, scope: !6327)
!6338 = !DILocation(line: 127, column: 62, scope: !6327)
!6339 = !DILocation(line: 127, column: 3, scope: !6327)
!6340 = !DILocation(line: 128, column: 3, scope: !6327)
!6341 = !DILocation(line: 131, column: 20, scope: !6327)
!6342 = !DILocation(line: 131, column: 49, scope: !6327)
!6343 = !DILocation(line: 131, column: 33, scope: !6327)
!6344 = !DILocation(line: 131, column: 62, scope: !6327)
!6345 = !DILocation(line: 131, column: 3, scope: !6327)
!6346 = !DILocation(line: 132, column: 3, scope: !6327)
!6347 = !DILocation(line: 135, column: 2, scope: !6310)
!6348 = !DILocation(line: 135, column: 2, scope: !6349)
!6349 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 135, column: 2)
!6350 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 135, column: 2)
!6351 = !DILocation(line: 135, column: 2, scope: !6350)
!6352 = !DILocation(line: 136, column: 2, scope: !6310)
!6353 = distinct !DISubprogram(name: "s5h1420_i2c_gate_ctrl", scope: !3, file: !3, line: 791, type: !4412, scopeLine: 792, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6354 = !DILocalVariable(name: "fe", arg: 1, scope: !6353, file: !3, line: 791, type: !4192)
!6355 = !DILocation(line: 791, column: 55, scope: !6353)
!6356 = !DILocalVariable(name: "enable", arg: 2, scope: !6353, file: !3, line: 791, type: !365)
!6357 = !DILocation(line: 791, column: 63, scope: !6353)
!6358 = !DILocalVariable(name: "state", scope: !6353, file: !3, line: 793, type: !4506)
!6359 = !DILocation(line: 793, column: 24, scope: !6353)
!6360 = !DILocation(line: 793, column: 32, scope: !6353)
!6361 = !DILocation(line: 793, column: 36, scope: !6353)
!6362 = !DILocation(line: 795, column: 6, scope: !6363)
!6363 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 795, column: 6)
!6364 = !DILocation(line: 795, column: 6, scope: !6353)
!6365 = !DILocation(line: 796, column: 27, scope: !6363)
!6366 = !DILocation(line: 796, column: 40, scope: !6363)
!6367 = !DILocation(line: 796, column: 47, scope: !6363)
!6368 = !DILocation(line: 796, column: 57, scope: !6363)
!6369 = !DILocation(line: 796, column: 10, scope: !6363)
!6370 = !DILocation(line: 796, column: 3, scope: !6363)
!6371 = !DILocation(line: 798, column: 27, scope: !6363)
!6372 = !DILocation(line: 798, column: 40, scope: !6363)
!6373 = !DILocation(line: 798, column: 47, scope: !6363)
!6374 = !DILocation(line: 798, column: 57, scope: !6363)
!6375 = !DILocation(line: 798, column: 10, scope: !6363)
!6376 = !DILocation(line: 798, column: 3, scope: !6363)
!6377 = !DILocation(line: 799, column: 1, scope: !6353)
!6378 = distinct !DISubprogram(name: "s5h1420_writereg", scope: !3, file: !3, line: 96, type: !6379, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6379 = !DISubroutineType(types: !6380)
!6380 = !{!365, !4506, !418, !418}
!6381 = !DILocalVariable(name: "state", arg: 1, scope: !6378, file: !3, line: 96, type: !4506)
!6382 = !DILocation(line: 96, column: 52, scope: !6378)
!6383 = !DILocalVariable(name: "reg", arg: 2, scope: !6378, file: !3, line: 96, type: !418)
!6384 = !DILocation(line: 96, column: 62, scope: !6378)
!6385 = !DILocalVariable(name: "data", arg: 3, scope: !6378, file: !3, line: 96, type: !418)
!6386 = !DILocation(line: 96, column: 70, scope: !6378)
!6387 = !DILocalVariable(name: "buf", scope: !6378, file: !3, line: 98, type: !4933)
!6388 = !DILocation(line: 98, column: 5, scope: !6378)
!6389 = !DILocation(line: 98, column: 13, scope: !6378)
!6390 = !DILocation(line: 98, column: 15, scope: !6378)
!6391 = !DILocation(line: 98, column: 20, scope: !6378)
!6392 = !DILocalVariable(name: "msg", scope: !6378, file: !3, line: 99, type: !4142)
!6393 = !DILocation(line: 99, column: 17, scope: !6378)
!6394 = !DILocation(line: 99, column: 23, scope: !6378)
!6395 = !DILocation(line: 99, column: 33, scope: !6378)
!6396 = !DILocation(line: 99, column: 40, scope: !6378)
!6397 = !DILocation(line: 99, column: 48, scope: !6378)
!6398 = !DILocation(line: 99, column: 82, scope: !6378)
!6399 = !DILocalVariable(name: "err", scope: !6378, file: !3, line: 100, type: !365)
!6400 = !DILocation(line: 100, column: 6, scope: !6378)
!6401 = !DILocation(line: 103, column: 21, scope: !6378)
!6402 = !DILocation(line: 103, column: 28, scope: !6378)
!6403 = !DILocation(line: 103, column: 8, scope: !6378)
!6404 = !DILocation(line: 103, column: 6, scope: !6378)
!6405 = !DILocation(line: 104, column: 6, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 104, column: 6)
!6407 = !DILocation(line: 104, column: 10, scope: !6406)
!6408 = !DILocation(line: 104, column: 6, scope: !6378)
!6409 = !DILocation(line: 105, column: 3, scope: !6410)
!6410 = distinct !DILexicalBlock(scope: !6406, file: !3, line: 104, column: 16)
!6411 = !DILocation(line: 105, column: 3, scope: !6412)
!6412 = distinct !DILexicalBlock(scope: !6413, file: !3, line: 105, column: 3)
!6413 = distinct !DILexicalBlock(scope: !6410, file: !3, line: 105, column: 3)
!6414 = !DILocation(line: 105, column: 3, scope: !6413)
!6415 = !DILocation(line: 106, column: 3, scope: !6410)
!6416 = !DILocation(line: 108, column: 23, scope: !6378)
!6417 = !DILocation(line: 108, column: 2, scope: !6378)
!6418 = !DILocation(line: 108, column: 9, scope: !6378)
!6419 = !DILocation(line: 108, column: 16, scope: !6378)
!6420 = !DILocation(line: 108, column: 21, scope: !6378)
!6421 = !DILocation(line: 110, column: 2, scope: !6378)
!6422 = !DILocation(line: 111, column: 1, scope: !6378)
!6423 = distinct !DISubprogram(name: "s5h1420_reset", scope: !3, file: !3, line: 456, type: !6424, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6424 = !DISubroutineType(types: !6425)
!6425 = !{null, !4506}
!6426 = !DILocalVariable(name: "state", arg: 1, scope: !6423, file: !3, line: 456, type: !4506)
!6427 = !DILocation(line: 456, column: 49, scope: !6423)
!6428 = !DILocation(line: 458, column: 2, scope: !6423)
!6429 = !DILocation(line: 458, column: 2, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 458, column: 2)
!6431 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 458, column: 2)
!6432 = !DILocation(line: 458, column: 2, scope: !6431)
!6433 = !DILocation(line: 459, column: 20, scope: !6423)
!6434 = !DILocation(line: 459, column: 2, scope: !6423)
!6435 = !DILocation(line: 460, column: 20, scope: !6423)
!6436 = !DILocation(line: 460, column: 2, scope: !6423)
!6437 = !DILocation(line: 461, column: 2, scope: !6438)
!6438 = distinct !DILexicalBlock(scope: !6439, file: !3, line: 461, column: 2)
!6439 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 461, column: 2)
!6440 = distinct !DILexicalBlock(scope: !6441, file: !3, line: 461, column: 2)
!6441 = distinct !DILexicalBlock(scope: !6423, file: !3, line: 461, column: 2)
!6442 = !DILocation(line: 462, column: 1, scope: !6423)
!6443 = distinct !DISubprogram(name: "s5h1420_setfreqoffset", scope: !3, file: !3, line: 493, type: !6444, scopeLine: 494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6444 = !DISubroutineType(types: !6445)
!6445 = !{null, !4506, !365}
!6446 = !DILocalVariable(name: "state", arg: 1, scope: !6443, file: !3, line: 493, type: !4506)
!6447 = !DILocation(line: 493, column: 57, scope: !6443)
!6448 = !DILocalVariable(name: "freqoffset", arg: 2, scope: !6443, file: !3, line: 493, type: !365)
!6449 = !DILocation(line: 493, column: 68, scope: !6443)
!6450 = !DILocalVariable(name: "val", scope: !6443, file: !3, line: 495, type: !365)
!6451 = !DILocation(line: 495, column: 6, scope: !6443)
!6452 = !DILocalVariable(name: "v", scope: !6443, file: !3, line: 496, type: !418)
!6453 = !DILocation(line: 496, column: 5, scope: !6443)
!6454 = !DILocation(line: 498, column: 2, scope: !6443)
!6455 = !DILocation(line: 498, column: 2, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6457, file: !3, line: 498, column: 2)
!6457 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 498, column: 2)
!6458 = !DILocation(line: 498, column: 2, scope: !6457)
!6459 = !DILocation(line: 502, column: 17, scope: !6443)
!6460 = !DILocation(line: 502, column: 28, scope: !6443)
!6461 = !DILocation(line: 502, column: 42, scope: !6443)
!6462 = !DILocation(line: 502, column: 49, scope: !6443)
!6463 = !DILocation(line: 502, column: 54, scope: !6443)
!6464 = !DILocation(line: 502, column: 39, scope: !6443)
!6465 = !DILocation(line: 502, column: 8, scope: !6443)
!6466 = !DILocation(line: 502, column: 6, scope: !6443)
!6467 = !DILocation(line: 504, column: 2, scope: !6443)
!6468 = !DILocation(line: 504, column: 2, scope: !6469)
!6469 = distinct !DILexicalBlock(scope: !6470, file: !3, line: 504, column: 2)
!6470 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 504, column: 2)
!6471 = !DILocation(line: 504, column: 2, scope: !6470)
!6472 = !DILocation(line: 506, column: 22, scope: !6443)
!6473 = !DILocation(line: 506, column: 6, scope: !6443)
!6474 = !DILocation(line: 506, column: 4, scope: !6443)
!6475 = !DILocation(line: 507, column: 19, scope: !6443)
!6476 = !DILocation(line: 507, column: 34, scope: !6443)
!6477 = !DILocation(line: 507, column: 36, scope: !6443)
!6478 = !DILocation(line: 507, column: 2, scope: !6443)
!6479 = !DILocation(line: 508, column: 19, scope: !6443)
!6480 = !DILocation(line: 508, column: 34, scope: !6443)
!6481 = !DILocation(line: 508, column: 38, scope: !6443)
!6482 = !DILocation(line: 508, column: 2, scope: !6443)
!6483 = !DILocation(line: 509, column: 19, scope: !6443)
!6484 = !DILocation(line: 509, column: 34, scope: !6443)
!6485 = !DILocation(line: 509, column: 38, scope: !6443)
!6486 = !DILocation(line: 509, column: 2, scope: !6443)
!6487 = !DILocation(line: 510, column: 19, scope: !6443)
!6488 = !DILocation(line: 510, column: 34, scope: !6443)
!6489 = !DILocation(line: 510, column: 38, scope: !6443)
!6490 = !DILocation(line: 510, column: 2, scope: !6443)
!6491 = !DILocation(line: 511, column: 19, scope: !6443)
!6492 = !DILocation(line: 511, column: 34, scope: !6443)
!6493 = !DILocation(line: 511, column: 36, scope: !6443)
!6494 = !DILocation(line: 511, column: 2, scope: !6443)
!6495 = !DILocation(line: 512, column: 2, scope: !6443)
!6496 = !DILocation(line: 512, column: 2, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6498, file: !3, line: 512, column: 2)
!6498 = distinct !DILexicalBlock(scope: !6443, file: !3, line: 512, column: 2)
!6499 = !DILocation(line: 512, column: 2, scope: !6498)
!6500 = !DILocation(line: 513, column: 1, scope: !6443)
!6501 = distinct !DISubprogram(name: "s5h1420_setsymbolrate", scope: !3, file: !3, line: 464, type: !6502, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6502 = !DISubroutineType(types: !6503)
!6503 = !{null, !4506, !4352}
!6504 = !DILocalVariable(name: "state", arg: 1, scope: !6501, file: !3, line: 464, type: !4506)
!6505 = !DILocation(line: 464, column: 57, scope: !6501)
!6506 = !DILocalVariable(name: "p", arg: 2, scope: !6501, file: !3, line: 465, type: !4352)
!6507 = !DILocation(line: 465, column: 39, scope: !6501)
!6508 = !DILocalVariable(name: "v", scope: !6501, file: !3, line: 467, type: !418)
!6509 = !DILocation(line: 467, column: 5, scope: !6501)
!6510 = !DILocalVariable(name: "val", scope: !6501, file: !3, line: 468, type: !366)
!6511 = !DILocation(line: 468, column: 6, scope: !6501)
!6512 = !DILocation(line: 470, column: 2, scope: !6501)
!6513 = !DILocation(line: 470, column: 2, scope: !6514)
!6514 = distinct !DILexicalBlock(scope: !6515, file: !3, line: 470, column: 2)
!6515 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 470, column: 2)
!6516 = !DILocation(line: 470, column: 2, scope: !6515)
!6517 = !DILocation(line: 472, column: 15, scope: !6501)
!6518 = !DILocation(line: 472, column: 18, scope: !6501)
!6519 = !DILocation(line: 472, column: 9, scope: !6501)
!6520 = !DILocation(line: 472, column: 30, scope: !6501)
!6521 = !DILocation(line: 472, column: 41, scope: !6501)
!6522 = !DILocation(line: 472, column: 6, scope: !6501)
!6523 = !DILocation(line: 473, column: 6, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 473, column: 6)
!6525 = !DILocation(line: 473, column: 9, scope: !6524)
!6526 = !DILocation(line: 473, column: 21, scope: !6524)
!6527 = !DILocation(line: 473, column: 6, scope: !6501)
!6528 = !DILocation(line: 474, column: 7, scope: !6524)
!6529 = !DILocation(line: 474, column: 3, scope: !6524)
!6530 = !DILocalVariable(name: "__base", scope: !6531, file: !3, line: 475, type: !950)
!6531 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 475, column: 2)
!6532 = !DILocation(line: 475, column: 2, scope: !6531)
!6533 = !DILocalVariable(name: "__rem", scope: !6531, file: !3, line: 475, type: !950)
!6534 = !DILocation(line: 477, column: 2, scope: !6501)
!6535 = !DILocation(line: 477, column: 2, scope: !6536)
!6536 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 477, column: 2)
!6537 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 477, column: 2)
!6538 = !DILocation(line: 477, column: 2, scope: !6537)
!6539 = !DILocation(line: 479, column: 22, scope: !6501)
!6540 = !DILocation(line: 479, column: 6, scope: !6501)
!6541 = !DILocation(line: 479, column: 4, scope: !6501)
!6542 = !DILocation(line: 480, column: 19, scope: !6501)
!6543 = !DILocation(line: 480, column: 34, scope: !6501)
!6544 = !DILocation(line: 480, column: 36, scope: !6501)
!6545 = !DILocation(line: 480, column: 2, scope: !6501)
!6546 = !DILocation(line: 481, column: 19, scope: !6501)
!6547 = !DILocation(line: 481, column: 34, scope: !6501)
!6548 = !DILocation(line: 481, column: 38, scope: !6501)
!6549 = !DILocation(line: 481, column: 2, scope: !6501)
!6550 = !DILocation(line: 482, column: 19, scope: !6501)
!6551 = !DILocation(line: 482, column: 34, scope: !6501)
!6552 = !DILocation(line: 482, column: 38, scope: !6501)
!6553 = !DILocation(line: 482, column: 2, scope: !6501)
!6554 = !DILocation(line: 483, column: 19, scope: !6501)
!6555 = !DILocation(line: 483, column: 34, scope: !6501)
!6556 = !DILocation(line: 483, column: 38, scope: !6501)
!6557 = !DILocation(line: 483, column: 2, scope: !6501)
!6558 = !DILocation(line: 484, column: 19, scope: !6501)
!6559 = !DILocation(line: 484, column: 35, scope: !6501)
!6560 = !DILocation(line: 484, column: 37, scope: !6501)
!6561 = !DILocation(line: 484, column: 2, scope: !6501)
!6562 = !DILocation(line: 485, column: 2, scope: !6501)
!6563 = !DILocation(line: 485, column: 2, scope: !6564)
!6564 = distinct !DILexicalBlock(scope: !6565, file: !3, line: 485, column: 2)
!6565 = distinct !DILexicalBlock(scope: !6501, file: !3, line: 485, column: 2)
!6566 = !DILocation(line: 485, column: 2, scope: !6565)
!6567 = !DILocation(line: 486, column: 1, scope: !6501)
!6568 = distinct !DISubprogram(name: "s5h1420_setfec_inversion", scope: !3, file: !3, line: 535, type: !6502, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6569 = !DILocalVariable(name: "state", arg: 1, scope: !6568, file: !3, line: 535, type: !4506)
!6570 = !DILocation(line: 535, column: 60, scope: !6568)
!6571 = !DILocalVariable(name: "p", arg: 2, scope: !6568, file: !3, line: 536, type: !4352)
!6572 = !DILocation(line: 536, column: 42, scope: !6568)
!6573 = !DILocalVariable(name: "inversion", scope: !6568, file: !3, line: 538, type: !418)
!6574 = !DILocation(line: 538, column: 5, scope: !6568)
!6575 = !DILocalVariable(name: "vit08", scope: !6568, file: !3, line: 539, type: !418)
!6576 = !DILocation(line: 539, column: 5, scope: !6568)
!6577 = !DILocalVariable(name: "vit09", scope: !6568, file: !3, line: 539, type: !418)
!6578 = !DILocation(line: 539, column: 12, scope: !6568)
!6579 = !DILocation(line: 541, column: 2, scope: !6568)
!6580 = !DILocation(line: 541, column: 2, scope: !6581)
!6581 = distinct !DILexicalBlock(scope: !6582, file: !3, line: 541, column: 2)
!6582 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 541, column: 2)
!6583 = !DILocation(line: 541, column: 2, scope: !6582)
!6584 = !DILocation(line: 543, column: 6, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 543, column: 6)
!6586 = !DILocation(line: 543, column: 9, scope: !6585)
!6587 = !DILocation(line: 543, column: 19, scope: !6585)
!6588 = !DILocation(line: 543, column: 6, scope: !6568)
!6589 = !DILocation(line: 544, column: 15, scope: !6585)
!6590 = !DILocation(line: 544, column: 22, scope: !6585)
!6591 = !DILocation(line: 544, column: 30, scope: !6585)
!6592 = !DILocation(line: 544, column: 13, scope: !6585)
!6593 = !DILocation(line: 544, column: 3, scope: !6585)
!6594 = !DILocation(line: 545, column: 11, scope: !6595)
!6595 = distinct !DILexicalBlock(scope: !6585, file: !3, line: 545, column: 11)
!6596 = !DILocation(line: 545, column: 14, scope: !6595)
!6597 = !DILocation(line: 545, column: 24, scope: !6595)
!6598 = !DILocation(line: 545, column: 11, scope: !6585)
!6599 = !DILocation(line: 546, column: 15, scope: !6595)
!6600 = !DILocation(line: 546, column: 22, scope: !6595)
!6601 = !DILocation(line: 546, column: 30, scope: !6595)
!6602 = !DILocation(line: 546, column: 13, scope: !6595)
!6603 = !DILocation(line: 546, column: 3, scope: !6595)
!6604 = !DILocation(line: 548, column: 7, scope: !6605)
!6605 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 548, column: 6)
!6606 = !DILocation(line: 548, column: 10, scope: !6605)
!6607 = !DILocation(line: 548, column: 20, scope: !6605)
!6608 = !DILocation(line: 548, column: 33, scope: !6605)
!6609 = !DILocation(line: 548, column: 37, scope: !6605)
!6610 = !DILocation(line: 548, column: 40, scope: !6605)
!6611 = !DILocation(line: 548, column: 50, scope: !6605)
!6612 = !DILocation(line: 548, column: 6, scope: !6568)
!6613 = !DILocation(line: 549, column: 9, scope: !6614)
!6614 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 548, column: 70)
!6615 = !DILocation(line: 550, column: 9, scope: !6614)
!6616 = !DILocation(line: 551, column: 2, scope: !6614)
!6617 = !DILocation(line: 552, column: 11, scope: !6618)
!6618 = distinct !DILexicalBlock(scope: !6605, file: !3, line: 551, column: 9)
!6619 = !DILocation(line: 552, column: 14, scope: !6618)
!6620 = !DILocation(line: 552, column: 3, scope: !6618)
!6621 = !DILocation(line: 554, column: 10, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6618, file: !3, line: 552, column: 25)
!6623 = !DILocation(line: 555, column: 10, scope: !6622)
!6624 = !DILocation(line: 556, column: 4, scope: !6622)
!6625 = !DILocation(line: 559, column: 10, scope: !6622)
!6626 = !DILocation(line: 560, column: 10, scope: !6622)
!6627 = !DILocation(line: 561, column: 4, scope: !6622)
!6628 = !DILocation(line: 564, column: 10, scope: !6622)
!6629 = !DILocation(line: 565, column: 10, scope: !6622)
!6630 = !DILocation(line: 566, column: 4, scope: !6622)
!6631 = !DILocation(line: 569, column: 10, scope: !6622)
!6632 = !DILocation(line: 570, column: 10, scope: !6622)
!6633 = !DILocation(line: 571, column: 4, scope: !6622)
!6634 = !DILocation(line: 574, column: 10, scope: !6622)
!6635 = !DILocation(line: 575, column: 10, scope: !6622)
!6636 = !DILocation(line: 576, column: 4, scope: !6622)
!6637 = !DILocation(line: 579, column: 10, scope: !6622)
!6638 = !DILocation(line: 580, column: 10, scope: !6622)
!6639 = !DILocation(line: 581, column: 4, scope: !6622)
!6640 = !DILocation(line: 584, column: 4, scope: !6622)
!6641 = !DILocation(line: 587, column: 11, scope: !6568)
!6642 = !DILocation(line: 587, column: 8, scope: !6568)
!6643 = !DILocation(line: 588, column: 2, scope: !6568)
!6644 = !DILocation(line: 588, column: 2, scope: !6645)
!6645 = distinct !DILexicalBlock(scope: !6646, file: !3, line: 588, column: 2)
!6646 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 588, column: 2)
!6647 = !DILocation(line: 588, column: 2, scope: !6646)
!6648 = !DILocation(line: 589, column: 19, scope: !6568)
!6649 = !DILocation(line: 589, column: 33, scope: !6568)
!6650 = !DILocation(line: 589, column: 2, scope: !6568)
!6651 = !DILocation(line: 590, column: 19, scope: !6568)
!6652 = !DILocation(line: 590, column: 33, scope: !6568)
!6653 = !DILocation(line: 590, column: 2, scope: !6568)
!6654 = !DILocation(line: 591, column: 2, scope: !6568)
!6655 = !DILocation(line: 591, column: 2, scope: !6656)
!6656 = distinct !DILexicalBlock(scope: !6657, file: !3, line: 591, column: 2)
!6657 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 591, column: 2)
!6658 = !DILocation(line: 591, column: 2, scope: !6657)
!6659 = !DILocation(line: 592, column: 1, scope: !6568)
!6660 = distinct !DISubprogram(name: "s5h1420_getfreqoffset", scope: !3, file: !3, line: 515, type: !6661, scopeLine: 516, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6661 = !DISubroutineType(types: !6662)
!6662 = !{!365, !4506}
!6663 = !DILocalVariable(name: "state", arg: 1, scope: !6660, file: !3, line: 515, type: !4506)
!6664 = !DILocation(line: 515, column: 56, scope: !6660)
!6665 = !DILocalVariable(name: "val", scope: !6660, file: !3, line: 517, type: !365)
!6666 = !DILocation(line: 517, column: 6, scope: !6660)
!6667 = !DILocation(line: 519, column: 19, scope: !6660)
!6668 = !DILocation(line: 519, column: 48, scope: !6660)
!6669 = !DILocation(line: 519, column: 32, scope: !6660)
!6670 = !DILocation(line: 519, column: 61, scope: !6660)
!6671 = !DILocation(line: 519, column: 2, scope: !6660)
!6672 = !DILocation(line: 520, column: 25, scope: !6660)
!6673 = !DILocation(line: 520, column: 9, scope: !6660)
!6674 = !DILocation(line: 520, column: 38, scope: !6660)
!6675 = !DILocation(line: 520, column: 7, scope: !6660)
!6676 = !DILocation(line: 521, column: 25, scope: !6660)
!6677 = !DILocation(line: 521, column: 9, scope: !6660)
!6678 = !DILocation(line: 521, column: 38, scope: !6660)
!6679 = !DILocation(line: 521, column: 6, scope: !6660)
!6680 = !DILocation(line: 522, column: 25, scope: !6660)
!6681 = !DILocation(line: 522, column: 9, scope: !6660)
!6682 = !DILocation(line: 522, column: 6, scope: !6660)
!6683 = !DILocation(line: 523, column: 19, scope: !6660)
!6684 = !DILocation(line: 523, column: 48, scope: !6660)
!6685 = !DILocation(line: 523, column: 32, scope: !6660)
!6686 = !DILocation(line: 523, column: 61, scope: !6660)
!6687 = !DILocation(line: 523, column: 2, scope: !6660)
!6688 = !DILocation(line: 525, column: 6, scope: !6689)
!6689 = distinct !DILexicalBlock(scope: !6660, file: !3, line: 525, column: 6)
!6690 = !DILocation(line: 525, column: 10, scope: !6689)
!6691 = !DILocation(line: 525, column: 6, scope: !6660)
!6692 = !DILocation(line: 526, column: 7, scope: !6689)
!6693 = !DILocation(line: 526, column: 3, scope: !6689)
!6694 = !DILocation(line: 530, column: 12, scope: !6660)
!6695 = !DILocation(line: 530, column: 11, scope: !6660)
!6696 = !DILocation(line: 530, column: 20, scope: !6660)
!6697 = !DILocation(line: 530, column: 27, scope: !6660)
!6698 = !DILocation(line: 530, column: 31, scope: !6660)
!6699 = !DILocation(line: 530, column: 17, scope: !6660)
!6700 = !DILocation(line: 530, column: 42, scope: !6660)
!6701 = !DILocation(line: 530, column: 6, scope: !6660)
!6702 = !DILocation(line: 532, column: 9, scope: !6660)
!6703 = !DILocation(line: 532, column: 2, scope: !6660)
!6704 = distinct !DISubprogram(name: "s5h1420_getinversion", scope: !3, file: !3, line: 620, type: !6705, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6705 = !DISubroutineType(types: !6706)
!6706 = !{!170, !4506}
!6707 = !DILocalVariable(name: "state", arg: 1, scope: !6704, file: !3, line: 620, type: !4506)
!6708 = !DILocation(line: 620, column: 44, scope: !6704)
!6709 = !DILocation(line: 622, column: 22, scope: !6710)
!6710 = distinct !DILexicalBlock(scope: !6704, file: !3, line: 622, column: 6)
!6711 = !DILocation(line: 622, column: 6, scope: !6710)
!6712 = !DILocation(line: 622, column: 35, scope: !6710)
!6713 = !DILocation(line: 622, column: 6, scope: !6704)
!6714 = !DILocation(line: 623, column: 3, scope: !6710)
!6715 = !DILocation(line: 625, column: 2, scope: !6704)
!6716 = !DILocation(line: 626, column: 1, scope: !6704)
!6717 = distinct !DISubprogram(name: "s5h1420_getsymbolrate", scope: !3, file: !3, line: 488, type: !6718, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6718 = !DISubroutineType(types: !6719)
!6719 = !{!548, !4506}
!6720 = !DILocalVariable(name: "state", arg: 1, scope: !6717, file: !3, line: 488, type: !4506)
!6721 = !DILocation(line: 488, column: 56, scope: !6717)
!6722 = !DILocation(line: 490, column: 9, scope: !6717)
!6723 = !DILocation(line: 490, column: 16, scope: !6717)
!6724 = !DILocation(line: 490, column: 2, scope: !6717)
!6725 = distinct !DISubprogram(name: "s5h1420_getfec", scope: !3, file: !3, line: 594, type: !6726, scopeLine: 595, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6726 = !DISubroutineType(types: !6727)
!6727 = !{!175, !4506}
!6728 = !DILocalVariable(name: "state", arg: 1, scope: !6725, file: !3, line: 594, type: !4506)
!6729 = !DILocation(line: 594, column: 63, scope: !6725)
!6730 = !DILocation(line: 596, column: 25, scope: !6725)
!6731 = !DILocation(line: 596, column: 9, scope: !6725)
!6732 = !DILocation(line: 596, column: 38, scope: !6725)
!6733 = !DILocation(line: 596, column: 2, scope: !6725)
!6734 = !DILocation(line: 598, column: 3, scope: !6735)
!6735 = distinct !DILexicalBlock(scope: !6725, file: !3, line: 596, column: 46)
!6736 = !DILocation(line: 601, column: 3, scope: !6735)
!6737 = !DILocation(line: 604, column: 3, scope: !6735)
!6738 = !DILocation(line: 607, column: 3, scope: !6735)
!6739 = !DILocation(line: 610, column: 3, scope: !6735)
!6740 = !DILocation(line: 613, column: 3, scope: !6735)
!6741 = !DILocation(line: 616, column: 2, scope: !6725)
!6742 = !DILocation(line: 617, column: 1, scope: !6725)
!6743 = distinct !DISubprogram(name: "s5h1420_get_status_bits", scope: !3, file: !3, line: 299, type: !6744, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !520)
!6744 = !DISubroutineType(types: !6745)
!6745 = !{!128, !4506}
!6746 = !DILocalVariable(name: "state", arg: 1, scope: !6743, file: !3, line: 299, type: !4506)
!6747 = !DILocation(line: 299, column: 69, scope: !6743)
!6748 = !DILocalVariable(name: "val", scope: !6743, file: !3, line: 301, type: !418)
!6749 = !DILocation(line: 301, column: 5, scope: !6743)
!6750 = !DILocalVariable(name: "status", scope: !6743, file: !3, line: 302, type: !128)
!6751 = !DILocation(line: 302, column: 17, scope: !6743)
!6752 = !DILocation(line: 304, column: 24, scope: !6743)
!6753 = !DILocation(line: 304, column: 8, scope: !6743)
!6754 = !DILocation(line: 304, column: 6, scope: !6743)
!6755 = !DILocation(line: 305, column: 6, scope: !6756)
!6756 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 305, column: 6)
!6757 = !DILocation(line: 305, column: 10, scope: !6756)
!6758 = !DILocation(line: 305, column: 6, scope: !6743)
!6759 = !DILocation(line: 306, column: 10, scope: !6756)
!6760 = !DILocation(line: 306, column: 3, scope: !6756)
!6761 = !DILocation(line: 307, column: 6, scope: !6762)
!6762 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 307, column: 6)
!6763 = !DILocation(line: 307, column: 10, scope: !6762)
!6764 = !DILocation(line: 307, column: 6, scope: !6743)
!6765 = !DILocation(line: 308, column: 10, scope: !6762)
!6766 = !DILocation(line: 308, column: 3, scope: !6762)
!6767 = !DILocation(line: 309, column: 24, scope: !6743)
!6768 = !DILocation(line: 309, column: 8, scope: !6743)
!6769 = !DILocation(line: 309, column: 6, scope: !6743)
!6770 = !DILocation(line: 310, column: 6, scope: !6771)
!6771 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 310, column: 6)
!6772 = !DILocation(line: 310, column: 10, scope: !6771)
!6773 = !DILocation(line: 310, column: 6, scope: !6743)
!6774 = !DILocation(line: 311, column: 10, scope: !6771)
!6775 = !DILocation(line: 311, column: 3, scope: !6771)
!6776 = !DILocation(line: 312, column: 6, scope: !6777)
!6777 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 312, column: 6)
!6778 = !DILocation(line: 312, column: 10, scope: !6777)
!6779 = !DILocation(line: 312, column: 6, scope: !6743)
!6780 = !DILocation(line: 313, column: 10, scope: !6777)
!6781 = !DILocation(line: 313, column: 3, scope: !6777)
!6782 = !DILocation(line: 314, column: 6, scope: !6783)
!6783 = distinct !DILexicalBlock(scope: !6743, file: !3, line: 314, column: 6)
!6784 = !DILocation(line: 314, column: 13, scope: !6783)
!6785 = !DILocation(line: 314, column: 6, scope: !6743)
!6786 = !DILocation(line: 315, column: 10, scope: !6783)
!6787 = !DILocation(line: 315, column: 3, scope: !6783)
!6788 = !DILocation(line: 317, column: 9, scope: !6743)
!6789 = !DILocation(line: 317, column: 2, scope: !6743)
