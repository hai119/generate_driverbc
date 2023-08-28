; ModuleID = '../bcout/drivers/media/dvb-frontends/cx24123.llvm.bc'
source_filename = "drivers/media/dvb-frontends/cx24123.c"
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
%struct.anon.67 = type { i8, i8 }
%struct.cx24123_AGC_val = type { i32, i32, i32, i32, i32 }
%struct.cx24123_bandselect_val = type { i32, i32, i32, i32 }
%struct.cx24123_state = type { %struct.i2c_adapter*, %struct.cx24123_config*, %struct.dvb_frontend, i32, i32, i32, i32, i32, %struct.i2c_adapter, i8, i32, i32 }
%struct.cx24123_config = type { i8, i32 (%struct.dvb_frontend*, i32)*, i32, i8, void (%struct.dvb_frontend*)* }

@__param_str_force_band = internal constant [19 x i8] c"cx24123.force_band\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@force_band = internal global i32 0, align 4, !dbg !413
@__param_force_band = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_force_band, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @force_band to i8*) } }, section "__param", align 8, !dbg !308
@__UNIQUE_ID_force_bandtype220 = internal constant [32 x i8] c"cx24123.parmtype=force_band:int\00", section ".modinfo", align 1, !dbg !374
@__UNIQUE_ID_force_band221 = internal constant [73 x i8] c"cx24123.parm=force_band:Force a specific band select (1-9, default:off).\00", section ".modinfo", align 1, !dbg !379
@__param_str_debug = internal constant [14 x i8] c"cx24123.debug\00", align 1, !dbg !417
@debug = internal global i32 0, align 4, !dbg !415
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !384
@__UNIQUE_ID_debugtype222 = internal constant [27 x i8] c"cx24123.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !386
@__UNIQUE_ID_debug223 = internal constant [60 x i8] c"cx24123.parm=debug:Activates frontend debugging (default:0)\00", section ".modinfo", align 1, !dbg !391
@.str = private unnamed_addr constant [16 x i8] c"\017CX24123: %s: \00", align 1
@__func__.cx24123_attach = private unnamed_addr constant [15 x i8] c"cx24123_attach\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"\013CX24123: Unable to kzalloc\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\016CX24123: detected CX24123C\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"\016CX24123: detected CX24123\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"\013CX24123: wrong demod revision: %x\0A\00", align 1
@cx24123_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Conexant CX24123/CX24109\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 1011000, i32 5000000, i32 1000000, i32 45000000, i32 0, i32 1073743615 }, [8 x i8] c"\05\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @cx24123_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @cx24123_initfe, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* @cx24123_tune, i32 (%struct.dvb_frontend*)* @cx24123_get_algo, i32 (%struct.dvb_frontend*)* @cx24123_set_frontend, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* null, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @cx24123_get_frontend, i32 (%struct.dvb_frontend*, i32*)* @cx24123_read_status, i32 (%struct.dvb_frontend*, i32*)* @cx24123_read_ber, i32 (%struct.dvb_frontend*, i16*)* @cx24123_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @cx24123_read_snr, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* @cx24123_send_diseqc_msg, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* @cx24123_diseqc_send_burst, i32 (%struct.dvb_frontend*, i32)* @cx24123_set_tone, i32 (%struct.dvb_frontend*, i32)* @cx24123_set_voltage, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !4112
@.str.6 = private unnamed_addr constant [22 x i8] c"CX24123 tuner I2C bus\00", align 1
@cx24123_tuner_i2c_algo = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cx24123_tuner_i2c_tuner_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @cx24123_tuner_i2c_func }, align 8, !dbg !422
@.str.7 = private unnamed_addr constant [51 x i8] c"\013CX24123: tuner i2c bus could not be initialized\0A\00", align 1
@__UNIQUE_ID_description224 = internal constant [86 x i8] c"cx24123.description=DVB Frontend module for Conexant CX24123/CX24109/CX24113 hardware\00", section ".modinfo", align 1, !dbg !396
@__UNIQUE_ID_author225 = internal constant [27 x i8] c"cx24123.author=Steven Toth\00", section ".modinfo", align 1, !dbg !401
@__UNIQUE_ID_file226 = internal constant [49 x i8] c"cx24123.file=drivers/media/dvb-frontends/cx24123\00", section ".modinfo", align 1, !dbg !403
@__UNIQUE_ID_license227 = internal constant [20 x i8] c"cx24123.license=GPL\00", section ".modinfo", align 1, !dbg !408
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.8 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\013CX24123: %s: reg=0x%x (error=%d)\0A\00", align 1
@__func__.cx24123_i2c_readreg = private unnamed_addr constant [20 x i8] c"cx24123_i2c_readreg\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"%s: writereg error(err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", align 1
@__func__.cx24123_i2c_writereg = private unnamed_addr constant [21 x i8] c"cx24123_i2c_writereg\00", align 1
@__func__.cx24123_release = private unnamed_addr constant [16 x i8] c"cx24123_release\00", align 1
@__func__.cx24123_initfe = private unnamed_addr constant [15 x i8] c"cx24123_initfe\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"init frontend\0A\00", align 1
@cx24123_regdata = internal global [41 x %struct.anon.67] [%struct.anon.67 { i8 0, i8 3 }, %struct.anon.67 zeroinitializer, %struct.anon.67 { i8 3, i8 7 }, %struct.anon.67 { i8 4, i8 16 }, %struct.anon.67 { i8 5, i8 4 }, %struct.anon.67 { i8 6, i8 49 }, %struct.anon.67 { i8 11, i8 0 }, %struct.anon.67 { i8 12, i8 0 }, %struct.anon.67 { i8 13, i8 127 }, %struct.anon.67 { i8 14, i8 3 }, %struct.anon.67 { i8 15, i8 -2 }, %struct.anon.67 { i8 16, i8 1 }, %struct.anon.67 { i8 22, i8 0 }, %struct.anon.67 { i8 23, i8 1 }, %struct.anon.67 { i8 28, i8 -128 }, %struct.anon.67 { i8 32, i8 0 }, %struct.anon.67 { i8 33, i8 21 }, %struct.anon.67 { i8 40, i8 0 }, %struct.anon.67 { i8 41, i8 0 }, %struct.anon.67 { i8 42, i8 -80 }, %struct.anon.67 { i8 43, i8 115 }, %struct.anon.67 { i8 44, i8 0 }, %struct.anon.67 { i8 45, i8 0 }, %struct.anon.67 { i8 46, i8 0 }, %struct.anon.67 { i8 47, i8 0 }, %struct.anon.67 { i8 48, i8 0 }, %struct.anon.67 { i8 49, i8 0 }, %struct.anon.67 { i8 50, i8 -116 }, %struct.anon.67 { i8 51, i8 0 }, %struct.anon.67 { i8 52, i8 0 }, %struct.anon.67 { i8 53, i8 3 }, %struct.anon.67 { i8 54, i8 2 }, %struct.anon.67 { i8 55, i8 58 }, %struct.anon.67 { i8 58, i8 0 }, %struct.anon.67 { i8 68, i8 0 }, %struct.anon.67 { i8 69, i8 0 }, %struct.anon.67 { i8 70, i8 13 }, %struct.anon.67 { i8 86, i8 -63 }, %struct.anon.67 { i8 87, i8 -1 }, %struct.anon.67 { i8 92, i8 32 }, %struct.anon.67 { i8 103, i8 -125 }], align 16, !dbg !4435
@__func__.cx24123_set_frontend = private unnamed_addr constant [21 x i8] c"cx24123_set_frontend\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"\013CX24123: it seems I don't have a tuner...\00", align 1
@__func__.cx24123_set_inversion = private unnamed_addr constant [22 x i8] c"cx24123_set_inversion\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"inversion off\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"inversion on\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"inversion auto\0A\00", align 1
@__func__.cx24123_set_fec = private unnamed_addr constant [16 x i8] c"cx24123_set_fec\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"set FEC to 1/2\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"set FEC to 2/3\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"set FEC to 3/4\0A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"set FEC to 4/5\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"set FEC to 5/6\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"set FEC to 6/7\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"set FEC to 7/8\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"set FEC to auto\0A\00", align 1
@__func__.cx24123_set_symbolrate = private unnamed_addr constant [23 x i8] c"cx24123_set_symbolrate\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"srate=%d, ratio=0x%08x, sample_rate=%i sample_gain=%d\0A\00", align 1
@__func__.cx24123_pll_tune = private unnamed_addr constant [17 x i8] c"cx24123_pll_tune\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"frequency=%i\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"\013CX24123: %s: cx24123_pll_calculate failed\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"pll tune VCA=%d, band=%d, pll=%d\0A\00", align 1
@cx24123_AGC_vals = internal global [3 x %struct.cx24123_AGC_val] [%struct.cx24123_AGC_val { i32 1000000, i32 4999999, i32 1052167, i32 721376, i32 639 }, %struct.cx24123_AGC_val { i32 5000000, i32 14999999, i32 1052191, i32 721376, i32 791 }, %struct.cx24123_AGC_val { i32 15000000, i32 45000000, i32 1052223, i32 655744, i32 325 }], align 16, !dbg !4444
@cx24123_bandselect_vals = internal global [9 x %struct.cx24123_bandselect_val] [%struct.cx24123_bandselect_val { i32 950000, i32 1074999, i32 4, i32 64 }, %struct.cx24123_bandselect_val { i32 1075000, i32 1177999, i32 4, i32 128 }, %struct.cx24123_bandselect_val { i32 1178000, i32 1295999, i32 2, i32 513 }, %struct.cx24123_bandselect_val { i32 1296000, i32 1431999, i32 2, i32 514 }, %struct.cx24123_bandselect_val { i32 1432000, i32 1575999, i32 2, i32 516 }, %struct.cx24123_bandselect_val { i32 1576000, i32 1717999, i32 2, i32 520 }, %struct.cx24123_bandselect_val { i32 1718000, i32 1855999, i32 2, i32 528 }, %struct.cx24123_bandselect_val { i32 1856000, i32 2035999, i32 2, i32 544 }, %struct.cx24123_bandselect_val { i32 2036000, i32 2150000, i32 2, i32 576 }], align 16, !dbg !4454
@__func__.cx24123_pll_writereg = private unnamed_addr constant [21 x i8] c"cx24123_pll_writereg\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"pll writereg called, data=0x%08x\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@.str.29 = private unnamed_addr constant [73 x i8] c"\013CX24123: %s:  demodulator is not responding, possibly hung, aborting.\0A\00", align 1
@.str.30 = private unnamed_addr constant [72 x i8] c"\013CX24123: %s:  demodulator is not responding,possibly hung, aborting.\0A\00", align 1
@__func__.cx24123_get_frontend = private unnamed_addr constant [21 x i8] c"cx24123_get_frontend\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"\013CX24123: %s: Failed to get inversion status\0A\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"\013CX24123: %s: Failed to get fec status\0A\00", align 1
@__func__.cx24123_get_inversion = private unnamed_addr constant [22 x i8] c"cx24123_get_inversion\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"read inversion off\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"read inversion on\0A\00", align 1
@__func__.cx24123_read_ber = private unnamed_addr constant [17 x i8] c"cx24123_read_ber\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"BER = %d\0A\00", align 1
@__func__.cx24123_read_signal_strength = private unnamed_addr constant [29 x i8] c"cx24123_read_signal_strength\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"Signal strength = %d\0A\00", align 1
@__func__.cx24123_read_snr = private unnamed_addr constant [17 x i8] c"cx24123_read_snr\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"read S/N index = %d\0A\00", align 1
@__func__.cx24123_send_diseqc_msg = private unnamed_addr constant [24 x i8] c"cx24123_send_diseqc_msg\00", align 1
@.str.38 = private unnamed_addr constant [61 x i8] c"\013CX24123: %s: diseqc queue not ready, command may be lost.\0A\00", align 1
@__func__.cx24123_wait_for_diseqc = private unnamed_addr constant [24 x i8] c"cx24123_wait_for_diseqc\00", align 1
@__func__.cx24123_diseqc_send_burst = private unnamed_addr constant [26 x i8] c"cx24123_diseqc_send_burst\00", align 1
@__func__.cx24123_set_tone = private unnamed_addr constant [17 x i8] c"cx24123_set_tone\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"setting tone on\0A\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"setting tone off\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"\013CX24123: CASE reached default with tone=%d\0A\00", align 1
@__func__.cx24123_set_voltage = private unnamed_addr constant [20 x i8] c"cx24123_set_voltage\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"setting voltage 13V\0A\00", align 1
@.str.43 = private unnamed_addr constant [21 x i8] c"setting voltage 18V\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_force_band to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_force_bandtype220, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__UNIQUE_ID_force_band221, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype222, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__UNIQUE_ID_debug223, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_description224, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_author225, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_file226, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license227, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @cx24123_get_tuner_i2c_adapter(%struct.dvb_frontend* %fe) #0 !dbg !4471 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4474, metadata !DIExpression()), !dbg !4475
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !4476, metadata !DIExpression()), !dbg !4502
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4503
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4504
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4504
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !4503
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !4502
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4505
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %3, i32 0, i32 8, !dbg !4506
  ret %struct.i2c_adapter* %tuner_i2c_adapter, !dbg !4507
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @cx24123_attach(%struct.cx24123_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4508 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.cx24123_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.cx24123_config* %config, %struct.cx24123_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_config** %config.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !4515, metadata !DIExpression()), !dbg !4516
  %call = call i8* @kzalloc(i64 2280, i32 3264) #8, !dbg !4517
  %0 = bitcast i8* %call to %struct.cx24123_state*, !dbg !4517
  store %struct.cx24123_state* %0, %struct.cx24123_state** %state, align 8, !dbg !4516
  br label %do.body, !dbg !4518

do.body:                                          ; preds = %entry
  %1 = load i32, i32* @debug, align 4, !dbg !4519
  %tobool = icmp ne i32 %1, 0, !dbg !4519
  br i1 %tobool, label %if.then, label %if.end, !dbg !4522

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cx24123_attach, i64 0, i64 0)) #9, !dbg !4523
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4523
  br label %if.end, !dbg !4523

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4522

do.end:                                           ; preds = %if.end
  %2 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4525
  %cmp = icmp eq %struct.cx24123_state* %2, null, !dbg !4527
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !4528

if.then3:                                         ; preds = %do.end
  br label %do.body4, !dbg !4529

do.body4:                                         ; preds = %if.then3
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4531
  br label %do.end6, !dbg !4531

do.end6:                                          ; preds = %do.body4
  br label %error, !dbg !4533

if.end7:                                          ; preds = %do.end
  %3 = load %struct.cx24123_config*, %struct.cx24123_config** %config.addr, align 8, !dbg !4534
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4535
  %config8 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !4536
  store %struct.cx24123_config* %3, %struct.cx24123_config** %config8, align 8, !dbg !4537
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4538
  %6 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4539
  %i2c9 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %6, i32 0, i32 0, !dbg !4540
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c9, align 8, !dbg !4541
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4542
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4542
  %config10 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !4542
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config10, align 8, !dbg !4542
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 0, !dbg !4542
  %10 = load i8, i8* %demod_address, align 8, !dbg !4542
  %call11 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %7, i8 zeroext %10, i8 zeroext 0) #8, !dbg !4542
  %conv = trunc i32 %call11 to i8, !dbg !4542
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4543
  %demod_rev = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %11, i32 0, i32 9, !dbg !4544
  store i8 %conv, i8* %demod_rev, align 8, !dbg !4545
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4546
  %demod_rev12 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 9, !dbg !4547
  %13 = load i8, i8* %demod_rev12, align 8, !dbg !4547
  %conv13 = zext i8 %13 to i32, !dbg !4546
  switch i32 %conv13, label %sw.default [
    i32 225, label %sw.bb
    i32 209, label %sw.bb17
  ], !dbg !4548

sw.bb:                                            ; preds = %if.end7
  br label %do.body14, !dbg !4549

do.body14:                                        ; preds = %sw.bb
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !4551
  br label %do.end16, !dbg !4551

do.end16:                                         ; preds = %do.body14
  br label %sw.epilog, !dbg !4553

sw.bb17:                                          ; preds = %if.end7
  br label %do.body18, !dbg !4554

do.body18:                                        ; preds = %sw.bb17
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !4555
  br label %do.end20, !dbg !4555

do.end20:                                         ; preds = %do.body18
  br label %sw.epilog, !dbg !4557

sw.default:                                       ; preds = %if.end7
  br label %do.body21, !dbg !4558

do.body21:                                        ; preds = %sw.default
  %14 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4559
  %demod_rev22 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %14, i32 0, i32 9, !dbg !4559
  %15 = load i8, i8* %demod_rev22, align 8, !dbg !4559
  %conv23 = zext i8 %15 to i32, !dbg !4559
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %conv23) #9, !dbg !4559
  br label %do.end25, !dbg !4559

do.end25:                                         ; preds = %do.body21
  br label %error, !dbg !4561

sw.epilog:                                        ; preds = %do.end20, %do.end16
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4562
  %frontend = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 2, !dbg !4563
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4564
  %17 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4565
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @cx24123_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4565
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4566
  %19 = bitcast %struct.cx24123_state* %18 to i8*, !dbg !4566
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4567
  %frontend26 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %20, i32 0, i32 2, !dbg !4568
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend26, i32 0, i32 3, !dbg !4569
  store i8* %19, i8** %demodulator_priv, align 8, !dbg !4570
  %21 = load %struct.cx24123_config*, %struct.cx24123_config** %config.addr, align 8, !dbg !4571
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %21, i32 0, i32 3, !dbg !4573
  %22 = load i8, i8* %dont_use_pll, align 4, !dbg !4573
  %tobool27 = icmp ne i8 %22, 0, !dbg !4571
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !4574

if.then28:                                        ; preds = %sw.epilog
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4575
  %call29 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %23, i8 zeroext 1, i8 zeroext 0) #8, !dbg !4576
  br label %if.end30, !dbg !4576

if.end30:                                         ; preds = %if.then28, %sw.epilog
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4577
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %24, i32 0, i32 8, !dbg !4578
  %name = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter, i32 0, i32 12, !dbg !4579
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name, i64 0, i64 0, !dbg !4577
  %call31 = call i64 @strscpy(i8* %arraydecay, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 48) #8, !dbg !4580
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4581
  %tuner_i2c_adapter32 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %25, i32 0, i32 8, !dbg !4582
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter32, i32 0, i32 2, !dbg !4583
  store %struct.i2c_algorithm* @cx24123_tuner_i2c_algo, %struct.i2c_algorithm** %algo, align 8, !dbg !4584
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4585
  %tuner_i2c_adapter33 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %26, i32 0, i32 8, !dbg !4586
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter33, i32 0, i32 3, !dbg !4587
  store i8* null, i8** %algo_data, align 8, !dbg !4588
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4589
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 9, !dbg !4590
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !4591
  %28 = load %struct.device*, %struct.device** %parent, align 8, !dbg !4591
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4592
  %tuner_i2c_adapter34 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %29, i32 0, i32 8, !dbg !4593
  %dev35 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %tuner_i2c_adapter34, i32 0, i32 9, !dbg !4594
  %parent36 = getelementptr inbounds %struct.device, %struct.device* %dev35, i32 0, i32 1, !dbg !4595
  store %struct.device* %28, %struct.device** %parent36, align 8, !dbg !4596
  %30 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4597
  %tuner_i2c_adapter37 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %30, i32 0, i32 8, !dbg !4598
  %31 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4599
  %32 = bitcast %struct.cx24123_state* %31 to i8*, !dbg !4599
  call void @i2c_set_adapdata(%struct.i2c_adapter* %tuner_i2c_adapter37, i8* %32) #8, !dbg !4600
  %33 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4601
  %tuner_i2c_adapter38 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %33, i32 0, i32 8, !dbg !4603
  %call39 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %tuner_i2c_adapter38) #8, !dbg !4604
  %cmp40 = icmp slt i32 %call39, 0, !dbg !4605
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !4606

if.then42:                                        ; preds = %if.end30
  br label %do.body43, !dbg !4607

do.body43:                                        ; preds = %if.then42
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !4609
  br label %do.end45, !dbg !4609

do.end45:                                         ; preds = %do.body43
  br label %error, !dbg !4611

if.end46:                                         ; preds = %if.end30
  %34 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4612
  %frontend47 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %34, i32 0, i32 2, !dbg !4613
  store %struct.dvb_frontend* %frontend47, %struct.dvb_frontend** %retval, align 8, !dbg !4614
  br label %return, !dbg !4614

error:                                            ; preds = %do.end45, %do.end25, %do.end6
  call void @llvm.dbg.label(metadata !4615), !dbg !4616
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !4617
  %36 = bitcast %struct.cx24123_state* %35 to i8*, !dbg !4617
  call void @kfree(i8* %36) #8, !dbg !4618
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4619
  br label %return, !dbg !4619

return:                                           ; preds = %error, %if.end46
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4620
  ret %struct.dvb_frontend* %37, !dbg !4620
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4621 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4624, metadata !DIExpression()), !dbg !4628
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4634, metadata !DIExpression()), !dbg !4635
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4636, metadata !DIExpression()), !dbg !4637
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4638, metadata !DIExpression()), !dbg !4639
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4640, metadata !DIExpression()), !dbg !4644
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4646, metadata !DIExpression()), !dbg !4650
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4652, metadata !DIExpression()), !dbg !4656
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4661, metadata !DIExpression()), !dbg !4662
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4663, metadata !DIExpression()), !dbg !4664
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4665, metadata !DIExpression()), !dbg !4666
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4667, metadata !DIExpression()), !dbg !4668
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4669, metadata !DIExpression()), !dbg !4670
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4671, metadata !DIExpression()), !dbg !4672
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4673, metadata !DIExpression()), !dbg !4674
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4675, metadata !DIExpression()), !dbg !4676
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4677, metadata !DIExpression()), !dbg !4678
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4679, metadata !DIExpression()), !dbg !4680
  %0 = load i64, i64* %size.addr, align 8, !dbg !4681
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4682
  %or = or i32 %1, 256, !dbg !4683
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4684
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4685
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4686

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4687
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4688
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4689

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4690
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4691
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4692
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4693
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4670
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4694
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4695
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4696
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4697
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4698
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4699
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4700
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4700
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4700
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4700
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4700
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4701
  br label %kmalloc.exit, !dbg !4701

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4702
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4703
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4705

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4706
  br label %kmalloc_index.exit.i, !dbg !4706

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4707
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4709
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4710

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4711
  br label %kmalloc_index.exit.i, !dbg !4711

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4712
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4714
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4715

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4716
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4717
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4718

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4719
  br label %kmalloc_index.exit.i, !dbg !4719

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4720
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4722
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4723

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4724
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4725
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4726

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4730
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4731

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4735
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4736

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4740
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4741

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4745
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4746

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4750
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4751

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4755
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4756

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4760
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4761

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4765
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4766

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4770
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4771

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4775
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4776

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4780
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4781

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4785
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4786

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4788
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4790
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4791

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4792
  br label %kmalloc_index.exit.i, !dbg !4792

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4793
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4795
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4796

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4797
  br label %kmalloc_index.exit.i, !dbg !4797

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4798
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4800
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4801

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4802
  br label %kmalloc_index.exit.i, !dbg !4802

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4803
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4805
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4806

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4807
  br label %kmalloc_index.exit.i, !dbg !4807

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4808
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4810
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4811

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4812
  br label %kmalloc_index.exit.i, !dbg !4812

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4813
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4815
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4816

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4817
  br label %kmalloc_index.exit.i, !dbg !4817

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4818
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4820
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4821

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4822
  br label %kmalloc_index.exit.i, !dbg !4822

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4823
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4825
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4826

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4827
  br label %kmalloc_index.exit.i, !dbg !4827

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4828
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4830
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4831

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4832
  br label %kmalloc_index.exit.i, !dbg !4832

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4833
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4835
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4836

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4837
  br label %kmalloc_index.exit.i, !dbg !4837

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4838
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4840
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4841

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4842
  br label %kmalloc_index.exit.i, !dbg !4842

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4843
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4845
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4846

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4847
  br label %kmalloc_index.exit.i, !dbg !4847

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4848, !srcloc !4851
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !4852, !srcloc !4855
  unreachable, !dbg !4856

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4857
  store i32 %45, i32* %index.i, align 4, !dbg !4858
  %46 = load i32, i32* %index.i, align 4, !dbg !4859
  %tobool.i = icmp ne i32 %46, 0, !dbg !4859
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4861

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4862
  br label %kmalloc.exit, !dbg !4862

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4863
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4864
  %and.i.i = and i32 %48, 17, !dbg !4864
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4864
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4864
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4864
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4864
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4866

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4867
  br label %kmalloc_type.exit.i, !dbg !4867

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4868
  %and2.i.i = and i32 %49, 1, !dbg !4869
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4868
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4868
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4868
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4870
  br label %kmalloc_type.exit.i, !dbg !4870

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4871
  %idxprom.i = zext i32 %51 to i64, !dbg !4872
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4872
  %52 = load i32, i32* %index.i, align 4, !dbg !4873
  %idxprom6.i = zext i32 %52 to i64, !dbg !4872
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4872
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4872
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4874
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4875
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4876
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4877
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4878
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4878
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4878
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4878
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4878
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4639
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4879
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4880
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4881
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4882
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4883
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4884
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4885
  store i8* %62, i8** %retval.i, align 8, !dbg !4886
  br label %kmalloc.exit, !dbg !4886

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4887
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4888
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4889
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4889
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4889
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4889
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4889
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4890
  br label %kmalloc.exit, !dbg !4890

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4891
  ret i8* %65, !dbg !4892
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_i2c_readreg(%struct.cx24123_state* %state, i8 zeroext %i2c_addr, i8 zeroext %reg) #0 !dbg !4893 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %reg.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %b = alloca i8, align 1
  %msg = alloca [2 x %struct.i2c_msg], align 16
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i8 %reg, i8* %reg.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %reg.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4902, metadata !DIExpression()), !dbg !4903
  call void @llvm.dbg.declare(metadata i8* %b, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i8 0, i8* %b, align 1, !dbg !4905
  call void @llvm.dbg.declare(metadata [2 x %struct.i2c_msg]* %msg, metadata !4906, metadata !DIExpression()), !dbg !4908
  %arrayinit.begin = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4909
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 0, !dbg !4910
  %0 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4911
  %conv = zext i8 %0 to i16, !dbg !4911
  store i16 %conv, i16* %addr, align 16, !dbg !4910
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 1, !dbg !4910
  store i16 0, i16* %flags, align 2, !dbg !4910
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 2, !dbg !4910
  store i16 1, i16* %len, align 4, !dbg !4910
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i32 0, i32 3, !dbg !4910
  store i8* %reg.addr, i8** %buf, align 8, !dbg !4910
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.begin, i64 1, !dbg !4909
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 0, !dbg !4912
  %1 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4913
  %conv2 = zext i8 %1 to i16, !dbg !4913
  store i16 %conv2, i16* %addr1, align 16, !dbg !4912
  %flags3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 1, !dbg !4912
  store i16 1, i16* %flags3, align 2, !dbg !4912
  %len4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 2, !dbg !4912
  store i16 1, i16* %len4, align 4, !dbg !4912
  %buf5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayinit.element, i32 0, i32 3, !dbg !4912
  store i8* %b, i8** %buf5, align 8, !dbg !4912
  %2 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !4914
  %i2c = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %2, i32 0, i32 0, !dbg !4915
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4915
  %arraydecay = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !4916
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %3, %struct.i2c_msg* %arraydecay, i32 2) #8, !dbg !4917
  store i32 %call, i32* %ret, align 4, !dbg !4918
  %4 = load i32, i32* %ret, align 4, !dbg !4919
  %cmp = icmp ne i32 %4, 2, !dbg !4921
  br i1 %cmp, label %if.then, label %if.end, !dbg !4922

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4923

do.body:                                          ; preds = %if.then
  %5 = load i8, i8* %reg.addr, align 1, !dbg !4925
  %conv7 = zext i8 %5 to i32, !dbg !4925
  %6 = load i32, i32* %ret, align 4, !dbg !4925
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24123_i2c_readreg, i64 0, i64 0), i32 %conv7, i32 %6) #9, !dbg !4925
  br label %do.end, !dbg !4925

do.end:                                           ; preds = %do.body
  %7 = load i32, i32* %ret, align 4, !dbg !4927
  store i32 %7, i32* %retval, align 4, !dbg !4928
  br label %return, !dbg !4928

if.end:                                           ; preds = %entry
  %8 = load i8, i8* %b, align 1, !dbg !4929
  %conv9 = zext i8 %8 to i32, !dbg !4929
  store i32 %conv9, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

return:                                           ; preds = %if.end, %do.end
  %9 = load i32, i32* %retval, align 4, !dbg !4931
  ret i32 %9, !dbg !4931
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_repeater_mode(%struct.cx24123_state* %state, i8 zeroext %mode, i8 zeroext %start) #0 !dbg !4932 {
entry:
  %state.addr = alloca %struct.cx24123_state*, align 8
  %mode.addr = alloca i8, align 1
  %start.addr = alloca i8, align 1
  %r = alloca i8, align 1
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  store i8 %mode, i8* %mode.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %mode.addr, metadata !4935, metadata !DIExpression()), !dbg !4936
  store i8 %start, i8* %start.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %start.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata i8* %r, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !4941
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !4941
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 1, !dbg !4941
  %2 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !4941
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %2, i32 0, i32 0, !dbg !4941
  %3 = load i8, i8* %demod_address, align 8, !dbg !4941
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %0, i8 zeroext %3, i8 zeroext 35) #8, !dbg !4941
  %and = and i32 %call, 30, !dbg !4942
  %conv = trunc i32 %and to i8, !dbg !4941
  store i8 %conv, i8* %r, align 1, !dbg !4940
  %4 = load i8, i8* %mode.addr, align 1, !dbg !4943
  %tobool = icmp ne i8 %4, 0, !dbg !4943
  br i1 %tobool, label %if.then, label %if.else, !dbg !4945

if.then:                                          ; preds = %entry
  %5 = load i8, i8* %start.addr, align 1, !dbg !4946
  %conv1 = zext i8 %5 to i32, !dbg !4946
  %shl = shl i32 %conv1, 5, !dbg !4947
  %or = or i32 64, %shl, !dbg !4948
  %6 = load i8, i8* %r, align 1, !dbg !4949
  %conv2 = zext i8 %6 to i32, !dbg !4949
  %or3 = or i32 %conv2, %or, !dbg !4949
  %conv4 = trunc i32 %or3 to i8, !dbg !4949
  store i8 %conv4, i8* %r, align 1, !dbg !4949
  br label %if.end, !dbg !4950

if.else:                                          ; preds = %entry
  %7 = load i8, i8* %start.addr, align 1, !dbg !4951
  %conv5 = zext i8 %7 to i32, !dbg !4952
  %or6 = or i32 128, %conv5, !dbg !4953
  %8 = load i8, i8* %r, align 1, !dbg !4954
  %conv7 = zext i8 %8 to i32, !dbg !4954
  %or8 = or i32 %conv7, %or6, !dbg !4954
  %conv9 = trunc i32 %or8 to i8, !dbg !4954
  store i8 %conv9, i8* %r, align 1, !dbg !4954
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !4955
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !4955
  %config10 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %10, i32 0, i32 1, !dbg !4955
  %11 = load %struct.cx24123_config*, %struct.cx24123_config** %config10, align 8, !dbg !4955
  %demod_address11 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %11, i32 0, i32 0, !dbg !4955
  %12 = load i8, i8* %demod_address11, align 8, !dbg !4955
  %13 = load i8, i8* %r, align 1, !dbg !4955
  %conv12 = zext i8 %13 to i32, !dbg !4955
  %call13 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %9, i8 zeroext %12, i32 35, i32 %conv12) #8, !dbg !4955
  ret i32 %call13, !dbg !4956
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #0 !dbg !4957 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4960, metadata !DIExpression()), !dbg !4961
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4964
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !4965
  %1 = load i8*, i8** %data.addr, align 8, !dbg !4966
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !4967
  ret void, !dbg !4968
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4969 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4973, metadata !DIExpression()), !dbg !4978
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4980, metadata !DIExpression()), !dbg !4981
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  %0 = load i64, i64* %size.addr, align 8, !dbg !4984
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4986
  br i1 %1, label %if.then, label %if.end447, !dbg !4987

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4988
  %tobool = icmp ne i64 %2, 0, !dbg !4988
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4991

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4992
  br label %return, !dbg !4992

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4993
  %cmp = icmp ult i64 %3, 4096, !dbg !4995
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4996

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4997
  br label %return, !dbg !4997

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub = sub i64 %4, 1, !dbg !4998
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4998
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4998

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub4 = sub i64 %6, 1, !dbg !4998
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4998
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4998

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub6 = sub i64 %8, 1, !dbg !4998
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4998
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4998

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4998

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub9 = sub i64 %9, 1, !dbg !4998
  %and = and i64 %sub9, -9223372036854775808, !dbg !4998
  %tobool10 = icmp ne i64 %and, 0, !dbg !4998
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4998

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4998

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub13 = sub i64 %10, 1, !dbg !4998
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4998
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4998
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4998

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4998

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub18 = sub i64 %11, 1, !dbg !4998
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4998
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4998
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4998

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4998

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub23 = sub i64 %12, 1, !dbg !4998
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4998
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4998
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4998

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4998

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub28 = sub i64 %13, 1, !dbg !4998
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4998
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4998
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4998

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4998

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub33 = sub i64 %14, 1, !dbg !4998
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4998
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4998
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4998

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4998

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub38 = sub i64 %15, 1, !dbg !4998
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4998
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4998
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4998

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4998

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub43 = sub i64 %16, 1, !dbg !4998
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4998
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4998
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4998

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4998

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub48 = sub i64 %17, 1, !dbg !4998
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4998
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4998
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4998

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4998

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub53 = sub i64 %18, 1, !dbg !4998
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4998
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4998
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4998

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4998

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub58 = sub i64 %19, 1, !dbg !4998
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4998
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4998
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4998

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4998

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub63 = sub i64 %20, 1, !dbg !4998
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4998
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4998
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4998

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4998

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub68 = sub i64 %21, 1, !dbg !4998
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4998
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4998
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4998

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4998

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub73 = sub i64 %22, 1, !dbg !4998
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4998
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4998
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4998

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4998

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub78 = sub i64 %23, 1, !dbg !4998
  %and79 = and i64 %sub78, 562949953421312, !dbg !4998
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4998
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4998

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4998

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub83 = sub i64 %24, 1, !dbg !4998
  %and84 = and i64 %sub83, 281474976710656, !dbg !4998
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4998
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4998

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4998

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub88 = sub i64 %25, 1, !dbg !4998
  %and89 = and i64 %sub88, 140737488355328, !dbg !4998
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4998
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4998

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4998

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub93 = sub i64 %26, 1, !dbg !4998
  %and94 = and i64 %sub93, 70368744177664, !dbg !4998
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4998
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4998

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4998

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub98 = sub i64 %27, 1, !dbg !4998
  %and99 = and i64 %sub98, 35184372088832, !dbg !4998
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4998
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4998

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4998

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub103 = sub i64 %28, 1, !dbg !4998
  %and104 = and i64 %sub103, 17592186044416, !dbg !4998
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4998
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4998

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4998

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub108 = sub i64 %29, 1, !dbg !4998
  %and109 = and i64 %sub108, 8796093022208, !dbg !4998
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4998
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4998

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4998

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub113 = sub i64 %30, 1, !dbg !4998
  %and114 = and i64 %sub113, 4398046511104, !dbg !4998
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4998
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4998

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4998

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub118 = sub i64 %31, 1, !dbg !4998
  %and119 = and i64 %sub118, 2199023255552, !dbg !4998
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4998
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4998

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4998

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub123 = sub i64 %32, 1, !dbg !4998
  %and124 = and i64 %sub123, 1099511627776, !dbg !4998
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4998
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4998

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4998

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub128 = sub i64 %33, 1, !dbg !4998
  %and129 = and i64 %sub128, 549755813888, !dbg !4998
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4998
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4998

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4998

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub133 = sub i64 %34, 1, !dbg !4998
  %and134 = and i64 %sub133, 274877906944, !dbg !4998
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4998
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4998

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4998

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub138 = sub i64 %35, 1, !dbg !4998
  %and139 = and i64 %sub138, 137438953472, !dbg !4998
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4998
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4998

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4998

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub143 = sub i64 %36, 1, !dbg !4998
  %and144 = and i64 %sub143, 68719476736, !dbg !4998
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4998
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4998

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4998

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub148 = sub i64 %37, 1, !dbg !4998
  %and149 = and i64 %sub148, 34359738368, !dbg !4998
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4998
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4998

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4998

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub153 = sub i64 %38, 1, !dbg !4998
  %and154 = and i64 %sub153, 17179869184, !dbg !4998
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4998
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4998

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4998

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub158 = sub i64 %39, 1, !dbg !4998
  %and159 = and i64 %sub158, 8589934592, !dbg !4998
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4998
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4998

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4998

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub163 = sub i64 %40, 1, !dbg !4998
  %and164 = and i64 %sub163, 4294967296, !dbg !4998
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4998
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4998

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4998

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub168 = sub i64 %41, 1, !dbg !4998
  %and169 = and i64 %sub168, 2147483648, !dbg !4998
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4998
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4998

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4998

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub173 = sub i64 %42, 1, !dbg !4998
  %and174 = and i64 %sub173, 1073741824, !dbg !4998
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4998
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4998

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4998

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub178 = sub i64 %43, 1, !dbg !4998
  %and179 = and i64 %sub178, 536870912, !dbg !4998
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4998
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4998

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4998

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub183 = sub i64 %44, 1, !dbg !4998
  %and184 = and i64 %sub183, 268435456, !dbg !4998
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4998
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4998

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4998

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub188 = sub i64 %45, 1, !dbg !4998
  %and189 = and i64 %sub188, 134217728, !dbg !4998
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4998
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4998

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4998

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub193 = sub i64 %46, 1, !dbg !4998
  %and194 = and i64 %sub193, 67108864, !dbg !4998
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4998
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4998

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4998

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub198 = sub i64 %47, 1, !dbg !4998
  %and199 = and i64 %sub198, 33554432, !dbg !4998
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4998
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4998

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4998

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub203 = sub i64 %48, 1, !dbg !4998
  %and204 = and i64 %sub203, 16777216, !dbg !4998
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4998
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4998

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4998

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub208 = sub i64 %49, 1, !dbg !4998
  %and209 = and i64 %sub208, 8388608, !dbg !4998
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4998
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4998

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4998

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub213 = sub i64 %50, 1, !dbg !4998
  %and214 = and i64 %sub213, 4194304, !dbg !4998
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4998
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4998

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4998

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub218 = sub i64 %51, 1, !dbg !4998
  %and219 = and i64 %sub218, 2097152, !dbg !4998
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4998
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4998

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4998

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub223 = sub i64 %52, 1, !dbg !4998
  %and224 = and i64 %sub223, 1048576, !dbg !4998
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4998
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4998

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4998

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub228 = sub i64 %53, 1, !dbg !4998
  %and229 = and i64 %sub228, 524288, !dbg !4998
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4998
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4998

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4998

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub233 = sub i64 %54, 1, !dbg !4998
  %and234 = and i64 %sub233, 262144, !dbg !4998
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4998
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4998

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4998

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub238 = sub i64 %55, 1, !dbg !4998
  %and239 = and i64 %sub238, 131072, !dbg !4998
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4998
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4998

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4998

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub243 = sub i64 %56, 1, !dbg !4998
  %and244 = and i64 %sub243, 65536, !dbg !4998
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4998
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4998

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4998

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub248 = sub i64 %57, 1, !dbg !4998
  %and249 = and i64 %sub248, 32768, !dbg !4998
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4998
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4998

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4998

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub253 = sub i64 %58, 1, !dbg !4998
  %and254 = and i64 %sub253, 16384, !dbg !4998
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4998
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4998

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4998

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub258 = sub i64 %59, 1, !dbg !4998
  %and259 = and i64 %sub258, 8192, !dbg !4998
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4998
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4998

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4998

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub263 = sub i64 %60, 1, !dbg !4998
  %and264 = and i64 %sub263, 4096, !dbg !4998
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4998
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4998

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4998

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub268 = sub i64 %61, 1, !dbg !4998
  %and269 = and i64 %sub268, 2048, !dbg !4998
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4998
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4998

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4998

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub273 = sub i64 %62, 1, !dbg !4998
  %and274 = and i64 %sub273, 1024, !dbg !4998
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4998
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4998

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4998

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub278 = sub i64 %63, 1, !dbg !4998
  %and279 = and i64 %sub278, 512, !dbg !4998
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4998
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4998

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4998

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub283 = sub i64 %64, 1, !dbg !4998
  %and284 = and i64 %sub283, 256, !dbg !4998
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4998
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4998

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4998

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub288 = sub i64 %65, 1, !dbg !4998
  %and289 = and i64 %sub288, 128, !dbg !4998
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4998
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4998

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4998

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub293 = sub i64 %66, 1, !dbg !4998
  %and294 = and i64 %sub293, 64, !dbg !4998
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4998
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4998

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4998

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub298 = sub i64 %67, 1, !dbg !4998
  %and299 = and i64 %sub298, 32, !dbg !4998
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4998
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4998

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4998

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub303 = sub i64 %68, 1, !dbg !4998
  %and304 = and i64 %sub303, 16, !dbg !4998
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4998
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4998

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4998

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub308 = sub i64 %69, 1, !dbg !4998
  %and309 = and i64 %sub308, 8, !dbg !4998
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4998
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4998

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4998

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub313 = sub i64 %70, 1, !dbg !4998
  %and314 = and i64 %sub313, 4, !dbg !4998
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4998
  %71 = zext i1 %tobool315 to i64, !dbg !4998
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4998
  br label %cond.end, !dbg !4998

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4998
  br label %cond.end317, !dbg !4998

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4998
  br label %cond.end319, !dbg !4998

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4998
  br label %cond.end321, !dbg !4998

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4998
  br label %cond.end323, !dbg !4998

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4998
  br label %cond.end325, !dbg !4998

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4998
  br label %cond.end327, !dbg !4998

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4998
  br label %cond.end329, !dbg !4998

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4998
  br label %cond.end331, !dbg !4998

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4998
  br label %cond.end333, !dbg !4998

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4998
  br label %cond.end335, !dbg !4998

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4998
  br label %cond.end337, !dbg !4998

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4998
  br label %cond.end339, !dbg !4998

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4998
  br label %cond.end341, !dbg !4998

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4998
  br label %cond.end343, !dbg !4998

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4998
  br label %cond.end345, !dbg !4998

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4998
  br label %cond.end347, !dbg !4998

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4998
  br label %cond.end349, !dbg !4998

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4998
  br label %cond.end351, !dbg !4998

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4998
  br label %cond.end353, !dbg !4998

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4998
  br label %cond.end355, !dbg !4998

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4998
  br label %cond.end357, !dbg !4998

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4998
  br label %cond.end359, !dbg !4998

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4998
  br label %cond.end361, !dbg !4998

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4998
  br label %cond.end363, !dbg !4998

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4998
  br label %cond.end365, !dbg !4998

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4998
  br label %cond.end367, !dbg !4998

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4998
  br label %cond.end369, !dbg !4998

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4998
  br label %cond.end371, !dbg !4998

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4998
  br label %cond.end373, !dbg !4998

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4998
  br label %cond.end375, !dbg !4998

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4998
  br label %cond.end377, !dbg !4998

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4998
  br label %cond.end379, !dbg !4998

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4998
  br label %cond.end381, !dbg !4998

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4998
  br label %cond.end383, !dbg !4998

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4998
  br label %cond.end385, !dbg !4998

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4998
  br label %cond.end387, !dbg !4998

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4998
  br label %cond.end389, !dbg !4998

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4998
  br label %cond.end391, !dbg !4998

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4998
  br label %cond.end393, !dbg !4998

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4998
  br label %cond.end395, !dbg !4998

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4998
  br label %cond.end397, !dbg !4998

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4998
  br label %cond.end399, !dbg !4998

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4998
  br label %cond.end401, !dbg !4998

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4998
  br label %cond.end403, !dbg !4998

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4998
  br label %cond.end405, !dbg !4998

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4998
  br label %cond.end407, !dbg !4998

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4998
  br label %cond.end409, !dbg !4998

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4998
  br label %cond.end411, !dbg !4998

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4998
  br label %cond.end413, !dbg !4998

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4998
  br label %cond.end415, !dbg !4998

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4998
  br label %cond.end417, !dbg !4998

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4998
  br label %cond.end419, !dbg !4998

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4998
  br label %cond.end421, !dbg !4998

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4998
  br label %cond.end423, !dbg !4998

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4998
  br label %cond.end425, !dbg !4998

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4998
  br label %cond.end427, !dbg !4998

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4998
  br label %cond.end429, !dbg !4998

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4998
  br label %cond.end431, !dbg !4998

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4998
  br label %cond.end433, !dbg !4998

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4998
  br label %cond.end435, !dbg !4998

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4998
  br label %cond.end437, !dbg !4998

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4998
  br label %cond.end440, !dbg !4998

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4998

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4998
  br label %cond.end444, !dbg !4998

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4998
  %sub443 = sub i64 %72, 1, !dbg !4998
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4998
  br label %cond.end444, !dbg !4998

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4998
  %sub446 = sub i32 %cond445, 12, !dbg !4999
  %add = add i32 %sub446, 1, !dbg !5000
  store i32 %add, i32* %retval, align 4, !dbg !5001
  br label %return, !dbg !5001

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5002
  %dec = add i64 %73, -1, !dbg !5002
  store i64 %dec, i64* %size.addr, align 8, !dbg !5002
  %74 = load i64, i64* %size.addr, align 8, !dbg !5003
  %shr = lshr i64 %74, 12, !dbg !5003
  store i64 %shr, i64* %size.addr, align 8, !dbg !5003
  %75 = load i64, i64* %size.addr, align 8, !dbg !5004
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4981
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5005
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5006
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5005, !srcloc !5007
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5005
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5008
  %add.i = add i32 %79, 1, !dbg !5009
  store i32 %add.i, i32* %retval, align 4, !dbg !5010
  br label %return, !dbg !5010

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5011
  ret i32 %80, !dbg !5011
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5012 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4973, metadata !DIExpression()), !dbg !5016
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4980, metadata !DIExpression()), !dbg !5018
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5019, metadata !DIExpression()), !dbg !5020
  %0 = load i64, i64* %n.addr, align 8, !dbg !5021
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5018
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5022
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5023
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5022, !srcloc !5007
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5022
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5024
  %add.i = add i32 %4, 1, !dbg !5025
  %sub = sub i32 %add.i, 1, !dbg !5026
  ret i32 %sub, !dbg !5027
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5028 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5032, metadata !DIExpression()), !dbg !5033
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5034, metadata !DIExpression()), !dbg !5035
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5036, metadata !DIExpression()), !dbg !5037
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5038, metadata !DIExpression()), !dbg !5039
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5040
  ret i8* %0, !dbg !5041
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_i2c_writereg(%struct.cx24123_state* %state, i8 zeroext %i2c_addr, i32 %reg, i32 %data) #0 !dbg !5042 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %reg.addr = alloca i32, align 4
  %data.addr = alloca i32, align 4
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %err = alloca i32, align 4
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !5045, metadata !DIExpression()), !dbg !5046
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !5047, metadata !DIExpression()), !dbg !5048
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !5049, metadata !DIExpression()), !dbg !5050
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !5053, metadata !DIExpression()), !dbg !5055
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5056
  %0 = load i32, i32* %reg.addr, align 4, !dbg !5057
  %conv = trunc i32 %0 to i8, !dbg !5057
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !5056
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5056
  %1 = load i32, i32* %data.addr, align 4, !dbg !5058
  %conv1 = trunc i32 %1 to i8, !dbg !5058
  store i8 %conv1, i8* %arrayinit.element, align 1, !dbg !5056
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5059, metadata !DIExpression()), !dbg !5060
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5061
  %2 = load i8, i8* %i2c_addr.addr, align 1, !dbg !5062
  %conv2 = zext i8 %2 to i16, !dbg !5062
  store i16 %conv2, i16* %addr, align 8, !dbg !5061
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5061
  store i16 0, i16* %flags, align 2, !dbg !5061
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5061
  store i16 2, i16* %len, align 4, !dbg !5061
  %buf3 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5061
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !5063
  store i8* %arraydecay, i8** %buf3, align 8, !dbg !5061
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5064, metadata !DIExpression()), !dbg !5065
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5066
  %i2c = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %3, i32 0, i32 0, !dbg !5067
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5067
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5068
  store i32 %call, i32* %err, align 4, !dbg !5069
  %5 = load i32, i32* %err, align 4, !dbg !5070
  %cmp = icmp ne i32 %5, 1, !dbg !5072
  br i1 %cmp, label %if.then, label %if.end, !dbg !5073

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %err, align 4, !dbg !5074
  %7 = load i32, i32* %reg.addr, align 4, !dbg !5076
  %8 = load i32, i32* %data.addr, align 4, !dbg !5077
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_i2c_writereg, i64 0, i64 0), i32 %6, i32 %7, i32 %8) #9, !dbg !5078
  %9 = load i32, i32* %err, align 4, !dbg !5079
  store i32 %9, i32* %retval, align 4, !dbg !5080
  br label %return, !dbg !5080

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !5082
  ret i32 %10, !dbg !5082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_tuner_i2c_tuner_xfer(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !5083 {
entry:
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !5084, metadata !DIExpression()), !dbg !5085
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !5086, metadata !DIExpression()), !dbg !5087
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !5092
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #8, !dbg !5093
  %1 = bitcast i8* %call to %struct.cx24123_state*, !dbg !5093
  store %struct.cx24123_state* %1, %struct.cx24123_state** %state, align 8, !dbg !5091
  %2 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5094
  %call1 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %2, i8 zeroext 1, i8 zeroext 1) #8, !dbg !5095
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5096
  %i2c = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %3, i32 0, i32 0, !dbg !5097
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5097
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !5098
  %6 = load i32, i32* %num.addr, align 4, !dbg !5099
  %call2 = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %5, i32 %6) #8, !dbg !5100
  ret i32 %call2, !dbg !5101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_tuner_i2c_func(%struct.i2c_adapter* %adapter) #0 !dbg !5102 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  ret i32 1, !dbg !5105
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #0 !dbg !5106 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5111, metadata !DIExpression()), !dbg !5112
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5113
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !5114
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !5115
  ret i8* %call, !dbg !5116
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !5117 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5122
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !5123
  %1 = load i8*, i8** %driver_data, align 8, !dbg !5123
  ret i8* %1, !dbg !5124
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !5125 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5128, metadata !DIExpression()), !dbg !5129
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !5130, metadata !DIExpression()), !dbg !5131
  %0 = load i8*, i8** %data.addr, align 8, !dbg !5132
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5133
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !5134
  store i8* %0, i8** %driver_data, align 8, !dbg !5135
  ret void, !dbg !5136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24123_release(%struct.dvb_frontend* %fe) #0 !dbg !5137 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5140, metadata !DIExpression()), !dbg !5141
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5142
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5143
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5143
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5142
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5141
  br label %do.body, !dbg !5144

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5145
  %tobool = icmp ne i32 %3, 0, !dbg !5145
  br i1 %tobool, label %if.then, label %if.end, !dbg !5148

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_release, i64 0, i64 0)) #9, !dbg !5149
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5149
  br label %if.end, !dbg !5149

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5148

do.end:                                           ; preds = %if.end
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5151
  %tuner_i2c_adapter = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 8, !dbg !5152
  call void @i2c_del_adapter(%struct.i2c_adapter* %tuner_i2c_adapter) #8, !dbg !5153
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5154
  %6 = bitcast %struct.cx24123_state* %5 to i8*, !dbg !5154
  call void @kfree(i8* %6) #8, !dbg !5155
  ret void, !dbg !5156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_initfe(%struct.dvb_frontend* %fe) #0 !dbg !5157 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5160, metadata !DIExpression()), !dbg !5161
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5162
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5163
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5163
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5162
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5161
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5164, metadata !DIExpression()), !dbg !5165
  br label %do.body, !dbg !5166

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5167
  %tobool = icmp ne i32 %3, 0, !dbg !5167
  br i1 %tobool, label %if.then, label %if.end, !dbg !5170

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.cx24123_initfe, i64 0, i64 0)) #9, !dbg !5171
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !5171
  br label %if.end, !dbg !5171

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5170

do.end:                                           ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5173
  br label %for.cond, !dbg !5175

for.cond:                                         ; preds = %for.inc, %do.end
  %4 = load i32, i32* %i, align 4, !dbg !5176
  %conv = sext i32 %4 to i64, !dbg !5176
  %cmp = icmp ult i64 %conv, 41, !dbg !5178
  br i1 %cmp, label %for.body, label %for.end, !dbg !5179

for.body:                                         ; preds = %for.cond
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5180
  %6 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5180
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %6, i32 0, i32 1, !dbg !5180
  %7 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5180
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %7, i32 0, i32 0, !dbg !5180
  %8 = load i8, i8* %demod_address, align 8, !dbg !5180
  %9 = load i32, i32* %i, align 4, !dbg !5180
  %idxprom = sext i32 %9 to i64, !dbg !5180
  %arrayidx = getelementptr [41 x %struct.anon.67], [41 x %struct.anon.67]* @cx24123_regdata, i64 0, i64 %idxprom, !dbg !5180
  %reg = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx, i32 0, i32 0, !dbg !5180
  %10 = load i8, i8* %reg, align 2, !dbg !5180
  %conv3 = zext i8 %10 to i32, !dbg !5180
  %11 = load i32, i32* %i, align 4, !dbg !5180
  %idxprom4 = sext i32 %11 to i64, !dbg !5180
  %arrayidx5 = getelementptr [41 x %struct.anon.67], [41 x %struct.anon.67]* @cx24123_regdata, i64 0, i64 %idxprom4, !dbg !5180
  %data = getelementptr inbounds %struct.anon.67, %struct.anon.67* %arrayidx5, i32 0, i32 1, !dbg !5180
  %12 = load i8, i8* %data, align 1, !dbg !5180
  %conv6 = zext i8 %12 to i32, !dbg !5180
  %call7 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %5, i8 zeroext %8, i32 %conv3, i32 %conv6) #8, !dbg !5180
  br label %for.inc, !dbg !5180

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !5181
  %inc = add i32 %13, 1, !dbg !5181
  store i32 %inc, i32* %i, align 4, !dbg !5181
  br label %for.cond, !dbg !5182, !llvm.loop !5183

for.end:                                          ; preds = %for.cond
  %14 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5185
  %config8 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %14, i32 0, i32 1, !dbg !5187
  %15 = load %struct.cx24123_config*, %struct.cx24123_config** %config8, align 8, !dbg !5187
  %lnb_polarity = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %15, i32 0, i32 2, !dbg !5188
  %16 = load i32, i32* %lnb_polarity, align 8, !dbg !5188
  %tobool9 = icmp ne i32 %16, 0, !dbg !5185
  br i1 %tobool9, label %if.then10, label %if.end17, !dbg !5189

if.then10:                                        ; preds = %for.end
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5190
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5190
  %config11 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %18, i32 0, i32 1, !dbg !5190
  %19 = load %struct.cx24123_config*, %struct.cx24123_config** %config11, align 8, !dbg !5190
  %demod_address12 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %19, i32 0, i32 0, !dbg !5190
  %20 = load i8, i8* %demod_address12, align 8, !dbg !5190
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5190
  %22 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5190
  %config13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %22, i32 0, i32 1, !dbg !5190
  %23 = load %struct.cx24123_config*, %struct.cx24123_config** %config13, align 8, !dbg !5190
  %demod_address14 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %23, i32 0, i32 0, !dbg !5190
  %24 = load i8, i8* %demod_address14, align 8, !dbg !5190
  %call15 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %21, i8 zeroext %24, i8 zeroext 50) #8, !dbg !5190
  %or = or i32 %call15, 2, !dbg !5190
  %call16 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %17, i8 zeroext %20, i32 50, i32 %or) #8, !dbg !5190
  br label %if.end17, !dbg !5190

if.end17:                                         ; preds = %if.then10, %for.end
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5191
  %config18 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %25, i32 0, i32 1, !dbg !5193
  %26 = load %struct.cx24123_config*, %struct.cx24123_config** %config18, align 8, !dbg !5193
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %26, i32 0, i32 3, !dbg !5194
  %27 = load i8, i8* %dont_use_pll, align 4, !dbg !5194
  %tobool19 = icmp ne i8 %27, 0, !dbg !5191
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5195

if.then20:                                        ; preds = %if.end17
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5196
  %call21 = call i32 @cx24123_repeater_mode(%struct.cx24123_state* %28, i8 zeroext 1, i8 zeroext 0) #8, !dbg !5197
  br label %if.end22, !dbg !5197

if.end22:                                         ; preds = %if.then20, %if.end17
  ret i32 0, !dbg !5198
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_tune(%struct.dvb_frontend* %fe, i1 zeroext %re_tune, i32 %mode_flags, i32* %delay, i32* %status) #0 !dbg !5199 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %re_tune.addr = alloca i8, align 1
  %mode_flags.addr = alloca i32, align 4
  %delay.addr = alloca i32*, align 8
  %status.addr = alloca i32*, align 8
  %retval1 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5200, metadata !DIExpression()), !dbg !5201
  %frombool = zext i1 %re_tune to i8
  store i8 %frombool, i8* %re_tune.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %re_tune.addr, metadata !5202, metadata !DIExpression()), !dbg !5203
  store i32 %mode_flags, i32* %mode_flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode_flags.addr, metadata !5204, metadata !DIExpression()), !dbg !5205
  store i32* %delay, i32** %delay.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %delay.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i32 0, i32* %retval1, align 4, !dbg !5211
  %0 = load i8, i8* %re_tune.addr, align 1, !dbg !5212
  %tobool = trunc i8 %0 to i1, !dbg !5212
  br i1 %tobool, label %if.then, label %if.end, !dbg !5214

if.then:                                          ; preds = %entry
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5215
  %call = call i32 @cx24123_set_frontend(%struct.dvb_frontend* %1) #8, !dbg !5216
  store i32 %call, i32* %retval1, align 4, !dbg !5217
  br label %if.end, !dbg !5218

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %mode_flags.addr, align 4, !dbg !5219
  %and = and i32 %2, 1, !dbg !5221
  %tobool2 = icmp ne i32 %and, 0, !dbg !5221
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5222

if.then3:                                         ; preds = %if.end
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5223
  %4 = load i32*, i32** %status.addr, align 8, !dbg !5224
  %call4 = call i32 @cx24123_read_status(%struct.dvb_frontend* %3, i32* %4) #8, !dbg !5225
  br label %if.end5, !dbg !5225

if.end5:                                          ; preds = %if.then3, %if.end
  %5 = load i32*, i32** %delay.addr, align 8, !dbg !5226
  store i32 25, i32* %5, align 4, !dbg !5227
  %6 = load i32, i32* %retval1, align 4, !dbg !5228
  ret i32 %6, !dbg !5229
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_get_algo(%struct.dvb_frontend* %fe) #0 !dbg !5230 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  ret i32 1, !dbg !5233
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_frontend(%struct.dvb_frontend* %fe) #0 !dbg !5234 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5235, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5237, metadata !DIExpression()), !dbg !5238
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5239
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5240
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5240
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5239
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5238
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5241, metadata !DIExpression()), !dbg !5242
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5243
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 8, !dbg !5244
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5242
  br label %do.body, !dbg !5245

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !5246
  %tobool = icmp ne i32 %4, 0, !dbg !5246
  br i1 %tobool, label %if.then, label %if.end, !dbg !5249

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_set_frontend, i64 0, i64 0)) #9, !dbg !5250
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5250
  br label %if.end, !dbg !5250

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5249

do.end:                                           ; preds = %if.end
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5252
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 1, !dbg !5254
  %6 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5254
  %set_ts_params = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %6, i32 0, i32 1, !dbg !5255
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params, align 8, !dbg !5255
  %tobool2 = icmp ne i32 (%struct.dvb_frontend*, i32)* %7, null, !dbg !5252
  br i1 %tobool2, label %if.then3, label %if.end7, !dbg !5256

if.then3:                                         ; preds = %do.end
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5257
  %config4 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !5258
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config4, align 8, !dbg !5258
  %set_ts_params5 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 1, !dbg !5259
  %10 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %set_ts_params5, align 8, !dbg !5259
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5260
  %call6 = call i32 %10(%struct.dvb_frontend* %11, i32 0) #8, !dbg !5257
  br label %if.end7, !dbg !5257

if.end7:                                          ; preds = %if.then3, %do.end
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5261
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 0, !dbg !5262
  %13 = load i32, i32* %frequency, align 4, !dbg !5262
  %14 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5263
  %currentfreq = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %14, i32 0, i32 10, !dbg !5264
  store i32 %13, i32* %currentfreq, align 4, !dbg !5265
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5266
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 10, !dbg !5267
  %16 = load i32, i32* %symbol_rate, align 4, !dbg !5267
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5268
  %currentsymbolrate = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %17, i32 0, i32 11, !dbg !5269
  store i32 %16, i32* %currentsymbolrate, align 8, !dbg !5270
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5271
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5272
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 4, !dbg !5273
  %20 = load i32, i32* %inversion, align 4, !dbg !5273
  %call8 = call i32 @cx24123_set_inversion(%struct.cx24123_state* %18, i32 %20) #8, !dbg !5274
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5275
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5276
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 5, !dbg !5277
  %23 = load i32, i32* %fec_inner, align 4, !dbg !5277
  %call9 = call i32 @cx24123_set_fec(%struct.cx24123_state* %21, i32 %23) #8, !dbg !5278
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5279
  %25 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !5280
  %symbol_rate10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %25, i32 0, i32 10, !dbg !5281
  %26 = load i32, i32* %symbol_rate10, align 4, !dbg !5281
  %call11 = call i32 @cx24123_set_symbolrate(%struct.cx24123_state* %24, i32 %26) #8, !dbg !5282
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5283
  %config12 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %27, i32 0, i32 1, !dbg !5285
  %28 = load %struct.cx24123_config*, %struct.cx24123_config** %config12, align 8, !dbg !5285
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %28, i32 0, i32 3, !dbg !5286
  %29 = load i8, i8* %dont_use_pll, align 4, !dbg !5286
  %tobool13 = icmp ne i8 %29, 0, !dbg !5283
  br i1 %tobool13, label %if.else, label %if.then14, !dbg !5287

if.then14:                                        ; preds = %if.end7
  %30 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5288
  %call15 = call i32 @cx24123_pll_tune(%struct.dvb_frontend* %30) #8, !dbg !5289
  br label %if.end27, !dbg !5289

if.else:                                          ; preds = %if.end7
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5290
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %31, i32 0, i32 1, !dbg !5292
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5293
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5294
  %32 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5294
  %tobool16 = icmp ne i32 (%struct.dvb_frontend*)* %32, null, !dbg !5290
  br i1 %tobool16, label %if.then17, label %if.else22, !dbg !5295

if.then17:                                        ; preds = %if.else
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5296
  %ops18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 1, !dbg !5297
  %tuner_ops19 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops18, i32 0, i32 30, !dbg !5298
  %set_params20 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops19, i32 0, i32 6, !dbg !5299
  %34 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params20, align 8, !dbg !5299
  %35 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5300
  %call21 = call i32 %34(%struct.dvb_frontend* %35) #8, !dbg !5296
  br label %if.end26, !dbg !5296

if.else22:                                        ; preds = %if.else
  br label %do.body23, !dbg !5301

do.body23:                                        ; preds = %if.else22
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !5302
  br label %do.end25, !dbg !5302

do.end25:                                         ; preds = %do.body23
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then14
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5304
  %37 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5304
  %config28 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %37, i32 0, i32 1, !dbg !5304
  %38 = load %struct.cx24123_config*, %struct.cx24123_config** %config28, align 8, !dbg !5304
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %38, i32 0, i32 0, !dbg !5304
  %39 = load i8, i8* %demod_address, align 8, !dbg !5304
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5304
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5304
  %config29 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %41, i32 0, i32 1, !dbg !5304
  %42 = load %struct.cx24123_config*, %struct.cx24123_config** %config29, align 8, !dbg !5304
  %demod_address30 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %42, i32 0, i32 0, !dbg !5304
  %43 = load i8, i8* %demod_address30, align 8, !dbg !5304
  %call31 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %40, i8 zeroext %43, i8 zeroext 3) #8, !dbg !5304
  %or = or i32 %call31, 7, !dbg !5304
  %call32 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %36, i8 zeroext %39, i32 3, i32 %or) #8, !dbg !5304
  %44 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5305
  %45 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5305
  %config33 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %45, i32 0, i32 1, !dbg !5305
  %46 = load %struct.cx24123_config*, %struct.cx24123_config** %config33, align 8, !dbg !5305
  %demod_address34 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %46, i32 0, i32 0, !dbg !5305
  %47 = load i8, i8* %demod_address34, align 8, !dbg !5305
  %call35 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %44, i8 zeroext %47, i32 0, i32 16) #8, !dbg !5305
  %48 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5306
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5306
  %config36 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %49, i32 0, i32 1, !dbg !5306
  %50 = load %struct.cx24123_config*, %struct.cx24123_config** %config36, align 8, !dbg !5306
  %demod_address37 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %50, i32 0, i32 0, !dbg !5306
  %51 = load i8, i8* %demod_address37, align 8, !dbg !5306
  %call38 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %48, i8 zeroext %51, i32 0, i32 0) #8, !dbg !5306
  %52 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5307
  %config39 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %52, i32 0, i32 1, !dbg !5309
  %53 = load %struct.cx24123_config*, %struct.cx24123_config** %config39, align 8, !dbg !5309
  %agc_callback = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %53, i32 0, i32 4, !dbg !5310
  %54 = load void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)** %agc_callback, align 8, !dbg !5310
  %tobool40 = icmp ne void (%struct.dvb_frontend*)* %54, null, !dbg !5307
  br i1 %tobool40, label %if.then41, label %if.end44, !dbg !5311

if.then41:                                        ; preds = %if.end27
  %55 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5312
  %config42 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %55, i32 0, i32 1, !dbg !5313
  %56 = load %struct.cx24123_config*, %struct.cx24123_config** %config42, align 8, !dbg !5313
  %agc_callback43 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %56, i32 0, i32 4, !dbg !5314
  %57 = load void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)** %agc_callback43, align 8, !dbg !5314
  %58 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5315
  call void %57(%struct.dvb_frontend* %58) #8, !dbg !5312
  br label %if.end44, !dbg !5312

if.end44:                                         ; preds = %if.then41, %if.end27
  ret i32 0, !dbg !5316
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_get_frontend(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %p) #0 !dbg !5317 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p.addr = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5318, metadata !DIExpression()), !dbg !5319
  store %struct.dtv_frontend_properties* %p, %struct.dtv_frontend_properties** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5322, metadata !DIExpression()), !dbg !5323
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5324
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5325
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5325
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5324
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5323
  br label %do.body, !dbg !5326

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5327
  %tobool = icmp ne i32 %3, 0, !dbg !5327
  br i1 %tobool, label %if.then, label %if.end, !dbg !5330

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_get_frontend, i64 0, i64 0)) #9, !dbg !5331
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5331
  br label %if.end, !dbg !5331

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5330

do.end:                                           ; preds = %if.end
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5333
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5335
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 4, !dbg !5336
  %call2 = call i32 @cx24123_get_inversion(%struct.cx24123_state* %4, i32* %inversion) #8, !dbg !5337
  %cmp = icmp ne i32 %call2, 0, !dbg !5338
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !5339

if.then3:                                         ; preds = %do.end
  br label %do.body4, !dbg !5340

do.body4:                                         ; preds = %if.then3
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_get_frontend, i64 0, i64 0)) #9, !dbg !5342
  br label %do.end6, !dbg !5342

do.end6:                                          ; preds = %do.body4
  store i32 -121, i32* %retval, align 4, !dbg !5344
  br label %return, !dbg !5344

if.end7:                                          ; preds = %do.end
  %6 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5345
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5347
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 5, !dbg !5348
  %call8 = call i32 @cx24123_get_fec(%struct.cx24123_state* %6, i32* %fec_inner) #8, !dbg !5349
  %cmp9 = icmp ne i32 %call8, 0, !dbg !5350
  br i1 %cmp9, label %if.then10, label %if.end14, !dbg !5351

if.then10:                                        ; preds = %if.end7
  br label %do.body11, !dbg !5352

do.body11:                                        ; preds = %if.then10
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_get_frontend, i64 0, i64 0)) #9, !dbg !5354
  br label %do.end13, !dbg !5354

do.end13:                                         ; preds = %do.body11
  store i32 -121, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end14:                                         ; preds = %if.end7
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5357
  %currentfreq = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 10, !dbg !5358
  %9 = load i32, i32* %currentfreq, align 4, !dbg !5358
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5359
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 0, !dbg !5360
  store i32 %9, i32* %frequency, align 4, !dbg !5361
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5362
  %currentsymbolrate = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %11, i32 0, i32 11, !dbg !5363
  %12 = load i32, i32* %currentsymbolrate, align 8, !dbg !5363
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p.addr, align 8, !dbg !5364
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 10, !dbg !5365
  store i32 %12, i32* %symbol_rate, align 4, !dbg !5366
  store i32 0, i32* %retval, align 4, !dbg !5367
  br label %return, !dbg !5367

return:                                           ; preds = %if.end14, %do.end13, %do.end6
  %14 = load i32, i32* %retval, align 4, !dbg !5368
  ret i32 %14, !dbg !5368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_read_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5369 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %sync = alloca i32, align 4
  %tun_status = alloca i32, align 4
  %lock = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5370, metadata !DIExpression()), !dbg !5371
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5372, metadata !DIExpression()), !dbg !5373
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5376
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5377
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5377
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5376
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5375
  call void @llvm.dbg.declare(metadata i32* %sync, metadata !5378, metadata !DIExpression()), !dbg !5379
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5380
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5380
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !5380
  %5 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5380
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %5, i32 0, i32 0, !dbg !5380
  %6 = load i8, i8* %demod_address, align 8, !dbg !5380
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %3, i8 zeroext %6, i8 zeroext 20) #8, !dbg !5380
  store i32 %call, i32* %sync, align 4, !dbg !5379
  %7 = load i32*, i32** %status.addr, align 8, !dbg !5381
  store i32 0, i32* %7, align 4, !dbg !5382
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5383
  %config1 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !5385
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config1, align 8, !dbg !5385
  %dont_use_pll = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 3, !dbg !5386
  %10 = load i8, i8* %dont_use_pll, align 4, !dbg !5386
  %tobool = icmp ne i8 %10, 0, !dbg !5383
  br i1 %tobool, label %if.then, label %if.else, !dbg !5387

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %tun_status, metadata !5388, metadata !DIExpression()), !dbg !5390
  store i32 0, i32* %tun_status, align 4, !dbg !5390
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5391
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5393
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5394
  %get_status = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 12, !dbg !5395
  %12 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_status, align 8, !dbg !5395
  %tobool2 = icmp ne i32 (%struct.dvb_frontend*, i32*)* %12, null, !dbg !5391
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !5396

if.then3:                                         ; preds = %if.then
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5397
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 1, !dbg !5398
  %tuner_ops5 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 30, !dbg !5399
  %get_status6 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops5, i32 0, i32 12, !dbg !5400
  %14 = load i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)** %get_status6, align 8, !dbg !5400
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5401
  %call7 = call i32 %14(%struct.dvb_frontend* %15, i32* %tun_status) #8, !dbg !5397
  br label %if.end, !dbg !5397

if.end:                                           ; preds = %if.then3, %if.then
  %16 = load i32, i32* %tun_status, align 4, !dbg !5402
  %and = and i32 %16, 1, !dbg !5404
  %tobool8 = icmp ne i32 %and, 0, !dbg !5404
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5405

if.then9:                                         ; preds = %if.end
  %17 = load i32*, i32** %status.addr, align 8, !dbg !5406
  %18 = load i32, i32* %17, align 4, !dbg !5407
  %or = or i32 %18, 1, !dbg !5407
  store i32 %or, i32* %17, align 4, !dbg !5407
  br label %if.end10, !dbg !5408

if.end10:                                         ; preds = %if.then9, %if.end
  br label %if.end19, !dbg !5409

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %lock, metadata !5410, metadata !DIExpression()), !dbg !5412
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5413
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5413
  %config11 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %20, i32 0, i32 1, !dbg !5413
  %21 = load %struct.cx24123_config*, %struct.cx24123_config** %config11, align 8, !dbg !5413
  %demod_address12 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %21, i32 0, i32 0, !dbg !5413
  %22 = load i8, i8* %demod_address12, align 8, !dbg !5413
  %call13 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %19, i8 zeroext %22, i8 zeroext 32) #8, !dbg !5413
  store i32 %call13, i32* %lock, align 4, !dbg !5412
  %23 = load i32, i32* %lock, align 4, !dbg !5414
  %and14 = and i32 %23, 1, !dbg !5416
  %tobool15 = icmp ne i32 %and14, 0, !dbg !5416
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !5417

if.then16:                                        ; preds = %if.else
  %24 = load i32*, i32** %status.addr, align 8, !dbg !5418
  %25 = load i32, i32* %24, align 4, !dbg !5419
  %or17 = or i32 %25, 1, !dbg !5419
  store i32 %or17, i32* %24, align 4, !dbg !5419
  br label %if.end18, !dbg !5420

if.end18:                                         ; preds = %if.then16, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end10
  %26 = load i32, i32* %sync, align 4, !dbg !5421
  %and20 = and i32 %26, 2, !dbg !5423
  %tobool21 = icmp ne i32 %and20, 0, !dbg !5423
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !5424

if.then22:                                        ; preds = %if.end19
  %27 = load i32*, i32** %status.addr, align 8, !dbg !5425
  %28 = load i32, i32* %27, align 4, !dbg !5426
  %or23 = or i32 %28, 2, !dbg !5426
  store i32 %or23, i32* %27, align 4, !dbg !5426
  br label %if.end24, !dbg !5427

if.end24:                                         ; preds = %if.then22, %if.end19
  %29 = load i32, i32* %sync, align 4, !dbg !5428
  %and25 = and i32 %29, 4, !dbg !5430
  %tobool26 = icmp ne i32 %and25, 0, !dbg !5430
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !5431

if.then27:                                        ; preds = %if.end24
  %30 = load i32*, i32** %status.addr, align 8, !dbg !5432
  %31 = load i32, i32* %30, align 4, !dbg !5433
  %or28 = or i32 %31, 4, !dbg !5433
  store i32 %or28, i32* %30, align 4, !dbg !5433
  br label %if.end29, !dbg !5434

if.end29:                                         ; preds = %if.then27, %if.end24
  %32 = load i32, i32* %sync, align 4, !dbg !5435
  %and30 = and i32 %32, 8, !dbg !5437
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5437
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !5438

if.then32:                                        ; preds = %if.end29
  %33 = load i32*, i32** %status.addr, align 8, !dbg !5439
  %34 = load i32, i32* %33, align 4, !dbg !5440
  %or33 = or i32 %34, 8, !dbg !5440
  store i32 %or33, i32* %33, align 4, !dbg !5440
  br label %if.end34, !dbg !5441

if.end34:                                         ; preds = %if.then32, %if.end29
  %35 = load i32, i32* %sync, align 4, !dbg !5442
  %and35 = and i32 %35, 128, !dbg !5444
  %tobool36 = icmp ne i32 %and35, 0, !dbg !5444
  br i1 %tobool36, label %if.then37, label %if.end39, !dbg !5445

if.then37:                                        ; preds = %if.end34
  %36 = load i32*, i32** %status.addr, align 8, !dbg !5446
  %37 = load i32, i32* %36, align 4, !dbg !5447
  %or38 = or i32 %37, 16, !dbg !5447
  store i32 %or38, i32* %36, align 4, !dbg !5447
  br label %if.end39, !dbg !5448

if.end39:                                         ; preds = %if.then37, %if.end34
  ret i32 0, !dbg !5449
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5450 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5451, metadata !DIExpression()), !dbg !5452
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5453, metadata !DIExpression()), !dbg !5454
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5455, metadata !DIExpression()), !dbg !5456
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5457
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5458
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5458
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5457
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5456
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5459
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5459
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !5459
  %5 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5459
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %5, i32 0, i32 0, !dbg !5459
  %6 = load i8, i8* %demod_address, align 8, !dbg !5459
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %3, i8 zeroext %6, i8 zeroext 28) #8, !dbg !5459
  %and = and i32 %call, 63, !dbg !5460
  %shl = shl i32 %and, 16, !dbg !5461
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5462
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5462
  %config1 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !5462
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config1, align 8, !dbg !5462
  %demod_address2 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 0, !dbg !5462
  %10 = load i8, i8* %demod_address2, align 8, !dbg !5462
  %call3 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %7, i8 zeroext %10, i8 zeroext 29) #8, !dbg !5462
  %shl4 = shl i32 %call3, 8, !dbg !5463
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5464
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5464
  %config5 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 1, !dbg !5464
  %13 = load %struct.cx24123_config*, %struct.cx24123_config** %config5, align 8, !dbg !5464
  %demod_address6 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %13, i32 0, i32 0, !dbg !5464
  %14 = load i8, i8* %demod_address6, align 8, !dbg !5464
  %call7 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %11, i8 zeroext %14, i8 zeroext 30) #8, !dbg !5464
  %or = or i32 %shl4, %call7, !dbg !5465
  %or8 = or i32 %shl, %or, !dbg !5466
  %15 = load i32*, i32** %ber.addr, align 8, !dbg !5467
  store i32 %or8, i32* %15, align 4, !dbg !5468
  br label %do.body, !dbg !5469

do.body:                                          ; preds = %entry
  %16 = load i32, i32* @debug, align 4, !dbg !5470
  %tobool = icmp ne i32 %16, 0, !dbg !5470
  br i1 %tobool, label %if.then, label %if.end, !dbg !5473

if.then:                                          ; preds = %do.body
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_read_ber, i64 0, i64 0)) #9, !dbg !5474
  %17 = load i32*, i32** %ber.addr, align 8, !dbg !5474
  %18 = load i32, i32* %17, align 4, !dbg !5474
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0), i32 %18) #9, !dbg !5474
  br label %if.end, !dbg !5474

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5473

do.end:                                           ; preds = %if.end
  ret i32 0, !dbg !5476
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal_strength) #0 !dbg !5477 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal_strength.addr = alloca i16*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  store i16* %signal_strength, i16** %signal_strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal_strength.addr, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5484
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5485
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5485
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5484
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5483
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5486
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5486
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !5486
  %5 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5486
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %5, i32 0, i32 0, !dbg !5486
  %6 = load i8, i8* %demod_address, align 8, !dbg !5486
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %3, i8 zeroext %6, i8 zeroext 59) #8, !dbg !5486
  %shl = shl i32 %call, 8, !dbg !5487
  %conv = trunc i32 %shl to i16, !dbg !5486
  %7 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5488
  store i16 %conv, i16* %7, align 2, !dbg !5489
  br label %do.body, !dbg !5490

do.body:                                          ; preds = %entry
  %8 = load i32, i32* @debug, align 4, !dbg !5491
  %tobool = icmp ne i32 %8, 0, !dbg !5491
  br i1 %tobool, label %if.then, label %if.end, !dbg !5494

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.cx24123_read_signal_strength, i64 0, i64 0)) #9, !dbg !5495
  %9 = load i16*, i16** %signal_strength.addr, align 8, !dbg !5495
  %10 = load i16, i16* %9, align 2, !dbg !5495
  %conv2 = zext i16 %10 to i32, !dbg !5495
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 %conv2) #9, !dbg !5495
  br label %if.end, !dbg !5495

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5494

do.end:                                           ; preds = %if.end
  ret i32 0, !dbg !5497
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5498 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5503, metadata !DIExpression()), !dbg !5504
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5505
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5506
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5506
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5505
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5504
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5507
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5507
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !5507
  %5 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5507
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %5, i32 0, i32 0, !dbg !5507
  %6 = load i8, i8* %demod_address, align 8, !dbg !5507
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %3, i8 zeroext %6, i8 zeroext 24) #8, !dbg !5507
  %conv = trunc i32 %call to i16, !dbg !5508
  %conv1 = zext i16 %conv to i32, !dbg !5508
  %shl = shl i32 %conv1, 8, !dbg !5509
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5510
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5510
  %config2 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !5510
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config2, align 8, !dbg !5510
  %demod_address3 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 0, !dbg !5510
  %10 = load i8, i8* %demod_address3, align 8, !dbg !5510
  %call4 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %7, i8 zeroext %10, i8 zeroext 25) #8, !dbg !5510
  %conv5 = trunc i32 %call4 to i16, !dbg !5511
  %conv6 = zext i16 %conv5 to i32, !dbg !5511
  %or = or i32 %shl, %conv6, !dbg !5512
  %sub = sub i32 65535, %or, !dbg !5513
  %conv7 = trunc i32 %sub to i16, !dbg !5514
  %11 = load i16*, i16** %snr.addr, align 8, !dbg !5515
  store i16 %conv7, i16* %11, align 2, !dbg !5516
  br label %do.body, !dbg !5517

do.body:                                          ; preds = %entry
  %12 = load i32, i32* @debug, align 4, !dbg !5518
  %tobool = icmp ne i32 %12, 0, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end, !dbg !5521

if.then:                                          ; preds = %do.body
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_read_snr, i64 0, i64 0)) #9, !dbg !5522
  %13 = load i16*, i16** %snr.addr, align 8, !dbg !5522
  %14 = load i16, i16* %13, align 2, !dbg !5522
  %conv9 = zext i16 %14 to i32, !dbg !5522
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.37, i64 0, i64 0), i32 %conv9) #9, !dbg !5522
  br label %if.end, !dbg !5522

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5521

do.end:                                           ; preds = %if.end
  ret i32 0, !dbg !5524
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_send_diseqc_msg(%struct.dvb_frontend* %fe, %struct.dvb_diseqc_master_cmd* %cmd) #0 !dbg !5525 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %cmd.addr = alloca %struct.dvb_diseqc_master_cmd*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %tone = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5526, metadata !DIExpression()), !dbg !5527
  store %struct.dvb_diseqc_master_cmd* %cmd, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_diseqc_master_cmd** %cmd.addr, metadata !5528, metadata !DIExpression()), !dbg !5529
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5532
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5533
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5533
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5532
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5531
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5534, metadata !DIExpression()), !dbg !5535
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5536, metadata !DIExpression()), !dbg !5537
  call void @llvm.dbg.declare(metadata i32* %tone, metadata !5538, metadata !DIExpression()), !dbg !5539
  br label %do.body, !dbg !5540

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5541
  %tobool = icmp ne i32 %3, 0, !dbg !5541
  br i1 %tobool, label %if.then, label %if.end, !dbg !5544

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.cx24123_send_diseqc_msg, i64 0, i64 0)) #9, !dbg !5545
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5545
  br label %if.end, !dbg !5545

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %if.end
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5547
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5547
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 1, !dbg !5547
  %6 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5547
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %6, i32 0, i32 0, !dbg !5547
  %7 = load i8, i8* %demod_address, align 8, !dbg !5547
  %call2 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %4, i8 zeroext %7, i8 zeroext 41) #8, !dbg !5547
  store i32 %call2, i32* %tone, align 4, !dbg !5548
  %8 = load i32, i32* %tone, align 4, !dbg !5549
  %and = and i32 %8, 16, !dbg !5551
  %tobool3 = icmp ne i32 %and, 0, !dbg !5551
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !5552

if.then4:                                         ; preds = %do.end
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5553
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5553
  %config5 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %10, i32 0, i32 1, !dbg !5553
  %11 = load %struct.cx24123_config*, %struct.cx24123_config** %config5, align 8, !dbg !5553
  %demod_address6 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %11, i32 0, i32 0, !dbg !5553
  %12 = load i8, i8* %demod_address6, align 8, !dbg !5553
  %13 = load i32, i32* %tone, align 4, !dbg !5553
  %and7 = and i32 %13, -81, !dbg !5553
  %call8 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %9, i8 zeroext %12, i32 41, i32 %and7) #8, !dbg !5553
  br label %if.end9, !dbg !5553

if.end9:                                          ; preds = %if.then4, %do.end
  %14 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5554
  call void @cx24123_wait_for_diseqc(%struct.cx24123_state* %14) #8, !dbg !5555
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5556
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5556
  %config10 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 1, !dbg !5556
  %17 = load %struct.cx24123_config*, %struct.cx24123_config** %config10, align 8, !dbg !5556
  %demod_address11 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %17, i32 0, i32 0, !dbg !5556
  %18 = load i8, i8* %demod_address11, align 8, !dbg !5556
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5556
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5556
  %config12 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %20, i32 0, i32 1, !dbg !5556
  %21 = load %struct.cx24123_config*, %struct.cx24123_config** %config12, align 8, !dbg !5556
  %demod_address13 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %21, i32 0, i32 0, !dbg !5556
  %22 = load i8, i8* %demod_address13, align 8, !dbg !5556
  %call14 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %19, i8 zeroext %22, i8 zeroext 42) #8, !dbg !5556
  %and15 = and i32 %call14, 251, !dbg !5556
  %call16 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %15, i8 zeroext %18, i32 42, i32 %and15) #8, !dbg !5556
  store i32 0, i32* %i, align 4, !dbg !5557
  br label %for.cond, !dbg !5559

for.cond:                                         ; preds = %for.inc, %if.end9
  %23 = load i32, i32* %i, align 4, !dbg !5560
  %24 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5562
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %24, i32 0, i32 1, !dbg !5563
  %25 = load i8, i8* %msg_len, align 1, !dbg !5563
  %conv = zext i8 %25 to i32, !dbg !5562
  %cmp = icmp slt i32 %23, %conv, !dbg !5564
  br i1 %cmp, label %for.body, label %for.end, !dbg !5565

for.body:                                         ; preds = %for.cond
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5566
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5566
  %config18 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %27, i32 0, i32 1, !dbg !5566
  %28 = load %struct.cx24123_config*, %struct.cx24123_config** %config18, align 8, !dbg !5566
  %demod_address19 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %28, i32 0, i32 0, !dbg !5566
  %29 = load i8, i8* %demod_address19, align 8, !dbg !5566
  %30 = load i32, i32* %i, align 4, !dbg !5566
  %add = add i32 44, %30, !dbg !5566
  %31 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5566
  %msg = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %31, i32 0, i32 0, !dbg !5566
  %32 = load i32, i32* %i, align 4, !dbg !5566
  %idxprom = sext i32 %32 to i64, !dbg !5566
  %arrayidx = getelementptr [6 x i8], [6 x i8]* %msg, i64 0, i64 %idxprom, !dbg !5566
  %33 = load i8, i8* %arrayidx, align 1, !dbg !5566
  %conv20 = zext i8 %33 to i32, !dbg !5566
  %call21 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %26, i8 zeroext %29, i32 %add, i32 %conv20) #8, !dbg !5566
  br label %for.inc, !dbg !5566

for.inc:                                          ; preds = %for.body
  %34 = load i32, i32* %i, align 4, !dbg !5567
  %inc = add i32 %34, 1, !dbg !5567
  store i32 %inc, i32* %i, align 4, !dbg !5567
  br label %for.cond, !dbg !5568, !llvm.loop !5569

for.end:                                          ; preds = %for.cond
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5571
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5571
  %config22 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %36, i32 0, i32 1, !dbg !5571
  %37 = load %struct.cx24123_config*, %struct.cx24123_config** %config22, align 8, !dbg !5571
  %demod_address23 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %37, i32 0, i32 0, !dbg !5571
  %38 = load i8, i8* %demod_address23, align 8, !dbg !5571
  %call24 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %35, i8 zeroext %38, i8 zeroext 41) #8, !dbg !5571
  store i32 %call24, i32* %val, align 4, !dbg !5572
  %39 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5573
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5573
  %config25 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %40, i32 0, i32 1, !dbg !5573
  %41 = load %struct.cx24123_config*, %struct.cx24123_config** %config25, align 8, !dbg !5573
  %demod_address26 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %41, i32 0, i32 0, !dbg !5573
  %42 = load i8, i8* %demod_address26, align 8, !dbg !5573
  %43 = load i32, i32* %val, align 4, !dbg !5573
  %and27 = and i32 %43, 144, !dbg !5573
  %or = or i32 %and27, 64, !dbg !5573
  %44 = load %struct.dvb_diseqc_master_cmd*, %struct.dvb_diseqc_master_cmd** %cmd.addr, align 8, !dbg !5573
  %msg_len28 = getelementptr inbounds %struct.dvb_diseqc_master_cmd, %struct.dvb_diseqc_master_cmd* %44, i32 0, i32 1, !dbg !5573
  %45 = load i8, i8* %msg_len28, align 1, !dbg !5573
  %conv29 = zext i8 %45 to i32, !dbg !5573
  %sub = sub i32 %conv29, 3, !dbg !5573
  %and30 = and i32 %sub, 3, !dbg !5573
  %or31 = or i32 %or, %and30, !dbg !5573
  %call32 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %39, i8 zeroext %42, i32 41, i32 %or31) #8, !dbg !5573
  %46 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5574
  call void @cx24123_wait_for_diseqc(%struct.cx24123_state* %46) #8, !dbg !5575
  %47 = load i32, i32* %tone, align 4, !dbg !5576
  %and33 = and i32 %47, 16, !dbg !5578
  %tobool34 = icmp ne i32 %and33, 0, !dbg !5578
  br i1 %tobool34, label %if.then35, label %if.end40, !dbg !5579

if.then35:                                        ; preds = %for.end
  %48 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5580
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5580
  %config36 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %49, i32 0, i32 1, !dbg !5580
  %50 = load %struct.cx24123_config*, %struct.cx24123_config** %config36, align 8, !dbg !5580
  %demod_address37 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %50, i32 0, i32 0, !dbg !5580
  %51 = load i8, i8* %demod_address37, align 8, !dbg !5580
  %52 = load i32, i32* %tone, align 4, !dbg !5580
  %and38 = and i32 %52, -65, !dbg !5580
  %call39 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %48, i8 zeroext %51, i32 41, i32 %and38) #8, !dbg !5580
  br label %if.end40, !dbg !5580

if.end40:                                         ; preds = %if.then35, %for.end
  ret i32 0, !dbg !5581
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_diseqc_send_burst(%struct.dvb_frontend* %fe, i32 %burst) #0 !dbg !5582 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %burst.addr = alloca i32, align 4
  %state = alloca %struct.cx24123_state*, align 8
  %val = alloca i32, align 4
  %tone = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i32 %burst, i32* %burst.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %burst.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5587, metadata !DIExpression()), !dbg !5588
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5589
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5590
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5590
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5589
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5588
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5591, metadata !DIExpression()), !dbg !5592
  call void @llvm.dbg.declare(metadata i32* %tone, metadata !5593, metadata !DIExpression()), !dbg !5594
  br label %do.body, !dbg !5595

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5596
  %tobool = icmp ne i32 %3, 0, !dbg !5596
  br i1 %tobool, label %if.then, label %if.end, !dbg !5599

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.cx24123_diseqc_send_burst, i64 0, i64 0)) #9, !dbg !5600
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !5600
  br label %if.end, !dbg !5600

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5599

do.end:                                           ; preds = %if.end
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5602
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5602
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 1, !dbg !5602
  %6 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5602
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %6, i32 0, i32 0, !dbg !5602
  %7 = load i8, i8* %demod_address, align 8, !dbg !5602
  %call2 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %4, i8 zeroext %7, i8 zeroext 41) #8, !dbg !5602
  store i32 %call2, i32* %tone, align 4, !dbg !5603
  %8 = load i32, i32* %tone, align 4, !dbg !5604
  %and = and i32 %8, 16, !dbg !5606
  %tobool3 = icmp ne i32 %and, 0, !dbg !5606
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !5607

if.then4:                                         ; preds = %do.end
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5608
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5608
  %config5 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %10, i32 0, i32 1, !dbg !5608
  %11 = load %struct.cx24123_config*, %struct.cx24123_config** %config5, align 8, !dbg !5608
  %demod_address6 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %11, i32 0, i32 0, !dbg !5608
  %12 = load i8, i8* %demod_address6, align 8, !dbg !5608
  %13 = load i32, i32* %tone, align 4, !dbg !5608
  %and7 = and i32 %13, -81, !dbg !5608
  %call8 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %9, i8 zeroext %12, i32 41, i32 %and7) #8, !dbg !5608
  br label %if.end9, !dbg !5608

if.end9:                                          ; preds = %if.then4, %do.end
  %14 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5609
  call void @cx24123_wait_for_diseqc(%struct.cx24123_state* %14) #8, !dbg !5610
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5611
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5611
  %config10 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 1, !dbg !5611
  %17 = load %struct.cx24123_config*, %struct.cx24123_config** %config10, align 8, !dbg !5611
  %demod_address11 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %17, i32 0, i32 0, !dbg !5611
  %18 = load i8, i8* %demod_address11, align 8, !dbg !5611
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5611
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5611
  %config12 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %20, i32 0, i32 1, !dbg !5611
  %21 = load %struct.cx24123_config*, %struct.cx24123_config** %config12, align 8, !dbg !5611
  %demod_address13 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %21, i32 0, i32 0, !dbg !5611
  %22 = load i8, i8* %demod_address13, align 8, !dbg !5611
  %call14 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %19, i8 zeroext %22, i8 zeroext 42) #8, !dbg !5611
  %or = or i32 %call14, 4, !dbg !5611
  %call15 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %15, i8 zeroext %18, i32 42, i32 %or) #8, !dbg !5611
  call void @msleep(i32 30) #8, !dbg !5612
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5613
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5613
  %config16 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %24, i32 0, i32 1, !dbg !5613
  %25 = load %struct.cx24123_config*, %struct.cx24123_config** %config16, align 8, !dbg !5613
  %demod_address17 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %25, i32 0, i32 0, !dbg !5613
  %26 = load i8, i8* %demod_address17, align 8, !dbg !5613
  %call18 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %23, i8 zeroext %26, i8 zeroext 41) #8, !dbg !5613
  store i32 %call18, i32* %val, align 4, !dbg !5614
  %27 = load i32, i32* %burst.addr, align 4, !dbg !5615
  %cmp = icmp eq i32 %27, 0, !dbg !5617
  br i1 %cmp, label %if.then19, label %if.else, !dbg !5618

if.then19:                                        ; preds = %if.end9
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5619
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5619
  %config20 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %29, i32 0, i32 1, !dbg !5619
  %30 = load %struct.cx24123_config*, %struct.cx24123_config** %config20, align 8, !dbg !5619
  %demod_address21 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %30, i32 0, i32 0, !dbg !5619
  %31 = load i8, i8* %demod_address21, align 8, !dbg !5619
  %32 = load i32, i32* %val, align 4, !dbg !5619
  %and22 = and i32 %32, 144, !dbg !5619
  %or23 = or i32 %and22, 64, !dbg !5619
  %call24 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %28, i8 zeroext %31, i32 41, i32 %or23) #8, !dbg !5619
  br label %if.end35, !dbg !5619

if.else:                                          ; preds = %if.end9
  %33 = load i32, i32* %burst.addr, align 4, !dbg !5620
  %cmp25 = icmp eq i32 %33, 1, !dbg !5622
  br i1 %cmp25, label %if.then26, label %if.else33, !dbg !5623

if.then26:                                        ; preds = %if.else
  %34 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5624
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5624
  %config27 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %35, i32 0, i32 1, !dbg !5624
  %36 = load %struct.cx24123_config*, %struct.cx24123_config** %config27, align 8, !dbg !5624
  %demod_address28 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %36, i32 0, i32 0, !dbg !5624
  %37 = load i8, i8* %demod_address28, align 8, !dbg !5624
  %38 = load i32, i32* %val, align 4, !dbg !5624
  %and29 = and i32 %38, 144, !dbg !5624
  %or30 = or i32 %and29, 64, !dbg !5624
  %or31 = or i32 %or30, 8, !dbg !5624
  %call32 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %34, i8 zeroext %37, i32 41, i32 %or31) #8, !dbg !5624
  br label %if.end34, !dbg !5624

if.else33:                                        ; preds = %if.else
  store i32 -22, i32* %retval, align 4, !dbg !5625
  br label %return, !dbg !5625

if.end34:                                         ; preds = %if.then26
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then19
  %39 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5626
  call void @cx24123_wait_for_diseqc(%struct.cx24123_state* %39) #8, !dbg !5627
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5628
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5628
  %config36 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %41, i32 0, i32 1, !dbg !5628
  %42 = load %struct.cx24123_config*, %struct.cx24123_config** %config36, align 8, !dbg !5628
  %demod_address37 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %42, i32 0, i32 0, !dbg !5628
  %43 = load i8, i8* %demod_address37, align 8, !dbg !5628
  %44 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5628
  %45 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5628
  %config38 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %45, i32 0, i32 1, !dbg !5628
  %46 = load %struct.cx24123_config*, %struct.cx24123_config** %config38, align 8, !dbg !5628
  %demod_address39 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %46, i32 0, i32 0, !dbg !5628
  %47 = load i8, i8* %demod_address39, align 8, !dbg !5628
  %call40 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %44, i8 zeroext %47, i8 zeroext 42) #8, !dbg !5628
  %and41 = and i32 %call40, 251, !dbg !5628
  %call42 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %40, i8 zeroext %43, i32 42, i32 %and41) #8, !dbg !5628
  %48 = load i32, i32* %tone, align 4, !dbg !5629
  %and43 = and i32 %48, 16, !dbg !5631
  %tobool44 = icmp ne i32 %and43, 0, !dbg !5631
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !5632

if.then45:                                        ; preds = %if.end35
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5633
  %50 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5633
  %config46 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %50, i32 0, i32 1, !dbg !5633
  %51 = load %struct.cx24123_config*, %struct.cx24123_config** %config46, align 8, !dbg !5633
  %demod_address47 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %51, i32 0, i32 0, !dbg !5633
  %52 = load i8, i8* %demod_address47, align 8, !dbg !5633
  %53 = load i32, i32* %tone, align 4, !dbg !5633
  %and48 = and i32 %53, -65, !dbg !5633
  %call49 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %49, i8 zeroext %52, i32 41, i32 %and48) #8, !dbg !5633
  br label %if.end50, !dbg !5633

if.end50:                                         ; preds = %if.then45, %if.end35
  store i32 0, i32* %retval, align 4, !dbg !5634
  br label %return, !dbg !5634

return:                                           ; preds = %if.end50, %if.else33
  %54 = load i32, i32* %retval, align 4, !dbg !5635
  ret i32 %54, !dbg !5635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_tone(%struct.dvb_frontend* %fe, i32 %tone) #0 !dbg !5636 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %tone.addr = alloca i32, align 4
  %state = alloca %struct.cx24123_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5637, metadata !DIExpression()), !dbg !5638
  store i32 %tone, i32* %tone.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tone.addr, metadata !5639, metadata !DIExpression()), !dbg !5640
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5641, metadata !DIExpression()), !dbg !5642
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5643
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5644
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5644
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5643
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5642
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5645, metadata !DIExpression()), !dbg !5646
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5647
  call void @cx24123_wait_for_diseqc(%struct.cx24123_state* %3) #8, !dbg !5648
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5649
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5649
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 1, !dbg !5649
  %6 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5649
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %6, i32 0, i32 0, !dbg !5649
  %7 = load i8, i8* %demod_address, align 8, !dbg !5649
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %4, i8 zeroext %7, i8 zeroext 41) #8, !dbg !5649
  %and = and i32 %call, -65, !dbg !5650
  %conv = trunc i32 %and to i8, !dbg !5649
  store i8 %conv, i8* %val, align 1, !dbg !5651
  %8 = load i32, i32* %tone.addr, align 4, !dbg !5652
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ], !dbg !5653

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !5654

do.body:                                          ; preds = %sw.bb
  %9 = load i32, i32* @debug, align 4, !dbg !5656
  %tobool = icmp ne i32 %9, 0, !dbg !5656
  br i1 %tobool, label %if.then, label %if.end, !dbg !5659

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_set_tone, i64 0, i64 0)) #9, !dbg !5660
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.39, i64 0, i64 0)) #9, !dbg !5660
  br label %if.end, !dbg !5660

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5659

do.end:                                           ; preds = %if.end
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5662
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5662
  %config3 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %11, i32 0, i32 1, !dbg !5662
  %12 = load %struct.cx24123_config*, %struct.cx24123_config** %config3, align 8, !dbg !5662
  %demod_address4 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %12, i32 0, i32 0, !dbg !5662
  %13 = load i8, i8* %demod_address4, align 8, !dbg !5662
  %14 = load i8, i8* %val, align 1, !dbg !5662
  %conv5 = zext i8 %14 to i32, !dbg !5662
  %or = or i32 %conv5, 16, !dbg !5662
  %call6 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %10, i8 zeroext %13, i32 41, i32 %or) #8, !dbg !5662
  store i32 %call6, i32* %retval, align 4, !dbg !5663
  br label %return, !dbg !5663

sw.bb7:                                           ; preds = %entry
  br label %do.body8, !dbg !5664

do.body8:                                         ; preds = %sw.bb7
  %15 = load i32, i32* @debug, align 4, !dbg !5665
  %tobool9 = icmp ne i32 %15, 0, !dbg !5665
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !5668

if.then10:                                        ; preds = %do.body8
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_set_tone, i64 0, i64 0)) #9, !dbg !5669
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0)) #9, !dbg !5669
  br label %if.end13, !dbg !5669

if.end13:                                         ; preds = %if.then10, %do.body8
  br label %do.end14, !dbg !5668

do.end14:                                         ; preds = %if.end13
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5671
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5671
  %config15 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %17, i32 0, i32 1, !dbg !5671
  %18 = load %struct.cx24123_config*, %struct.cx24123_config** %config15, align 8, !dbg !5671
  %demod_address16 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %18, i32 0, i32 0, !dbg !5671
  %19 = load i8, i8* %demod_address16, align 8, !dbg !5671
  %20 = load i8, i8* %val, align 1, !dbg !5671
  %conv17 = zext i8 %20 to i32, !dbg !5671
  %and18 = and i32 %conv17, 239, !dbg !5671
  %call19 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %16, i8 zeroext %19, i32 41, i32 %and18) #8, !dbg !5671
  store i32 %call19, i32* %retval, align 4, !dbg !5672
  br label %return, !dbg !5672

sw.default:                                       ; preds = %entry
  br label %do.body20, !dbg !5673

do.body20:                                        ; preds = %sw.default
  %21 = load i32, i32* %tone.addr, align 4, !dbg !5674
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i64 0, i64 0), i32 %21) #9, !dbg !5674
  br label %do.end22, !dbg !5674

do.end22:                                         ; preds = %do.body20
  store i32 -22, i32* %retval, align 4, !dbg !5676
  br label %return, !dbg !5676

return:                                           ; preds = %do.end22, %do.end14, %do.end
  %22 = load i32, i32* %retval, align 4, !dbg !5677
  ret i32 %22, !dbg !5677
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_voltage(%struct.dvb_frontend* %fe, i32 %voltage) #0 !dbg !5678 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %voltage.addr = alloca i32, align 4
  %state = alloca %struct.cx24123_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5679, metadata !DIExpression()), !dbg !5680
  store i32 %voltage, i32* %voltage.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %voltage.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5683, metadata !DIExpression()), !dbg !5684
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5685
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5686
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5686
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !5685
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !5684
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5687, metadata !DIExpression()), !dbg !5688
  %3 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5689
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5689
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 1, !dbg !5689
  %5 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5689
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %5, i32 0, i32 0, !dbg !5689
  %6 = load i8, i8* %demod_address, align 8, !dbg !5689
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %3, i8 zeroext %6, i8 zeroext 41) #8, !dbg !5689
  %and = and i32 %call, -65, !dbg !5690
  %conv = trunc i32 %and to i8, !dbg !5689
  store i8 %conv, i8* %val, align 1, !dbg !5691
  %7 = load i32, i32* %voltage.addr, align 4, !dbg !5692
  switch i32 %7, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb20
  ], !dbg !5693

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !5694

do.body:                                          ; preds = %sw.bb
  %8 = load i32, i32* @debug, align 4, !dbg !5696
  %tobool = icmp ne i32 %8, 0, !dbg !5696
  br i1 %tobool, label %if.then, label %if.end, !dbg !5699

if.then:                                          ; preds = %do.body
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24123_set_voltage, i64 0, i64 0)) #9, !dbg !5700
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0)) #9, !dbg !5700
  br label %if.end, !dbg !5700

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5699

do.end:                                           ; preds = %if.end
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5702
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5702
  %config3 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %10, i32 0, i32 1, !dbg !5702
  %11 = load %struct.cx24123_config*, %struct.cx24123_config** %config3, align 8, !dbg !5702
  %demod_address4 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %11, i32 0, i32 0, !dbg !5702
  %12 = load i8, i8* %demod_address4, align 8, !dbg !5702
  %13 = load i8, i8* %val, align 1, !dbg !5702
  %conv5 = zext i8 %13 to i32, !dbg !5702
  %and6 = and i32 %conv5, 127, !dbg !5702
  %call7 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %9, i8 zeroext %12, i32 41, i32 %and6) #8, !dbg !5702
  store i32 %call7, i32* %retval, align 4, !dbg !5703
  br label %return, !dbg !5703

sw.bb8:                                           ; preds = %entry
  br label %do.body9, !dbg !5704

do.body9:                                         ; preds = %sw.bb8
  %14 = load i32, i32* @debug, align 4, !dbg !5705
  %tobool10 = icmp ne i32 %14, 0, !dbg !5705
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !5708

if.then11:                                        ; preds = %do.body9
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.cx24123_set_voltage, i64 0, i64 0)) #9, !dbg !5709
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.43, i64 0, i64 0)) #9, !dbg !5709
  br label %if.end14, !dbg !5709

if.end14:                                         ; preds = %if.then11, %do.body9
  br label %do.end15, !dbg !5708

do.end15:                                         ; preds = %if.end14
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5711
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !5711
  %config16 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 1, !dbg !5711
  %17 = load %struct.cx24123_config*, %struct.cx24123_config** %config16, align 8, !dbg !5711
  %demod_address17 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %17, i32 0, i32 0, !dbg !5711
  %18 = load i8, i8* %demod_address17, align 8, !dbg !5711
  %19 = load i8, i8* %val, align 1, !dbg !5711
  %conv18 = zext i8 %19 to i32, !dbg !5711
  %or = or i32 %conv18, 128, !dbg !5711
  %call19 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %15, i8 zeroext %18, i32 41, i32 %or) #8, !dbg !5711
  store i32 %call19, i32* %retval, align 4, !dbg !5712
  br label %return, !dbg !5712

sw.bb20:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5713
  br label %return, !dbg !5713

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5714
  br label %return, !dbg !5714

return:                                           ; preds = %sw.default, %sw.bb20, %do.end15, %do.end
  %20 = load i32, i32* %retval, align 4, !dbg !5715
  ret i32 %20, !dbg !5715
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_inversion(%struct.cx24123_state* %state, i32 %inversion) #0 !dbg !5716 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %inversion.addr = alloca i32, align 4
  %nom_reg = alloca i8, align 1
  %auto_reg = alloca i8, align 1
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !5719, metadata !DIExpression()), !dbg !5720
  store i32 %inversion, i32* %inversion.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %inversion.addr, metadata !5721, metadata !DIExpression()), !dbg !5722
  call void @llvm.dbg.declare(metadata i8* %nom_reg, metadata !5723, metadata !DIExpression()), !dbg !5724
  %0 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5725
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5725
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 1, !dbg !5725
  %2 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5725
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %2, i32 0, i32 0, !dbg !5725
  %3 = load i8, i8* %demod_address, align 8, !dbg !5725
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %0, i8 zeroext %3, i8 zeroext 14) #8, !dbg !5725
  %conv = trunc i32 %call to i8, !dbg !5725
  store i8 %conv, i8* %nom_reg, align 1, !dbg !5724
  call void @llvm.dbg.declare(metadata i8* %auto_reg, metadata !5726, metadata !DIExpression()), !dbg !5727
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5728
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5728
  %config1 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 1, !dbg !5728
  %6 = load %struct.cx24123_config*, %struct.cx24123_config** %config1, align 8, !dbg !5728
  %demod_address2 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %6, i32 0, i32 0, !dbg !5728
  %7 = load i8, i8* %demod_address2, align 8, !dbg !5728
  %call3 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %4, i8 zeroext %7, i8 zeroext 16) #8, !dbg !5728
  %conv4 = trunc i32 %call3 to i8, !dbg !5728
  store i8 %conv4, i8* %auto_reg, align 1, !dbg !5727
  %8 = load i32, i32* %inversion.addr, align 4, !dbg !5729
  switch i32 %8, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb15
    i32 2, label %sw.bb33
  ], !dbg !5730

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !5731

do.body:                                          ; preds = %sw.bb
  %9 = load i32, i32* @debug, align 4, !dbg !5733
  %tobool = icmp ne i32 %9, 0, !dbg !5733
  br i1 %tobool, label %if.then, label %if.end, !dbg !5736

if.then:                                          ; preds = %do.body
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24123_set_inversion, i64 0, i64 0)) #9, !dbg !5737
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !5737
  br label %if.end, !dbg !5737

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5736

do.end:                                           ; preds = %if.end
  %10 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5739
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5739
  %config7 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %11, i32 0, i32 1, !dbg !5739
  %12 = load %struct.cx24123_config*, %struct.cx24123_config** %config7, align 8, !dbg !5739
  %demod_address8 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %12, i32 0, i32 0, !dbg !5739
  %13 = load i8, i8* %demod_address8, align 8, !dbg !5739
  %14 = load i8, i8* %nom_reg, align 1, !dbg !5739
  %conv9 = zext i8 %14 to i32, !dbg !5739
  %and = and i32 %conv9, -129, !dbg !5739
  %call10 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %10, i8 zeroext %13, i32 14, i32 %and) #8, !dbg !5739
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5740
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5740
  %config11 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 1, !dbg !5740
  %17 = load %struct.cx24123_config*, %struct.cx24123_config** %config11, align 8, !dbg !5740
  %demod_address12 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %17, i32 0, i32 0, !dbg !5740
  %18 = load i8, i8* %demod_address12, align 8, !dbg !5740
  %19 = load i8, i8* %auto_reg, align 1, !dbg !5740
  %conv13 = zext i8 %19 to i32, !dbg !5740
  %or = or i32 %conv13, 128, !dbg !5740
  %call14 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %15, i8 zeroext %18, i32 16, i32 %or) #8, !dbg !5740
  br label %sw.epilog, !dbg !5741

sw.bb15:                                          ; preds = %entry
  br label %do.body16, !dbg !5742

do.body16:                                        ; preds = %sw.bb15
  %20 = load i32, i32* @debug, align 4, !dbg !5743
  %tobool17 = icmp ne i32 %20, 0, !dbg !5743
  br i1 %tobool17, label %if.then18, label %if.end21, !dbg !5746

if.then18:                                        ; preds = %do.body16
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24123_set_inversion, i64 0, i64 0)) #9, !dbg !5747
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !5747
  br label %if.end21, !dbg !5747

if.end21:                                         ; preds = %if.then18, %do.body16
  br label %do.end22, !dbg !5746

do.end22:                                         ; preds = %if.end21
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5749
  %22 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5749
  %config23 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %22, i32 0, i32 1, !dbg !5749
  %23 = load %struct.cx24123_config*, %struct.cx24123_config** %config23, align 8, !dbg !5749
  %demod_address24 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %23, i32 0, i32 0, !dbg !5749
  %24 = load i8, i8* %demod_address24, align 8, !dbg !5749
  %25 = load i8, i8* %nom_reg, align 1, !dbg !5749
  %conv25 = zext i8 %25 to i32, !dbg !5749
  %or26 = or i32 %conv25, 128, !dbg !5749
  %call27 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %21, i8 zeroext %24, i32 14, i32 %or26) #8, !dbg !5749
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5750
  %27 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5750
  %config28 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %27, i32 0, i32 1, !dbg !5750
  %28 = load %struct.cx24123_config*, %struct.cx24123_config** %config28, align 8, !dbg !5750
  %demod_address29 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %28, i32 0, i32 0, !dbg !5750
  %29 = load i8, i8* %demod_address29, align 8, !dbg !5750
  %30 = load i8, i8* %auto_reg, align 1, !dbg !5750
  %conv30 = zext i8 %30 to i32, !dbg !5750
  %or31 = or i32 %conv30, 128, !dbg !5750
  %call32 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %26, i8 zeroext %29, i32 16, i32 %or31) #8, !dbg !5750
  br label %sw.epilog, !dbg !5751

sw.bb33:                                          ; preds = %entry
  br label %do.body34, !dbg !5752

do.body34:                                        ; preds = %sw.bb33
  %31 = load i32, i32* @debug, align 4, !dbg !5753
  %tobool35 = icmp ne i32 %31, 0, !dbg !5753
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !5756

if.then36:                                        ; preds = %do.body34
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24123_set_inversion, i64 0, i64 0)) #9, !dbg !5757
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !5757
  br label %if.end39, !dbg !5757

if.end39:                                         ; preds = %if.then36, %do.body34
  br label %do.end40, !dbg !5756

do.end40:                                         ; preds = %if.end39
  %32 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5759
  %33 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5759
  %config41 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %33, i32 0, i32 1, !dbg !5759
  %34 = load %struct.cx24123_config*, %struct.cx24123_config** %config41, align 8, !dbg !5759
  %demod_address42 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %34, i32 0, i32 0, !dbg !5759
  %35 = load i8, i8* %demod_address42, align 8, !dbg !5759
  %36 = load i8, i8* %auto_reg, align 1, !dbg !5759
  %conv43 = zext i8 %36 to i32, !dbg !5759
  %and44 = and i32 %conv43, -129, !dbg !5759
  %call45 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %32, i8 zeroext %35, i32 16, i32 %and44) #8, !dbg !5759
  br label %sw.epilog, !dbg !5760

sw.default:                                       ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !5761
  br label %return, !dbg !5761

sw.epilog:                                        ; preds = %do.end40, %do.end22, %do.end
  store i32 0, i32* %retval, align 4, !dbg !5762
  br label %return, !dbg !5762

return:                                           ; preds = %sw.epilog, %sw.default
  %37 = load i32, i32* %retval, align 4, !dbg !5763
  ret i32 %37, !dbg !5763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_fec(%struct.cx24123_state* %state, i32 %fec) #0 !dbg !5764 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %fec.addr = alloca i32, align 4
  %nom_reg = alloca i8, align 1
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store i32 %fec, i32* %fec.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %fec.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  call void @llvm.dbg.declare(metadata i8* %nom_reg, metadata !5771, metadata !DIExpression()), !dbg !5772
  %0 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5773
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5773
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 1, !dbg !5773
  %2 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5773
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %2, i32 0, i32 0, !dbg !5773
  %3 = load i8, i8* %demod_address, align 8, !dbg !5773
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %0, i8 zeroext %3, i8 zeroext 14) #8, !dbg !5773
  %and = and i32 %call, -8, !dbg !5774
  %conv = trunc i32 %and to i8, !dbg !5773
  store i8 %conv, i8* %nom_reg, align 1, !dbg !5772
  %4 = load i32, i32* %fec.addr, align 4, !dbg !5775
  %cmp = icmp slt i32 %4, 0, !dbg !5777
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5778

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %fec.addr, align 4, !dbg !5779
  %cmp2 = icmp ugt i32 %5, 9, !dbg !5780
  br i1 %cmp2, label %if.then, label %if.end, !dbg !5781

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 9, i32* %fec.addr, align 4, !dbg !5782
  br label %if.end, !dbg !5783

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i32, i32* %fec.addr, align 4, !dbg !5784
  %cmp4 = icmp eq i32 %6, 1, !dbg !5786
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !5787

if.then6:                                         ; preds = %if.end
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5788
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5788
  %config7 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !5788
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config7, align 8, !dbg !5788
  %demod_address8 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 0, !dbg !5788
  %10 = load i8, i8* %demod_address8, align 8, !dbg !5788
  %11 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5788
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5788
  %config9 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 1, !dbg !5788
  %13 = load %struct.cx24123_config*, %struct.cx24123_config** %config9, align 8, !dbg !5788
  %demod_address10 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %13, i32 0, i32 0, !dbg !5788
  %14 = load i8, i8* %demod_address10, align 8, !dbg !5788
  %call11 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %11, i8 zeroext %14, i8 zeroext 67) #8, !dbg !5788
  %or = or i32 %call11, 1, !dbg !5788
  %call12 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %7, i8 zeroext %10, i32 67, i32 %or) #8, !dbg !5788
  br label %if.end20, !dbg !5788

if.else:                                          ; preds = %if.end
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5789
  %16 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5789
  %config13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %16, i32 0, i32 1, !dbg !5789
  %17 = load %struct.cx24123_config*, %struct.cx24123_config** %config13, align 8, !dbg !5789
  %demod_address14 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %17, i32 0, i32 0, !dbg !5789
  %18 = load i8, i8* %demod_address14, align 8, !dbg !5789
  %19 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5789
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5789
  %config15 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %20, i32 0, i32 1, !dbg !5789
  %21 = load %struct.cx24123_config*, %struct.cx24123_config** %config15, align 8, !dbg !5789
  %demod_address16 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %21, i32 0, i32 0, !dbg !5789
  %22 = load i8, i8* %demod_address16, align 8, !dbg !5789
  %call17 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %19, i8 zeroext %22, i8 zeroext 67) #8, !dbg !5789
  %and18 = and i32 %call17, -2, !dbg !5789
  %call19 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %15, i8 zeroext %18, i32 67, i32 %and18) #8, !dbg !5789
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then6
  %23 = load i32, i32* %fec.addr, align 4, !dbg !5790
  switch i32 %23, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb33
    i32 3, label %sw.bb49
    i32 4, label %sw.bb65
    i32 5, label %sw.bb81
    i32 6, label %sw.bb97
    i32 7, label %sw.bb113
    i32 9, label %sw.bb129
  ], !dbg !5791

sw.bb:                                            ; preds = %if.end20
  br label %do.body, !dbg !5792

do.body:                                          ; preds = %sw.bb
  %24 = load i32, i32* @debug, align 4, !dbg !5794
  %tobool = icmp ne i32 %24, 0, !dbg !5794
  br i1 %tobool, label %if.then21, label %if.end24, !dbg !5797

if.then21:                                        ; preds = %do.body
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5798
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !5798
  br label %if.end24, !dbg !5798

if.end24:                                         ; preds = %if.then21, %do.body
  br label %do.end, !dbg !5797

do.end:                                           ; preds = %if.end24
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5800
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5800
  %config25 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %26, i32 0, i32 1, !dbg !5800
  %27 = load %struct.cx24123_config*, %struct.cx24123_config** %config25, align 8, !dbg !5800
  %demod_address26 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %27, i32 0, i32 0, !dbg !5800
  %28 = load i8, i8* %demod_address26, align 8, !dbg !5800
  %29 = load i8, i8* %nom_reg, align 1, !dbg !5800
  %conv27 = zext i8 %29 to i32, !dbg !5800
  %or28 = or i32 %conv27, 1, !dbg !5800
  %call29 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %25, i8 zeroext %28, i32 14, i32 %or28) #8, !dbg !5800
  %30 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5801
  %31 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5801
  %config30 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %31, i32 0, i32 1, !dbg !5801
  %32 = load %struct.cx24123_config*, %struct.cx24123_config** %config30, align 8, !dbg !5801
  %demod_address31 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %32, i32 0, i32 0, !dbg !5801
  %33 = load i8, i8* %demod_address31, align 8, !dbg !5801
  %call32 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %30, i8 zeroext %33, i32 15, i32 2) #8, !dbg !5801
  br label %sw.epilog, !dbg !5802

sw.bb33:                                          ; preds = %if.end20
  br label %do.body34, !dbg !5803

do.body34:                                        ; preds = %sw.bb33
  %34 = load i32, i32* @debug, align 4, !dbg !5804
  %tobool35 = icmp ne i32 %34, 0, !dbg !5804
  br i1 %tobool35, label %if.then36, label %if.end39, !dbg !5807

if.then36:                                        ; preds = %do.body34
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5808
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !5808
  br label %if.end39, !dbg !5808

if.end39:                                         ; preds = %if.then36, %do.body34
  br label %do.end40, !dbg !5807

do.end40:                                         ; preds = %if.end39
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5810
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5810
  %config41 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %36, i32 0, i32 1, !dbg !5810
  %37 = load %struct.cx24123_config*, %struct.cx24123_config** %config41, align 8, !dbg !5810
  %demod_address42 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %37, i32 0, i32 0, !dbg !5810
  %38 = load i8, i8* %demod_address42, align 8, !dbg !5810
  %39 = load i8, i8* %nom_reg, align 1, !dbg !5810
  %conv43 = zext i8 %39 to i32, !dbg !5810
  %or44 = or i32 %conv43, 2, !dbg !5810
  %call45 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %35, i8 zeroext %38, i32 14, i32 %or44) #8, !dbg !5810
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5811
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5811
  %config46 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %41, i32 0, i32 1, !dbg !5811
  %42 = load %struct.cx24123_config*, %struct.cx24123_config** %config46, align 8, !dbg !5811
  %demod_address47 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %42, i32 0, i32 0, !dbg !5811
  %43 = load i8, i8* %demod_address47, align 8, !dbg !5811
  %call48 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %40, i8 zeroext %43, i32 15, i32 4) #8, !dbg !5811
  br label %sw.epilog, !dbg !5812

sw.bb49:                                          ; preds = %if.end20
  br label %do.body50, !dbg !5813

do.body50:                                        ; preds = %sw.bb49
  %44 = load i32, i32* @debug, align 4, !dbg !5814
  %tobool51 = icmp ne i32 %44, 0, !dbg !5814
  br i1 %tobool51, label %if.then52, label %if.end55, !dbg !5817

if.then52:                                        ; preds = %do.body50
  %call53 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5818
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !5818
  br label %if.end55, !dbg !5818

if.end55:                                         ; preds = %if.then52, %do.body50
  br label %do.end56, !dbg !5817

do.end56:                                         ; preds = %if.end55
  %45 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5820
  %46 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5820
  %config57 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %46, i32 0, i32 1, !dbg !5820
  %47 = load %struct.cx24123_config*, %struct.cx24123_config** %config57, align 8, !dbg !5820
  %demod_address58 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %47, i32 0, i32 0, !dbg !5820
  %48 = load i8, i8* %demod_address58, align 8, !dbg !5820
  %49 = load i8, i8* %nom_reg, align 1, !dbg !5820
  %conv59 = zext i8 %49 to i32, !dbg !5820
  %or60 = or i32 %conv59, 3, !dbg !5820
  %call61 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %45, i8 zeroext %48, i32 14, i32 %or60) #8, !dbg !5820
  %50 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5821
  %51 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5821
  %config62 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %51, i32 0, i32 1, !dbg !5821
  %52 = load %struct.cx24123_config*, %struct.cx24123_config** %config62, align 8, !dbg !5821
  %demod_address63 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %52, i32 0, i32 0, !dbg !5821
  %53 = load i8, i8* %demod_address63, align 8, !dbg !5821
  %call64 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %50, i8 zeroext %53, i32 15, i32 8) #8, !dbg !5821
  br label %sw.epilog, !dbg !5822

sw.bb65:                                          ; preds = %if.end20
  br label %do.body66, !dbg !5823

do.body66:                                        ; preds = %sw.bb65
  %54 = load i32, i32* @debug, align 4, !dbg !5824
  %tobool67 = icmp ne i32 %54, 0, !dbg !5824
  br i1 %tobool67, label %if.then68, label %if.end71, !dbg !5827

if.then68:                                        ; preds = %do.body66
  %call69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5828
  %call70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !5828
  br label %if.end71, !dbg !5828

if.end71:                                         ; preds = %if.then68, %do.body66
  br label %do.end72, !dbg !5827

do.end72:                                         ; preds = %if.end71
  %55 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5830
  %56 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5830
  %config73 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %56, i32 0, i32 1, !dbg !5830
  %57 = load %struct.cx24123_config*, %struct.cx24123_config** %config73, align 8, !dbg !5830
  %demod_address74 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %57, i32 0, i32 0, !dbg !5830
  %58 = load i8, i8* %demod_address74, align 8, !dbg !5830
  %59 = load i8, i8* %nom_reg, align 1, !dbg !5830
  %conv75 = zext i8 %59 to i32, !dbg !5830
  %or76 = or i32 %conv75, 4, !dbg !5830
  %call77 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %55, i8 zeroext %58, i32 14, i32 %or76) #8, !dbg !5830
  %60 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5831
  %61 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5831
  %config78 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %61, i32 0, i32 1, !dbg !5831
  %62 = load %struct.cx24123_config*, %struct.cx24123_config** %config78, align 8, !dbg !5831
  %demod_address79 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %62, i32 0, i32 0, !dbg !5831
  %63 = load i8, i8* %demod_address79, align 8, !dbg !5831
  %call80 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %60, i8 zeroext %63, i32 15, i32 16) #8, !dbg !5831
  br label %sw.epilog, !dbg !5832

sw.bb81:                                          ; preds = %if.end20
  br label %do.body82, !dbg !5833

do.body82:                                        ; preds = %sw.bb81
  %64 = load i32, i32* @debug, align 4, !dbg !5834
  %tobool83 = icmp ne i32 %64, 0, !dbg !5834
  br i1 %tobool83, label %if.then84, label %if.end87, !dbg !5837

if.then84:                                        ; preds = %do.body82
  %call85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5838
  %call86 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !5838
  br label %if.end87, !dbg !5838

if.end87:                                         ; preds = %if.then84, %do.body82
  br label %do.end88, !dbg !5837

do.end88:                                         ; preds = %if.end87
  %65 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5840
  %66 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5840
  %config89 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %66, i32 0, i32 1, !dbg !5840
  %67 = load %struct.cx24123_config*, %struct.cx24123_config** %config89, align 8, !dbg !5840
  %demod_address90 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %67, i32 0, i32 0, !dbg !5840
  %68 = load i8, i8* %demod_address90, align 8, !dbg !5840
  %69 = load i8, i8* %nom_reg, align 1, !dbg !5840
  %conv91 = zext i8 %69 to i32, !dbg !5840
  %or92 = or i32 %conv91, 5, !dbg !5840
  %call93 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %65, i8 zeroext %68, i32 14, i32 %or92) #8, !dbg !5840
  %70 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5841
  %71 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5841
  %config94 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %71, i32 0, i32 1, !dbg !5841
  %72 = load %struct.cx24123_config*, %struct.cx24123_config** %config94, align 8, !dbg !5841
  %demod_address95 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %72, i32 0, i32 0, !dbg !5841
  %73 = load i8, i8* %demod_address95, align 8, !dbg !5841
  %call96 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %70, i8 zeroext %73, i32 15, i32 32) #8, !dbg !5841
  br label %sw.epilog, !dbg !5842

sw.bb97:                                          ; preds = %if.end20
  br label %do.body98, !dbg !5843

do.body98:                                        ; preds = %sw.bb97
  %74 = load i32, i32* @debug, align 4, !dbg !5844
  %tobool99 = icmp ne i32 %74, 0, !dbg !5844
  br i1 %tobool99, label %if.then100, label %if.end103, !dbg !5847

if.then100:                                       ; preds = %do.body98
  %call101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5848
  %call102 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !5848
  br label %if.end103, !dbg !5848

if.end103:                                        ; preds = %if.then100, %do.body98
  br label %do.end104, !dbg !5847

do.end104:                                        ; preds = %if.end103
  %75 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5850
  %76 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5850
  %config105 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %76, i32 0, i32 1, !dbg !5850
  %77 = load %struct.cx24123_config*, %struct.cx24123_config** %config105, align 8, !dbg !5850
  %demod_address106 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %77, i32 0, i32 0, !dbg !5850
  %78 = load i8, i8* %demod_address106, align 8, !dbg !5850
  %79 = load i8, i8* %nom_reg, align 1, !dbg !5850
  %conv107 = zext i8 %79 to i32, !dbg !5850
  %or108 = or i32 %conv107, 6, !dbg !5850
  %call109 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %75, i8 zeroext %78, i32 14, i32 %or108) #8, !dbg !5850
  %80 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5851
  %81 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5851
  %config110 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %81, i32 0, i32 1, !dbg !5851
  %82 = load %struct.cx24123_config*, %struct.cx24123_config** %config110, align 8, !dbg !5851
  %demod_address111 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %82, i32 0, i32 0, !dbg !5851
  %83 = load i8, i8* %demod_address111, align 8, !dbg !5851
  %call112 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %80, i8 zeroext %83, i32 15, i32 64) #8, !dbg !5851
  br label %sw.epilog, !dbg !5852

sw.bb113:                                         ; preds = %if.end20
  br label %do.body114, !dbg !5853

do.body114:                                       ; preds = %sw.bb113
  %84 = load i32, i32* @debug, align 4, !dbg !5854
  %tobool115 = icmp ne i32 %84, 0, !dbg !5854
  br i1 %tobool115, label %if.then116, label %if.end119, !dbg !5857

if.then116:                                       ; preds = %do.body114
  %call117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5858
  %call118 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !5858
  br label %if.end119, !dbg !5858

if.end119:                                        ; preds = %if.then116, %do.body114
  br label %do.end120, !dbg !5857

do.end120:                                        ; preds = %if.end119
  %85 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5860
  %86 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5860
  %config121 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %86, i32 0, i32 1, !dbg !5860
  %87 = load %struct.cx24123_config*, %struct.cx24123_config** %config121, align 8, !dbg !5860
  %demod_address122 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %87, i32 0, i32 0, !dbg !5860
  %88 = load i8, i8* %demod_address122, align 8, !dbg !5860
  %89 = load i8, i8* %nom_reg, align 1, !dbg !5860
  %conv123 = zext i8 %89 to i32, !dbg !5860
  %or124 = or i32 %conv123, 7, !dbg !5860
  %call125 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %85, i8 zeroext %88, i32 14, i32 %or124) #8, !dbg !5860
  %90 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5861
  %91 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5861
  %config126 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %91, i32 0, i32 1, !dbg !5861
  %92 = load %struct.cx24123_config*, %struct.cx24123_config** %config126, align 8, !dbg !5861
  %demod_address127 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %92, i32 0, i32 0, !dbg !5861
  %93 = load i8, i8* %demod_address127, align 8, !dbg !5861
  %call128 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %90, i8 zeroext %93, i32 15, i32 128) #8, !dbg !5861
  br label %sw.epilog, !dbg !5862

sw.bb129:                                         ; preds = %if.end20
  br label %do.body130, !dbg !5863

do.body130:                                       ; preds = %sw.bb129
  %94 = load i32, i32* @debug, align 4, !dbg !5864
  %tobool131 = icmp ne i32 %94, 0, !dbg !5864
  br i1 %tobool131, label %if.then132, label %if.end135, !dbg !5867

if.then132:                                       ; preds = %do.body130
  %call133 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cx24123_set_fec, i64 0, i64 0)) #9, !dbg !5868
  %call134 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !5868
  br label %if.end135, !dbg !5868

if.end135:                                        ; preds = %if.then132, %do.body130
  br label %do.end136, !dbg !5867

do.end136:                                        ; preds = %if.end135
  %95 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5870
  %96 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5870
  %config137 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %96, i32 0, i32 1, !dbg !5870
  %97 = load %struct.cx24123_config*, %struct.cx24123_config** %config137, align 8, !dbg !5870
  %demod_address138 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %97, i32 0, i32 0, !dbg !5870
  %98 = load i8, i8* %demod_address138, align 8, !dbg !5870
  %call139 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %95, i8 zeroext %98, i32 15, i32 254) #8, !dbg !5870
  br label %sw.epilog, !dbg !5871

sw.default:                                       ; preds = %if.end20
  store i32 -95, i32* %retval, align 4, !dbg !5872
  br label %return, !dbg !5872

sw.epilog:                                        ; preds = %do.end136, %do.end120, %do.end104, %do.end88, %do.end72, %do.end56, %do.end40, %do.end
  store i32 0, i32* %retval, align 4, !dbg !5873
  br label %return, !dbg !5873

return:                                           ; preds = %sw.epilog, %sw.default
  %99 = load i32, i32* %retval, align 4, !dbg !5874
  ret i32 %99, !dbg !5874
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_set_symbolrate(%struct.cx24123_state* %state, i32 %srate) #0 !dbg !5875 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %srate.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  %sample_rate = alloca i32, align 4
  %ratio = alloca i32, align 4
  %sample_gain = alloca i32, align 4
  %pll_mult = alloca i8, align 1
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  store i32 %srate, i32* %srate.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %srate.addr, metadata !5880, metadata !DIExpression()), !dbg !5881
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !5882, metadata !DIExpression()), !dbg !5883
  call void @llvm.dbg.declare(metadata i32* %sample_rate, metadata !5884, metadata !DIExpression()), !dbg !5885
  call void @llvm.dbg.declare(metadata i32* %ratio, metadata !5886, metadata !DIExpression()), !dbg !5887
  call void @llvm.dbg.declare(metadata i32* %sample_gain, metadata !5888, metadata !DIExpression()), !dbg !5889
  call void @llvm.dbg.declare(metadata i8* %pll_mult, metadata !5890, metadata !DIExpression()), !dbg !5891
  %0 = load i32, i32* %srate.addr, align 4, !dbg !5892
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5894
  %frontend = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 2, !dbg !5895
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !5896
  %info = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 0, !dbg !5897
  %symbol_rate_max = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info, i32 0, i32 6, !dbg !5898
  %2 = load i32, i32* %symbol_rate_max, align 4, !dbg !5898
  %cmp = icmp ugt i32 %0, %2, !dbg !5899
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !5900

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %srate.addr, align 4, !dbg !5901
  %4 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5902
  %frontend1 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %4, i32 0, i32 2, !dbg !5903
  %ops2 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend1, i32 0, i32 1, !dbg !5904
  %info3 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops2, i32 0, i32 0, !dbg !5905
  %symbol_rate_min = getelementptr inbounds %struct.dvb_frontend_internal_info, %struct.dvb_frontend_internal_info* %info3, i32 0, i32 5, !dbg !5906
  %5 = load i32, i32* %symbol_rate_min, align 8, !dbg !5906
  %cmp4 = icmp ult i32 %3, %5, !dbg !5907
  br i1 %cmp4, label %if.then, label %if.end, !dbg !5908

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -95, i32* %retval, align 4, !dbg !5909
  br label %return, !dbg !5909

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* %srate.addr, align 4, !dbg !5910
  %cmp5 = icmp ult i32 %6, 10111000, !dbg !5912
  br i1 %cmp5, label %if.then6, label %if.else, !dbg !5913

if.then6:                                         ; preds = %if.end
  store i8 2, i8* %pll_mult, align 1, !dbg !5914
  br label %if.end31, !dbg !5915

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %srate.addr, align 4, !dbg !5916
  %cmp7 = icmp ult i32 %7, 15166500, !dbg !5918
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !5919

if.then8:                                         ; preds = %if.else
  store i8 3, i8* %pll_mult, align 1, !dbg !5920
  br label %if.end30, !dbg !5921

if.else9:                                         ; preds = %if.else
  %8 = load i32, i32* %srate.addr, align 4, !dbg !5922
  %cmp10 = icmp ult i32 %8, 20222000, !dbg !5924
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !5925

if.then11:                                        ; preds = %if.else9
  store i8 4, i8* %pll_mult, align 1, !dbg !5926
  br label %if.end29, !dbg !5927

if.else12:                                        ; preds = %if.else9
  %9 = load i32, i32* %srate.addr, align 4, !dbg !5928
  %cmp13 = icmp ult i32 %9, 25277500, !dbg !5930
  br i1 %cmp13, label %if.then14, label %if.else15, !dbg !5931

if.then14:                                        ; preds = %if.else12
  store i8 5, i8* %pll_mult, align 1, !dbg !5932
  br label %if.end28, !dbg !5933

if.else15:                                        ; preds = %if.else12
  %10 = load i32, i32* %srate.addr, align 4, !dbg !5934
  %cmp16 = icmp ult i32 %10, 30333000, !dbg !5936
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !5937

if.then17:                                        ; preds = %if.else15
  store i8 6, i8* %pll_mult, align 1, !dbg !5938
  br label %if.end27, !dbg !5939

if.else18:                                        ; preds = %if.else15
  %11 = load i32, i32* %srate.addr, align 4, !dbg !5940
  %cmp19 = icmp ult i32 %11, 35388500, !dbg !5942
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !5943

if.then20:                                        ; preds = %if.else18
  store i8 7, i8* %pll_mult, align 1, !dbg !5944
  br label %if.end26, !dbg !5945

if.else21:                                        ; preds = %if.else18
  %12 = load i32, i32* %srate.addr, align 4, !dbg !5946
  %cmp22 = icmp ult i32 %12, 40444000, !dbg !5948
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !5949

if.then23:                                        ; preds = %if.else21
  store i8 8, i8* %pll_mult, align 1, !dbg !5950
  br label %if.end25, !dbg !5951

if.else24:                                        ; preds = %if.else21
  store i8 9, i8* %pll_mult, align 1, !dbg !5952
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then23
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then20
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then14
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then11
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then8
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then6
  %13 = load i8, i8* %pll_mult, align 1, !dbg !5953
  %conv = zext i8 %13 to i32, !dbg !5953
  %mul = mul i32 %conv, 10111000, !dbg !5954
  store i32 %mul, i32* %sample_rate, align 4, !dbg !5955
  %14 = load i32, i32* %srate.addr, align 4, !dbg !5956
  %conv32 = zext i32 %14 to i64, !dbg !5957
  %shl = shl i64 %conv32, 23, !dbg !5958
  store i64 %shl, i64* %tmp, align 8, !dbg !5959
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5960, metadata !DIExpression()), !dbg !5962
  %15 = load i32, i32* %sample_rate, align 4, !dbg !5962
  store i32 %15, i32* %__base, align 4, !dbg !5962
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5963, metadata !DIExpression()), !dbg !5962
  %16 = load i64, i64* %tmp, align 8, !dbg !5962
  %17 = load i32, i32* %__base, align 4, !dbg !5962
  %conv33 = zext i32 %17 to i64, !dbg !5962
  %rem = urem i64 %16, %conv33, !dbg !5962
  %conv34 = trunc i64 %rem to i32, !dbg !5962
  store i32 %conv34, i32* %__rem, align 4, !dbg !5962
  %18 = load i64, i64* %tmp, align 8, !dbg !5962
  %19 = load i32, i32* %__base, align 4, !dbg !5962
  %conv35 = zext i32 %19 to i64, !dbg !5962
  %div = udiv i64 %18, %conv35, !dbg !5962
  store i64 %div, i64* %tmp, align 8, !dbg !5962
  %20 = load i32, i32* %__rem, align 4, !dbg !5962
  store i32 %20, i32* %tmp36, align 4, !dbg !5962
  %21 = load i32, i32* %tmp36, align 4, !dbg !5962
  %22 = load i64, i64* %tmp, align 8, !dbg !5964
  %conv37 = trunc i64 %22 to i32, !dbg !5965
  store i32 %conv37, i32* %ratio, align 4, !dbg !5966
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5967
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5967
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %24, i32 0, i32 1, !dbg !5967
  %25 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !5967
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %25, i32 0, i32 0, !dbg !5967
  %26 = load i8, i8* %demod_address, align 8, !dbg !5967
  %27 = load i8, i8* %pll_mult, align 1, !dbg !5967
  %conv38 = zext i8 %27 to i32, !dbg !5967
  %mul39 = mul i32 %conv38, 6, !dbg !5967
  %call = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %23, i8 zeroext %26, i32 1, i32 %mul39) #8, !dbg !5967
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5968
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5968
  %config40 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %29, i32 0, i32 1, !dbg !5968
  %30 = load %struct.cx24123_config*, %struct.cx24123_config** %config40, align 8, !dbg !5968
  %demod_address41 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %30, i32 0, i32 0, !dbg !5968
  %31 = load i8, i8* %demod_address41, align 8, !dbg !5968
  %32 = load i32, i32* %ratio, align 4, !dbg !5968
  %shr = lshr i32 %32, 16, !dbg !5968
  %and = and i32 %shr, 63, !dbg !5968
  %call42 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %28, i8 zeroext %31, i32 8, i32 %and) #8, !dbg !5968
  %33 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5969
  %34 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5969
  %config43 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %34, i32 0, i32 1, !dbg !5969
  %35 = load %struct.cx24123_config*, %struct.cx24123_config** %config43, align 8, !dbg !5969
  %demod_address44 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %35, i32 0, i32 0, !dbg !5969
  %36 = load i8, i8* %demod_address44, align 8, !dbg !5969
  %37 = load i32, i32* %ratio, align 4, !dbg !5969
  %shr45 = lshr i32 %37, 8, !dbg !5969
  %and46 = and i32 %shr45, 255, !dbg !5969
  %call47 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %33, i8 zeroext %36, i32 9, i32 %and46) #8, !dbg !5969
  %38 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5970
  %39 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5970
  %config48 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %39, i32 0, i32 1, !dbg !5970
  %40 = load %struct.cx24123_config*, %struct.cx24123_config** %config48, align 8, !dbg !5970
  %demod_address49 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %40, i32 0, i32 0, !dbg !5970
  %41 = load i8, i8* %demod_address49, align 8, !dbg !5970
  %42 = load i32, i32* %ratio, align 4, !dbg !5970
  %and50 = and i32 %42, 255, !dbg !5970
  %call51 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %38, i8 zeroext %41, i32 10, i32 %and50) #8, !dbg !5970
  %43 = load i32, i32* %sample_rate, align 4, !dbg !5971
  %44 = load i32, i32* %srate.addr, align 4, !dbg !5972
  %call52 = call i32 @cx24123_int_log2(i32 %43, i32 %44) #8, !dbg !5973
  store i32 %call52, i32* %sample_gain, align 4, !dbg !5974
  %45 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5975
  %46 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5975
  %config53 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %46, i32 0, i32 1, !dbg !5975
  %47 = load %struct.cx24123_config*, %struct.cx24123_config** %config53, align 8, !dbg !5975
  %demod_address54 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %47, i32 0, i32 0, !dbg !5975
  %48 = load i8, i8* %demod_address54, align 8, !dbg !5975
  %call55 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %45, i8 zeroext %48, i8 zeroext 12) #8, !dbg !5975
  %and56 = and i32 %call55, -225, !dbg !5976
  %conv57 = sext i32 %and56 to i64, !dbg !5975
  store i64 %conv57, i64* %tmp, align 8, !dbg !5977
  %49 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5978
  %50 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !5978
  %config58 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %50, i32 0, i32 1, !dbg !5978
  %51 = load %struct.cx24123_config*, %struct.cx24123_config** %config58, align 8, !dbg !5978
  %demod_address59 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %51, i32 0, i32 0, !dbg !5978
  %52 = load i8, i8* %demod_address59, align 8, !dbg !5978
  %53 = load i64, i64* %tmp, align 8, !dbg !5978
  %54 = load i32, i32* %sample_gain, align 4, !dbg !5978
  %shl60 = shl i32 %54, 5, !dbg !5978
  %conv61 = zext i32 %shl60 to i64, !dbg !5978
  %or = or i64 %53, %conv61, !dbg !5978
  %conv62 = trunc i64 %or to i32, !dbg !5978
  %call63 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %49, i8 zeroext %52, i32 12, i32 %conv62) #8, !dbg !5978
  br label %do.body, !dbg !5979

do.body:                                          ; preds = %if.end31
  %55 = load i32, i32* @debug, align 4, !dbg !5980
  %tobool = icmp ne i32 %55, 0, !dbg !5980
  br i1 %tobool, label %if.then64, label %if.end67, !dbg !5983

if.then64:                                        ; preds = %do.body
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.cx24123_set_symbolrate, i64 0, i64 0)) #9, !dbg !5984
  %56 = load i32, i32* %srate.addr, align 4, !dbg !5984
  %57 = load i32, i32* %ratio, align 4, !dbg !5984
  %58 = load i32, i32* %sample_rate, align 4, !dbg !5984
  %59 = load i32, i32* %sample_gain, align 4, !dbg !5984
  %call66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0), i32 %56, i32 %57, i32 %58, i32 %59) #9, !dbg !5984
  br label %if.end67, !dbg !5984

if.end67:                                         ; preds = %if.then64, %do.body
  br label %do.end, !dbg !5983

do.end:                                           ; preds = %if.end67
  store i32 0, i32* %retval, align 4, !dbg !5986
  br label %return, !dbg !5986

return:                                           ; preds = %do.end, %if.then
  %60 = load i32, i32* %retval, align 4, !dbg !5987
  ret i32 %60, !dbg !5987
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_pll_tune(%struct.dvb_frontend* %fe) #0 !dbg !5988 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %val = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5989, metadata !DIExpression()), !dbg !5990
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5993
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5994
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !5992
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !5995, metadata !DIExpression()), !dbg !5996
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5997
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !5998
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !5998
  %3 = bitcast i8* %2 to %struct.cx24123_state*, !dbg !5997
  store %struct.cx24123_state* %3, %struct.cx24123_state** %state, align 8, !dbg !5996
  call void @llvm.dbg.declare(metadata i8* %val, metadata !5999, metadata !DIExpression()), !dbg !6000
  br label %do.body, !dbg !6001

do.body:                                          ; preds = %entry
  %4 = load i32, i32* @debug, align 4, !dbg !6002
  %tobool = icmp ne i32 %4, 0, !dbg !6002
  br i1 %tobool, label %if.then, label %if.end, !dbg !6005

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_pll_tune, i64 0, i64 0)) #9, !dbg !6006
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6006
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 0, !dbg !6006
  %6 = load i32, i32* %frequency, align 4, !dbg !6006
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0), i32 %6) #9, !dbg !6006
  br label %if.end, !dbg !6006

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6005

do.end:                                           ; preds = %if.end
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6008
  %call2 = call i32 @cx24123_pll_calculate(%struct.dvb_frontend* %7) #8, !dbg !6010
  %cmp = icmp ne i32 %call2, 0, !dbg !6011
  br i1 %cmp, label %if.then3, label %if.end7, !dbg !6012

if.then3:                                         ; preds = %do.end
  br label %do.body4, !dbg !6013

do.body4:                                         ; preds = %if.then3
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_pll_tune, i64 0, i64 0)) #9, !dbg !6015
  br label %do.end6, !dbg !6015

do.end6:                                          ; preds = %do.body4
  store i32 -22, i32* %retval, align 4, !dbg !6017
  br label %return, !dbg !6017

if.end7:                                          ; preds = %do.end
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6018
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6019
  %VCAarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %9, i32 0, i32 3, !dbg !6020
  %10 = load i32, i32* %VCAarg, align 8, !dbg !6020
  %call8 = call i32 @cx24123_pll_writereg(%struct.dvb_frontend* %8, i32 %10) #8, !dbg !6021
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6022
  %12 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6023
  %VGAarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %12, i32 0, i32 4, !dbg !6024
  %13 = load i32, i32* %VGAarg, align 4, !dbg !6024
  %call9 = call i32 @cx24123_pll_writereg(%struct.dvb_frontend* %11, i32 %13) #8, !dbg !6025
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6026
  %15 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6027
  %bandselectarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %15, i32 0, i32 5, !dbg !6028
  %16 = load i32, i32* %bandselectarg, align 8, !dbg !6028
  %call10 = call i32 @cx24123_pll_writereg(%struct.dvb_frontend* %14, i32 %16) #8, !dbg !6029
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6030
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6031
  %pllarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %18, i32 0, i32 6, !dbg !6032
  %19 = load i32, i32* %pllarg, align 4, !dbg !6032
  %call11 = call i32 @cx24123_pll_writereg(%struct.dvb_frontend* %17, i32 %19) #8, !dbg !6033
  %20 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6034
  %21 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6034
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %21, i32 0, i32 1, !dbg !6034
  %22 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !6034
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %22, i32 0, i32 0, !dbg !6034
  %23 = load i8, i8* %demod_address, align 8, !dbg !6034
  %call12 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %20, i8 zeroext %23, i8 zeroext 40) #8, !dbg !6034
  %and = and i32 %call12, -4, !dbg !6035
  %conv = trunc i32 %and to i8, !dbg !6034
  store i8 %conv, i8* %val, align 1, !dbg !6036
  %24 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6037
  %25 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6037
  %config13 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %25, i32 0, i32 1, !dbg !6037
  %26 = load %struct.cx24123_config*, %struct.cx24123_config** %config13, align 8, !dbg !6037
  %demod_address14 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %26, i32 0, i32 0, !dbg !6037
  %27 = load i8, i8* %demod_address14, align 8, !dbg !6037
  %28 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6037
  %FILTune = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %28, i32 0, i32 7, !dbg !6037
  %29 = load i32, i32* %FILTune, align 8, !dbg !6037
  %shr = lshr i32 %29, 2, !dbg !6037
  %call15 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %24, i8 zeroext %27, i32 39, i32 %shr) #8, !dbg !6037
  %30 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6038
  %31 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6038
  %config16 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %31, i32 0, i32 1, !dbg !6038
  %32 = load %struct.cx24123_config*, %struct.cx24123_config** %config16, align 8, !dbg !6038
  %demod_address17 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %32, i32 0, i32 0, !dbg !6038
  %33 = load i8, i8* %demod_address17, align 8, !dbg !6038
  %34 = load i8, i8* %val, align 1, !dbg !6038
  %conv18 = zext i8 %34 to i32, !dbg !6038
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6038
  %FILTune19 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %35, i32 0, i32 7, !dbg !6038
  %36 = load i32, i32* %FILTune19, align 8, !dbg !6038
  %and20 = and i32 %36, 3, !dbg !6038
  %or = or i32 %conv18, %and20, !dbg !6038
  %call21 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %30, i8 zeroext %33, i32 40, i32 %or) #8, !dbg !6038
  br label %do.body22, !dbg !6039

do.body22:                                        ; preds = %if.end7
  %37 = load i32, i32* @debug, align 4, !dbg !6040
  %tobool23 = icmp ne i32 %37, 0, !dbg !6040
  br i1 %tobool23, label %if.then24, label %if.end30, !dbg !6043

if.then24:                                        ; preds = %do.body22
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cx24123_pll_tune, i64 0, i64 0)) #9, !dbg !6044
  %38 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6044
  %VCAarg26 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %38, i32 0, i32 3, !dbg !6044
  %39 = load i32, i32* %VCAarg26, align 8, !dbg !6044
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6044
  %bandselectarg27 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %40, i32 0, i32 5, !dbg !6044
  %41 = load i32, i32* %bandselectarg27, align 8, !dbg !6044
  %42 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6044
  %pllarg28 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %42, i32 0, i32 6, !dbg !6044
  %43 = load i32, i32* %pllarg28, align 4, !dbg !6044
  %call29 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0), i32 %39, i32 %41, i32 %43) #9, !dbg !6044
  br label %if.end30, !dbg !6044

if.end30:                                         ; preds = %if.then24, %do.body22
  br label %do.end31, !dbg !6043

do.end31:                                         ; preds = %if.end30
  store i32 0, i32* %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

return:                                           ; preds = %do.end31, %do.end6
  %44 = load i32, i32* %retval, align 4, !dbg !6047
  ret i32 %44, !dbg !6047
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_int_log2(i32 %a, i32 %b) #0 !dbg !6048 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %exp = alloca i32, align 4
  %nearest = alloca i32, align 4
  %div = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %a.addr, metadata !6051, metadata !DIExpression()), !dbg !6052
  store i32 %b, i32* %b.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %b.addr, metadata !6053, metadata !DIExpression()), !dbg !6054
  call void @llvm.dbg.declare(metadata i32* %exp, metadata !6055, metadata !DIExpression()), !dbg !6056
  call void @llvm.dbg.declare(metadata i32* %nearest, metadata !6057, metadata !DIExpression()), !dbg !6058
  store i32 0, i32* %nearest, align 4, !dbg !6058
  call void @llvm.dbg.declare(metadata i32* %div, metadata !6059, metadata !DIExpression()), !dbg !6060
  %0 = load i32, i32* %a.addr, align 4, !dbg !6061
  %1 = load i32, i32* %b.addr, align 4, !dbg !6062
  %div1 = udiv i32 %0, %1, !dbg !6063
  store i32 %div1, i32* %div, align 4, !dbg !6060
  %2 = load i32, i32* %a.addr, align 4, !dbg !6064
  %3 = load i32, i32* %b.addr, align 4, !dbg !6066
  %rem = urem i32 %2, %3, !dbg !6067
  %4 = load i32, i32* %b.addr, align 4, !dbg !6068
  %div2 = udiv i32 %4, 2, !dbg !6069
  %cmp = icmp uge i32 %rem, %div2, !dbg !6070
  br i1 %cmp, label %if.then, label %if.end, !dbg !6071

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %div, align 4, !dbg !6072
  %inc = add i32 %5, 1, !dbg !6072
  store i32 %inc, i32* %div, align 4, !dbg !6072
  br label %if.end, !dbg !6072

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %div, align 4, !dbg !6073
  %conv = zext i32 %6 to i64, !dbg !6073
  %cmp3 = icmp ult i64 %conv, 2147483648, !dbg !6075
  br i1 %cmp3, label %if.then5, label %if.end9, !dbg !6076

if.then5:                                         ; preds = %if.end
  store i32 1, i32* %exp, align 4, !dbg !6077
  br label %for.cond, !dbg !6080

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %div, align 4, !dbg !6081
  %8 = load i32, i32* %exp, align 4, !dbg !6083
  %cmp6 = icmp ugt i32 %7, %8, !dbg !6084
  br i1 %cmp6, label %for.body, label %for.end, !dbg !6085

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %exp, align 4, !dbg !6086
  %10 = load i32, i32* %exp, align 4, !dbg !6087
  %add = add i32 %10, %9, !dbg !6087
  store i32 %add, i32* %exp, align 4, !dbg !6087
  br label %for.inc, !dbg !6088

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %nearest, align 4, !dbg !6089
  %inc8 = add i32 %11, 1, !dbg !6089
  store i32 %inc8, i32* %nearest, align 4, !dbg !6089
  br label %for.cond, !dbg !6090, !llvm.loop !6091

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !6093

if.end9:                                          ; preds = %for.end, %if.end
  %12 = load i32, i32* %nearest, align 4, !dbg !6094
  ret i32 %12, !dbg !6095
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_pll_calculate(%struct.dvb_frontend* %fe) #0 !dbg !6096 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %p = alloca %struct.dtv_frontend_properties*, align 8
  %state = alloca %struct.cx24123_state*, align 8
  %ndiv = alloca i32, align 4
  %adiv = alloca i32, align 4
  %vco_div = alloca i32, align 4
  %i = alloca i32, align 4
  %pump = alloca i32, align 4
  %band = alloca i32, align 4
  %num_bands = alloca i32, align 4
  %bsv = alloca %struct.cx24123_bandselect_val*, align 8
  %agcv = alloca %struct.cx24123_AGC_val*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %p, metadata !6099, metadata !DIExpression()), !dbg !6100
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6101
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !6102
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %p, align 8, !dbg !6100
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !6103, metadata !DIExpression()), !dbg !6104
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6105
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 3, !dbg !6106
  %2 = load i8*, i8** %demodulator_priv, align 8, !dbg !6106
  %3 = bitcast i8* %2 to %struct.cx24123_state*, !dbg !6105
  store %struct.cx24123_state* %3, %struct.cx24123_state** %state, align 8, !dbg !6104
  call void @llvm.dbg.declare(metadata i32* %ndiv, metadata !6107, metadata !DIExpression()), !dbg !6108
  store i32 0, i32* %ndiv, align 4, !dbg !6108
  call void @llvm.dbg.declare(metadata i32* %adiv, metadata !6109, metadata !DIExpression()), !dbg !6110
  store i32 0, i32* %adiv, align 4, !dbg !6110
  call void @llvm.dbg.declare(metadata i32* %vco_div, metadata !6111, metadata !DIExpression()), !dbg !6112
  store i32 0, i32* %vco_div, align 4, !dbg !6112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6113, metadata !DIExpression()), !dbg !6114
  store i32 0, i32* %i, align 4, !dbg !6114
  call void @llvm.dbg.declare(metadata i32* %pump, metadata !6115, metadata !DIExpression()), !dbg !6116
  store i32 2, i32* %pump, align 4, !dbg !6116
  call void @llvm.dbg.declare(metadata i32* %band, metadata !6117, metadata !DIExpression()), !dbg !6118
  store i32 0, i32* %band, align 4, !dbg !6118
  call void @llvm.dbg.declare(metadata i32* %num_bands, metadata !6119, metadata !DIExpression()), !dbg !6120
  store i32 9, i32* %num_bands, align 4, !dbg !6120
  call void @llvm.dbg.declare(metadata %struct.cx24123_bandselect_val** %bsv, metadata !6121, metadata !DIExpression()), !dbg !6123
  store %struct.cx24123_bandselect_val* null, %struct.cx24123_bandselect_val** %bsv, align 8, !dbg !6123
  call void @llvm.dbg.declare(metadata %struct.cx24123_AGC_val** %agcv, metadata !6124, metadata !DIExpression()), !dbg !6126
  store %struct.cx24123_AGC_val* null, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6126
  %4 = load i32, i32* getelementptr inbounds ([3 x %struct.cx24123_AGC_val], [3 x %struct.cx24123_AGC_val]* @cx24123_AGC_vals, i64 0, i64 0, i32 2), align 8, !dbg !6127
  %5 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6128
  %VCAarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %5, i32 0, i32 3, !dbg !6129
  store i32 %4, i32* %VCAarg, align 8, !dbg !6130
  %6 = load i32, i32* getelementptr inbounds ([3 x %struct.cx24123_AGC_val], [3 x %struct.cx24123_AGC_val]* @cx24123_AGC_vals, i64 0, i64 0, i32 3), align 4, !dbg !6131
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6132
  %VGAarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %7, i32 0, i32 4, !dbg !6133
  store i32 %6, i32* %VGAarg, align 4, !dbg !6134
  %8 = load i32, i32* getelementptr inbounds ([9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 0, i32 3), align 4, !dbg !6135
  %9 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6136
  %bandselectarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %9, i32 0, i32 5, !dbg !6137
  store i32 %8, i32* %bandselectarg, align 8, !dbg !6138
  %10 = load i32, i32* getelementptr inbounds ([9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 0, i32 2), align 8, !dbg !6139
  store i32 %10, i32* %vco_div, align 4, !dbg !6140
  store i32 0, i32* %i, align 4, !dbg !6141
  br label %for.cond, !dbg !6143

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load i32, i32* %i, align 4, !dbg !6144
  %conv = sext i32 %11 to i64, !dbg !6144
  %cmp = icmp ult i64 %conv, 3, !dbg !6146
  br i1 %cmp, label %for.body, label %for.end, !dbg !6147

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !6148
  %idxprom = sext i32 %12 to i64, !dbg !6150
  %arrayidx = getelementptr [3 x %struct.cx24123_AGC_val], [3 x %struct.cx24123_AGC_val]* @cx24123_AGC_vals, i64 0, i64 %idxprom, !dbg !6150
  store %struct.cx24123_AGC_val* %arrayidx, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6151
  %13 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6152
  %symbolrate_low = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %13, i32 0, i32 0, !dbg !6154
  %14 = load i32, i32* %symbolrate_low, align 4, !dbg !6154
  %15 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6155
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %15, i32 0, i32 10, !dbg !6156
  %16 = load i32, i32* %symbol_rate, align 4, !dbg !6156
  %cmp2 = icmp ule i32 %14, %16, !dbg !6157
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !6158

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6159
  %symbolrate_high = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %17, i32 0, i32 1, !dbg !6160
  %18 = load i32, i32* %symbolrate_high, align 4, !dbg !6160
  %19 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6161
  %symbol_rate4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %19, i32 0, i32 10, !dbg !6162
  %20 = load i32, i32* %symbol_rate4, align 4, !dbg !6162
  %cmp5 = icmp uge i32 %18, %20, !dbg !6163
  br i1 %cmp5, label %if.then, label %if.end, !dbg !6164

if.then:                                          ; preds = %land.lhs.true
  %21 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6165
  %VCAprogdata = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %21, i32 0, i32 2, !dbg !6167
  %22 = load i32, i32* %VCAprogdata, align 4, !dbg !6167
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6168
  %VCAarg7 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %23, i32 0, i32 3, !dbg !6169
  store i32 %22, i32* %VCAarg7, align 8, !dbg !6170
  %24 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6171
  %VGAprogdata = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %24, i32 0, i32 3, !dbg !6172
  %25 = load i32, i32* %VGAprogdata, align 4, !dbg !6172
  %26 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6173
  %VGAarg8 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %26, i32 0, i32 4, !dbg !6174
  store i32 %25, i32* %VGAarg8, align 4, !dbg !6175
  %27 = load %struct.cx24123_AGC_val*, %struct.cx24123_AGC_val** %agcv, align 8, !dbg !6176
  %FILTune = getelementptr inbounds %struct.cx24123_AGC_val, %struct.cx24123_AGC_val* %27, i32 0, i32 4, !dbg !6177
  %28 = load i32, i32* %FILTune, align 4, !dbg !6177
  %29 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6178
  %FILTune9 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %29, i32 0, i32 7, !dbg !6179
  store i32 %28, i32* %FILTune9, align 8, !dbg !6180
  br label %if.end, !dbg !6181

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc, !dbg !6182

for.inc:                                          ; preds = %if.end
  %30 = load i32, i32* %i, align 4, !dbg !6183
  %inc = add i32 %30, 1, !dbg !6183
  store i32 %inc, i32* %i, align 4, !dbg !6183
  br label %for.cond, !dbg !6184, !llvm.loop !6185

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* @force_band, align 4, !dbg !6187
  %cmp10 = icmp slt i32 %31, 1, !dbg !6189
  br i1 %cmp10, label %if.then14, label %lor.lhs.false, !dbg !6190

lor.lhs.false:                                    ; preds = %for.end
  %32 = load i32, i32* @force_band, align 4, !dbg !6191
  %33 = load i32, i32* %num_bands, align 4, !dbg !6192
  %cmp12 = icmp sgt i32 %32, %33, !dbg !6193
  br i1 %cmp12, label %if.then14, label %if.else, !dbg !6194

if.then14:                                        ; preds = %lor.lhs.false, %for.end
  store i32 0, i32* %i, align 4, !dbg !6195
  br label %for.cond15, !dbg !6198

for.cond15:                                       ; preds = %for.inc29, %if.then14
  %34 = load i32, i32* %i, align 4, !dbg !6199
  %35 = load i32, i32* %num_bands, align 4, !dbg !6201
  %cmp16 = icmp slt i32 %34, %35, !dbg !6202
  br i1 %cmp16, label %for.body18, label %for.end31, !dbg !6203

for.body18:                                       ; preds = %for.cond15
  %36 = load i32, i32* %i, align 4, !dbg !6204
  %idxprom19 = sext i32 %36 to i64, !dbg !6206
  %arrayidx20 = getelementptr [9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 %idxprom19, !dbg !6206
  store %struct.cx24123_bandselect_val* %arrayidx20, %struct.cx24123_bandselect_val** %bsv, align 8, !dbg !6207
  %37 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %bsv, align 8, !dbg !6208
  %freq_low = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %37, i32 0, i32 0, !dbg !6210
  %38 = load i32, i32* %freq_low, align 4, !dbg !6210
  %39 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6211
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %39, i32 0, i32 0, !dbg !6212
  %40 = load i32, i32* %frequency, align 4, !dbg !6212
  %cmp21 = icmp ule i32 %38, %40, !dbg !6213
  br i1 %cmp21, label %land.lhs.true23, label %if.end28, !dbg !6214

land.lhs.true23:                                  ; preds = %for.body18
  %41 = load %struct.cx24123_bandselect_val*, %struct.cx24123_bandselect_val** %bsv, align 8, !dbg !6215
  %freq_high = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %41, i32 0, i32 1, !dbg !6216
  %42 = load i32, i32* %freq_high, align 4, !dbg !6216
  %43 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6217
  %frequency24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %43, i32 0, i32 0, !dbg !6218
  %44 = load i32, i32* %frequency24, align 4, !dbg !6218
  %cmp25 = icmp uge i32 %42, %44, !dbg !6219
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !6220

if.then27:                                        ; preds = %land.lhs.true23
  %45 = load i32, i32* %i, align 4, !dbg !6221
  store i32 %45, i32* %band, align 4, !dbg !6222
  br label %if.end28, !dbg !6223

if.end28:                                         ; preds = %if.then27, %land.lhs.true23, %for.body18
  br label %for.inc29, !dbg !6224

for.inc29:                                        ; preds = %if.end28
  %46 = load i32, i32* %i, align 4, !dbg !6225
  %inc30 = add i32 %46, 1, !dbg !6225
  store i32 %inc30, i32* %i, align 4, !dbg !6225
  br label %for.cond15, !dbg !6226, !llvm.loop !6227

for.end31:                                        ; preds = %for.cond15
  br label %if.end32, !dbg !6229

if.else:                                          ; preds = %lor.lhs.false
  %47 = load i32, i32* @force_band, align 4, !dbg !6230
  %sub = sub i32 %47, 1, !dbg !6231
  store i32 %sub, i32* %band, align 4, !dbg !6232
  br label %if.end32

if.end32:                                         ; preds = %if.else, %for.end31
  %48 = load i32, i32* %band, align 4, !dbg !6233
  %idxprom33 = sext i32 %48 to i64, !dbg !6234
  %arrayidx34 = getelementptr [9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 %idxprom33, !dbg !6234
  %progdata = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %arrayidx34, i32 0, i32 3, !dbg !6235
  %49 = load i32, i32* %progdata, align 4, !dbg !6235
  %50 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6236
  %bandselectarg35 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %50, i32 0, i32 5, !dbg !6237
  store i32 %49, i32* %bandselectarg35, align 8, !dbg !6238
  %51 = load i32, i32* %band, align 4, !dbg !6239
  %idxprom36 = sext i32 %51 to i64, !dbg !6240
  %arrayidx37 = getelementptr [9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 %idxprom36, !dbg !6240
  %VCOdivider = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %arrayidx37, i32 0, i32 2, !dbg !6241
  %52 = load i32, i32* %VCOdivider, align 8, !dbg !6241
  store i32 %52, i32* %vco_div, align 4, !dbg !6242
  %53 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6243
  %frequency38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %53, i32 0, i32 0, !dbg !6245
  %54 = load i32, i32* %frequency38, align 4, !dbg !6245
  %55 = load i32, i32* %band, align 4, !dbg !6246
  %idxprom39 = sext i32 %55 to i64, !dbg !6247
  %arrayidx40 = getelementptr [9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 %idxprom39, !dbg !6247
  %freq_low41 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %arrayidx40, i32 0, i32 0, !dbg !6248
  %56 = load i32, i32* %freq_low41, align 16, !dbg !6248
  %57 = load i32, i32* %band, align 4, !dbg !6249
  %idxprom42 = sext i32 %57 to i64, !dbg !6250
  %arrayidx43 = getelementptr [9 x %struct.cx24123_bandselect_val], [9 x %struct.cx24123_bandselect_val]* @cx24123_bandselect_vals, i64 0, i64 %idxprom42, !dbg !6250
  %freq_high44 = getelementptr inbounds %struct.cx24123_bandselect_val, %struct.cx24123_bandselect_val* %arrayidx43, i32 0, i32 1, !dbg !6251
  %58 = load i32, i32* %freq_high44, align 4, !dbg !6251
  %add = add i32 %56, %58, !dbg !6252
  %div = udiv i32 %add, 2, !dbg !6253
  %cmp45 = icmp ult i32 %54, %div, !dbg !6254
  br i1 %cmp45, label %if.then47, label %if.else48, !dbg !6255

if.then47:                                        ; preds = %if.end32
  store i32 1, i32* %pump, align 4, !dbg !6256
  br label %if.end49, !dbg !6257

if.else48:                                        ; preds = %if.end32
  store i32 2, i32* %pump, align 4, !dbg !6258
  br label %if.end49

if.end49:                                         ; preds = %if.else48, %if.then47
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6259
  %frequency50 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 0, !dbg !6260
  %60 = load i32, i32* %frequency50, align 4, !dbg !6260
  %61 = load i32, i32* %vco_div, align 4, !dbg !6261
  %mul = mul i32 %60, %61, !dbg !6262
  %mul51 = mul i32 %mul, 10, !dbg !6263
  %div52 = udiv i32 %mul51, 20222, !dbg !6264
  %div53 = udiv i32 %div52, 32, !dbg !6265
  %and = and i32 %div53, 511, !dbg !6266
  store i32 %and, i32* %ndiv, align 4, !dbg !6267
  %62 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %p, align 8, !dbg !6268
  %frequency54 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %62, i32 0, i32 0, !dbg !6269
  %63 = load i32, i32* %frequency54, align 4, !dbg !6269
  %64 = load i32, i32* %vco_div, align 4, !dbg !6270
  %mul55 = mul i32 %63, %64, !dbg !6271
  %mul56 = mul i32 %mul55, 10, !dbg !6272
  %div57 = udiv i32 %mul56, 20222, !dbg !6273
  %rem = urem i32 %div57, 32, !dbg !6274
  %and58 = and i32 %rem, 31, !dbg !6275
  store i32 %and58, i32* %adiv, align 4, !dbg !6276
  %65 = load i32, i32* %adiv, align 4, !dbg !6277
  %cmp59 = icmp eq i32 %65, 0, !dbg !6279
  br i1 %cmp59, label %land.lhs.true61, label %if.end65, !dbg !6280

land.lhs.true61:                                  ; preds = %if.end49
  %66 = load i32, i32* %ndiv, align 4, !dbg !6281
  %cmp62 = icmp ugt i32 %66, 0, !dbg !6282
  br i1 %cmp62, label %if.then64, label %if.end65, !dbg !6283

if.then64:                                        ; preds = %land.lhs.true61
  %67 = load i32, i32* %ndiv, align 4, !dbg !6284
  %dec = add i32 %67, -1, !dbg !6284
  store i32 %dec, i32* %ndiv, align 4, !dbg !6284
  br label %if.end65, !dbg !6285

if.end65:                                         ; preds = %if.then64, %land.lhs.true61, %if.end49
  %68 = load i32, i32* %pump, align 4, !dbg !6286
  %shl = shl i32 %68, 14, !dbg !6287
  %or = or i32 2031616, %shl, !dbg !6288
  %69 = load i32, i32* %ndiv, align 4, !dbg !6289
  %shl66 = shl i32 %69, 5, !dbg !6290
  %or67 = or i32 %or, %shl66, !dbg !6291
  %70 = load i32, i32* %adiv, align 4, !dbg !6292
  %or68 = or i32 %or67, %70, !dbg !6293
  %71 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6294
  %pllarg = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %71, i32 0, i32 6, !dbg !6295
  store i32 %or68, i32* %pllarg, align 4, !dbg !6296
  ret i32 0, !dbg !6297
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_pll_writereg(%struct.dvb_frontend* %fe, i32 %data) #0 !dbg !6298 {
entry:
  %retval.i83 = alloca i64, align 8
  %m.addr.i84 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i84, metadata !6299, metadata !DIExpression()), !dbg !6304
  %retval.i73 = alloca i64, align 8
  %m.addr.i74 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i74, metadata !6299, metadata !DIExpression()), !dbg !6306
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6299, metadata !DIExpression()), !dbg !6308
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %data.addr = alloca i32, align 4
  %state = alloca %struct.cx24123_state*, align 8
  %timeout = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !6312, metadata !DIExpression()), !dbg !6313
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state, metadata !6314, metadata !DIExpression()), !dbg !6315
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6316
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !6317
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !6317
  %2 = bitcast i8* %1 to %struct.cx24123_state*, !dbg !6316
  store %struct.cx24123_state* %2, %struct.cx24123_state** %state, align 8, !dbg !6315
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6318, metadata !DIExpression()), !dbg !6319
  br label %do.body, !dbg !6320

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !6321
  %tobool = icmp ne i32 %3, 0, !dbg !6321
  br i1 %tobool, label %if.then, label %if.end, !dbg !6324

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_pll_writereg, i64 0, i64 0)) #9, !dbg !6325
  %4 = load i32, i32* %data.addr, align 4, !dbg !6325
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.28, i64 0, i64 0), i32 %4) #9, !dbg !6325
  br label %if.end, !dbg !6325

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !6324

do.end:                                           ; preds = %if.end
  %5 = load i32, i32* %data.addr, align 4, !dbg !6327
  %shl = shl i32 %5, 3, !dbg !6328
  store i32 %shl, i32* %data.addr, align 4, !dbg !6329
  %6 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6330
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6330
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %7, i32 0, i32 1, !dbg !6330
  %8 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !6330
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %8, i32 0, i32 0, !dbg !6330
  %9 = load i8, i8* %demod_address, align 8, !dbg !6330
  %call2 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %6, i8 zeroext %9, i32 33, i32 21) #8, !dbg !6330
  %10 = load volatile i64, i64* @jiffies, align 8, !dbg !6331
  store i32 40, i32* %m.addr.i, align 4
  %11 = load i32, i32* %m.addr.i, align 4, !dbg !6332
  %12 = call i1 @llvm.is.constant.i32(i32 %11) #10, !dbg !6334
  br i1 %12, label %if.then.i, label %if.else.i, !dbg !6335

if.then.i:                                        ; preds = %do.end
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !6336
  %cmp.i = icmp slt i32 %13, 0, !dbg !6339
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6340

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6341
  br label %msecs_to_jiffies.exit, !dbg !6341

if.end.i:                                         ; preds = %if.then.i
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !6342
  %call.i = call i64 @_msecs_to_jiffies(i32 %14) #12, !dbg !6343
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6344
  br label %msecs_to_jiffies.exit, !dbg !6344

if.else.i:                                        ; preds = %do.end
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !6345
  %call2.i = call i64 @__msecs_to_jiffies(i32 %15) #12, !dbg !6347
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6348
  br label %msecs_to_jiffies.exit, !dbg !6348

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %16 = load i64, i64* %retval.i, align 8, !dbg !6349
  %add = add i64 %10, %16, !dbg !6350
  store i64 %add, i64* %timeout, align 8, !dbg !6351
  %17 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6352
  %18 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6352
  %config4 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %18, i32 0, i32 1, !dbg !6352
  %19 = load %struct.cx24123_config*, %struct.cx24123_config** %config4, align 8, !dbg !6352
  %demod_address5 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %19, i32 0, i32 0, !dbg !6352
  %20 = load i8, i8* %demod_address5, align 8, !dbg !6352
  %21 = load i32, i32* %data.addr, align 4, !dbg !6352
  %shr = lshr i32 %21, 16, !dbg !6352
  %and = and i32 %shr, 255, !dbg !6352
  %call6 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %17, i8 zeroext %20, i32 34, i32 %and) #8, !dbg !6352
  br label %while.cond, !dbg !6353

while.cond:                                       ; preds = %if.end16, %msecs_to_jiffies.exit
  %22 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6354
  %23 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6354
  %config7 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %23, i32 0, i32 1, !dbg !6354
  %24 = load %struct.cx24123_config*, %struct.cx24123_config** %config7, align 8, !dbg !6354
  %demod_address8 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %24, i32 0, i32 0, !dbg !6354
  %25 = load i8, i8* %demod_address8, align 8, !dbg !6354
  %call9 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %22, i8 zeroext %25, i8 zeroext 32) #8, !dbg !6354
  %and10 = and i32 %call9, 64, !dbg !6355
  %cmp = icmp eq i32 %and10, 0, !dbg !6356
  br i1 %cmp, label %while.body, label %while.end, !dbg !6353

while.body:                                       ; preds = %while.cond
  %26 = load i64, i64* %timeout, align 8, !dbg !6357
  %27 = load volatile i64, i64* @jiffies, align 8, !dbg !6357
  %sub = sub i64 %26, %27, !dbg !6357
  %cmp11 = icmp slt i64 %sub, 0, !dbg !6357
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !6360

if.then12:                                        ; preds = %while.body
  br label %do.body13, !dbg !6361

do.body13:                                        ; preds = %if.then12
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_pll_writereg, i64 0, i64 0)) #9, !dbg !6363
  br label %do.end15, !dbg !6363

do.end15:                                         ; preds = %do.body13
  store i32 -121, i32* %retval, align 4, !dbg !6365
  br label %return, !dbg !6365

if.end16:                                         ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6366
  br label %while.cond, !dbg !6353, !llvm.loop !6367

while.end:                                        ; preds = %while.cond
  %28 = load volatile i64, i64* @jiffies, align 8, !dbg !6369
  store i32 40, i32* %m.addr.i74, align 4
  %29 = load i32, i32* %m.addr.i74, align 4, !dbg !6370
  %30 = call i1 @llvm.is.constant.i32(i32 %29) #10, !dbg !6371
  br i1 %30, label %if.then.i76, label %if.else.i81, !dbg !6372

if.then.i76:                                      ; preds = %while.end
  %31 = load i32, i32* %m.addr.i74, align 4, !dbg !6373
  %cmp.i75 = icmp slt i32 %31, 0, !dbg !6374
  br i1 %cmp.i75, label %if.then1.i77, label %if.end.i79, !dbg !6375

if.then1.i77:                                     ; preds = %if.then.i76
  store i64 4611686018427387902, i64* %retval.i73, align 8, !dbg !6376
  br label %msecs_to_jiffies.exit82, !dbg !6376

if.end.i79:                                       ; preds = %if.then.i76
  %32 = load i32, i32* %m.addr.i74, align 4, !dbg !6377
  %call.i78 = call i64 @_msecs_to_jiffies(i32 %32) #12, !dbg !6378
  store i64 %call.i78, i64* %retval.i73, align 8, !dbg !6379
  br label %msecs_to_jiffies.exit82, !dbg !6379

if.else.i81:                                      ; preds = %while.end
  %33 = load i32, i32* %m.addr.i74, align 4, !dbg !6380
  %call2.i80 = call i64 @__msecs_to_jiffies(i32 %33) #12, !dbg !6381
  store i64 %call2.i80, i64* %retval.i73, align 8, !dbg !6382
  br label %msecs_to_jiffies.exit82, !dbg !6382

msecs_to_jiffies.exit82:                          ; preds = %if.then1.i77, %if.end.i79, %if.else.i81
  %34 = load i64, i64* %retval.i73, align 8, !dbg !6383
  %add18 = add i64 %28, %34, !dbg !6384
  store i64 %add18, i64* %timeout, align 8, !dbg !6385
  %35 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6386
  %36 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6386
  %config19 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %36, i32 0, i32 1, !dbg !6386
  %37 = load %struct.cx24123_config*, %struct.cx24123_config** %config19, align 8, !dbg !6386
  %demod_address20 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %37, i32 0, i32 0, !dbg !6386
  %38 = load i8, i8* %demod_address20, align 8, !dbg !6386
  %39 = load i32, i32* %data.addr, align 4, !dbg !6386
  %shr21 = lshr i32 %39, 8, !dbg !6386
  %and22 = and i32 %shr21, 255, !dbg !6386
  %call23 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %35, i8 zeroext %38, i32 34, i32 %and22) #8, !dbg !6386
  br label %while.cond24, !dbg !6387

while.cond24:                                     ; preds = %if.end37, %msecs_to_jiffies.exit82
  %40 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6388
  %41 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6388
  %config25 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %41, i32 0, i32 1, !dbg !6388
  %42 = load %struct.cx24123_config*, %struct.cx24123_config** %config25, align 8, !dbg !6388
  %demod_address26 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %42, i32 0, i32 0, !dbg !6388
  %43 = load i8, i8* %demod_address26, align 8, !dbg !6388
  %call27 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %40, i8 zeroext %43, i8 zeroext 32) #8, !dbg !6388
  %and28 = and i32 %call27, 64, !dbg !6389
  %cmp29 = icmp eq i32 %and28, 0, !dbg !6390
  br i1 %cmp29, label %while.body30, label %while.end38, !dbg !6387

while.body30:                                     ; preds = %while.cond24
  %44 = load i64, i64* %timeout, align 8, !dbg !6391
  %45 = load volatile i64, i64* @jiffies, align 8, !dbg !6391
  %sub31 = sub i64 %44, %45, !dbg !6391
  %cmp32 = icmp slt i64 %sub31, 0, !dbg !6391
  br i1 %cmp32, label %if.then33, label %if.end37, !dbg !6394

if.then33:                                        ; preds = %while.body30
  br label %do.body34, !dbg !6395

do.body34:                                        ; preds = %if.then33
  %call35 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_pll_writereg, i64 0, i64 0)) #9, !dbg !6397
  br label %do.end36, !dbg !6397

do.end36:                                         ; preds = %do.body34
  store i32 -121, i32* %retval, align 4, !dbg !6399
  br label %return, !dbg !6399

if.end37:                                         ; preds = %while.body30
  call void @msleep(i32 10) #8, !dbg !6400
  br label %while.cond24, !dbg !6387, !llvm.loop !6401

while.end38:                                      ; preds = %while.cond24
  %46 = load volatile i64, i64* @jiffies, align 8, !dbg !6403
  store i32 40, i32* %m.addr.i84, align 4
  %47 = load i32, i32* %m.addr.i84, align 4, !dbg !6404
  %48 = call i1 @llvm.is.constant.i32(i32 %47) #10, !dbg !6405
  br i1 %48, label %if.then.i86, label %if.else.i91, !dbg !6406

if.then.i86:                                      ; preds = %while.end38
  %49 = load i32, i32* %m.addr.i84, align 4, !dbg !6407
  %cmp.i85 = icmp slt i32 %49, 0, !dbg !6408
  br i1 %cmp.i85, label %if.then1.i87, label %if.end.i89, !dbg !6409

if.then1.i87:                                     ; preds = %if.then.i86
  store i64 4611686018427387902, i64* %retval.i83, align 8, !dbg !6410
  br label %msecs_to_jiffies.exit92, !dbg !6410

if.end.i89:                                       ; preds = %if.then.i86
  %50 = load i32, i32* %m.addr.i84, align 4, !dbg !6411
  %call.i88 = call i64 @_msecs_to_jiffies(i32 %50) #12, !dbg !6412
  store i64 %call.i88, i64* %retval.i83, align 8, !dbg !6413
  br label %msecs_to_jiffies.exit92, !dbg !6413

if.else.i91:                                      ; preds = %while.end38
  %51 = load i32, i32* %m.addr.i84, align 4, !dbg !6414
  %call2.i90 = call i64 @__msecs_to_jiffies(i32 %51) #12, !dbg !6415
  store i64 %call2.i90, i64* %retval.i83, align 8, !dbg !6416
  br label %msecs_to_jiffies.exit92, !dbg !6416

msecs_to_jiffies.exit92:                          ; preds = %if.then1.i87, %if.end.i89, %if.else.i91
  %52 = load i64, i64* %retval.i83, align 8, !dbg !6417
  %add40 = add i64 %46, %52, !dbg !6418
  store i64 %add40, i64* %timeout, align 8, !dbg !6419
  %53 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6420
  %54 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6420
  %config41 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %54, i32 0, i32 1, !dbg !6420
  %55 = load %struct.cx24123_config*, %struct.cx24123_config** %config41, align 8, !dbg !6420
  %demod_address42 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %55, i32 0, i32 0, !dbg !6420
  %56 = load i8, i8* %demod_address42, align 8, !dbg !6420
  %57 = load i32, i32* %data.addr, align 4, !dbg !6420
  %and43 = and i32 %57, 255, !dbg !6420
  %call44 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %53, i8 zeroext %56, i32 34, i32 %and43) #8, !dbg !6420
  br label %while.cond45, !dbg !6421

while.cond45:                                     ; preds = %if.end58, %msecs_to_jiffies.exit92
  %58 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6422
  %59 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6422
  %config46 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %59, i32 0, i32 1, !dbg !6422
  %60 = load %struct.cx24123_config*, %struct.cx24123_config** %config46, align 8, !dbg !6422
  %demod_address47 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %60, i32 0, i32 0, !dbg !6422
  %61 = load i8, i8* %demod_address47, align 8, !dbg !6422
  %call48 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %58, i8 zeroext %61, i8 zeroext 32) #8, !dbg !6422
  %and49 = and i32 %call48, 128, !dbg !6423
  %tobool50 = icmp ne i32 %and49, 0, !dbg !6421
  br i1 %tobool50, label %while.body51, label %while.end59, !dbg !6421

while.body51:                                     ; preds = %while.cond45
  %62 = load i64, i64* %timeout, align 8, !dbg !6424
  %63 = load volatile i64, i64* @jiffies, align 8, !dbg !6424
  %sub52 = sub i64 %62, %63, !dbg !6424
  %cmp53 = icmp slt i64 %sub52, 0, !dbg !6424
  br i1 %cmp53, label %if.then54, label %if.end58, !dbg !6427

if.then54:                                        ; preds = %while.body51
  br label %do.body55, !dbg !6428

do.body55:                                        ; preds = %if.then54
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.cx24123_pll_writereg, i64 0, i64 0)) #9, !dbg !6430
  br label %do.end57, !dbg !6430

do.end57:                                         ; preds = %do.body55
  store i32 -121, i32* %retval, align 4, !dbg !6432
  br label %return, !dbg !6432

if.end58:                                         ; preds = %while.body51
  call void @msleep(i32 10) #8, !dbg !6433
  br label %while.cond45, !dbg !6421, !llvm.loop !6434

while.end59:                                      ; preds = %while.cond45
  %64 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6436
  %65 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6436
  %config60 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %65, i32 0, i32 1, !dbg !6436
  %66 = load %struct.cx24123_config*, %struct.cx24123_config** %config60, align 8, !dbg !6436
  %demod_address61 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %66, i32 0, i32 0, !dbg !6436
  %67 = load i8, i8* %demod_address61, align 8, !dbg !6436
  %68 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6436
  %69 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6436
  %config62 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %69, i32 0, i32 1, !dbg !6436
  %70 = load %struct.cx24123_config*, %struct.cx24123_config** %config62, align 8, !dbg !6436
  %demod_address63 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %70, i32 0, i32 0, !dbg !6436
  %71 = load i8, i8* %demod_address63, align 8, !dbg !6436
  %call64 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %68, i8 zeroext %71, i8 zeroext 32) #8, !dbg !6436
  %or = or i32 %call64, 2, !dbg !6436
  %call65 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %64, i8 zeroext %67, i32 32, i32 %or) #8, !dbg !6436
  %72 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6437
  %73 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6437
  %config66 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %73, i32 0, i32 1, !dbg !6437
  %74 = load %struct.cx24123_config*, %struct.cx24123_config** %config66, align 8, !dbg !6437
  %demod_address67 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %74, i32 0, i32 0, !dbg !6437
  %75 = load i8, i8* %demod_address67, align 8, !dbg !6437
  %76 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6437
  %77 = load %struct.cx24123_state*, %struct.cx24123_state** %state, align 8, !dbg !6437
  %config68 = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %77, i32 0, i32 1, !dbg !6437
  %78 = load %struct.cx24123_config*, %struct.cx24123_config** %config68, align 8, !dbg !6437
  %demod_address69 = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %78, i32 0, i32 0, !dbg !6437
  %79 = load i8, i8* %demod_address69, align 8, !dbg !6437
  %call70 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %76, i8 zeroext %79, i8 zeroext 32) #8, !dbg !6437
  %and71 = and i32 %call70, 253, !dbg !6437
  %call72 = call i32 @cx24123_i2c_writereg(%struct.cx24123_state* %72, i8 zeroext %75, i32 32, i32 %and71) #8, !dbg !6437
  store i32 0, i32* %retval, align 4, !dbg !6438
  br label %return, !dbg !6438

return:                                           ; preds = %while.end59, %do.end57, %do.end36, %do.end15
  %80 = load i32, i32* %retval, align 4, !dbg !6439
  ret i32 %80, !dbg !6439
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !6440 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  %0 = load i32, i32* %m.addr, align 4, !dbg !6443
  %conv = zext i32 %0 to i64, !dbg !6443
  %add = add i64 %conv, 4, !dbg !6444
  %sub = sub i64 %add, 1, !dbg !6445
  %div = sdiv i64 %sub, 4, !dbg !6446
  ret i64 %div, !dbg !6447
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_get_inversion(%struct.cx24123_state* %state, i32* %inversion) #0 !dbg !6448 {
entry:
  %state.addr = alloca %struct.cx24123_state*, align 8
  %inversion.addr = alloca i32*, align 8
  %val = alloca i8, align 1
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !6452, metadata !DIExpression()), !dbg !6453
  store i32* %inversion, i32** %inversion.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %inversion.addr, metadata !6454, metadata !DIExpression()), !dbg !6455
  call void @llvm.dbg.declare(metadata i8* %val, metadata !6456, metadata !DIExpression()), !dbg !6457
  %0 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6458
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6458
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 1, !dbg !6458
  %2 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !6458
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %2, i32 0, i32 0, !dbg !6458
  %3 = load i8, i8* %demod_address, align 8, !dbg !6458
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %0, i8 zeroext %3, i8 zeroext 27) #8, !dbg !6458
  %shr = ashr i32 %call, 7, !dbg !6459
  %conv = trunc i32 %shr to i8, !dbg !6458
  store i8 %conv, i8* %val, align 1, !dbg !6460
  %4 = load i8, i8* %val, align 1, !dbg !6461
  %conv1 = zext i8 %4 to i32, !dbg !6461
  %cmp = icmp eq i32 %conv1, 0, !dbg !6463
  br i1 %cmp, label %if.then, label %if.else, !dbg !6464

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6465

do.body:                                          ; preds = %if.then
  %5 = load i32, i32* @debug, align 4, !dbg !6467
  %tobool = icmp ne i32 %5, 0, !dbg !6467
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6470

if.then3:                                         ; preds = %do.body
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24123_get_inversion, i64 0, i64 0)) #9, !dbg !6471
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !6471
  br label %if.end, !dbg !6471

if.end:                                           ; preds = %if.then3, %do.body
  br label %do.end, !dbg !6470

do.end:                                           ; preds = %if.end
  %6 = load i32*, i32** %inversion.addr, align 8, !dbg !6473
  store i32 0, i32* %6, align 4, !dbg !6474
  br label %if.end13, !dbg !6475

if.else:                                          ; preds = %entry
  br label %do.body6, !dbg !6476

do.body6:                                         ; preds = %if.else
  %7 = load i32, i32* @debug, align 4, !dbg !6478
  %tobool7 = icmp ne i32 %7, 0, !dbg !6478
  br i1 %tobool7, label %if.then8, label %if.end11, !dbg !6481

if.then8:                                         ; preds = %do.body6
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.cx24123_get_inversion, i64 0, i64 0)) #9, !dbg !6482
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !6482
  br label %if.end11, !dbg !6482

if.end11:                                         ; preds = %if.then8, %do.body6
  br label %do.end12, !dbg !6481

do.end12:                                         ; preds = %if.end11
  %8 = load i32*, i32** %inversion.addr, align 8, !dbg !6484
  store i32 1, i32* %8, align 4, !dbg !6485
  br label %if.end13

if.end13:                                         ; preds = %do.end12, %do.end
  ret i32 0, !dbg !6486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cx24123_get_fec(%struct.cx24123_state* %state, i32* %fec) #0 !dbg !6487 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca %struct.cx24123_state*, align 8
  %fec.addr = alloca i32*, align 8
  %ret = alloca i32, align 4
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !6491, metadata !DIExpression()), !dbg !6492
  store i32* %fec, i32** %fec.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %fec.addr, metadata !6493, metadata !DIExpression()), !dbg !6494
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !6495, metadata !DIExpression()), !dbg !6496
  %0 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6497
  %1 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6497
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %1, i32 0, i32 1, !dbg !6497
  %2 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !6497
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %2, i32 0, i32 0, !dbg !6497
  %3 = load i8, i8* %demod_address, align 8, !dbg !6497
  %call = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %0, i8 zeroext %3, i8 zeroext 27) #8, !dbg !6497
  store i32 %call, i32* %ret, align 4, !dbg !6498
  %4 = load i32, i32* %ret, align 4, !dbg !6499
  %cmp = icmp slt i32 %4, 0, !dbg !6501
  br i1 %cmp, label %if.then, label %if.end, !dbg !6502

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !6503
  store i32 %5, i32* %retval, align 4, !dbg !6504
  br label %return, !dbg !6504

if.end:                                           ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !6505
  %and = and i32 %6, 7, !dbg !6506
  store i32 %and, i32* %ret, align 4, !dbg !6507
  %7 = load i32, i32* %ret, align 4, !dbg !6508
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 6, label %sw.bb5
    i32 7, label %sw.bb6
  ], !dbg !6509

sw.bb:                                            ; preds = %if.end
  %8 = load i32*, i32** %fec.addr, align 8, !dbg !6510
  store i32 1, i32* %8, align 4, !dbg !6512
  br label %sw.epilog, !dbg !6513

sw.bb1:                                           ; preds = %if.end
  %9 = load i32*, i32** %fec.addr, align 8, !dbg !6514
  store i32 2, i32* %9, align 4, !dbg !6515
  br label %sw.epilog, !dbg !6516

sw.bb2:                                           ; preds = %if.end
  %10 = load i32*, i32** %fec.addr, align 8, !dbg !6517
  store i32 3, i32* %10, align 4, !dbg !6518
  br label %sw.epilog, !dbg !6519

sw.bb3:                                           ; preds = %if.end
  %11 = load i32*, i32** %fec.addr, align 8, !dbg !6520
  store i32 4, i32* %11, align 4, !dbg !6521
  br label %sw.epilog, !dbg !6522

sw.bb4:                                           ; preds = %if.end
  %12 = load i32*, i32** %fec.addr, align 8, !dbg !6523
  store i32 5, i32* %12, align 4, !dbg !6524
  br label %sw.epilog, !dbg !6525

sw.bb5:                                           ; preds = %if.end
  %13 = load i32*, i32** %fec.addr, align 8, !dbg !6526
  store i32 6, i32* %13, align 4, !dbg !6527
  br label %sw.epilog, !dbg !6528

sw.bb6:                                           ; preds = %if.end
  %14 = load i32*, i32** %fec.addr, align 8, !dbg !6529
  store i32 7, i32* %14, align 4, !dbg !6530
  br label %sw.epilog, !dbg !6531

sw.default:                                       ; preds = %if.end
  %15 = load i32*, i32** %fec.addr, align 8, !dbg !6532
  store i32 0, i32* %15, align 4, !dbg !6533
  br label %sw.epilog, !dbg !6534

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  store i32 0, i32* %retval, align 4, !dbg !6535
  br label %return, !dbg !6535

return:                                           ; preds = %sw.epilog, %if.then
  %16 = load i32, i32* %retval, align 4, !dbg !6536
  ret i32 %16, !dbg !6536
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cx24123_wait_for_diseqc(%struct.cx24123_state* %state) #0 !dbg !6537 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !6299, metadata !DIExpression()), !dbg !6540
  %state.addr = alloca %struct.cx24123_state*, align 8
  %timeout = alloca i64, align 8
  store %struct.cx24123_state* %state, %struct.cx24123_state** %state.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cx24123_state** %state.addr, metadata !6542, metadata !DIExpression()), !dbg !6543
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !6544, metadata !DIExpression()), !dbg !6545
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !6546
  store i32 200, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !6547
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #10, !dbg !6548
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !6549

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !6550
  %cmp.i = icmp slt i32 %3, 0, !dbg !6551
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6552

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !6553
  br label %msecs_to_jiffies.exit, !dbg !6553

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !6554
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #12, !dbg !6555
  store i64 %call.i, i64* %retval.i, align 8, !dbg !6556
  br label %msecs_to_jiffies.exit, !dbg !6556

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !6557
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #12, !dbg !6558
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !6559
  br label %msecs_to_jiffies.exit, !dbg !6559

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !6560
  %add = add i64 %0, %6, !dbg !6561
  store i64 %add, i64* %timeout, align 8, !dbg !6545
  br label %while.cond, !dbg !6562

while.cond:                                       ; preds = %if.end, %msecs_to_jiffies.exit
  %7 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6563
  %8 = load %struct.cx24123_state*, %struct.cx24123_state** %state.addr, align 8, !dbg !6563
  %config = getelementptr inbounds %struct.cx24123_state, %struct.cx24123_state* %8, i32 0, i32 1, !dbg !6563
  %9 = load %struct.cx24123_config*, %struct.cx24123_config** %config, align 8, !dbg !6563
  %demod_address = getelementptr inbounds %struct.cx24123_config, %struct.cx24123_config* %9, i32 0, i32 0, !dbg !6563
  %10 = load i8, i8* %demod_address, align 8, !dbg !6563
  %call1 = call i32 @cx24123_i2c_readreg(%struct.cx24123_state* %7, i8 zeroext %10, i8 zeroext 41) #8, !dbg !6563
  %and = and i32 %call1, 64, !dbg !6564
  %tobool = icmp ne i32 %and, 0, !dbg !6565
  %lnot = xor i1 %tobool, true, !dbg !6565
  br i1 %lnot, label %while.body, label %while.end, !dbg !6562

while.body:                                       ; preds = %while.cond
  %11 = load i64, i64* %timeout, align 8, !dbg !6566
  %12 = load volatile i64, i64* @jiffies, align 8, !dbg !6566
  %sub = sub i64 %11, %12, !dbg !6566
  %cmp = icmp slt i64 %sub, 0, !dbg !6566
  br i1 %cmp, label %if.then, label %if.end, !dbg !6569

if.then:                                          ; preds = %while.body
  br label %do.body, !dbg !6570

do.body:                                          ; preds = %if.then
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.cx24123_wait_for_diseqc, i64 0, i64 0)) #9, !dbg !6572
  br label %do.end, !dbg !6572

do.end:                                           ; preds = %do.body
  br label %while.end, !dbg !6574

if.end:                                           ; preds = %while.body
  call void @msleep(i32 10) #8, !dbg !6575
  br label %while.cond, !dbg !6562, !llvm.loop !6576

while.end:                                        ; preds = %do.end, %while.cond
  ret void, !dbg !6578
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4466, !4467, !4468, !4469}
!llvm.ident = !{!4470}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_force_band", scope: !2, file: !3, line: 24, type: !4463, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !307, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/cx24123.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !128, !138, !145, !161, !166, !170, !175, !190, !201, !214, !221, !226, !232, !253, !259, !263, !271, !283}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !284, line: 305, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!290 = !{!291, !293, !294, !295, !300, !301, !303, !304}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !292, line: 148, baseType: !7)
!292 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !296, line: 23, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !298, line: 31, baseType: !299)
!298 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!299 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !292, line: 107, baseType: !295)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !296, line: 21, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !298, line: 27, baseType: !7)
!303 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !296, line: 19, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !298, line: 24, baseType: !306)
!306 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!307 = !{!308, !374, !379, !384, !386, !391, !396, !401, !403, !408, !413, !415, !0, !417, !422, !4112, !4435, !4444, !4454}
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(name: "__param_force_band", scope: !2, file: !3, line: 24, type: !310, isLocal: true, isDefinition: true, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !312, line: 69, size: 320, elements: !313)
!312 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!313 = !{!314, !318, !322, !342, !344, !348, !352}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !312, line: 70, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !311, file: !312, line: 71, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !321, line: 76, flags: DIFlagFwdDecl)
!321 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !311, file: !312, line: 72, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !312, line: 47, size: 256, elements: !326)
!326 = !{!327, !328, !333, !338}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !325, file: !312, line: 49, baseType: !7, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !325, file: !312, line: 51, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!294, !315, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !325, file: !312, line: 53, baseType: !334, size: 64, offset: 128)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!294, !337, !332}
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !325, file: !312, line: 55, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !293}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !311, file: !312, line: 73, baseType: !343, size: 16, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !311, file: !312, line: 74, baseType: !345, size: 8, offset: 208)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !296, line: 16, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !298, line: 20, baseType: !347)
!347 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !312, line: 75, baseType: !349, size: 8, offset: 216)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !296, line: 17, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !298, line: 21, baseType: !351)
!351 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !312, line: 76, baseType: !353, size: 64, offset: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !312, line: 76, size: 64, elements: !354)
!354 = !{!355, !356, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !353, file: !312, line: 77, baseType: !293, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !353, file: !312, line: 78, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !312, line: 86, size: 128, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !359, file: !312, line: 87, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !359, file: !312, line: 88, baseType: !337, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !353, file: !312, line: 79, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !312, line: 92, size: 256, elements: !367)
!367 = !{!368, !369, !370, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !366, file: !312, line: 94, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !366, file: !312, line: 95, baseType: !7, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !366, file: !312, line: 96, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !366, file: !312, line: 97, baseType: !323, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !366, file: !312, line: 98, baseType: !293, size: 64, offset: 192)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_bandtype220", scope: !2, file: !3, line: 24, type: !376, isLocal: true, isDefinition: true, align: 8)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 256, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 32)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_force_band221", scope: !2, file: !3, line: 25, type: !381, isLocal: true, isDefinition: true, align: 8)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 584, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 73)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 29, type: !310, isLocal: true, isDefinition: true, align: 64)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype222", scope: !2, file: !3, line: 29, type: !388, isLocal: true, isDefinition: true, align: 8)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 216, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 27)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug223", scope: !2, file: !3, line: 30, type: !393, isLocal: true, isDefinition: true, align: 8)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 480, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 60)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description224", scope: !2, file: !3, line: 1135, type: !398, isLocal: true, isDefinition: true, align: 8)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 688, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 86)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author225", scope: !2, file: !3, line: 1137, type: !388, isLocal: true, isDefinition: true, align: 8)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file226", scope: !2, file: !3, line: 1138, type: !405, isLocal: true, isDefinition: true, align: 8)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 392, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 49)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license227", scope: !2, file: !3, line: 1138, type: !410, isLocal: true, isDefinition: true, align: 8)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 160, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 20)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "force_band", scope: !2, file: !3, line: 23, type: !294, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 28, type: !294, isLocal: true, isDefinition: true)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 29, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 112, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 14)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "cx24123_tuner_i2c_algo", scope: !2, file: !3, line: 1026, type: !424, isLocal: true, isDefinition: true)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !426, line: 519, size: 320, elements: !427)
!426 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !4093, !4094, !4107, !4108}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !425, file: !426, line: 529, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!294, !432, !4084, !294}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !426, line: 695, size: 7552, elements: !434)
!434 = !{!435, !436, !437, !439, !440, !454, !3477, !3478, !3479, !3480, !4031, !4032, !4033, !4037, !4038, !4039, !4040, !4072, !4083}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !433, file: !426, line: 696, baseType: !319, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !433, file: !426, line: 697, baseType: !7, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !433, file: !426, line: 698, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !433, file: !426, line: 699, baseType: !293, size: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !433, file: !426, line: 702, baseType: !441, size: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !443)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !426, line: 557, size: 192, elements: !444)
!444 = !{!445, !449, !453}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !443, file: !426, line: 558, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !432, !7}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !443, file: !426, line: 559, baseType: !450, size: 64, offset: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!294, !432, !7}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !443, file: !426, line: 560, baseType: !446, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !433, file: !426, line: 703, baseType: !455, size: 192, offset: 320)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !456, line: 30, size: 192, elements: !457)
!456 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !468, !484}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !455, file: !456, line: 31, baseType: !459)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !460, line: 29, baseType: !461)
!460 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !460, line: 20, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !461, file: !460, line: 21, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !465, line: 25, baseType: !466)
!465 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 25, elements: !467)
!467 = !{}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !455, file: !456, line: 32, baseType: !469, size: 128)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !470, line: 125, size: 128, elements: !471)
!470 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!471 = !{!472, !483}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !469, file: !470, line: 126, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !470, line: 31, size: 64, elements: !474)
!474 = !{!475}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !473, file: !470, line: 32, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !470, line: 24, size: 192, align: 64, elements: !478)
!478 = !{!479, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !477, file: !470, line: 25, baseType: !480, size: 64)
!480 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !477, file: !470, line: 26, baseType: !476, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !477, file: !470, line: 27, baseType: !476, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !469, file: !470, line: 127, baseType: !476, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !455, file: !456, line: 33, baseType: !485, size: 64, offset: 128)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !487, line: 640, size: 48640, elements: !488)
!487 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !495, !497, !498, !508, !509, !510, !511, !512, !513, !514, !515, !519, !542, !553, !645, !646, !647, !658, !659, !661, !662, !2781, !2782, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2864, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2879, !2880, !2881, !2883, !2884, !2885, !2886, !2887, !2888, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2912, !2917, !2918, !2919, !2920, !2921, !2923, !2926, !2929, !2932, !2935, !2939, !3040, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3086, !3087, !3088, !3089, !3090, !3095, !3096, !3097, !3100, !3101, !3104, !3107, !3110, !3111, !3143, !3146, !3147, !3226, !3227, !3230, !3231, !3234, !3235, !3236, !3240, !3241, !3242, !3255, !3256, !3257, !3267, !3272, !3273, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !486, file: !487, line: 646, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !491, line: 56, size: 128, elements: !492)
!491 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !491, line: 57, baseType: !480, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !490, file: !491, line: 58, baseType: !301, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !486, file: !487, line: 649, baseType: !496, size: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !303)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !486, file: !487, line: 657, baseType: !293, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !486, file: !487, line: 658, baseType: !499, size: 32, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !500, line: 113, baseType: !501)
!500 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !500, line: 111, size: 32, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !501, file: !500, line: 112, baseType: !504, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !292, line: 168, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 166, size: 32, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !505, file: !292, line: 167, baseType: !294, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !486, file: !487, line: 660, baseType: !7, size: 32, offset: 288)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !486, file: !487, line: 661, baseType: !7, size: 32, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !486, file: !487, line: 684, baseType: !294, size: 32, offset: 352)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !486, file: !487, line: 686, baseType: !294, size: 32, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !486, file: !487, line: 687, baseType: !294, size: 32, offset: 416)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !486, file: !487, line: 688, baseType: !294, size: 32, offset: 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !486, file: !487, line: 689, baseType: !7, size: 32, offset: 480)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !486, file: !487, line: 691, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !487, line: 691, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !486, file: !487, line: 692, baseType: !520, size: 832, offset: 576)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !487, line: 451, size: 832, elements: !521)
!521 = !{!522, !527, !528, !534, !535, !536, !537, !538, !539, !540}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !520, file: !487, line: 453, baseType: !523, size: 128)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !487, line: 325, size: 128, elements: !524)
!524 = !{!525, !526}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !523, file: !487, line: 326, baseType: !480, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !523, file: !487, line: 327, baseType: !301, size: 32, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !520, file: !487, line: 454, baseType: !477, size: 192, align: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !520, file: !487, line: 455, baseType: !529, size: 128, offset: 320)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !292, line: 178, size: 128, elements: !530)
!530 = !{!531, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !529, file: !292, line: 179, baseType: !532, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !529, file: !292, line: 179, baseType: !532, size: 64, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !520, file: !487, line: 456, baseType: !7, size: 32, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !520, file: !487, line: 458, baseType: !295, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !520, file: !487, line: 459, baseType: !295, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !520, file: !487, line: 460, baseType: !295, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !520, file: !487, line: 461, baseType: !295, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !520, file: !487, line: 463, baseType: !295, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !520, file: !487, line: 465, baseType: !541, offset: 832)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !487, line: 415, elements: !467)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !486, file: !487, line: 693, baseType: !543, size: 384, offset: 1408)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !487, line: 489, size: 384, elements: !544)
!544 = !{!545, !546, !547, !548, !549, !550, !551}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !543, file: !487, line: 490, baseType: !529, size: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !543, file: !487, line: 491, baseType: !480, size: 64, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !543, file: !487, line: 492, baseType: !480, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !543, file: !487, line: 493, baseType: !7, size: 32, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !543, file: !487, line: 494, baseType: !306, size: 16, offset: 288)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !543, file: !487, line: 495, baseType: !306, size: 16, offset: 304)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !543, file: !487, line: 497, baseType: !552, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !486, file: !487, line: 697, baseType: !554, size: 1792, offset: 1792)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !487, line: 507, size: 1792, elements: !555)
!555 = !{!556, !557, !558, !559, !560, !561, !562, !566, !567, !568, !569, !570, !571, !572, !642, !643}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !554, file: !487, line: 508, baseType: !477, size: 192, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !554, file: !487, line: 515, baseType: !295, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !554, file: !487, line: 516, baseType: !295, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !554, file: !487, line: 517, baseType: !295, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !554, file: !487, line: 518, baseType: !295, size: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !554, file: !487, line: 519, baseType: !295, size: 64, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !554, file: !487, line: 526, baseType: !563, size: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !296, line: 22, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !298, line: 30, baseType: !565)
!565 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !554, file: !487, line: 527, baseType: !295, size: 64, offset: 576)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !554, file: !487, line: 528, baseType: !7, size: 32, offset: 640)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !554, file: !487, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !554, file: !487, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !554, file: !487, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !554, file: !487, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !554, file: !487, line: 563, baseType: !573, size: 512, offset: 704)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !574)
!574 = !{!575, !583, !584, !589, !638, !639, !640, !641}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !573, file: !6, line: 119, baseType: !576, size: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !577, line: 9, size: 256, elements: !578)
!577 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !576, file: !577, line: 10, baseType: !477, size: 192, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !576, file: !577, line: 11, baseType: !581, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !582, line: 29, baseType: !563)
!582 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!583 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !573, file: !6, line: 120, baseType: !581, size: 64, offset: 256)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !573, file: !6, line: 121, baseType: !585, size: 64, offset: 320)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!5, !588}
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !573, file: !6, line: 122, baseType: !590, size: 64, offset: 384)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !592)
!592 = !{!593, !613, !614, !618, !628, !629, !633, !637}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !591, file: !6, line: 160, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !595, file: !6, line: 215, baseType: !459)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !595, file: !6, line: 216, baseType: !7, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !595, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !595, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !595, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !595, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !595, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !595, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !595, file: !6, line: 233, baseType: !581, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !595, file: !6, line: 234, baseType: !588, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !595, file: !6, line: 235, baseType: !581, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !595, file: !6, line: 236, baseType: !588, size: 64, offset: 320)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !595, file: !6, line: 237, baseType: !610, size: 4096, offset: 512)
!610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 4096, elements: !611)
!611 = !{!612}
!612 = !DISubrange(count: 8)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !591, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !591, file: !6, line: 162, baseType: !615, size: 32, offset: 96)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !292, line: 27, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !617, line: 96, baseType: !294)
!617 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !591, file: !6, line: 163, baseType: !619, size: 32, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !620, line: 276, baseType: !621)
!620 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !620, line: 276, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !621, file: !620, line: 276, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !620, line: 70, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !620, line: 65, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !625, file: !620, line: 66, baseType: !7, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !591, file: !6, line: 164, baseType: !588, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !591, file: !6, line: 165, baseType: !630, size: 128, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !577, line: 14, size: 128, elements: !631)
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !630, file: !577, line: 15, baseType: !469, size: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !591, file: !6, line: 166, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!581}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !591, file: !6, line: 167, baseType: !581, size: 64, offset: 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !573, file: !6, line: 123, baseType: !349, size: 8, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !573, file: !6, line: 124, baseType: !349, size: 8, offset: 456)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !573, file: !6, line: 125, baseType: !349, size: 8, offset: 464)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !573, file: !6, line: 126, baseType: !349, size: 8, offset: 472)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !554, file: !487, line: 572, baseType: !573, size: 512, offset: 1216)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !554, file: !487, line: 580, baseType: !644, size: 64, offset: 1728)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !486, file: !487, line: 721, baseType: !7, size: 32, offset: 3584)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !486, file: !487, line: 722, baseType: !294, size: 32, offset: 3616)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !486, file: !487, line: 723, baseType: !648, size: 64, offset: 3648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !651, line: 17, baseType: !652)
!651 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !651, line: 17, size: 64, elements: !653)
!653 = !{!654}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !652, file: !651, line: 17, baseType: !655, size: 64)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 64, elements: !656)
!656 = !{!657}
!657 = !DISubrange(count: 1)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !486, file: !487, line: 724, baseType: !650, size: 64, offset: 3712)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !486, file: !487, line: 749, baseType: !660, offset: 3776)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !487, line: 290, elements: !467)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !486, file: !487, line: 751, baseType: !529, size: 128, offset: 3776)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !486, file: !487, line: 757, baseType: !663, size: 64, offset: 3904)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !665, line: 388, size: 7296, elements: !666)
!665 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!666 = !{!667, !2777}
!667 = !DIDerivedType(tag: DW_TAG_member, scope: !664, file: !665, line: 389, baseType: !668, size: 7296)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !664, file: !665, line: 389, size: 7296, elements: !669)
!669 = !{!670, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2690, !2696, !2699, !2738, !2739, !2761, !2762, !2765, !2766, !2767, !2770, !2771, !2772, !2775, !2776}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !668, file: !665, line: 390, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !665, line: 305, size: 1472, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !689, !690, !695, !696, !699, !703, !704, !2638, !2639, !2640}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !672, file: !665, line: 308, baseType: !480, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !672, file: !665, line: 309, baseType: !480, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !672, file: !665, line: 313, baseType: !671, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !672, file: !665, line: 313, baseType: !671, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !672, file: !665, line: 315, baseType: !477, size: 192, align: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !672, file: !665, line: 323, baseType: !480, size: 64, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !672, file: !665, line: 327, baseType: !663, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !672, file: !665, line: 333, baseType: !682, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !683, line: 284, baseType: !684)
!683 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !683, line: 284, size: 64, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !684, file: !683, line: 284, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !688, line: 19, baseType: !480)
!688 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !672, file: !665, line: 334, baseType: !480, size: 64, offset: 640)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !672, file: !665, line: 343, baseType: !691, size: 256, offset: 704)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !672, file: !665, line: 340, size: 256, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !691, file: !665, line: 341, baseType: !477, size: 192, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !691, file: !665, line: 342, baseType: !480, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !672, file: !665, line: 351, baseType: !529, size: 128, offset: 960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !672, file: !665, line: 353, baseType: !697, size: 64, offset: 1088)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !665, line: 353, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !672, file: !665, line: 356, baseType: !700, size: 64, offset: 1152)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !702)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !665, line: 356, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !672, file: !665, line: 359, baseType: !480, size: 64, offset: 1216)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !672, file: !665, line: 361, baseType: !705, size: 64, offset: 1280)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !707)
!707 = !{!708, !726, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2437, !2622, !2631, !2632, !2633, !2634, !2635, !2636, !2637}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !706, file: !31, line: 920, baseType: !709, size: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !706, file: !31, line: 917, size: 128, elements: !710)
!710 = !{!711, !717}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !709, file: !31, line: 918, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !713, line: 58, size: 64, elements: !714)
!713 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !713, line: 59, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !709, file: !31, line: 919, baseType: !718, size: 128, align: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !292, line: 216, size: 128, align: 64, elements: !719)
!719 = !{!720, !722}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !292, line: 217, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !292, line: 218, baseType: !723, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !706, file: !31, line: 921, baseType: !727, size: 128, offset: 128)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !728, line: 8, size: 128, elements: !729)
!728 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!729 = !{!730, !734}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !727, file: !728, line: 9, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !733, line: 18, flags: DIFlagFwdDecl)
!733 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!734 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !727, file: !728, line: 10, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !733, line: 89, size: 1536, elements: !737)
!737 = !{!738, !739, !744, !752, !753, !768, !2367, !2369, !2381, !2382, !2383, !2384, !2385, !2390, !2391, !2392}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !736, file: !733, line: 91, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !736, file: !733, line: 92, baseType: !740, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !620, line: 277, baseType: !741)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !620, line: 277, size: 32, elements: !742)
!742 = !{!743}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !741, file: !620, line: 277, baseType: !624, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !736, file: !733, line: 93, baseType: !745, size: 128, offset: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !746, line: 38, size: 128, elements: !747)
!746 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!747 = !{!748, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !745, file: !746, line: 39, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !745, file: !746, line: 39, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !736, file: !733, line: 94, baseType: !735, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !736, file: !733, line: 95, baseType: !754, size: 128, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !733, line: 47, size: 128, elements: !755)
!755 = !{!756, !765}
!756 = !DIDerivedType(tag: DW_TAG_member, scope: !754, file: !733, line: 48, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !754, file: !733, line: 48, size: 64, elements: !758)
!758 = !{!759, !764}
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !757, file: !733, line: 49, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !757, file: !733, line: 49, size: 64, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !760, file: !733, line: 50, baseType: !301, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !760, file: !733, line: 50, baseType: !301, size: 32, offset: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !757, file: !733, line: 52, baseType: !295, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !754, file: !733, line: 54, baseType: !766, size: 64, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !736, file: !733, line: 96, baseType: !769, size: 64, offset: 384)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !771)
!771 = !{!772, !774, !775, !783, !790, !791, !940, !1756, !1757, !1758, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !2035, !2043, !2044, !2045, !2363, !2364, !2365, !2366}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !770, file: !31, line: 611, baseType: !773, size: 16)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !292, line: 19, baseType: !306)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !770, file: !31, line: 612, baseType: !306, size: 16, offset: 16)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !770, file: !31, line: 613, baseType: !776, size: 32, offset: 32)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !777, line: 23, baseType: !778)
!777 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !777, line: 21, size: 32, elements: !779)
!779 = !{!780}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !778, file: !777, line: 22, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !292, line: 32, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !617, line: 49, baseType: !7)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !770, file: !31, line: 614, baseType: !784, size: 32, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !777, line: 28, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !777, line: 26, size: 32, elements: !786)
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !785, file: !777, line: 27, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !292, line: 33, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !617, line: 50, baseType: !7)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !770, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !770, file: !31, line: 622, baseType: !792, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !795)
!795 = !{!796, !800, !810, !814, !820, !824, !830, !834, !838, !842, !846, !847, !853, !857, !881, !910, !920, !926, !931, !935, !936}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !794, file: !31, line: 1865, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!735, !769, !735, !7}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !794, file: !31, line: 1866, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!315, !735, !769, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !806, line: 10, size: 128, elements: !807)
!806 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !809}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !805, file: !806, line: 11, baseType: !339, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !805, file: !806, line: 12, baseType: !293, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !794, file: !31, line: 1867, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!294, !769, !294}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !794, file: !31, line: 1868, baseType: !815, size: 64, offset: 192)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DISubroutineType(types: !817)
!817 = !{!818, !769, !294}
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !794, file: !31, line: 1870, baseType: !821, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!294, !735, !337, !294}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !794, file: !31, line: 1872, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!294, !769, !735, !773, !828}
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !292, line: 30, baseType: !829)
!829 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !794, file: !31, line: 1873, baseType: !831, size: 64, offset: 384)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!294, !735, !769, !735}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !794, file: !31, line: 1874, baseType: !835, size: 64, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!294, !769, !735}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !794, file: !31, line: 1875, baseType: !839, size: 64, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!294, !769, !735, !315}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !794, file: !31, line: 1876, baseType: !843, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!294, !769, !735, !773}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !794, file: !31, line: 1877, baseType: !835, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !794, file: !31, line: 1878, baseType: !848, size: 64, offset: 704)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!294, !769, !735, !773, !851}
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !292, line: 16, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !292, line: 13, baseType: !301)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !794, file: !31, line: 1879, baseType: !854, size: 64, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!294, !769, !735, !769, !735, !7}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !794, file: !31, line: 1881, baseType: !858, size: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DISubroutineType(types: !860)
!860 = !{!294, !735, !861}
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !863)
!863 = !{!864, !865, !866, !867, !868, !871, !878, !879, !880}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !862, file: !31, line: 220, baseType: !7, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !862, file: !31, line: 221, baseType: !773, size: 16, offset: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !862, file: !31, line: 222, baseType: !776, size: 32, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !862, file: !31, line: 223, baseType: !784, size: 32, offset: 96)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !862, file: !31, line: 224, baseType: !869, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !292, line: 46, baseType: !870)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !617, line: 88, baseType: !565)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !862, file: !31, line: 225, baseType: !872, size: 128, offset: 192)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !873, line: 13, size: 128, elements: !874)
!873 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !872, file: !873, line: 14, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !873, line: 8, baseType: !564)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !872, file: !873, line: 15, baseType: !303, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !862, file: !31, line: 226, baseType: !872, size: 128, offset: 320)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !862, file: !31, line: 227, baseType: !872, size: 128, offset: 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !862, file: !31, line: 234, baseType: !705, size: 64, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !794, file: !31, line: 1882, baseType: !882, size: 64, offset: 896)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!294, !885, !887, !301, !7}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !889, line: 22, size: 1152, elements: !890)
!889 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !892, !893, !894, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !888, file: !889, line: 23, baseType: !301, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !888, file: !889, line: 24, baseType: !773, size: 16, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !888, file: !889, line: 25, baseType: !7, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !888, file: !889, line: 26, baseType: !895, size: 32, offset: 96)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !292, line: 104, baseType: !301)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !888, file: !889, line: 27, baseType: !295, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !888, file: !889, line: 28, baseType: !295, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !888, file: !889, line: 37, baseType: !295, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !888, file: !889, line: 38, baseType: !851, size: 32, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !888, file: !889, line: 39, baseType: !851, size: 32, offset: 352)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !888, file: !889, line: 40, baseType: !776, size: 32, offset: 384)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !888, file: !889, line: 41, baseType: !784, size: 32, offset: 416)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !888, file: !889, line: 42, baseType: !869, size: 64, offset: 448)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !888, file: !889, line: 43, baseType: !872, size: 128, offset: 512)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !888, file: !889, line: 44, baseType: !872, size: 128, offset: 640)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !888, file: !889, line: 45, baseType: !872, size: 128, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !888, file: !889, line: 46, baseType: !872, size: 128, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !888, file: !889, line: 47, baseType: !295, size: 64, offset: 1024)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !888, file: !889, line: 48, baseType: !295, size: 64, offset: 1088)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !794, file: !31, line: 1883, baseType: !911, size: 64, offset: 960)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!914, !735, !337, !917}
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !292, line: 60, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !617, line: 73, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !617, line: 15, baseType: !303)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !292, line: 55, baseType: !918)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !617, line: 72, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !617, line: 16, baseType: !480)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !794, file: !31, line: 1884, baseType: !921, size: 64, offset: 1024)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{!294, !769, !924, !295, !295}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !794, file: !31, line: 1886, baseType: !927, size: 64, offset: 1088)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!294, !769, !930, !294}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !794, file: !31, line: 1887, baseType: !932, size: 64, offset: 1152)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!294, !769, !735, !705, !7, !773}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !794, file: !31, line: 1890, baseType: !843, size: 64, offset: 1216)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !794, file: !31, line: 1891, baseType: !937, size: 64, offset: 1280)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!294, !769, !818, !294}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !770, file: !31, line: 623, baseType: !941, size: 64, offset: 192)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !943)
!943 = !{!944, !945, !946, !947, !948, !949, !998, !1335, !1423, !1506, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1522, !1526, !1527, !1530, !1533, !1536, !1537, !1538, !1579, !1611, !1612, !1613, !1614, !1615, !1616, !1619, !1621, !1630, !1631, !1633, !1634, !1635, !1694, !1695, !1710, !1711, !1712, !1713, !1714, !1718, !1719, !1722, !1737, !1738, !1739, !1750, !1751, !1752, !1753, !1754, !1755}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !942, file: !31, line: 1417, baseType: !529, size: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !942, file: !31, line: 1418, baseType: !851, size: 32, offset: 128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !942, file: !31, line: 1419, baseType: !351, size: 8, offset: 160)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !942, file: !31, line: 1420, baseType: !480, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !942, file: !31, line: 1421, baseType: !869, size: 64, offset: 256)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !942, file: !31, line: 1422, baseType: !950, size: 64, offset: 320)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !952)
!952 = !{!953, !954, !955, !962, !966, !970, !974, !975, !976, !986, !989, !990, !991, !995, !996, !997}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !951, file: !31, line: 2229, baseType: !315, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !951, file: !31, line: 2230, baseType: !294, size: 32, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !951, file: !31, line: 2238, baseType: !956, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!294, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !961, line: 28, flags: DIFlagFwdDecl)
!961 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!962 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !951, file: !31, line: 2239, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !951, file: !31, line: 2240, baseType: !967, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{!735, !950, !294, !315, !293}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !951, file: !31, line: 2242, baseType: !971, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{null, !941}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !951, file: !31, line: 2243, baseType: !319, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !951, file: !31, line: 2244, baseType: !950, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !951, file: !31, line: 2245, baseType: !977, size: 64, offset: 512)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !292, line: 182, size: 64, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !977, file: !292, line: 183, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !292, line: 186, size: 128, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !981, file: !292, line: 187, baseType: !980, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !981, file: !292, line: 187, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !951, file: !31, line: 2247, baseType: !987, offset: 576)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !988, line: 187, elements: !467)
!988 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !951, file: !31, line: 2248, baseType: !987, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !951, file: !31, line: 2249, baseType: !987, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !951, file: !31, line: 2250, baseType: !992, offset: 576)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !987, elements: !993)
!993 = !{!994}
!994 = !DISubrange(count: 3)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !951, file: !31, line: 2252, baseType: !987, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !951, file: !31, line: 2253, baseType: !987, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !951, file: !31, line: 2254, baseType: !987, offset: 576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !942, file: !31, line: 1423, baseType: !999, size: 64, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1001)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1002)
!1002 = !{!1003, !1007, !1011, !1012, !1016, !1022, !1026, !1027, !1028, !1032, !1036, !1037, !1038, !1039, !1045, !1050, !1051, !1057, !1058, !1059, !1060, !1319, !1334}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1001, file: !31, line: 1936, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!769, !941}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1001, file: !31, line: 1937, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{null, !769}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1001, file: !31, line: 1938, baseType: !1008, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1001, file: !31, line: 1940, baseType: !1013, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{null, !769, !294}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1001, file: !31, line: 1941, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{!294, !769, !1020}
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1001, file: !31, line: 1942, baseType: !1023, size: 64, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!294, !769}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1001, file: !31, line: 1943, baseType: !1008, size: 64, offset: 384)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1001, file: !31, line: 1944, baseType: !971, size: 64, offset: 448)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1001, file: !31, line: 1945, baseType: !1029, size: 64, offset: 512)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!294, !941, !294}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1001, file: !31, line: 1946, baseType: !1033, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!294, !941}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1001, file: !31, line: 1947, baseType: !1033, size: 64, offset: 640)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1001, file: !31, line: 1948, baseType: !1033, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1001, file: !31, line: 1949, baseType: !1033, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1001, file: !31, line: 1950, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!294, !735, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1001, file: !31, line: 1951, baseType: !1046, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!294, !941, !1049, !337}
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1001, file: !31, line: 1952, baseType: !971, size: 64, offset: 960)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1001, file: !31, line: 1954, baseType: !1052, size: 64, offset: 1024)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!294, !1055, !735}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !683, line: 539, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1001, file: !31, line: 1955, baseType: !1052, size: 64, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1001, file: !31, line: 1956, baseType: !1052, size: 64, offset: 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1001, file: !31, line: 1957, baseType: !1052, size: 64, offset: 1216)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1001, file: !31, line: 1963, baseType: !1061, size: 64, offset: 1280)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!294, !941, !1064, !291}
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !665, line: 68, size: 512, align: 128, elements: !1066)
!1066 = !{!1067, !1068, !1311, !1318}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1065, file: !665, line: 69, baseType: !480, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !665, line: 77, baseType: !1069, size: 320, offset: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !665, line: 77, size: 320, elements: !1070)
!1070 = !{!1071, !1243, !1248, !1276, !1284, !1290, !1303, !1310}
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 78, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 78, size: 320, elements: !1073)
!1073 = !{!1074, !1075, !1241, !1242}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1072, file: !665, line: 84, baseType: !529, size: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1072, file: !665, line: 86, baseType: !1076, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1078)
!1078 = !{!1079, !1080, !1094, !1095, !1096, !1097, !1111, !1112, !1113, !1114, !1234, !1235, !1238, !1239, !1240}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1077, file: !31, line: 452, baseType: !769, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1077, file: !31, line: 453, baseType: !1081, size: 128, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1082, line: 292, size: 128, elements: !1083)
!1082 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1083 = !{!1084, !1092, !1093}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1081, file: !1082, line: 293, baseType: !1085)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !460, line: 83, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !460, line: 71, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, scope: !1086, file: !460, line: 72, baseType: !1089)
!1089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1086, file: !460, line: 72, elements: !1090)
!1090 = !{!1091}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !1089, file: !460, line: 73, baseType: !461)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1081, file: !1082, line: 295, baseType: !291, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1081, file: !1082, line: 296, baseType: !293, size: 64, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1077, file: !31, line: 454, baseType: !291, size: 32, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1077, file: !31, line: 455, baseType: !504, size: 32, offset: 224)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1077, file: !31, line: 460, baseType: !469, size: 128, offset: 256)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1077, file: !31, line: 461, baseType: !1098, size: 256, offset: 384)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1099, line: 35, size: 256, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1100 = !{!1101, !1108, !1109, !1110}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1098, file: !1099, line: 36, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1103, line: 13, baseType: !1104)
!1103 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !292, line: 175, baseType: !1105)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !292, line: 173, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1105, file: !292, line: 174, baseType: !563, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1098, file: !1099, line: 42, baseType: !1102, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1098, file: !1099, line: 46, baseType: !459, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1098, file: !1099, line: 47, baseType: !529, size: 128, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1077, file: !31, line: 462, baseType: !480, size: 64, offset: 640)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1077, file: !31, line: 463, baseType: !480, size: 64, offset: 704)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1077, file: !31, line: 464, baseType: !480, size: 64, offset: 768)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1077, file: !31, line: 465, baseType: !1115, size: 64, offset: 832)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1118)
!1118 = !{!1119, !1123, !1127, !1131, !1135, !1139, !1145, !1151, !1155, !1160, !1164, !1168, !1172, !1198, !1202, !1208, !1209, !1210, !1214, !1219, !1223, !1230}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1117, file: !31, line: 368, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!294, !1064, !1020}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1117, file: !31, line: 369, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!294, !705, !1064}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1117, file: !31, line: 372, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!294, !1076, !1020}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1117, file: !31, line: 375, baseType: !1132, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!294, !1064}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1117, file: !31, line: 381, baseType: !1136, size: 64, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!294, !705, !1076, !532, !7}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1117, file: !31, line: 383, baseType: !1140, size: 64, offset: 320)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1143}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1117, file: !31, line: 385, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!294, !705, !1076, !869, !7, !7, !1149, !1150}
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1117, file: !31, line: 388, baseType: !1152, size: 64, offset: 448)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!294, !705, !1076, !869, !7, !7, !1064, !293}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1117, file: !31, line: 393, baseType: !1156, size: 64, offset: 512)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!1159, !1076, !1159}
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !292, line: 125, baseType: !295)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1117, file: !31, line: 394, baseType: !1161, size: 64, offset: 576)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1064, !7, !7}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1117, file: !31, line: 395, baseType: !1165, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!294, !1064, !291}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1117, file: !31, line: 396, baseType: !1169, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{null, !1064}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1117, file: !31, line: 397, baseType: !1173, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!914, !1176, !1196}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1178)
!1178 = !{!1179, !1180, !1181, !1185, !1186, !1187, !1188, !1189}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1177, file: !31, line: 321, baseType: !705, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1177, file: !31, line: 326, baseType: !869, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1177, file: !31, line: 327, baseType: !1182, size: 64, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1176, !303, !303}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1177, file: !31, line: 328, baseType: !293, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1177, file: !31, line: 329, baseType: !294, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1177, file: !31, line: 330, baseType: !304, size: 16, offset: 288)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1177, file: !31, line: 331, baseType: !304, size: 16, offset: 304)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !31, line: 332, baseType: !1190, size: 64, offset: 320)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1177, file: !31, line: 332, size: 64, elements: !1191)
!1191 = !{!1192, !1193}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1190, file: !31, line: 333, baseType: !7, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1190, file: !31, line: 334, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1117, file: !31, line: 402, baseType: !1199, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!294, !1076, !1064, !1064, !11}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1117, file: !31, line: 404, baseType: !1203, size: 64, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!828, !1064, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1207, line: 305, baseType: !7)
!1207 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1117, file: !31, line: 405, baseType: !1169, size: 64, offset: 960)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1117, file: !31, line: 406, baseType: !1132, size: 64, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1117, file: !31, line: 407, baseType: !1211, size: 64, offset: 1088)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{!294, !1064, !480, !480}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1117, file: !31, line: 409, baseType: !1215, size: 64, offset: 1152)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1064, !1218, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1117, file: !31, line: 410, baseType: !1220, size: 64, offset: 1216)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!294, !1076, !1064}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1117, file: !31, line: 413, baseType: !1224, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!294, !1227, !705, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1117, file: !31, line: 415, baseType: !1231, size: 64, offset: 1344)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{null, !705}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1077, file: !31, line: 466, baseType: !480, size: 64, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1077, file: !31, line: 467, baseType: !1236, size: 32, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1237, line: 8, baseType: !301)
!1237 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1077, file: !31, line: 468, baseType: !1085, offset: 992)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1077, file: !31, line: 469, baseType: !529, size: 128, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1077, file: !31, line: 470, baseType: !293, size: 64, offset: 1152)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1072, file: !665, line: 87, baseType: !480, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1072, file: !665, line: 94, baseType: !480, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 96, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 96, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1244, file: !665, line: 101, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !292, line: 143, baseType: !295)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 103, baseType: !1249, size: 320)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 103, size: 320, elements: !1250)
!1250 = !{!1251, !1261, !1264, !1265}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !665, line: 104, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !665, line: 104, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1252, file: !665, line: 105, baseType: !529, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !665, line: 106, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !665, line: 106, size: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !665, line: 107, baseType: !1064, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1256, file: !665, line: 109, baseType: !294, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1256, file: !665, line: 110, baseType: !294, size: 32, offset: 96)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1249, file: !665, line: 117, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !665, line: 117, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1249, file: !665, line: 119, baseType: !293, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !665, line: 120, baseType: !1266, size: 64, offset: 256)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !665, line: 120, size: 64, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1266, file: !665, line: 121, baseType: !293, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1266, file: !665, line: 122, baseType: !480, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !665, line: 123, baseType: !1271, size: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !665, line: 123, size: 32, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1271, file: !665, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1271, file: !665, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1271, file: !665, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 130, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 130, size: 192, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1277, file: !665, line: 131, baseType: !480, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1277, file: !665, line: 134, baseType: !351, size: 8, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1277, file: !665, line: 135, baseType: !351, size: 8, offset: 72)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1277, file: !665, line: 136, baseType: !504, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1277, file: !665, line: 137, baseType: !7, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 139, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 139, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1285, file: !665, line: 140, baseType: !480, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1285, file: !665, line: 141, baseType: !504, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1285, file: !665, line: 143, baseType: !529, size: 128, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 145, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 145, size: 256, elements: !1292)
!1292 = !{!1293, !1294, !1296, !1297, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1291, file: !665, line: 146, baseType: !480, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1291, file: !665, line: 147, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !683, line: 509, baseType: !1064)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1291, file: !665, line: 148, baseType: !480, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !665, line: 149, baseType: !1298, size: 64, offset: 192)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !665, line: 149, size: 64, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1298, file: !665, line: 150, baseType: !663, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1298, file: !665, line: 151, baseType: !504, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1291, file: !665, line: 156, baseType: !1085, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !665, line: 159, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1069, file: !665, line: 159, size: 128, elements: !1305)
!1305 = !{!1306, !1309}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1304, file: !665, line: 161, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !665, line: 161, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1304, file: !665, line: 162, baseType: !293, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1069, file: !665, line: 176, baseType: !718, size: 128, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1065, file: !665, line: 179, baseType: !1312, size: 32, offset: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1065, file: !665, line: 179, size: 32, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1312, file: !665, line: 184, baseType: !504, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1312, file: !665, line: 192, baseType: !7, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1312, file: !665, line: 194, baseType: !7, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1312, file: !665, line: 195, baseType: !294, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1065, file: !665, line: 199, baseType: !504, size: 32, offset: 416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1001, file: !31, line: 1964, baseType: !1320, size: 64, offset: 1344)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!303, !941, !1323}
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1325, line: 12, size: 256, elements: !1326)
!1325 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1326 = !{!1327, !1328, !1329, !1330, !1331}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1324, file: !1325, line: 13, baseType: !291, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1324, file: !1325, line: 16, baseType: !294, size: 32, offset: 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1324, file: !1325, line: 23, baseType: !480, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1324, file: !1325, line: 30, baseType: !480, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1324, file: !1325, line: 33, baseType: !1332, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !665, line: 27, flags: DIFlagFwdDecl)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1001, file: !31, line: 1966, baseType: !1320, size: 64, offset: 1408)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !942, file: !31, line: 1424, baseType: !1336, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !1339)
!1339 = !{!1340, !1392, !1396, !1400, !1401, !1402, !1403, !1404, !1409, !1414, !1418}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1338, file: !19, line: 323, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!294, !1344}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1358, !1359, !1360, !1361, !1377, !1378, !1379}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1345, file: !19, line: 295, baseType: !981, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1345, file: !19, line: 296, baseType: !529, size: 128, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1345, file: !19, line: 297, baseType: !529, size: 128, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1345, file: !19, line: 298, baseType: !529, size: 128, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1345, file: !19, line: 299, baseType: !1352, size: 192, offset: 512)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1353, line: 53, size: 192, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1352, file: !1353, line: 54, baseType: !1102, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1352, file: !1353, line: 55, baseType: !1085, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1352, file: !1353, line: 59, baseType: !529, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1345, file: !19, line: 300, baseType: !1085, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1345, file: !19, line: 301, baseType: !504, size: 32, offset: 704)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1345, file: !19, line: 302, baseType: !941, size: 64, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1345, file: !19, line: 303, baseType: !1362, size: 64, offset: 832)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !1363)
!1363 = !{!1364, !1376}
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !19, line: 69, baseType: !1365, size: 32)
!1365 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !19, line: 69, size: 32, elements: !1366)
!1366 = !{!1367, !1368, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1365, file: !19, line: 70, baseType: !776, size: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1365, file: !19, line: 71, baseType: !784, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1365, file: !19, line: 72, baseType: !1370, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1371, line: 24, baseType: !1372)
!1371 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1371, line: 22, size: 32, elements: !1373)
!1373 = !{!1374}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1372, file: !1371, line: 23, baseType: !1375, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1371, line: 20, baseType: !782)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1362, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1345, file: !19, line: 304, baseType: !869, size: 64, offset: 896)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1345, file: !19, line: 305, baseType: !480, size: 64, offset: 960)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1345, file: !19, line: 306, baseType: !1380, size: 576, offset: 1024)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !1381)
!1381 = !{!1382, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1380, file: !19, line: 206, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !565)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1380, file: !19, line: 207, baseType: !1383, size: 64, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1380, file: !19, line: 208, baseType: !1383, size: 64, offset: 128)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1380, file: !19, line: 209, baseType: !1383, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1380, file: !19, line: 210, baseType: !1383, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1380, file: !19, line: 211, baseType: !1383, size: 64, offset: 320)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1380, file: !19, line: 212, baseType: !1383, size: 64, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1380, file: !19, line: 213, baseType: !876, size: 64, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1380, file: !19, line: 214, baseType: !876, size: 64, offset: 512)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1338, file: !19, line: 324, baseType: !1393, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!1344, !941, !294}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1338, file: !19, line: 325, baseType: !1397, size: 64, offset: 128)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = !DISubroutineType(types: !1399)
!1399 = !{null, !1344}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1338, file: !19, line: 326, baseType: !1341, size: 64, offset: 192)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1338, file: !19, line: 327, baseType: !1341, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1338, file: !19, line: 328, baseType: !1341, size: 64, offset: 320)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1338, file: !19, line: 329, baseType: !1029, size: 64, offset: 384)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1338, file: !19, line: 332, baseType: !1405, size: 64, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1408, !769}
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1338, file: !19, line: 333, baseType: !1410, size: 64, offset: 512)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!294, !769, !1413}
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1338, file: !19, line: 335, baseType: !1415, size: 64, offset: 576)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{!294, !769, !1408}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1338, file: !19, line: 337, baseType: !1419, size: 64, offset: 640)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!294, !941, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !942, file: !31, line: 1425, baseType: !1424, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !1427)
!1427 = !{!1428, !1432, !1433, !1437, !1438, !1439, !1454, !1477, !1481, !1482, !1505}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1426, file: !19, line: 429, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!294, !941, !294, !294, !885}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1426, file: !19, line: 430, baseType: !1029, size: 64, offset: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1426, file: !19, line: 431, baseType: !1434, size: 64, offset: 128)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!294, !941, !7}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1426, file: !19, line: 432, baseType: !1434, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1426, file: !19, line: 433, baseType: !1029, size: 64, offset: 256)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1426, file: !19, line: 434, baseType: !1440, size: 64, offset: 320)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!294, !941, !294, !1443}
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !1445)
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1444, file: !19, line: 416, baseType: !294, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1444, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1444, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1444, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1444, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1444, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1444, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1444, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1426, file: !19, line: 435, baseType: !1455, size: 64, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!294, !941, !1362, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1459, file: !19, line: 344, baseType: !294, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1459, file: !19, line: 345, baseType: !295, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1459, file: !19, line: 346, baseType: !295, size: 64, offset: 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1459, file: !19, line: 347, baseType: !295, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1459, file: !19, line: 348, baseType: !295, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1459, file: !19, line: 349, baseType: !295, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1459, file: !19, line: 350, baseType: !295, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1459, file: !19, line: 351, baseType: !563, size: 64, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1459, file: !19, line: 353, baseType: !563, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1459, file: !19, line: 354, baseType: !294, size: 32, offset: 576)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1459, file: !19, line: 355, baseType: !294, size: 32, offset: 608)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1459, file: !19, line: 356, baseType: !295, size: 64, offset: 640)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1459, file: !19, line: 357, baseType: !295, size: 64, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1459, file: !19, line: 358, baseType: !295, size: 64, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1459, file: !19, line: 359, baseType: !563, size: 64, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1459, file: !19, line: 360, baseType: !294, size: 32, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1426, file: !19, line: 436, baseType: !1478, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{!294, !941, !1422, !1458}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1426, file: !19, line: 438, baseType: !1455, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1426, file: !19, line: 439, baseType: !1483, size: 64, offset: 576)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!294, !941, !1486}
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1487, file: !19, line: 410, baseType: !7, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1487, file: !19, line: 411, baseType: !1491, size: 1344, offset: 64)
!1491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1492, size: 1344, elements: !993)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1504}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !19, line: 396, baseType: !7, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1492, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1492, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1492, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1492, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1492, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1492, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1492, file: !19, line: 404, baseType: !299, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1492, file: !19, line: 405, baseType: !1503, size: 64, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !292, line: 126, baseType: !295)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1492, file: !19, line: 406, baseType: !1503, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1426, file: !19, line: 440, baseType: !1434, size: 64, offset: 640)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !942, file: !31, line: 1426, baseType: !1507, size: 64, offset: 576)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1509)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !942, file: !31, line: 1427, baseType: !480, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !942, file: !31, line: 1428, baseType: !480, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !942, file: !31, line: 1429, baseType: !480, size: 64, offset: 768)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !942, file: !31, line: 1430, baseType: !735, size: 64, offset: 832)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !942, file: !31, line: 1431, baseType: !1098, size: 256, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !942, file: !31, line: 1432, baseType: !294, size: 32, offset: 1152)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !942, file: !31, line: 1433, baseType: !504, size: 32, offset: 1184)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !942, file: !31, line: 1437, baseType: !1518, size: 64, offset: 1216)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !942, file: !31, line: 1449, baseType: !1523, size: 64, offset: 1280)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !746, line: 34, size: 64, elements: !1524)
!1524 = !{!1525}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1523, file: !746, line: 35, baseType: !749, size: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !942, file: !31, line: 1450, baseType: !529, size: 128, offset: 1344)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !942, file: !31, line: 1451, baseType: !1528, size: 64, offset: 1472)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !942, file: !31, line: 1452, baseType: !1531, size: 64, offset: 1536)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !487, line: 40, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !942, file: !31, line: 1453, baseType: !1534, size: 64, offset: 1600)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !942, file: !31, line: 1454, baseType: !981, size: 128, offset: 1664)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !942, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !942, file: !31, line: 1456, baseType: !1539, size: 2432, offset: 1856)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !1540)
!1540 = !{!1541, !1542, !1543, !1545, !1577}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !19, line: 519, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1539, file: !19, line: 520, baseType: !1098, size: 256, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1539, file: !19, line: 521, baseType: !1544, size: 192, offset: 320)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !769, size: 192, elements: !993)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1539, file: !19, line: 522, baseType: !1546, size: 1728, offset: 512)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1547, size: 1728, elements: !993)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !1548)
!1548 = !{!1549, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1547, file: !19, line: 223, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !1552)
!1552 = !{!1553, !1554, !1567, !1568}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1551, file: !19, line: 444, baseType: !294, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1551, file: !19, line: 445, baseType: !1555, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !1558)
!1558 = !{!1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1557, file: !19, line: 311, baseType: !1029, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1557, file: !19, line: 312, baseType: !1029, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1557, file: !19, line: 313, baseType: !1029, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1557, file: !19, line: 314, baseType: !1029, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1557, file: !19, line: 315, baseType: !1341, size: 64, offset: 256)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1557, file: !19, line: 316, baseType: !1341, size: 64, offset: 320)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1557, file: !19, line: 317, baseType: !1341, size: 64, offset: 384)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1557, file: !19, line: 318, baseType: !1419, size: 64, offset: 448)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1551, file: !19, line: 446, baseType: !319, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1551, file: !19, line: 447, baseType: !1550, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1547, file: !19, line: 224, baseType: !294, size: 32, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1547, file: !19, line: 226, baseType: !529, size: 128, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1547, file: !19, line: 227, baseType: !480, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1547, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1547, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1547, file: !19, line: 230, baseType: !1383, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1547, file: !19, line: 231, baseType: !1383, size: 64, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1547, file: !19, line: 232, baseType: !293, size: 64, offset: 512)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1539, file: !19, line: 523, baseType: !1578, size: 192, offset: 2240)
!1578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1555, size: 192, elements: !993)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !942, file: !31, line: 1458, baseType: !1580, size: 2112, offset: 4288)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !1581)
!1581 = !{!1582, !1583, !1590}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1580, file: !31, line: 1411, baseType: !294, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1580, file: !31, line: 1412, baseType: !1584, size: 128, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1585, line: 40, baseType: !1586)
!1585 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1585, line: 36, size: 128, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1586, file: !1585, line: 37, baseType: !1085)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1586, file: !1585, line: 38, baseType: !529, size: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1580, file: !31, line: 1413, baseType: !1591, size: 1920, offset: 192)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1592, size: 1920, elements: !993)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1593, line: 12, size: 640, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1603, !1604, !1609, !1610}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1592, file: !1593, line: 13, baseType: !1596, size: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1597, line: 17, size: 320, elements: !1598)
!1597 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !{!1599, !1600, !1601, !1602}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1596, file: !1597, line: 18, baseType: !294, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1596, file: !1597, line: 19, baseType: !294, size: 32, offset: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1596, file: !1597, line: 20, baseType: !1584, size: 128, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1596, file: !1597, line: 22, baseType: !718, size: 128, align: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1592, file: !1593, line: 14, baseType: !371, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1592, file: !1593, line: 15, baseType: !1605, size: 64, offset: 384)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1606, line: 16, size: 64, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1605, file: !1606, line: 17, baseType: !485, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1592, file: !1593, line: 16, baseType: !1584, size: 128, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1592, file: !1593, line: 17, baseType: !504, size: 32, offset: 576)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !942, file: !31, line: 1465, baseType: !293, size: 64, offset: 6400)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !942, file: !31, line: 1468, baseType: !301, size: 32, offset: 6464)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !942, file: !31, line: 1470, baseType: !876, size: 64, offset: 6528)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !942, file: !31, line: 1471, baseType: !876, size: 64, offset: 6592)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !942, file: !31, line: 1473, baseType: !302, size: 32, offset: 6656)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !942, file: !31, line: 1474, baseType: !1617, size: 64, offset: 6720)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !942, file: !31, line: 1477, baseType: !1620, size: 256, offset: 6784)
!1620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 256, elements: !377)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !942, file: !31, line: 1478, baseType: !1622, size: 128, offset: 7040)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1623, line: 18, baseType: !1624)
!1623 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 16, size: 128, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1624, file: !1623, line: 17, baseType: !1627, size: 128)
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 128, elements: !1628)
!1628 = !{!1629}
!1629 = !DISubrange(count: 16)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !942, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !942, file: !31, line: 1481, baseType: !1632, size: 32, offset: 7200)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !292, line: 150, baseType: !7)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !942, file: !31, line: 1487, baseType: !1352, size: 192, offset: 7232)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !942, file: !31, line: 1493, baseType: !315, size: 64, offset: 7424)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !942, file: !31, line: 1495, baseType: !1636, size: 64, offset: 7488)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1638)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !733, line: 135, size: 1024, align: 512, elements: !1639)
!1639 = !{!1640, !1644, !1645, !1652, !1658, !1662, !1666, !1670, !1671, !1675, !1679, !1684, !1688}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1638, file: !733, line: 136, baseType: !1641, size: 64)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!294, !735, !7}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1638, file: !733, line: 137, baseType: !1641, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1638, file: !733, line: 138, baseType: !1646, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!294, !1649, !1651}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1638, file: !733, line: 139, baseType: !1653, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!294, !1649, !7, !315, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !754)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1638, file: !733, line: 141, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!294, !1649}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1638, file: !733, line: 142, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!294, !735}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1638, file: !733, line: 143, baseType: !1667, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !735}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1638, file: !733, line: 144, baseType: !1667, size: 64, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1638, file: !733, line: 145, baseType: !1672, size: 64, offset: 512)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !735, !769}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1638, file: !733, line: 146, baseType: !1676, size: 64, offset: 576)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!337, !735, !337, !294}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1638, file: !733, line: 147, baseType: !1680, size: 64, offset: 640)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!731, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1638, file: !733, line: 148, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!294, !885, !828}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1638, file: !733, line: 149, baseType: !1689, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!735, !735, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !942, file: !31, line: 1500, baseType: !294, size: 32, offset: 7552)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !942, file: !31, line: 1502, baseType: !1696, size: 448, offset: 7616)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1325, line: 60, size: 448, elements: !1697)
!1697 = !{!1698, !1703, !1704, !1705, !1706, !1707, !1708}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1696, file: !1325, line: 61, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!480, !1702, !1323}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1696, file: !1325, line: 63, baseType: !1699, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1696, file: !1325, line: 66, baseType: !303, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1696, file: !1325, line: 67, baseType: !294, size: 32, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1325, line: 68, baseType: !7, size: 32, offset: 224)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1696, file: !1325, line: 71, baseType: !529, size: 128, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1696, file: !1325, line: 77, baseType: !1709, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !942, file: !31, line: 1505, baseType: !1102, size: 64, offset: 8064)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !942, file: !31, line: 1508, baseType: !1102, size: 64, offset: 8128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !942, file: !31, line: 1511, baseType: !294, size: 32, offset: 8192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !942, file: !31, line: 1514, baseType: !1236, size: 32, offset: 8224)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !942, file: !31, line: 1517, baseType: !1715, size: 64, offset: 8256)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1717, line: 18, flags: DIFlagFwdDecl)
!1717 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !942, file: !31, line: 1518, baseType: !977, size: 64, offset: 8320)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !942, file: !31, line: 1525, baseType: !1720, size: 64, offset: 8384)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !665, line: 516, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !942, file: !31, line: 1532, baseType: !1723, size: 64, offset: 8448)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1724, line: 52, size: 64, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1723, file: !1724, line: 53, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1724, line: 40, size: 256, elements: !1729)
!1729 = !{!1730, !1731, !1736}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1728, file: !1724, line: 42, baseType: !1085)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1728, file: !1724, line: 44, baseType: !1732, size: 192)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1724, line: 28, size: 192, elements: !1733)
!1733 = !{!1734, !1735}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1732, file: !1724, line: 29, baseType: !529, size: 128)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1732, file: !1724, line: 31, baseType: !303, size: 64, offset: 128)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1728, file: !1724, line: 49, baseType: !303, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !942, file: !31, line: 1533, baseType: !1723, size: 64, offset: 8512)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !942, file: !31, line: 1534, baseType: !718, size: 128, align: 64, offset: 8576)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !942, file: !31, line: 1535, baseType: !1740, size: 256, offset: 8704)
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1717, line: 102, size: 256, elements: !1741)
!1741 = !{!1742, !1743, !1744}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1740, file: !1717, line: 103, baseType: !1102, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1740, file: !1717, line: 104, baseType: !529, size: 128, offset: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1740, file: !1717, line: 105, baseType: !1745, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1717, line: 21, baseType: !1746)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{null, !1749}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !942, file: !31, line: 1537, baseType: !1352, size: 192, offset: 8960)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !942, file: !31, line: 1542, baseType: !294, size: 32, offset: 9152)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !942, file: !31, line: 1545, baseType: !1085, offset: 9184)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !942, file: !31, line: 1546, baseType: !529, size: 128, offset: 9216)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !942, file: !31, line: 1548, baseType: !1085, offset: 9344)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !942, file: !31, line: 1549, baseType: !529, size: 128, offset: 9344)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !770, file: !31, line: 624, baseType: !1076, size: 64, offset: 256)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !770, file: !31, line: 631, baseType: !480, size: 64, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !31, line: 639, baseType: !1759, size: 32, offset: 384)
!1759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !31, line: 639, size: 32, elements: !1760)
!1760 = !{!1761, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1759, file: !31, line: 640, baseType: !1762, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1759, file: !31, line: 641, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !770, file: !31, line: 643, baseType: !851, size: 32, offset: 416)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !770, file: !31, line: 644, baseType: !869, size: 64, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !770, file: !31, line: 645, baseType: !872, size: 128, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !770, file: !31, line: 646, baseType: !872, size: 128, offset: 640)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !770, file: !31, line: 647, baseType: !872, size: 128, offset: 768)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !770, file: !31, line: 648, baseType: !1085, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !770, file: !31, line: 649, baseType: !306, size: 16, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !770, file: !31, line: 650, baseType: !349, size: 8, offset: 912)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !770, file: !31, line: 651, baseType: !349, size: 8, offset: 920)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !770, file: !31, line: 652, baseType: !1503, size: 64, offset: 960)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !770, file: !31, line: 659, baseType: !480, size: 64, offset: 1024)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !770, file: !31, line: 660, baseType: !1098, size: 256, offset: 1088)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !770, file: !31, line: 662, baseType: !480, size: 64, offset: 1344)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !770, file: !31, line: 663, baseType: !480, size: 64, offset: 1408)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !770, file: !31, line: 665, baseType: !981, size: 128, offset: 1472)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !770, file: !31, line: 666, baseType: !529, size: 128, offset: 1600)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !770, file: !31, line: 675, baseType: !529, size: 128, offset: 1728)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !770, file: !31, line: 676, baseType: !529, size: 128, offset: 1856)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !770, file: !31, line: 677, baseType: !529, size: 128, offset: 1984)
!1783 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !31, line: 678, baseType: !1784, size: 128, offset: 2112)
!1784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !31, line: 678, size: 128, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1784, file: !31, line: 679, baseType: !977, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1784, file: !31, line: 680, baseType: !718, size: 128, align: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !770, file: !31, line: 682, baseType: !1104, size: 64, offset: 2240)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !770, file: !31, line: 683, baseType: !1104, size: 64, offset: 2304)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !770, file: !31, line: 684, baseType: !504, size: 32, offset: 2368)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !770, file: !31, line: 685, baseType: !504, size: 32, offset: 2400)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !770, file: !31, line: 686, baseType: !504, size: 32, offset: 2432)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !770, file: !31, line: 688, baseType: !504, size: 32, offset: 2464)
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !31, line: 690, baseType: !1795, size: 64, offset: 2496)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !31, line: 690, size: 64, elements: !1796)
!1796 = !{!1797, !2034}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1795, file: !31, line: 691, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !1801)
!1801 = !{!1802, !1803, !1807, !1812, !1816, !1817, !1818, !1822, !1835, !1836, !1853, !1857, !1858, !1862, !1863, !1867, !1872, !1873, !1877, !1881, !1989, !1993, !1997, !2001, !2002, !2008, !2012, !2017, !2021, !2025, !2029, !2033}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1800, file: !31, line: 1823, baseType: !319, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1800, file: !31, line: 1824, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!869, !705, !869, !294}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1800, file: !31, line: 1825, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!914, !705, !337, !917, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1800, file: !31, line: 1826, baseType: !1813, size: 64, offset: 192)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!914, !705, !315, !917, !1811}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1800, file: !31, line: 1827, baseType: !1173, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1800, file: !31, line: 1828, baseType: !1173, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1800, file: !31, line: 1829, baseType: !1819, size: 64, offset: 384)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!294, !1176, !828}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1800, file: !31, line: 1830, baseType: !1823, size: 64, offset: 448)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!294, !705, !1826}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !1828)
!1828 = !{!1829, !1834}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1827, file: !31, line: 1777, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !1831)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!294, !1826, !315, !294, !869, !295, !7}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1827, file: !31, line: 1778, baseType: !869, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1800, file: !31, line: 1831, baseType: !1823, size: 64, offset: 512)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1800, file: !31, line: 1832, baseType: !1837, size: 64, offset: 576)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!1840, !705, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1841, line: 52, baseType: !7)
!1841 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1844, line: 43, size: 128, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1845 = !{!1846, !1852}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1843, file: !1844, line: 44, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1844, line: 37, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !705, !1851, !1842}
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1843, file: !1844, line: 45, baseType: !1840, size: 32, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1800, file: !31, line: 1833, baseType: !1854, size: 64, offset: 640)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!303, !705, !7, !480}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1800, file: !31, line: 1834, baseType: !1854, size: 64, offset: 704)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1800, file: !31, line: 1835, baseType: !1859, size: 64, offset: 768)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!294, !705, !671}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1800, file: !31, line: 1836, baseType: !480, size: 64, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1800, file: !31, line: 1837, baseType: !1864, size: 64, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!294, !769, !705}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1800, file: !31, line: 1838, baseType: !1868, size: 64, offset: 960)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!294, !705, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !293)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1800, file: !31, line: 1839, baseType: !1864, size: 64, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1800, file: !31, line: 1840, baseType: !1874, size: 64, offset: 1088)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!294, !705, !869, !869, !294}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1800, file: !31, line: 1841, baseType: !1878, size: 64, offset: 1152)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!294, !294, !705, !294}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1800, file: !31, line: 1842, baseType: !1882, size: 64, offset: 1216)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DISubroutineType(types: !1884)
!1884 = !{!294, !705, !294, !1885}
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1919, !1920, !1921, !1934, !1965}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1886, file: !31, line: 1063, baseType: !1885, size: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1886, file: !31, line: 1064, baseType: !529, size: 128, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1886, file: !31, line: 1065, baseType: !981, size: 128, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1886, file: !31, line: 1066, baseType: !529, size: 128, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1886, file: !31, line: 1069, baseType: !529, size: 128, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1886, file: !31, line: 1072, baseType: !1871, size: 64, offset: 576)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1886, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1886, file: !31, line: 1074, baseType: !351, size: 8, offset: 672)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1886, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1886, file: !31, line: 1076, baseType: !294, size: 32, offset: 736)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1886, file: !31, line: 1077, baseType: !1584, size: 128, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1886, file: !31, line: 1078, baseType: !705, size: 64, offset: 896)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1886, file: !31, line: 1079, baseType: !869, size: 64, offset: 960)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1886, file: !31, line: 1080, baseType: !869, size: 64, offset: 1024)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1886, file: !31, line: 1082, baseType: !1903, size: 64, offset: 1088)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !1905)
!1905 = !{!1906, !1914, !1915, !1916, !1917, !1918}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1904, file: !31, line: 1315, baseType: !1907)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1908, line: 20, baseType: !1909)
!1908 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1908, line: 11, elements: !1910)
!1910 = !{!1911}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1909, file: !1908, line: 12, baseType: !1912)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !465, line: 33, baseType: !1913)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !465, line: 31, elements: !467)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1904, file: !31, line: 1316, baseType: !294, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1904, file: !31, line: 1317, baseType: !294, size: 32, offset: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1904, file: !31, line: 1318, baseType: !1903, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1904, file: !31, line: 1319, baseType: !705, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1904, file: !31, line: 1320, baseType: !718, size: 128, align: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1886, file: !31, line: 1084, baseType: !480, size: 64, offset: 1152)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1886, file: !31, line: 1085, baseType: !480, size: 64, offset: 1216)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1886, file: !31, line: 1087, baseType: !1922, size: 64, offset: 1280)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1924)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !1925)
!1925 = !{!1926, !1930}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1924, file: !31, line: 1012, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !1885, !1885}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1924, file: !31, line: 1013, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !1885}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1886, file: !31, line: 1088, baseType: !1935, size: 64, offset: 1344)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !1938)
!1938 = !{!1939, !1943, !1947, !1948, !1952, !1956, !1960, !1964}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1937, file: !31, line: 1017, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1871, !1871}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1937, file: !31, line: 1018, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{null, !1871}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1937, file: !31, line: 1019, baseType: !1931, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1937, file: !31, line: 1020, baseType: !1949, size: 64, offset: 192)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!294, !1885, !294}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1937, file: !31, line: 1021, baseType: !1953, size: 64, offset: 256)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!828, !1885}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1937, file: !31, line: 1022, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!294, !1885, !294, !532}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1937, file: !31, line: 1023, baseType: !1961, size: 64, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1885, !1150}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1937, file: !31, line: 1024, baseType: !1953, size: 64, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1886, file: !31, line: 1097, baseType: !1966, size: 256, offset: 1408)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1886, file: !31, line: 1089, size: 256, elements: !1967)
!1967 = !{!1968, !1977, !1983}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1966, file: !31, line: 1090, baseType: !1969, size: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1970, line: 10, size: 256, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1971 = !{!1972, !1973, !1976}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1969, file: !1970, line: 11, baseType: !301, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1969, file: !1970, line: 12, baseType: !1974, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1970, line: 5, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1969, file: !1970, line: 13, baseType: !529, size: 128, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1966, file: !31, line: 1091, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1970, line: 17, size: 64, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1978, file: !1970, line: 18, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1970, line: 16, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1966, file: !31, line: 1096, baseType: !1984, size: 192)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1966, file: !31, line: 1092, size: 192, elements: !1985)
!1985 = !{!1986, !1987, !1988}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1984, file: !31, line: 1093, baseType: !529, size: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1984, file: !31, line: 1094, baseType: !294, size: 32, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1984, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1800, file: !31, line: 1843, baseType: !1990, size: 64, offset: 1280)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!914, !705, !1064, !294, !917, !1811, !294}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1800, file: !31, line: 1844, baseType: !1994, size: 64, offset: 1344)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!480, !705, !480, !480, !480, !480}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1800, file: !31, line: 1845, baseType: !1998, size: 64, offset: 1408)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!294, !294}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1800, file: !31, line: 1846, baseType: !1882, size: 64, offset: 1472)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1800, file: !31, line: 1847, baseType: !2003, size: 64, offset: 1536)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!914, !2006, !705, !1811, !917, !7}
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !487, line: 53, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1800, file: !31, line: 1848, baseType: !2009, size: 64, offset: 1600)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!914, !705, !1811, !2006, !917, !7}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1800, file: !31, line: 1849, baseType: !2013, size: 64, offset: 1664)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!294, !705, !303, !2016, !1150}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1800, file: !31, line: 1850, baseType: !2018, size: 64, offset: 1728)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!303, !705, !294, !869, !869}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1800, file: !31, line: 1852, baseType: !2022, size: 64, offset: 1792)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1055, !705}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1800, file: !31, line: 1856, baseType: !2026, size: 64, offset: 1856)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!914, !705, !869, !705, !869, !917, !7}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1800, file: !31, line: 1858, baseType: !2030, size: 64, offset: 1920)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{!869, !705, !869, !705, !869, !869, !7}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1800, file: !31, line: 1861, baseType: !1874, size: 64, offset: 1984)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1795, file: !31, line: 692, baseType: !1008, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !770, file: !31, line: 694, baseType: !2036, size: 64, offset: 2560)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2038)
!2038 = !{!2039, !2040, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2037, file: !31, line: 1101, baseType: !1085)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2037, file: !31, line: 1102, baseType: !529, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2037, file: !31, line: 1103, baseType: !529, size: 128, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2037, file: !31, line: 1104, baseType: !529, size: 128, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !770, file: !31, line: 695, baseType: !1077, size: 1216, align: 64, offset: 2624)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !770, file: !31, line: 696, baseType: !529, size: 128, offset: 3840)
!2045 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !31, line: 697, baseType: !2046, size: 64, offset: 3968)
!2046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !31, line: 697, size: 64, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2361, !2362}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2046, file: !31, line: 698, baseType: !2006, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2046, file: !31, line: 699, baseType: !1528, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2046, file: !31, line: 700, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2053, line: 14, size: 832, elements: !2054)
!2053 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2054 = !{!2055, !2356, !2357, !2358, !2359, !2360}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2052, file: !2053, line: 15, baseType: !2056, size: 512)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2057, line: 64, size: 512, elements: !2058)
!2057 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059, !2060, !2061, !2063, !2105, !2207, !2346, !2351, !2352, !2353, !2354, !2355}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2056, file: !2057, line: 65, baseType: !315, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2056, file: !2057, line: 66, baseType: !529, size: 128, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2056, file: !2057, line: 67, baseType: !2062, size: 64, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2056, file: !2057, line: 68, baseType: !2064, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2057, line: 192, size: 704, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2065, file: !2057, line: 193, baseType: !529, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2065, file: !2057, line: 194, baseType: !1085, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2065, file: !2057, line: 195, baseType: !2056, size: 512, offset: 128)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2065, file: !2057, line: 196, baseType: !2071, size: 64, offset: 640)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2073)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2057, line: 156, size: 192, elements: !2074)
!2074 = !{!2075, !2080, !2085}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2073, file: !2057, line: 157, baseType: !2076, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2077)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!294, !2064, !2062}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2073, file: !2057, line: 158, baseType: !2081, size: 64, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!315, !2064, !2062}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2073, file: !2057, line: 159, baseType: !2086, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!294, !2064, !2062, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2057, line: 148, size: 20736, elements: !2092)
!2092 = !{!2093, !2095, !2099, !2100, !2104}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2091, file: !2057, line: 149, baseType: !2094, size: 192)
!2094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 192, elements: !993)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2091, file: !2057, line: 150, baseType: !2096, size: 4096, offset: 192)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2091, file: !2057, line: 151, baseType: !294, size: 32, offset: 4288)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2091, file: !2057, line: 152, baseType: !2101, size: 16384, offset: 4320)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 16384, elements: !2102)
!2102 = !{!2103}
!2103 = !DISubrange(count: 2048)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2091, file: !2057, line: 153, baseType: !294, size: 32, offset: 20704)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2056, file: !2057, line: 69, baseType: !2106, size: 64, offset: 320)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2057, line: 138, size: 448, elements: !2108)
!2108 = !{!2109, !2113, !2132, !2134, !2167, !2197, !2201}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2107, file: !2057, line: 139, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{null, !2062}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2107, file: !2057, line: 140, baseType: !2114, size: 64, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2117, line: 230, size: 128, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2128}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2116, file: !2117, line: 231, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!914, !2062, !2123, !337}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2117, line: 30, size: 128, elements: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2124, file: !2117, line: 31, baseType: !315, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2124, file: !2117, line: 32, baseType: !773, size: 16, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2116, file: !2117, line: 232, baseType: !2129, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!914, !2062, !2123, !315, !917}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2107, file: !2057, line: 141, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2107, file: !2057, line: 142, baseType: !2135, size: 64, offset: 192)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2117, line: 84, size: 320, elements: !2139)
!2139 = !{!2140, !2141, !2145, !2164, !2165}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2138, file: !2117, line: 85, baseType: !315, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2138, file: !2117, line: 86, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!773, !2062, !2123, !294}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2138, file: !2117, line: 88, baseType: !2146, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!773, !2062, !2149, !294}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2117, line: 168, size: 448, elements: !2151)
!2151 = !{!2152, !2153, !2154, !2155, !2159, !2160}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2150, file: !2117, line: 169, baseType: !2124, size: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2150, file: !2117, line: 170, baseType: !917, size: 64, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2150, file: !2117, line: 171, baseType: !293, size: 64, offset: 192)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2150, file: !2117, line: 172, baseType: !2156, size: 64, offset: 256)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!914, !705, !2062, !2149, !337, !869, !917}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2150, file: !2117, line: 174, baseType: !2156, size: 64, offset: 320)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2150, file: !2117, line: 176, baseType: !2161, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!294, !705, !2062, !2149, !671}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2138, file: !2117, line: 90, baseType: !2133, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2138, file: !2117, line: 91, baseType: !2166, size: 64, offset: 256)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2107, file: !2057, line: 143, baseType: !2168, size: 64, offset: 256)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!2171, !2062}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !2174)
!2174 = !{!2175, !2176, !2180, !2184, !2192, !2196}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2173, file: !25, line: 40, baseType: !24, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2173, file: !25, line: 41, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!828}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2173, file: !25, line: 42, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!293}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2173, file: !25, line: 43, baseType: !2185, size: 64, offset: 192)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!2188, !2190}
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2173, file: !25, line: 44, baseType: !2193, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!2188}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2173, file: !25, line: 45, baseType: !339, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2107, file: !2057, line: 144, baseType: !2198, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2188, !2062}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2107, file: !2057, line: 145, baseType: !2202, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{null, !2062, !2205, !2206}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2056, file: !2057, line: 70, baseType: !2208, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !961, line: 123, size: 1024, elements: !2210)
!2210 = !{!2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2339, !2340, !2341, !2342, !2343}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2209, file: !961, line: 124, baseType: !504, size: 32)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2209, file: !961, line: 125, baseType: !504, size: 32, offset: 32)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2209, file: !961, line: 135, baseType: !2208, size: 64, offset: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2209, file: !961, line: 136, baseType: !315, size: 64, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2209, file: !961, line: 138, baseType: !477, size: 192, align: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2209, file: !961, line: 140, baseType: !2188, size: 64, offset: 384)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2209, file: !961, line: 141, baseType: !7, size: 32, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2209, file: !961, line: 142, baseType: !2219, size: 256, offset: 512)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2209, file: !961, line: 142, size: 256, elements: !2220)
!2220 = !{!2221, !2267, !2271}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2219, file: !961, line: 143, baseType: !2222, size: 192)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !961, line: 91, size: 192, elements: !2223)
!2223 = !{!2224, !2225, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2222, file: !961, line: 92, baseType: !480, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2222, file: !961, line: 94, baseType: !473, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2222, file: !961, line: 100, baseType: !2227, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !961, line: 180, size: 704, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2239, !2240, !2241, !2265, !2266}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2228, file: !961, line: 182, baseType: !2208, size: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2228, file: !961, line: 183, baseType: !7, size: 32, offset: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2228, file: !961, line: 186, baseType: !2233, size: 192, offset: 128)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2234, line: 19, size: 192, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2237, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2233, file: !2234, line: 20, baseType: !1081, size: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2233, file: !2234, line: 21, baseType: !7, size: 32, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2233, file: !2234, line: 22, baseType: !7, size: 32, offset: 160)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2228, file: !961, line: 187, baseType: !301, size: 32, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2228, file: !961, line: 188, baseType: !301, size: 32, offset: 352)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2228, file: !961, line: 189, baseType: !2242, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !961, line: 168, size: 320, elements: !2244)
!2244 = !{!2245, !2249, !2253, !2257, !2261}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2243, file: !961, line: 169, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!294, !1055, !2227}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2243, file: !961, line: 171, baseType: !2250, size: 64, offset: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!294, !2208, !315, !773}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2243, file: !961, line: 173, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!294, !2208}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2243, file: !961, line: 174, baseType: !2258, size: 64, offset: 192)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!294, !2208, !2208, !315}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2243, file: !961, line: 176, baseType: !2262, size: 64, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!294, !1055, !2208, !2227}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2228, file: !961, line: 192, baseType: !529, size: 128, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2228, file: !961, line: 194, baseType: !1584, size: 128, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2219, file: !961, line: 144, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !961, line: 103, size: 64, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2268, file: !961, line: 104, baseType: !2208, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2219, file: !961, line: 145, baseType: !2272, size: 256)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !961, line: 107, size: 256, elements: !2273)
!2273 = !{!2274, !2334, !2337, !2338}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2272, file: !961, line: 108, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !961, line: 217, size: 768, elements: !2278)
!2278 = !{!2279, !2299, !2303, !2307, !2311, !2315, !2319, !2323, !2324, !2325, !2326, !2330}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2277, file: !961, line: 222, baseType: !2280, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!294, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !961, line: 197, size: 1088, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2284, file: !961, line: 199, baseType: !2208, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2284, file: !961, line: 200, baseType: !705, size: 64, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2284, file: !961, line: 201, baseType: !1055, size: 64, offset: 128)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2284, file: !961, line: 202, baseType: !293, size: 64, offset: 192)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2284, file: !961, line: 205, baseType: !1352, size: 192, offset: 256)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2284, file: !961, line: 206, baseType: !1352, size: 192, offset: 448)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2284, file: !961, line: 207, baseType: !294, size: 32, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2284, file: !961, line: 208, baseType: !529, size: 128, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2284, file: !961, line: 209, baseType: !337, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2284, file: !961, line: 211, baseType: !917, size: 64, offset: 896)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2284, file: !961, line: 212, baseType: !828, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2284, file: !961, line: 213, baseType: !828, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2284, file: !961, line: 214, baseType: !700, size: 64, offset: 1024)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2277, file: !961, line: 223, baseType: !2300, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2283}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2277, file: !961, line: 236, baseType: !2304, size: 64, offset: 128)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!294, !1055, !293}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2277, file: !961, line: 238, baseType: !2308, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!293, !1055, !1811}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2277, file: !961, line: 239, baseType: !2312, size: 64, offset: 256)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!293, !1055, !293, !1811}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2277, file: !961, line: 240, baseType: !2316, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{null, !1055, !293}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2277, file: !961, line: 242, baseType: !2320, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{!914, !2283, !337, !917, !869}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2277, file: !961, line: 252, baseType: !917, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2277, file: !961, line: 259, baseType: !828, size: 8, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2277, file: !961, line: 260, baseType: !2320, size: 64, offset: 576)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2277, file: !961, line: 263, baseType: !2327, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!1840, !2283, !1842}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2277, file: !961, line: 266, baseType: !2331, size: 64, offset: 704)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!294, !2283, !671}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2272, file: !961, line: 109, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !961, line: 31, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2272, file: !961, line: 110, baseType: !869, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2272, file: !961, line: 111, baseType: !2208, size: 64, offset: 192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2209, file: !961, line: 148, baseType: !293, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2209, file: !961, line: 154, baseType: !295, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2209, file: !961, line: 156, baseType: !306, size: 16, offset: 896)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2209, file: !961, line: 157, baseType: !773, size: 16, offset: 912)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2209, file: !961, line: 158, baseType: !2344, size: 64, offset: 960)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !961, line: 32, flags: DIFlagFwdDecl)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2056, file: !2057, line: 71, baseType: !2347, size: 32, offset: 448)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2348, line: 19, size: 32, elements: !2349)
!2348 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2349 = !{!2350}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2347, file: !2348, line: 20, baseType: !499, size: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2056, file: !2057, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2056, file: !2057, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2056, file: !2057, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2056, file: !2057, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2056, file: !2057, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2052, file: !2053, line: 16, baseType: !319, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2052, file: !2053, line: 17, baseType: !1798, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2052, file: !2053, line: 18, baseType: !529, size: 128, offset: 640)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2052, file: !2053, line: 19, baseType: !851, size: 32, offset: 768)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2052, file: !2053, line: 20, baseType: !7, size: 32, offset: 800)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2046, file: !31, line: 701, baseType: !337, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2046, file: !31, line: 702, baseType: !7, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !770, file: !31, line: 705, baseType: !302, size: 32, offset: 4032)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !770, file: !31, line: 708, baseType: !302, size: 32, offset: 4064)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !770, file: !31, line: 709, baseType: !1617, size: 64, offset: 4096)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !770, file: !31, line: 720, baseType: !293, size: 64, offset: 4160)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !736, file: !733, line: 98, baseType: !2368, size: 256, offset: 448)
!2368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !377)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !736, file: !733, line: 101, baseType: !2370, size: 32, offset: 704)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2371, line: 25, size: 32, elements: !2372)
!2371 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2372 = !{!2373}
!2373 = !DIDerivedType(tag: DW_TAG_member, scope: !2370, file: !2371, line: 26, baseType: !2374, size: 32)
!2374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2370, file: !2371, line: 26, size: 32, elements: !2375)
!2375 = !{!2376}
!2376 = !DIDerivedType(tag: DW_TAG_member, scope: !2374, file: !2371, line: 30, baseType: !2377, size: 32)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2374, file: !2371, line: 30, size: 32, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2377, file: !2371, line: 31, baseType: !1085)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2377, file: !2371, line: 32, baseType: !294, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !736, file: !733, line: 102, baseType: !1636, size: 64, offset: 768)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !736, file: !733, line: 103, baseType: !941, size: 64, offset: 832)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !736, file: !733, line: 104, baseType: !480, size: 64, offset: 896)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !736, file: !733, line: 105, baseType: !293, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, scope: !736, file: !733, line: 107, baseType: !2386, size: 128, offset: 1024)
!2386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !733, line: 107, size: 128, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2386, file: !733, line: 108, baseType: !529, size: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2386, file: !733, line: 109, baseType: !1851, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !736, file: !733, line: 111, baseType: !529, size: 128, offset: 1152)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !736, file: !733, line: 112, baseType: !529, size: 128, offset: 1280)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !736, file: !733, line: 120, baseType: !2393, size: 128, offset: 1408)
!2393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !736, file: !733, line: 116, size: 128, elements: !2394)
!2394 = !{!2395, !2396, !2397}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2393, file: !733, line: 117, baseType: !981, size: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2393, file: !733, line: 118, baseType: !745, size: 128)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2393, file: !733, line: 119, baseType: !718, size: 128, align: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !706, file: !31, line: 922, baseType: !769, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !706, file: !31, line: 923, baseType: !1798, size: 64, offset: 320)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !706, file: !31, line: 929, baseType: !1085, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !706, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !706, file: !31, line: 931, baseType: !1102, size: 64, offset: 448)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !706, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !706, file: !31, line: 933, baseType: !1632, size: 32, offset: 544)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !706, file: !31, line: 934, baseType: !1352, size: 192, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !706, file: !31, line: 935, baseType: !869, size: 64, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !706, file: !31, line: 936, baseType: !2408, size: 192, offset: 832)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2409)
!2409 = !{!2410, !2411, !2433, !2434, !2435, !2436}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2408, file: !31, line: 886, baseType: !1907)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2408, file: !31, line: 887, baseType: !2412, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418, !2422, !2423, !2424, !2425}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2413, file: !40, line: 61, baseType: !499, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2413, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2413, file: !40, line: 63, baseType: !1085, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2413, file: !40, line: 65, baseType: !2419, size: 256, offset: 64)
!2419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 256, elements: !2420)
!2420 = !{!2421}
!2421 = !DISubrange(count: 4)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !2413, file: !40, line: 66, baseType: !977, size: 64, offset: 320)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !2413, file: !40, line: 68, baseType: !1584, size: 128, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2413, file: !40, line: 69, baseType: !718, size: 128, align: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !2413, file: !40, line: 70, baseType: !2426, size: 128, offset: 640)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2427, size: 128, elements: !656)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !2428)
!2428 = !{!2429, !2430}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2427, file: !40, line: 55, baseType: !294, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2427, file: !40, line: 56, baseType: !2431, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2408, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2408, file: !31, line: 889, baseType: !776, size: 32, offset: 96)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2408, file: !31, line: 889, baseType: !776, size: 32, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2408, file: !31, line: 890, baseType: !294, size: 32, offset: 160)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !706, file: !31, line: 937, baseType: !2438, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2440)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !2441, line: 111, size: 1280, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2462, !2463, !2464, !2465, !2466, !2467, !2577, !2578, !2579, !2580, !2606, !2607, !2617}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2440, file: !2441, line: 112, baseType: !504, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2440, file: !2441, line: 120, baseType: !776, size: 32, offset: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2440, file: !2441, line: 121, baseType: !784, size: 32, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !2440, file: !2441, line: 122, baseType: !776, size: 32, offset: 96)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !2440, file: !2441, line: 123, baseType: !784, size: 32, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2440, file: !2441, line: 124, baseType: !776, size: 32, offset: 160)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !2440, file: !2441, line: 125, baseType: !784, size: 32, offset: 192)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !2440, file: !2441, line: 126, baseType: !776, size: 32, offset: 224)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !2440, file: !2441, line: 127, baseType: !784, size: 32, offset: 256)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !2440, file: !2441, line: 128, baseType: !7, size: 32, offset: 288)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !2440, file: !2441, line: 129, baseType: !2454, size: 64, offset: 320)
!2454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !2455, line: 26, baseType: !2456)
!2455 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !2455, line: 24, size: 64, elements: !2457)
!2457 = !{!2458}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !2456, file: !2455, line: 25, baseType: !2459, size: 64)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 64, elements: !2460)
!2460 = !{!2461}
!2461 = !DISubrange(count: 2)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !2440, file: !2441, line: 130, baseType: !2454, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !2440, file: !2441, line: 131, baseType: !2454, size: 64, offset: 448)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !2440, file: !2441, line: 132, baseType: !2454, size: 64, offset: 512)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !2440, file: !2441, line: 133, baseType: !2454, size: 64, offset: 576)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !2440, file: !2441, line: 135, baseType: !351, size: 8, offset: 640)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !2440, file: !2441, line: 137, baseType: !2468, size: 64, offset: 704)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !2470, line: 189, size: 1664, elements: !2471)
!2470 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!2471 = !{!2472, !2473, !2478, !2483, !2484, !2487, !2488, !2493, !2494, !2495, !2496, !2498, !2499, !2500, !2502, !2503, !2541, !2562}
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2469, file: !2470, line: 190, baseType: !499, size: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !2469, file: !2470, line: 191, baseType: !2474, size: 32, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !2470, line: 28, baseType: !2475)
!2475 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !292, line: 98, baseType: !2476)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !296, line: 20, baseType: !2477)
!2477 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !298, line: 26, baseType: !294)
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2470, line: 192, baseType: !2479, size: 192, offset: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2470, line: 192, size: 192, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2479, file: !2470, line: 193, baseType: !529, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2479, file: !2470, line: 194, baseType: !477, size: 192, align: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !2469, file: !2470, line: 199, baseType: !1098, size: 256, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2469, file: !2470, line: 200, baseType: !2485, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !2470, line: 200, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2469, file: !2470, line: 201, baseType: !293, size: 64, offset: 576)
!2488 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2470, line: 202, baseType: !2489, size: 64, offset: 640)
!2489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2470, line: 202, size: 64, elements: !2490)
!2490 = !{!2491, !2492}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2489, file: !2470, line: 203, baseType: !876, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2489, file: !2470, line: 204, baseType: !876, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !2469, file: !2470, line: 206, baseType: !876, size: 64, offset: 704)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2469, file: !2470, line: 207, baseType: !776, size: 32, offset: 768)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2469, file: !2470, line: 208, baseType: !784, size: 32, offset: 800)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2469, file: !2470, line: 209, baseType: !2497, size: 32, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !2470, line: 31, baseType: !895)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !2469, file: !2470, line: 210, baseType: !306, size: 16, offset: 864)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2469, file: !2470, line: 211, baseType: !306, size: 16, offset: 880)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2469, file: !2470, line: 215, baseType: !2501, size: 16, offset: 896)
!2501 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2469, file: !2470, line: 222, baseType: !480, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2470, line: 239, baseType: !2504, size: 320, offset: 1024)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2470, line: 239, size: 320, elements: !2505)
!2505 = !{!2506, !2533}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2504, file: !2470, line: 240, baseType: !2507, size: 320)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !2470, line: 108, size: 320, elements: !2508)
!2508 = !{!2509, !2510, !2522, !2525, !2532}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2507, file: !2470, line: 110, baseType: !480, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !2470, line: 111, baseType: !2511, size: 64, offset: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !2470, line: 111, size: 64, elements: !2512)
!2512 = !{!2513, !2521}
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2470, line: 112, baseType: !2514, size: 64)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2511, file: !2470, line: 112, size: 64, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2514, file: !2470, line: 114, baseType: !304, size: 16)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2514, file: !2470, line: 115, baseType: !2518, size: 48, offset: 16)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 48, elements: !2519)
!2519 = !{!2520}
!2520 = !DISubrange(count: 6)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2511, file: !2470, line: 121, baseType: !480, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2507, file: !2470, line: 123, baseType: !2523, size: 64, offset: 128)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !2470, line: 96, flags: DIFlagFwdDecl)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2507, file: !2470, line: 124, baseType: !2526, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !2470, line: 102, size: 192, elements: !2528)
!2528 = !{!2529, !2530, !2531}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2527, file: !2470, line: 103, baseType: !718, size: 128, align: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2527, file: !2470, line: 104, baseType: !499, size: 32, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2527, file: !2470, line: 105, baseType: !828, size: 8, offset: 160)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2507, file: !2470, line: 125, baseType: !315, size: 64, offset: 256)
!2533 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !2470, line: 241, baseType: !2534, size: 320)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2504, file: !2470, line: 241, size: 320, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2539, !2540}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2534, file: !2470, line: 242, baseType: !480, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2534, file: !2470, line: 243, baseType: !480, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2534, file: !2470, line: 244, baseType: !2523, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2534, file: !2470, line: 245, baseType: !2526, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2534, file: !2470, line: 246, baseType: !337, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2469, file: !2470, line: 254, baseType: !2542, size: 256, offset: 1344)
!2542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2469, file: !2470, line: 254, size: 256, elements: !2543)
!2543 = !{!2544, !2550}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2542, file: !2470, line: 255, baseType: !2545, size: 256)
!2545 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !2470, line: 128, size: 256, elements: !2546)
!2546 = !{!2547, !2548}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2545, file: !2470, line: 129, baseType: !293, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2545, file: !2470, line: 130, baseType: !2549, size: 256)
!2549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 256, elements: !2420)
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !2542, file: !2470, line: 256, baseType: !2551, size: 256)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2542, file: !2470, line: 256, size: 256, elements: !2552)
!2552 = !{!2553, !2554}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2551, file: !2470, line: 258, baseType: !529, size: 128)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2551, file: !2470, line: 259, baseType: !2555, size: 128, offset: 128)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2556, line: 22, size: 128, elements: !2557)
!2556 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2557 = !{!2558, !2561}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2555, file: !2556, line: 23, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2556, line: 23, flags: DIFlagFwdDecl)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2555, file: !2556, line: 24, baseType: !480, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !2469, file: !2470, line: 274, baseType: !2563, size: 64, offset: 1600)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !2470, line: 170, size: 192, elements: !2565)
!2565 = !{!2566, !2575, !2576}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2564, file: !2470, line: 171, baseType: !2567, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !2470, line: 165, baseType: !2568)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{!294, !2468, !2571, !2573, !2468}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2524)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2564, file: !2470, line: 172, baseType: !2468, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2564, file: !2470, line: 173, baseType: !2523, size: 64, offset: 128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !2440, file: !2441, line: 138, baseType: !2468, size: 64, offset: 768)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !2440, file: !2441, line: 139, baseType: !2468, size: 64, offset: 832)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !2440, file: !2441, line: 140, baseType: !2468, size: 64, offset: 896)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !2440, file: !2441, line: 145, baseType: !2581, size: 64, offset: 960)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2583, line: 13, size: 896, elements: !2584)
!2583 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2584 = !{!2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2582, file: !2583, line: 14, baseType: !499, size: 32)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2582, file: !2583, line: 15, baseType: !504, size: 32, offset: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2582, file: !2583, line: 16, baseType: !504, size: 32, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2582, file: !2583, line: 21, baseType: !1102, size: 64, offset: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2582, file: !2583, line: 27, baseType: !480, size: 64, offset: 192)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2582, file: !2583, line: 28, baseType: !480, size: 64, offset: 256)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2582, file: !2583, line: 29, baseType: !1102, size: 64, offset: 320)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2582, file: !2583, line: 32, baseType: !981, size: 128, offset: 384)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2582, file: !2583, line: 33, baseType: !776, size: 32, offset: 512)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2582, file: !2583, line: 37, baseType: !1102, size: 64, offset: 576)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2582, file: !2583, line: 44, baseType: !2596, size: 256, offset: 640)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2597, line: 15, size: 256, elements: !2598)
!2597 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2596, file: !2597, line: 16, baseType: !459)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2596, file: !2597, line: 18, baseType: !294, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2596, file: !2597, line: 19, baseType: !294, size: 32, offset: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2596, file: !2597, line: 20, baseType: !294, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2596, file: !2597, line: 21, baseType: !294, size: 32, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2596, file: !2597, line: 22, baseType: !480, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2596, file: !2597, line: 23, baseType: !480, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !2440, file: !2441, line: 146, baseType: !1720, size: 64, offset: 1024)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !2440, file: !2441, line: 147, baseType: !2608, size: 64, offset: 1088)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !2441, line: 25, size: 64, elements: !2610)
!2610 = !{!2611, !2612, !2613}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2609, file: !2441, line: 26, baseType: !504, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2609, file: !2441, line: 27, baseType: !294, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2609, file: !2441, line: 28, baseType: !2614, offset: 64)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, elements: !2615)
!2615 = !{!2616}
!2616 = !DISubrange(count: 0)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2440, file: !2441, line: 149, baseType: !2618, size: 128, offset: 1152)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2440, file: !2441, line: 149, size: 128, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2618, file: !2441, line: 150, baseType: !294, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2618, file: !2441, line: 151, baseType: !718, size: 128, align: 64)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !706, file: !31, line: 938, baseType: !2623, size: 256, offset: 1088)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2623, file: !31, line: 897, baseType: !480, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2623, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2623, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2623, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2623, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2623, file: !31, line: 904, baseType: !869, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !706, file: !31, line: 940, baseType: !295, size: 64, offset: 1344)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !706, file: !31, line: 945, baseType: !293, size: 64, offset: 1408)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !706, file: !31, line: 949, baseType: !529, size: 128, offset: 1472)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !706, file: !31, line: 950, baseType: !529, size: 128, offset: 1600)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !706, file: !31, line: 952, baseType: !1076, size: 64, offset: 1728)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !706, file: !31, line: 953, baseType: !1236, size: 32, offset: 1792)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !706, file: !31, line: 954, baseType: !1236, size: 32, offset: 1824)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !672, file: !665, line: 362, baseType: !293, size: 64, offset: 1344)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !672, file: !665, line: 365, baseType: !1102, size: 64, offset: 1408)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !672, file: !665, line: 373, baseType: !2641, offset: 1472)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !665, line: 296, elements: !467)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !668, file: !665, line: 391, baseType: !473, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !668, file: !665, line: 392, baseType: !295, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !668, file: !665, line: 394, baseType: !1994, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !668, file: !665, line: 398, baseType: !480, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !668, file: !665, line: 399, baseType: !480, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !668, file: !665, line: 405, baseType: !480, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !668, file: !665, line: 406, baseType: !480, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !668, file: !665, line: 407, baseType: !2650, size: 64, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !683, line: 286, baseType: !2652)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !683, line: 286, size: 64, elements: !2653)
!2653 = !{!2654}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2652, file: !683, line: 286, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !688, line: 18, baseType: !480)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !668, file: !665, line: 416, baseType: !504, size: 32, offset: 576)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !668, file: !665, line: 428, baseType: !504, size: 32, offset: 608)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !668, file: !665, line: 437, baseType: !504, size: 32, offset: 640)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !668, file: !665, line: 447, baseType: !504, size: 32, offset: 672)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !668, file: !665, line: 450, baseType: !1102, size: 64, offset: 704)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !668, file: !665, line: 452, baseType: !294, size: 32, offset: 768)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !668, file: !665, line: 454, baseType: !1085, offset: 800)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !668, file: !665, line: 457, baseType: !1098, size: 256, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !668, file: !665, line: 459, baseType: !529, size: 128, offset: 1088)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !668, file: !665, line: 466, baseType: !480, size: 64, offset: 1216)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !668, file: !665, line: 467, baseType: !480, size: 64, offset: 1280)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !668, file: !665, line: 469, baseType: !480, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !668, file: !665, line: 470, baseType: !480, size: 64, offset: 1408)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !668, file: !665, line: 471, baseType: !1104, size: 64, offset: 1472)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !668, file: !665, line: 472, baseType: !480, size: 64, offset: 1536)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !668, file: !665, line: 473, baseType: !480, size: 64, offset: 1600)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !668, file: !665, line: 474, baseType: !480, size: 64, offset: 1664)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !668, file: !665, line: 475, baseType: !480, size: 64, offset: 1728)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !668, file: !665, line: 477, baseType: !1085, offset: 1792)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !668, file: !665, line: 478, baseType: !480, size: 64, offset: 1792)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !668, file: !665, line: 478, baseType: !480, size: 64, offset: 1856)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !668, file: !665, line: 478, baseType: !480, size: 64, offset: 1920)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !668, file: !665, line: 478, baseType: !480, size: 64, offset: 1984)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !668, file: !665, line: 479, baseType: !480, size: 64, offset: 2048)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !668, file: !665, line: 479, baseType: !480, size: 64, offset: 2112)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !668, file: !665, line: 479, baseType: !480, size: 64, offset: 2176)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !668, file: !665, line: 480, baseType: !480, size: 64, offset: 2240)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !668, file: !665, line: 480, baseType: !480, size: 64, offset: 2304)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !668, file: !665, line: 480, baseType: !480, size: 64, offset: 2368)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !668, file: !665, line: 480, baseType: !480, size: 64, offset: 2432)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !668, file: !665, line: 482, baseType: !2687, size: 2816, offset: 2496)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 2816, elements: !2688)
!2688 = !{!2689}
!2689 = !DISubrange(count: 44)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !668, file: !665, line: 488, baseType: !2691, size: 256, offset: 5312)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2692, line: 60, size: 256, elements: !2693)
!2692 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2693 = !{!2694}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2691, file: !2692, line: 61, baseType: !2695, size: 256)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1102, size: 256, elements: !2420)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !668, file: !665, line: 490, baseType: !2697, size: 64, offset: 5568)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !665, line: 490, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !668, file: !665, line: 493, baseType: !2700, size: 896, offset: 5632)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2701, line: 53, baseType: !2702)
!2701 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2701, line: 13, size: 896, elements: !2703)
!2703 = !{!2704, !2705, !2706, !2707, !2710, !2711, !2712, !2713, !2733, !2734, !2735}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2702, file: !2701, line: 18, baseType: !295, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2702, file: !2701, line: 28, baseType: !1104, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2702, file: !2701, line: 31, baseType: !1098, size: 256, offset: 128)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2702, file: !2701, line: 32, baseType: !2708, size: 64, offset: 384)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2701, line: 32, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2702, file: !2701, line: 37, baseType: !306, size: 16, offset: 448)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2702, file: !2701, line: 40, baseType: !1352, size: 192, offset: 512)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2702, file: !2701, line: 41, baseType: !293, size: 64, offset: 704)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2702, file: !2701, line: 42, baseType: !2714, size: 64, offset: 768)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2716)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2717, line: 13, size: 896, elements: !2718)
!2717 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2716, file: !2717, line: 14, baseType: !293, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2716, file: !2717, line: 15, baseType: !480, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2716, file: !2717, line: 17, baseType: !480, size: 64, offset: 128)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2716, file: !2717, line: 17, baseType: !480, size: 64, offset: 192)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2716, file: !2717, line: 19, baseType: !303, size: 64, offset: 256)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2716, file: !2717, line: 21, baseType: !303, size: 64, offset: 320)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2716, file: !2717, line: 22, baseType: !303, size: 64, offset: 384)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2716, file: !2717, line: 23, baseType: !303, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2716, file: !2717, line: 24, baseType: !303, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2716, file: !2717, line: 25, baseType: !303, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2716, file: !2717, line: 26, baseType: !303, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2716, file: !2717, line: 27, baseType: !303, size: 64, offset: 704)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2716, file: !2717, line: 28, baseType: !303, size: 64, offset: 768)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2716, file: !2717, line: 29, baseType: !303, size: 64, offset: 832)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2702, file: !2701, line: 44, baseType: !504, size: 32, offset: 832)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2702, file: !2701, line: 50, baseType: !304, size: 16, offset: 864)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2702, file: !2701, line: 51, baseType: !2736, size: 16, offset: 880)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !296, line: 18, baseType: !2737)
!2737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !298, line: 23, baseType: !2501)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !668, file: !665, line: 495, baseType: !480, size: 64, offset: 6528)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !668, file: !665, line: 497, baseType: !2740, size: 64, offset: 6592)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !665, line: 381, size: 384, elements: !2742)
!2742 = !{!2743, !2744, !2750}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2741, file: !665, line: 382, baseType: !504, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2741, file: !665, line: 383, baseType: !2745, size: 128, offset: 64)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !665, line: 376, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2745, file: !665, line: 377, baseType: !485, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2745, file: !665, line: 378, baseType: !2749, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2741, file: !665, line: 384, baseType: !2751, size: 192, offset: 192)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2752, line: 26, size: 192, elements: !2753)
!2752 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2753 = !{!2754, !2755}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2751, file: !2752, line: 27, baseType: !7, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2751, file: !2752, line: 28, baseType: !2756, size: 128, offset: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2757, line: 43, size: 128, elements: !2758)
!2757 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2756, file: !2757, line: 44, baseType: !459)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2756, file: !2757, line: 45, baseType: !529, size: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !668, file: !665, line: 500, baseType: !1085, offset: 6656)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !668, file: !665, line: 501, baseType: !2763, size: 64, offset: 6656)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !665, line: 387, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !668, file: !665, line: 516, baseType: !1720, size: 64, offset: 6720)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !668, file: !665, line: 519, baseType: !705, size: 64, offset: 6784)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !668, file: !665, line: 521, baseType: !2768, size: 64, offset: 6848)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !665, line: 521, flags: DIFlagFwdDecl)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !668, file: !665, line: 545, baseType: !504, size: 32, offset: 6912)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !668, file: !665, line: 548, baseType: !828, size: 8, offset: 6944)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !668, file: !665, line: 550, baseType: !2773, offset: 6952)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2774, line: 142, elements: !467)
!2774 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !668, file: !665, line: 554, baseType: !1740, size: 256, offset: 6976)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !668, file: !665, line: 557, baseType: !301, size: 32, offset: 7232)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !664, file: !665, line: 565, baseType: !2778, offset: 7296)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, elements: !2779)
!2779 = !{!2780}
!2780 = !DISubrange(count: -1)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !486, file: !487, line: 758, baseType: !663, size: 64, offset: 3968)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !486, file: !487, line: 761, baseType: !2783, size: 320, offset: 4032)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2692, line: 34, size: 320, elements: !2784)
!2784 = !{!2785, !2786}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2783, file: !2692, line: 35, baseType: !295, size: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2783, file: !2692, line: 36, baseType: !2787, size: 256, offset: 64)
!2787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !671, size: 256, elements: !2420)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !486, file: !487, line: 766, baseType: !294, size: 32, offset: 4352)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !486, file: !487, line: 767, baseType: !294, size: 32, offset: 4384)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !486, file: !487, line: 768, baseType: !294, size: 32, offset: 4416)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !486, file: !487, line: 770, baseType: !294, size: 32, offset: 4448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !486, file: !487, line: 772, baseType: !480, size: 64, offset: 4480)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !486, file: !487, line: 775, baseType: !7, size: 32, offset: 4544)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !486, file: !487, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !486, file: !487, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !486, file: !487, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !486, file: !487, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !486, file: !487, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !486, file: !487, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !486, file: !487, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !486, file: !487, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !486, file: !487, line: 831, baseType: !480, size: 64, offset: 4672)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !486, file: !487, line: 833, baseType: !2804, size: 384, offset: 4736)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !2805)
!2805 = !{!2806, !2811}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2804, file: !48, line: 26, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!303, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, scope: !2804, file: !48, line: 27, baseType: !2812, size: 320, offset: 64)
!2812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2804, file: !48, line: 27, size: 320, elements: !2813)
!2813 = !{!2814, !2824, !2849}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2812, file: !48, line: 36, baseType: !2815, size: 320)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !48, line: 29, size: 320, elements: !2816)
!2816 = !{!2817, !2819, !2820, !2821, !2822, !2823}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2815, file: !48, line: 30, baseType: !2818, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2815, file: !48, line: 31, baseType: !301, size: 32, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2815, file: !48, line: 32, baseType: !301, size: 32, offset: 96)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2815, file: !48, line: 33, baseType: !301, size: 32, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2815, file: !48, line: 34, baseType: !295, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2815, file: !48, line: 35, baseType: !2818, size: 64, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2812, file: !48, line: 46, baseType: !2825, size: 192)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !48, line: 38, size: 192, elements: !2826)
!2826 = !{!2827, !2828, !2829, !2848}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2825, file: !48, line: 39, baseType: !615, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2825, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !48, line: 41, baseType: !2830, size: 64, offset: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !48, line: 41, size: 64, elements: !2831)
!2831 = !{!2832, !2840}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2830, file: !48, line: 42, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2835, line: 7, size: 128, elements: !2836)
!2835 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2836 = !{!2837, !2839}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2834, file: !2835, line: 8, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !617, line: 93, baseType: !565)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2834, file: !2835, line: 9, baseType: !565, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2830, file: !48, line: 43, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2843, line: 7, size: 64, elements: !2844)
!2843 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2844 = !{!2845, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2842, file: !2843, line: 8, baseType: !2846, size: 32)
!2846 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2843, line: 5, baseType: !2476)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2842, file: !2843, line: 9, baseType: !2476, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2825, file: !48, line: 45, baseType: !295, size: 64, offset: 128)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2812, file: !48, line: 54, baseType: !2850, size: 256)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2812, file: !48, line: 48, size: 256, elements: !2851)
!2851 = !{!2852, !2860, !2861, !2862, !2863}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2850, file: !48, line: 49, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2855, line: 36, size: 64, elements: !2856)
!2855 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2856 = !{!2857, !2858, !2859}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2854, file: !2855, line: 37, baseType: !294, size: 32)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2854, file: !2855, line: 38, baseType: !2501, size: 16, offset: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2854, file: !2855, line: 39, baseType: !2501, size: 16, offset: 48)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2850, file: !48, line: 50, baseType: !294, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2850, file: !48, line: 51, baseType: !294, size: 32, offset: 96)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2850, file: !48, line: 52, baseType: !480, size: 64, offset: 128)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2850, file: !48, line: 53, baseType: !480, size: 64, offset: 192)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !486, file: !487, line: 835, baseType: !2865, size: 32, offset: 5120)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !292, line: 22, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !617, line: 28, baseType: !294)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !486, file: !487, line: 836, baseType: !2865, size: 32, offset: 5152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !486, file: !487, line: 840, baseType: !480, size: 64, offset: 5184)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !486, file: !487, line: 849, baseType: !485, size: 64, offset: 5248)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !486, file: !487, line: 852, baseType: !485, size: 64, offset: 5312)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !486, file: !487, line: 857, baseType: !529, size: 128, offset: 5376)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !486, file: !487, line: 858, baseType: !529, size: 128, offset: 5504)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !486, file: !487, line: 859, baseType: !485, size: 64, offset: 5632)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !486, file: !487, line: 867, baseType: !529, size: 128, offset: 5696)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !486, file: !487, line: 868, baseType: !529, size: 128, offset: 5824)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !486, file: !487, line: 871, baseType: !2412, size: 64, offset: 5952)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !486, file: !487, line: 872, baseType: !2878, size: 512, offset: 6016)
!2878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 512, elements: !2420)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !486, file: !487, line: 873, baseType: !529, size: 128, offset: 6528)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !486, file: !487, line: 874, baseType: !529, size: 128, offset: 6656)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !486, file: !487, line: 876, baseType: !2882, size: 64, offset: 6784)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !486, file: !487, line: 879, baseType: !1049, size: 64, offset: 6848)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !486, file: !487, line: 882, baseType: !1049, size: 64, offset: 6912)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !486, file: !487, line: 884, baseType: !295, size: 64, offset: 6976)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !486, file: !487, line: 885, baseType: !295, size: 64, offset: 7040)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !486, file: !487, line: 890, baseType: !295, size: 64, offset: 7104)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !486, file: !487, line: 891, baseType: !2889, size: 128, offset: 7168)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !487, line: 242, size: 128, elements: !2890)
!2890 = !{!2891, !2892, !2893}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2889, file: !487, line: 244, baseType: !295, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2889, file: !487, line: 245, baseType: !295, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2889, file: !487, line: 246, baseType: !459, offset: 128)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !486, file: !487, line: 900, baseType: !480, size: 64, offset: 7296)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !486, file: !487, line: 901, baseType: !480, size: 64, offset: 7360)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !486, file: !487, line: 904, baseType: !295, size: 64, offset: 7424)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !486, file: !487, line: 907, baseType: !295, size: 64, offset: 7488)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !486, file: !487, line: 910, baseType: !480, size: 64, offset: 7552)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !486, file: !487, line: 911, baseType: !480, size: 64, offset: 7616)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !486, file: !487, line: 914, baseType: !2901, size: 640, offset: 7680)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2902, line: 123, size: 640, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2903 = !{!2904, !2910, !2911}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2901, file: !2902, line: 124, baseType: !2905, size: 576)
!2905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2906, size: 576, elements: !993)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2902, line: 108, size: 192, elements: !2907)
!2907 = !{!2908, !2909}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2906, file: !2902, line: 109, baseType: !295, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2906, file: !2902, line: 110, baseType: !630, size: 128, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2901, file: !2902, line: 125, baseType: !7, size: 32, offset: 576)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2901, file: !2902, line: 126, baseType: !7, size: 32, offset: 608)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !486, file: !487, line: 917, baseType: !2913, size: 192, offset: 8320)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2902, line: 134, size: 192, elements: !2914)
!2914 = !{!2915, !2916}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2913, file: !2902, line: 135, baseType: !718, size: 128, align: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2913, file: !2902, line: 136, baseType: !7, size: 32, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !486, file: !487, line: 923, baseType: !2438, size: 64, offset: 8512)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !486, file: !487, line: 926, baseType: !2438, size: 64, offset: 8576)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !486, file: !487, line: 929, baseType: !2438, size: 64, offset: 8640)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !486, file: !487, line: 933, baseType: !2468, size: 64, offset: 8704)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !486, file: !487, line: 943, baseType: !2922, size: 128, offset: 8768)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 128, elements: !1628)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !486, file: !487, line: 945, baseType: !2924, size: 64, offset: 8896)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !487, line: 49, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !486, file: !487, line: 956, baseType: !2927, size: 64, offset: 8960)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !487, line: 45, flags: DIFlagFwdDecl)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !486, file: !487, line: 959, baseType: !2930, size: 64, offset: 9024)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !487, line: 959, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !486, file: !487, line: 962, baseType: !2933, size: 64, offset: 9088)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !487, line: 66, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !486, file: !487, line: 966, baseType: !2936, size: 64, offset: 9152)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2938, line: 35, flags: DIFlagFwdDecl)
!2938 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !486, file: !487, line: 969, baseType: !2940, size: 64, offset: 9216)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2942, line: 82, size: 7296, elements: !2943)
!2942 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2979, !2988, !2989, !2991, !2992, !2993, !2996, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3026, !3027, !3034, !3035, !3036, !3037, !3038, !3039}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2941, file: !2942, line: 83, baseType: !499, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2941, file: !2942, line: 84, baseType: !504, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2941, file: !2942, line: 85, baseType: !294, size: 32, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2941, file: !2942, line: 86, baseType: !529, size: 128, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2941, file: !2942, line: 88, baseType: !1584, size: 128, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2941, file: !2942, line: 91, baseType: !485, size: 64, offset: 384)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2941, file: !2942, line: 94, baseType: !2951, size: 192, offset: 448)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2952, line: 30, size: 192, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2951, file: !2952, line: 31, baseType: !529, size: 128)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2951, file: !2952, line: 32, baseType: !2956, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2957, line: 25, baseType: !2958)
!2957 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2957, line: 23, size: 64, elements: !2959)
!2959 = !{!2960}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2958, file: !2957, line: 24, baseType: !655, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2941, file: !2942, line: 97, baseType: !977, size: 64, offset: 640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2941, file: !2942, line: 100, baseType: !294, size: 32, offset: 704)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2941, file: !2942, line: 106, baseType: !294, size: 32, offset: 736)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2941, file: !2942, line: 107, baseType: !485, size: 64, offset: 768)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2941, file: !2942, line: 110, baseType: !294, size: 32, offset: 832)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2941, file: !2942, line: 111, baseType: !7, size: 32, offset: 864)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2941, file: !2942, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2941, file: !2942, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2941, file: !2942, line: 128, baseType: !294, size: 32, offset: 928)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2941, file: !2942, line: 129, baseType: !529, size: 128, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2941, file: !2942, line: 132, baseType: !573, size: 512, offset: 1088)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2941, file: !2942, line: 133, baseType: !581, size: 64, offset: 1600)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2941, file: !2942, line: 140, baseType: !2974, size: 256, offset: 1664)
!2974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2975, size: 256, elements: !2460)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2942, line: 38, size: 128, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2975, file: !2942, line: 39, baseType: !295, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2975, file: !2942, line: 40, baseType: !295, size: 64, offset: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2941, file: !2942, line: 146, baseType: !2980, size: 192, offset: 1920)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2942, line: 66, size: 192, elements: !2981)
!2981 = !{!2982}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2980, file: !2942, line: 67, baseType: !2983, size: 192)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2942, line: 47, size: 192, elements: !2984)
!2984 = !{!2985, !2986, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2983, file: !2942, line: 48, baseType: !1104, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2983, file: !2942, line: 49, baseType: !1104, size: 64, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2983, file: !2942, line: 50, baseType: !1104, size: 64, offset: 128)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2941, file: !2942, line: 150, baseType: !2901, size: 640, offset: 2112)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2941, file: !2942, line: 153, baseType: !2990, size: 256, offset: 2752)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2412, size: 256, elements: !2420)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2941, file: !2942, line: 159, baseType: !2412, size: 64, offset: 3008)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2941, file: !2942, line: 162, baseType: !294, size: 32, offset: 3072)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2941, file: !2942, line: 164, baseType: !2994, size: 64, offset: 3136)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2942, line: 164, flags: DIFlagFwdDecl)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2941, file: !2942, line: 175, baseType: !2997, size: 32, offset: 3200)
!2997 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !620, line: 805, baseType: !2998)
!2998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 798, size: 32, elements: !2999)
!2999 = !{!3000, !3001}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2998, file: !620, line: 803, baseType: !740, size: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2998, file: !620, line: 804, baseType: !1085, offset: 32)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2941, file: !2942, line: 176, baseType: !295, size: 64, offset: 3264)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2941, file: !2942, line: 176, baseType: !295, size: 64, offset: 3328)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2941, file: !2942, line: 176, baseType: !295, size: 64, offset: 3392)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2941, file: !2942, line: 176, baseType: !295, size: 64, offset: 3456)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2941, file: !2942, line: 177, baseType: !295, size: 64, offset: 3520)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2941, file: !2942, line: 178, baseType: !295, size: 64, offset: 3584)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2941, file: !2942, line: 179, baseType: !2889, size: 128, offset: 3648)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2941, file: !2942, line: 180, baseType: !480, size: 64, offset: 3776)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2941, file: !2942, line: 180, baseType: !480, size: 64, offset: 3840)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2941, file: !2942, line: 180, baseType: !480, size: 64, offset: 3904)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2941, file: !2942, line: 180, baseType: !480, size: 64, offset: 3968)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2941, file: !2942, line: 181, baseType: !480, size: 64, offset: 4032)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2941, file: !2942, line: 181, baseType: !480, size: 64, offset: 4096)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2941, file: !2942, line: 181, baseType: !480, size: 64, offset: 4160)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2941, file: !2942, line: 181, baseType: !480, size: 64, offset: 4224)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2941, file: !2942, line: 182, baseType: !480, size: 64, offset: 4288)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2941, file: !2942, line: 182, baseType: !480, size: 64, offset: 4352)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2941, file: !2942, line: 182, baseType: !480, size: 64, offset: 4416)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2941, file: !2942, line: 182, baseType: !480, size: 64, offset: 4480)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2941, file: !2942, line: 183, baseType: !480, size: 64, offset: 4544)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2941, file: !2942, line: 183, baseType: !480, size: 64, offset: 4608)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2941, file: !2942, line: 184, baseType: !3024, offset: 4672)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3025, line: 12, elements: !467)
!3025 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2941, file: !2942, line: 192, baseType: !299, size: 64, offset: 4672)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2941, file: !2942, line: 203, baseType: !3028, size: 2048, offset: 4736)
!3028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3029, size: 2048, elements: !1628)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3030, line: 43, size: 128, elements: !3031)
!3030 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3029, file: !3030, line: 44, baseType: !919, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3029, file: !3030, line: 45, baseType: !919, size: 64, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2941, file: !2942, line: 220, baseType: !828, size: 8, offset: 6784)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2941, file: !2942, line: 221, baseType: !2501, size: 16, offset: 6800)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2941, file: !2942, line: 222, baseType: !2501, size: 16, offset: 6816)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2941, file: !2942, line: 224, baseType: !663, size: 64, offset: 6848)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2941, file: !2942, line: 227, baseType: !1352, size: 192, offset: 6912)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2941, file: !2942, line: 233, baseType: !1352, size: 192, offset: 7104)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !486, file: !487, line: 970, baseType: !3041, size: 64, offset: 9280)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2942, line: 20, size: 16576, elements: !3043)
!3043 = !{!3044, !3045, !3046, !3047}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3042, file: !2942, line: 21, baseType: !1085)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3042, file: !2942, line: 22, baseType: !499, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3042, file: !2942, line: 23, baseType: !1584, size: 128, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3042, file: !2942, line: 24, baseType: !3048, size: 16384, offset: 192)
!3048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3049, size: 16384, elements: !2097)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2952, line: 49, size: 256, elements: !3050)
!3050 = !{!3051}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3049, file: !2952, line: 50, baseType: !3052, size: 256)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2952, line: 35, size: 256, elements: !3053)
!3053 = !{!3054, !3061, !3062, !3068}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3052, file: !2952, line: 37, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3056, line: 19, baseType: !3057)
!3056 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3056, line: 18, baseType: !3059)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{null, !294}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3052, file: !2952, line: 38, baseType: !480, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3052, file: !2952, line: 44, baseType: !3063, size: 64, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3056, line: 22, baseType: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3056, line: 21, baseType: !3066)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3052, file: !2952, line: 46, baseType: !2956, size: 64, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !486, file: !487, line: 971, baseType: !2956, size: 64, offset: 9344)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !486, file: !487, line: 972, baseType: !2956, size: 64, offset: 9408)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !486, file: !487, line: 974, baseType: !2956, size: 64, offset: 9472)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !486, file: !487, line: 975, baseType: !2951, size: 192, offset: 9536)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !486, file: !487, line: 976, baseType: !480, size: 64, offset: 9728)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !486, file: !487, line: 977, baseType: !917, size: 64, offset: 9792)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !486, file: !487, line: 978, baseType: !7, size: 32, offset: 9856)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !486, file: !487, line: 980, baseType: !721, size: 64, offset: 9920)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !486, file: !487, line: 989, baseType: !3078, size: 128, offset: 9984)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3079, line: 35, size: 128, elements: !3080)
!3079 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3080 = !{!3081, !3082, !3083}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3078, file: !3079, line: 36, baseType: !294, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3078, file: !3079, line: 37, baseType: !504, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3078, file: !3079, line: 38, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3079, line: 23, flags: DIFlagFwdDecl)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !486, file: !487, line: 992, baseType: !295, size: 64, offset: 10112)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !486, file: !487, line: 993, baseType: !295, size: 64, offset: 10176)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !486, file: !487, line: 996, baseType: !1085, offset: 10240)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !486, file: !487, line: 999, baseType: !459, offset: 10240)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !486, file: !487, line: 1001, baseType: !3091, size: 64, offset: 10240)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !487, line: 636, size: 64, elements: !3092)
!3092 = !{!3093}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3091, file: !487, line: 637, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !486, file: !487, line: 1005, baseType: !469, size: 128, offset: 10304)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !486, file: !487, line: 1007, baseType: !485, size: 64, offset: 10432)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !486, file: !487, line: 1009, baseType: !3098, size: 64, offset: 10496)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !487, line: 1009, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !486, file: !487, line: 1043, baseType: !293, size: 64, offset: 10560)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !486, file: !487, line: 1046, baseType: !3102, size: 64, offset: 10624)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !487, line: 41, flags: DIFlagFwdDecl)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !486, file: !487, line: 1050, baseType: !3105, size: 64, offset: 10688)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !487, line: 42, flags: DIFlagFwdDecl)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !486, file: !487, line: 1054, baseType: !3108, size: 64, offset: 10752)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !487, line: 55, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !486, file: !487, line: 1056, baseType: !1531, size: 64, offset: 10816)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !486, file: !487, line: 1058, baseType: !3112, size: 64, offset: 10880)
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3114, line: 99, size: 704, elements: !3115)
!3114 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3115 = !{!3116, !3117, !3118, !3119, !3120, !3121, !3122, !3141, !3142}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3113, file: !3114, line: 100, baseType: !1102, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3113, file: !3114, line: 101, baseType: !504, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3113, file: !3114, line: 102, baseType: !504, size: 32, offset: 96)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3113, file: !3114, line: 105, baseType: !1085, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3113, file: !3114, line: 107, baseType: !306, size: 16, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3113, file: !3114, line: 109, baseType: !1081, size: 128, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3113, file: !3114, line: 110, baseType: !3123, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3114, line: 73, size: 448, elements: !3125)
!3125 = !{!3126, !3129, !3130, !3135, !3140}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3124, file: !3114, line: 74, baseType: !3127, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3114, line: 74, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3124, file: !3114, line: 75, baseType: !3112, size: 64, offset: 64)
!3130 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3114, line: 83, baseType: !3131, size: 128, offset: 128)
!3131 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3114, line: 83, size: 128, elements: !3132)
!3132 = !{!3133, !3134}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3131, file: !3114, line: 84, baseType: !529, size: 128)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3131, file: !3114, line: 85, baseType: !1262, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3124, file: !3114, line: 87, baseType: !3136, size: 128, offset: 256)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3124, file: !3114, line: 87, size: 128, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3136, file: !3114, line: 88, baseType: !981, size: 128)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3136, file: !3114, line: 89, baseType: !718, size: 128, align: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3124, file: !3114, line: 92, baseType: !7, size: 32, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3113, file: !3114, line: 111, baseType: !977, size: 64, offset: 384)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3113, file: !3114, line: 113, baseType: !1740, size: 256, offset: 448)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !486, file: !487, line: 1061, baseType: !3144, size: 64, offset: 10944)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !487, line: 43, flags: DIFlagFwdDecl)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !486, file: !487, line: 1064, baseType: !480, size: 64, offset: 11008)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !486, file: !487, line: 1065, baseType: !3148, size: 64, offset: 11072)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2952, line: 14, baseType: !3150)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2952, line: 12, size: 384, elements: !3151)
!3151 = !{!3152}
!3152 = !DIDerivedType(tag: DW_TAG_member, scope: !3150, file: !2952, line: 13, baseType: !3153, size: 384)
!3153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3150, file: !2952, line: 13, size: 384, elements: !3154)
!3154 = !{!3155, !3156, !3157, !3158}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3153, file: !2952, line: 13, baseType: !294, size: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3153, file: !2952, line: 13, baseType: !294, size: 32, offset: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3153, file: !2952, line: 13, baseType: !294, size: 32, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3153, file: !2952, line: 13, baseType: !3159, size: 256, offset: 128)
!3159 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3160, line: 32, size: 256, elements: !3161)
!3160 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3161 = !{!3162, !3167, !3180, !3186, !3195, !3215, !3220}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3159, file: !3160, line: 37, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 34, size: 64, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3163, file: !3160, line: 35, baseType: !2866, size: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3163, file: !3160, line: 36, baseType: !782, size: 32, offset: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3159, file: !3160, line: 45, baseType: !3168, size: 192)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 40, size: 192, elements: !3169)
!3169 = !{!3170, !3172, !3173, !3179}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3168, file: !3160, line: 41, baseType: !3171, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !617, line: 95, baseType: !294)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3168, file: !3160, line: 42, baseType: !294, size: 32, offset: 32)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3168, file: !3160, line: 43, baseType: !3174, size: 64, offset: 64)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3160, line: 11, baseType: !3175)
!3175 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3160, line: 8, size: 64, elements: !3176)
!3176 = !{!3177, !3178}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3175, file: !3160, line: 9, baseType: !294, size: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3175, file: !3160, line: 10, baseType: !293, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3168, file: !3160, line: 44, baseType: !294, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3159, file: !3160, line: 52, baseType: !3181, size: 128)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 48, size: 128, elements: !3182)
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3181, file: !3160, line: 49, baseType: !2866, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3181, file: !3160, line: 50, baseType: !782, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3181, file: !3160, line: 51, baseType: !3174, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3159, file: !3160, line: 61, baseType: !3187, size: 256)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 55, size: 256, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192, !3194}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3187, file: !3160, line: 56, baseType: !2866, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3187, file: !3160, line: 57, baseType: !782, size: 32, offset: 32)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3187, file: !3160, line: 58, baseType: !294, size: 32, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3187, file: !3160, line: 59, baseType: !3193, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !617, line: 94, baseType: !916)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3187, file: !3160, line: 60, baseType: !3193, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3159, file: !3160, line: 95, baseType: !3196, size: 256)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 64, size: 256, elements: !3197)
!3197 = !{!3198, !3199}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3196, file: !3160, line: 65, baseType: !293, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_member, scope: !3196, file: !3160, line: 77, baseType: !3200, size: 192, offset: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3196, file: !3160, line: 77, size: 192, elements: !3201)
!3201 = !{!3202, !3203, !3210}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3200, file: !3160, line: 82, baseType: !2501, size: 16)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3200, file: !3160, line: 88, baseType: !3204, size: 192)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3160, line: 84, size: 192, elements: !3205)
!3205 = !{!3206, !3208, !3209}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3204, file: !3160, line: 85, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 64, elements: !611)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3204, file: !3160, line: 86, baseType: !293, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3204, file: !3160, line: 87, baseType: !293, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3200, file: !3160, line: 93, baseType: !3211, size: 96)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3200, file: !3160, line: 90, size: 96, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3211, file: !3160, line: 91, baseType: !3207, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3211, file: !3160, line: 92, baseType: !302, size: 32, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3159, file: !3160, line: 101, baseType: !3216, size: 128)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 98, size: 128, elements: !3217)
!3217 = !{!3218, !3219}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3216, file: !3160, line: 99, baseType: !303, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3216, file: !3160, line: 100, baseType: !294, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3159, file: !3160, line: 108, baseType: !3221, size: 128)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3159, file: !3160, line: 104, size: 128, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3221, file: !3160, line: 105, baseType: !293, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3221, file: !3160, line: 106, baseType: !294, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3221, file: !3160, line: 107, baseType: !7, size: 32, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !486, file: !487, line: 1067, baseType: !3024, offset: 11136)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !486, file: !487, line: 1099, baseType: !3228, size: 64, offset: 11136)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !487, line: 56, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !486, file: !487, line: 1103, baseType: !529, size: 128, offset: 11200)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !486, file: !487, line: 1104, baseType: !3232, size: 64, offset: 11328)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !487, line: 46, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !486, file: !487, line: 1105, baseType: !1352, size: 192, offset: 11392)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !486, file: !487, line: 1106, baseType: !7, size: 32, offset: 11584)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !486, file: !487, line: 1109, baseType: !3237, size: 128, offset: 11648)
!3237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3238, size: 128, elements: !2460)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !487, line: 51, flags: DIFlagFwdDecl)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !486, file: !487, line: 1110, baseType: !1352, size: 192, offset: 11776)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !486, file: !487, line: 1111, baseType: !529, size: 128, offset: 11968)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !486, file: !487, line: 1173, baseType: !3243, size: 64, offset: 12096)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3245, line: 62, size: 256, align: 256, elements: !3246)
!3245 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3246 = !{!3247, !3248, !3249, !3254}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3244, file: !3245, line: 75, baseType: !302, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3244, file: !3245, line: 90, baseType: !302, size: 32, offset: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3244, file: !3245, line: 124, baseType: !3250, size: 64, offset: 64)
!3250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3244, file: !3245, line: 109, size: 64, elements: !3251)
!3251 = !{!3252, !3253}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3250, file: !3245, line: 110, baseType: !297, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3250, file: !3245, line: 112, baseType: !297, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3244, file: !3245, line: 144, baseType: !302, size: 32, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !486, file: !487, line: 1174, baseType: !301, size: 32, offset: 12160)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !486, file: !487, line: 1179, baseType: !480, size: 64, offset: 12224)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !486, file: !487, line: 1182, baseType: !3258, size: 128, offset: 12288)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2692, line: 76, size: 128, elements: !3259)
!3259 = !{!3260, !3265, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3258, file: !2692, line: 85, baseType: !3261, size: 64)
!3261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3262, line: 7, size: 64, elements: !3263)
!3262 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3263 = !{!3264}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3261, file: !3262, line: 12, baseType: !652, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3258, file: !2692, line: 88, baseType: !828, size: 8, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3258, file: !2692, line: 95, baseType: !828, size: 8, offset: 72)
!3267 = !DIDerivedType(tag: DW_TAG_member, scope: !486, file: !487, line: 1184, baseType: !3268, size: 128, offset: 12416)
!3268 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !486, file: !487, line: 1184, size: 128, elements: !3269)
!3269 = !{!3270, !3271}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3268, file: !487, line: 1185, baseType: !499, size: 32)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3268, file: !487, line: 1186, baseType: !718, size: 128, align: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !486, file: !487, line: 1190, baseType: !2006, size: 64, offset: 12544)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !486, file: !487, line: 1192, baseType: !3274, size: 128, offset: 12608)
!3274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2692, line: 64, size: 128, elements: !3275)
!3275 = !{!3276, !3277, !3278}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3274, file: !2692, line: 65, baseType: !1064, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3274, file: !2692, line: 67, baseType: !302, size: 32, offset: 64)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3274, file: !2692, line: 68, baseType: !302, size: 32, offset: 96)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !486, file: !487, line: 1206, baseType: !294, size: 32, offset: 12736)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !486, file: !487, line: 1207, baseType: !294, size: 32, offset: 12768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !486, file: !487, line: 1209, baseType: !480, size: 64, offset: 12800)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !486, file: !487, line: 1219, baseType: !295, size: 64, offset: 12864)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !486, file: !487, line: 1220, baseType: !295, size: 64, offset: 12928)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !486, file: !487, line: 1317, baseType: !294, size: 32, offset: 12992)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !486, file: !487, line: 1319, baseType: !485, size: 64, offset: 13056)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !486, file: !487, line: 1322, baseType: !3287, size: 64, offset: 13120)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3289, line: 56, size: 512, elements: !3290)
!3289 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3290 = !{!3291, !3292, !3293, !3294, !3295, !3296, !3297, !3299}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3288, file: !3289, line: 57, baseType: !3287, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3288, file: !3289, line: 58, baseType: !293, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3288, file: !3289, line: 59, baseType: !480, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3288, file: !3289, line: 60, baseType: !480, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3288, file: !3289, line: 61, baseType: !1149, size: 64, offset: 256)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3288, file: !3289, line: 62, baseType: !7, size: 32, offset: 320)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3288, file: !3289, line: 63, baseType: !3298, size: 64, offset: 384)
!3298 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !292, line: 153, baseType: !295)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3288, file: !3289, line: 64, baseType: !2188, size: 64, offset: 448)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !486, file: !487, line: 1326, baseType: !499, size: 32, offset: 13184)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !486, file: !487, line: 1342, baseType: !293, size: 64, offset: 13248)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !486, file: !487, line: 1343, baseType: !297, size: 64, offset: 13312)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !486, file: !487, line: 1344, baseType: !295, size: 64, offset: 13376)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !486, file: !487, line: 1345, baseType: !297, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !486, file: !487, line: 1346, baseType: !297, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !486, file: !487, line: 1347, baseType: !297, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !486, file: !487, line: 1348, baseType: !718, size: 128, align: 64, offset: 13504)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !486, file: !487, line: 1358, baseType: !3309, size: 34816, offset: 13824)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3310, line: 485, size: 34816, elements: !3311)
!3310 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3311 = !{!3312, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3350, !3351}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3309, file: !3310, line: 487, baseType: !3313, size: 192)
!3313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3314, size: 192, elements: !993)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3315, line: 16, size: 64, elements: !3316)
!3315 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3316 = !{!3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3314, file: !3315, line: 17, baseType: !304, size: 16)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3314, file: !3315, line: 18, baseType: !304, size: 16, offset: 16)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3314, file: !3315, line: 19, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3314, file: !3315, line: 19, baseType: !304, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3314, file: !3315, line: 19, baseType: !304, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3314, file: !3315, line: 19, baseType: !304, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3314, file: !3315, line: 19, baseType: !304, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3314, file: !3315, line: 20, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3314, file: !3315, line: 20, baseType: !304, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3314, file: !3315, line: 20, baseType: !304, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3314, file: !3315, line: 20, baseType: !304, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3314, file: !3315, line: 20, baseType: !304, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3314, file: !3315, line: 20, baseType: !304, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3309, file: !3310, line: 491, baseType: !480, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3309, file: !3310, line: 495, baseType: !306, size: 16, offset: 256)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3309, file: !3310, line: 496, baseType: !306, size: 16, offset: 272)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3309, file: !3310, line: 497, baseType: !306, size: 16, offset: 288)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3309, file: !3310, line: 498, baseType: !306, size: 16, offset: 304)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3309, file: !3310, line: 502, baseType: !480, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3309, file: !3310, line: 503, baseType: !480, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3309, file: !3310, line: 514, baseType: !3338, size: 256, offset: 448)
!3338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3339, size: 256, elements: !2420)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3310, line: 483, flags: DIFlagFwdDecl)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3309, file: !3310, line: 516, baseType: !480, size: 64, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3309, file: !3310, line: 518, baseType: !480, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3309, file: !3310, line: 520, baseType: !480, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3309, file: !3310, line: 521, baseType: !480, size: 64, offset: 896)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3309, file: !3310, line: 522, baseType: !480, size: 64, offset: 960)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3309, file: !3310, line: 528, baseType: !3347, size: 64, offset: 1024)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3310, line: 10, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3309, file: !3310, line: 535, baseType: !480, size: 64, offset: 1088)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3309, file: !3310, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3309, file: !3310, line: 540, baseType: !3352, size: 33280, offset: 1536)
!3352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3353, line: 317, size: 33280, elements: !3354)
!3353 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3354 = !{!3355, !3356, !3357}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3352, file: !3353, line: 330, baseType: !7, size: 32)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3352, file: !3353, line: 337, baseType: !480, size: 64, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3352, file: !3353, line: 348, baseType: !3358, size: 32768, offset: 512)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3353, line: 304, size: 32768, elements: !3359)
!3359 = !{!3360, !3373, !3410, !3460, !3473}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3358, file: !3353, line: 305, baseType: !3361, size: 896)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3353, line: 12, size: 896, elements: !3362)
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3372}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3361, file: !3353, line: 13, baseType: !301, size: 32)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3361, file: !3353, line: 14, baseType: !301, size: 32, offset: 32)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3361, file: !3353, line: 15, baseType: !301, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3361, file: !3353, line: 16, baseType: !301, size: 32, offset: 96)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3361, file: !3353, line: 17, baseType: !301, size: 32, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3361, file: !3353, line: 18, baseType: !301, size: 32, offset: 160)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3361, file: !3353, line: 19, baseType: !301, size: 32, offset: 192)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3361, file: !3353, line: 22, baseType: !3371, size: 640, offset: 224)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 640, elements: !411)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3361, file: !3353, line: 25, baseType: !301, size: 32, offset: 864)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3358, file: !3353, line: 306, baseType: !3374, size: 4096, align: 128)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3353, line: 34, size: 4096, align: 128, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3395, !3396, !3397, !3399, !3401, !3405}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3374, file: !3353, line: 35, baseType: !304, size: 16)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3374, file: !3353, line: 36, baseType: !304, size: 16, offset: 16)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3374, file: !3353, line: 37, baseType: !304, size: 16, offset: 32)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3374, file: !3353, line: 38, baseType: !304, size: 16, offset: 48)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !3353, line: 39, baseType: !3381, size: 128, offset: 64)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !3353, line: 39, size: 128, elements: !3382)
!3382 = !{!3383, !3388}
!3383 = !DIDerivedType(tag: DW_TAG_member, scope: !3381, file: !3353, line: 40, baseType: !3384, size: 128)
!3384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !3353, line: 40, size: 128, elements: !3385)
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3384, file: !3353, line: 41, baseType: !295, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3384, file: !3353, line: 42, baseType: !295, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3381, file: !3353, line: 44, baseType: !3389, size: 128)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3381, file: !3353, line: 44, size: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393, !3394}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3389, file: !3353, line: 45, baseType: !301, size: 32)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3389, file: !3353, line: 46, baseType: !301, size: 32, offset: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3389, file: !3353, line: 47, baseType: !301, size: 32, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3389, file: !3353, line: 48, baseType: !301, size: 32, offset: 96)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3374, file: !3353, line: 51, baseType: !301, size: 32, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3374, file: !3353, line: 52, baseType: !301, size: 32, offset: 224)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3374, file: !3353, line: 55, baseType: !3398, size: 1024, offset: 256)
!3398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 1024, elements: !377)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3374, file: !3353, line: 58, baseType: !3400, size: 2048, offset: 1280)
!3400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 2048, elements: !2097)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3374, file: !3353, line: 60, baseType: !3402, size: 384, offset: 3328)
!3402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 384, elements: !3403)
!3403 = !{!3404}
!3404 = !DISubrange(count: 12)
!3405 = !DIDerivedType(tag: DW_TAG_member, scope: !3374, file: !3353, line: 62, baseType: !3406, size: 384, offset: 3712)
!3406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3374, file: !3353, line: 62, size: 384, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3406, file: !3353, line: 63, baseType: !3402, size: 384)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3406, file: !3353, line: 64, baseType: !3402, size: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3358, file: !3353, line: 307, baseType: !3411, size: 1088)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3353, line: 79, size: 1088, elements: !3412)
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3459}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3411, file: !3353, line: 80, baseType: !301, size: 32)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3411, file: !3353, line: 81, baseType: !301, size: 32, offset: 32)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3411, file: !3353, line: 82, baseType: !301, size: 32, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3411, file: !3353, line: 83, baseType: !301, size: 32, offset: 96)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3411, file: !3353, line: 84, baseType: !301, size: 32, offset: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3411, file: !3353, line: 85, baseType: !301, size: 32, offset: 160)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3411, file: !3353, line: 86, baseType: !301, size: 32, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3411, file: !3353, line: 88, baseType: !3371, size: 640, offset: 224)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3411, file: !3353, line: 89, baseType: !349, size: 8, offset: 864)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3411, file: !3353, line: 90, baseType: !349, size: 8, offset: 872)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3411, file: !3353, line: 91, baseType: !349, size: 8, offset: 880)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3411, file: !3353, line: 92, baseType: !349, size: 8, offset: 888)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3411, file: !3353, line: 93, baseType: !349, size: 8, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3411, file: !3353, line: 94, baseType: !349, size: 8, offset: 904)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3411, file: !3353, line: 95, baseType: !3428, size: 64, offset: 960)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3430, line: 11, size: 128, elements: !3431)
!3430 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3431 = !{!3432, !3433}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3429, file: !3430, line: 12, baseType: !303, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3429, file: !3430, line: 13, baseType: !3434, size: 64, offset: 64)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3436, line: 56, size: 1344, elements: !3437)
!3436 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3435, file: !3436, line: 61, baseType: !480, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3435, file: !3436, line: 62, baseType: !480, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3435, file: !3436, line: 63, baseType: !480, size: 64, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3435, file: !3436, line: 64, baseType: !480, size: 64, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3435, file: !3436, line: 65, baseType: !480, size: 64, offset: 256)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3435, file: !3436, line: 66, baseType: !480, size: 64, offset: 320)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3435, file: !3436, line: 68, baseType: !480, size: 64, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3435, file: !3436, line: 69, baseType: !480, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3435, file: !3436, line: 70, baseType: !480, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3435, file: !3436, line: 71, baseType: !480, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3435, file: !3436, line: 72, baseType: !480, size: 64, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3435, file: !3436, line: 73, baseType: !480, size: 64, offset: 704)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3435, file: !3436, line: 74, baseType: !480, size: 64, offset: 768)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3435, file: !3436, line: 75, baseType: !480, size: 64, offset: 832)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3435, file: !3436, line: 76, baseType: !480, size: 64, offset: 896)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3435, file: !3436, line: 81, baseType: !480, size: 64, offset: 960)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3435, file: !3436, line: 83, baseType: !480, size: 64, offset: 1024)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3435, file: !3436, line: 84, baseType: !480, size: 64, offset: 1088)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3435, file: !3436, line: 85, baseType: !480, size: 64, offset: 1152)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3435, file: !3436, line: 86, baseType: !480, size: 64, offset: 1216)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3435, file: !3436, line: 87, baseType: !480, size: 64, offset: 1280)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3411, file: !3353, line: 96, baseType: !301, size: 32, offset: 1024)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3358, file: !3353, line: 308, baseType: !3461, size: 4608, align: 512)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3353, line: 289, size: 4608, align: 512, elements: !3462)
!3462 = !{!3463, !3464, !3471}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3461, file: !3353, line: 290, baseType: !3374, size: 4096, align: 128)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3461, file: !3353, line: 291, baseType: !3465, size: 512, offset: 4096)
!3465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3353, line: 268, size: 512, elements: !3466)
!3466 = !{!3467, !3468, !3469}
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3465, file: !3353, line: 269, baseType: !295, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3465, file: !3353, line: 270, baseType: !295, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3465, file: !3353, line: 271, baseType: !3470, size: 384, offset: 128)
!3470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 384, elements: !2519)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3461, file: !3353, line: 292, baseType: !3472, offset: 4608)
!3472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !2615)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3358, file: !3353, line: 309, baseType: !3474, size: 32768)
!3474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 32768, elements: !3475)
!3475 = !{!3476}
!3476 = !DISubrange(count: 4096)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !433, file: !426, line: 704, baseType: !455, size: 192, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !433, file: !426, line: 706, baseType: !294, size: 32, offset: 704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !433, file: !426, line: 707, baseType: !294, size: 32, offset: 736)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !433, file: !426, line: 708, baseType: !3481, size: 5568, offset: 768)
!3481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !3482)
!3482 = !{!3483, !3484, !3486, !3489, !3490, !3541, !3632, !3633, !3634, !3635, !3636, !3645, !3750, !3763, !3958, !3959, !3963, !3965, !3966, !3967, !3971, !3977, !3978, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !4019, !4020, !4021, !4024, !4027, !4028, !4029, !4030}
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3481, file: !60, line: 462, baseType: !2056, size: 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3481, file: !60, line: 463, baseType: !3485, size: 64, offset: 512)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3481, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3481, file: !60, line: 465, baseType: !3487, size: 64, offset: 576)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3481, file: !60, line: 467, baseType: !315, size: 64, offset: 640)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3481, file: !60, line: 468, baseType: !3491, size: 64, offset: 704)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3501, !3506, !3510}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3493, file: !60, line: 88, baseType: !315, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3493, file: !60, line: 89, baseType: !2135, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3493, file: !60, line: 90, baseType: !3498, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DISubroutineType(types: !3500)
!3500 = !{!294, !3485, !2090}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3493, file: !60, line: 91, baseType: !3502, size: 64, offset: 192)
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DISubroutineType(types: !3504)
!3504 = !{!337, !3485, !3505, !2205, !2206}
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3493, file: !60, line: 93, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{null, !3485}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3493, file: !60, line: 95, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3513)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3514)
!3514 = !{!3515, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3513, file: !67, line: 279, baseType: !3516, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!294, !3485}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3513, file: !67, line: 280, baseType: !3507, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3513, file: !67, line: 281, baseType: !3516, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3513, file: !67, line: 282, baseType: !3516, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3513, file: !67, line: 283, baseType: !3516, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3513, file: !67, line: 284, baseType: !3516, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3513, file: !67, line: 285, baseType: !3516, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3513, file: !67, line: 286, baseType: !3516, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3513, file: !67, line: 287, baseType: !3516, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3513, file: !67, line: 288, baseType: !3516, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3513, file: !67, line: 289, baseType: !3516, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3513, file: !67, line: 290, baseType: !3516, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3513, file: !67, line: 291, baseType: !3516, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3513, file: !67, line: 292, baseType: !3516, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3513, file: !67, line: 293, baseType: !3516, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3513, file: !67, line: 294, baseType: !3516, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3513, file: !67, line: 295, baseType: !3516, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3513, file: !67, line: 296, baseType: !3516, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3513, file: !67, line: 297, baseType: !3516, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3513, file: !67, line: 298, baseType: !3516, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3513, file: !67, line: 299, baseType: !3516, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3513, file: !67, line: 300, baseType: !3516, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3513, file: !67, line: 301, baseType: !3516, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3481, file: !60, line: 470, baseType: !3542, size: 64, offset: 768)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3544, line: 82, size: 1408, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3627, !3630, !3631}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3543, file: !3544, line: 83, baseType: !315, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3543, file: !3544, line: 84, baseType: !315, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3543, file: !3544, line: 85, baseType: !3485, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3543, file: !3544, line: 86, baseType: !2135, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3543, file: !3544, line: 87, baseType: !2135, size: 64, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3543, file: !3544, line: 88, baseType: !2135, size: 64, offset: 320)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3543, file: !3544, line: 90, baseType: !3553, size: 64, offset: 384)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!294, !3485, !3556}
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3558)
!3558 = !{!3559, !3560, !3561, !3562, !3563, !3564, !3565, !3578, !3591, !3592, !3593, !3594, !3595, !3603, !3604, !3605, !3606, !3607, !3608}
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3557, file: !54, line: 96, baseType: !315, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3557, file: !54, line: 97, baseType: !3542, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3557, file: !54, line: 99, baseType: !319, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3557, file: !54, line: 100, baseType: !315, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3557, file: !54, line: 102, baseType: !828, size: 8, offset: 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3557, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3557, file: !54, line: 105, baseType: !3566, size: 64, offset: 320)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3568)
!3568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3569, line: 262, size: 1600, elements: !3570)
!3569 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3570 = !{!3571, !3572, !3573, !3577}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3568, file: !3569, line: 263, baseType: !1620, size: 256)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3568, file: !3569, line: 264, baseType: !1620, size: 256, offset: 256)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3568, file: !3569, line: 265, baseType: !3574, size: 1024, offset: 512)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 1024, elements: !3575)
!3575 = !{!3576}
!3576 = !DISubrange(count: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3568, file: !3569, line: 266, baseType: !2188, size: 64, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3557, file: !54, line: 106, baseType: !3579, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3581)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3569, line: 210, size: 256, elements: !3582)
!3582 = !{!3583, !3587, !3589, !3590}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3581, file: !3569, line: 211, baseType: !3584, size: 72)
!3584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 72, elements: !3585)
!3585 = !{!3586}
!3586 = !DISubrange(count: 9)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3581, file: !3569, line: 212, baseType: !3588, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3569, line: 14, baseType: !480)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3581, file: !3569, line: 213, baseType: !302, size: 32, offset: 192)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3581, file: !3569, line: 214, baseType: !302, size: 32, offset: 224)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3557, file: !54, line: 108, baseType: !3516, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3557, file: !54, line: 109, baseType: !3507, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3557, file: !54, line: 110, baseType: !3516, size: 64, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3557, file: !54, line: 111, baseType: !3507, size: 64, offset: 640)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3557, file: !54, line: 112, baseType: !3596, size: 64, offset: 704)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!294, !3485, !3599}
!3599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3600)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3601)
!3601 = !{!3602}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3600, file: !67, line: 51, baseType: !294, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3557, file: !54, line: 113, baseType: !3516, size: 64, offset: 768)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3557, file: !54, line: 114, baseType: !2135, size: 64, offset: 832)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3557, file: !54, line: 115, baseType: !2135, size: 64, offset: 896)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3557, file: !54, line: 117, baseType: !3511, size: 64, offset: 960)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3557, file: !54, line: 118, baseType: !3507, size: 64, offset: 1024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3557, file: !54, line: 120, baseType: !3609, size: 64, offset: 1088)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3543, file: !3544, line: 91, baseType: !3498, size: 64, offset: 448)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3543, file: !3544, line: 92, baseType: !3516, size: 64, offset: 512)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3543, file: !3544, line: 93, baseType: !3507, size: 64, offset: 576)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3543, file: !3544, line: 94, baseType: !3516, size: 64, offset: 640)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3543, file: !3544, line: 95, baseType: !3507, size: 64, offset: 704)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3543, file: !3544, line: 97, baseType: !3516, size: 64, offset: 768)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3543, file: !3544, line: 98, baseType: !3516, size: 64, offset: 832)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3543, file: !3544, line: 100, baseType: !3596, size: 64, offset: 896)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3543, file: !3544, line: 101, baseType: !3516, size: 64, offset: 960)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3543, file: !3544, line: 103, baseType: !3516, size: 64, offset: 1024)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3543, file: !3544, line: 105, baseType: !3516, size: 64, offset: 1088)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3543, file: !3544, line: 107, baseType: !3511, size: 64, offset: 1152)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3543, file: !3544, line: 109, baseType: !3624, size: 64, offset: 1216)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3544, line: 109, flags: DIFlagFwdDecl)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3543, file: !3544, line: 111, baseType: !3628, size: 64, offset: 1280)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3544, line: 111, flags: DIFlagFwdDecl)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3543, file: !3544, line: 112, baseType: !987, offset: 1344)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3543, file: !3544, line: 114, baseType: !828, size: 8, offset: 1344)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3481, file: !60, line: 471, baseType: !3556, size: 64, offset: 832)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3481, file: !60, line: 473, baseType: !293, size: 64, offset: 896)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3481, file: !60, line: 475, baseType: !293, size: 64, offset: 960)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3481, file: !60, line: 480, baseType: !1352, size: 192, offset: 1024)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3481, file: !60, line: 484, baseType: !3637, size: 576, offset: 1216)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3638)
!3638 = !{!3639, !3640, !3641, !3642, !3643, !3644}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3637, file: !60, line: 362, baseType: !529, size: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3637, file: !60, line: 363, baseType: !529, size: 128, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3637, file: !60, line: 364, baseType: !529, size: 128, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3637, file: !60, line: 365, baseType: !529, size: 128, offset: 384)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3637, file: !60, line: 366, baseType: !828, size: 8, offset: 512)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3637, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3481, file: !60, line: 485, baseType: !3646, size: 2304, offset: 1792)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3743, !3747}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3646, file: !67, line: 566, baseType: !3599, size: 32)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3646, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3646, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3646, file: !67, line: 569, baseType: !828, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3646, file: !67, line: 570, baseType: !828, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3646, file: !67, line: 571, baseType: !828, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3646, file: !67, line: 572, baseType: !828, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3646, file: !67, line: 573, baseType: !828, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3646, file: !67, line: 574, baseType: !828, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3646, file: !67, line: 575, baseType: !828, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3646, file: !67, line: 576, baseType: !828, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3646, file: !67, line: 577, baseType: !301, size: 32, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3646, file: !67, line: 578, baseType: !1085, offset: 96)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3646, file: !67, line: 580, baseType: !529, size: 128, offset: 128)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3646, file: !67, line: 581, baseType: !2751, size: 192, offset: 256)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3646, file: !67, line: 582, baseType: !3664, size: 64, offset: 448)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3666, line: 43, size: 1472, elements: !3667)
!3666 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3667 = !{!3668, !3669, !3670, !3671, !3672, !3675, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3665, file: !3666, line: 44, baseType: !315, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3665, file: !3666, line: 45, baseType: !294, size: 32, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3665, file: !3666, line: 46, baseType: !529, size: 128, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3665, file: !3666, line: 47, baseType: !1085, offset: 256)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3665, file: !3666, line: 48, baseType: !3673, size: 64, offset: 256)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3665, file: !3666, line: 49, baseType: !3676, size: 320, offset: 320)
!3676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3677, line: 11, size: 320, elements: !3678)
!3677 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3678 = !{!3679, !3680, !3681, !3686}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3676, file: !3677, line: 16, baseType: !981, size: 128)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3676, file: !3677, line: 17, baseType: !480, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3676, file: !3677, line: 18, baseType: !3682, size: 64, offset: 192)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{null, !3685}
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3676, file: !3677, line: 19, baseType: !301, size: 32, offset: 256)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3665, file: !3666, line: 50, baseType: !480, size: 64, offset: 640)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3665, file: !3666, line: 51, baseType: !581, size: 64, offset: 704)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3665, file: !3666, line: 52, baseType: !581, size: 64, offset: 768)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3665, file: !3666, line: 53, baseType: !581, size: 64, offset: 832)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3665, file: !3666, line: 54, baseType: !581, size: 64, offset: 896)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3665, file: !3666, line: 55, baseType: !581, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3665, file: !3666, line: 56, baseType: !480, size: 64, offset: 1024)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3665, file: !3666, line: 57, baseType: !480, size: 64, offset: 1088)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3665, file: !3666, line: 58, baseType: !480, size: 64, offset: 1152)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3665, file: !3666, line: 59, baseType: !480, size: 64, offset: 1216)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3665, file: !3666, line: 60, baseType: !480, size: 64, offset: 1280)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3665, file: !3666, line: 61, baseType: !3485, size: 64, offset: 1344)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3665, file: !3666, line: 62, baseType: !828, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3665, file: !3666, line: 63, baseType: !828, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3646, file: !67, line: 583, baseType: !828, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3646, file: !67, line: 584, baseType: !828, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3646, file: !67, line: 585, baseType: !828, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3646, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3646, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3646, file: !67, line: 592, baseType: !573, size: 512, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3646, file: !67, line: 593, baseType: !295, size: 64, offset: 1088)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3646, file: !67, line: 594, baseType: !1740, size: 256, offset: 1152)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3646, file: !67, line: 595, baseType: !1584, size: 128, offset: 1408)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3646, file: !67, line: 596, baseType: !3673, size: 64, offset: 1536)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3646, file: !67, line: 597, baseType: !504, size: 32, offset: 1600)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3646, file: !67, line: 598, baseType: !504, size: 32, offset: 1632)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3646, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3646, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3646, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3646, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3646, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3646, file: !67, line: 604, baseType: !828, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3646, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3646, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3646, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3646, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3646, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3646, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3646, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3646, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3646, file: !67, line: 613, baseType: !294, size: 32, offset: 1792)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3646, file: !67, line: 614, baseType: !294, size: 32, offset: 1824)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3646, file: !67, line: 615, baseType: !295, size: 64, offset: 1856)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3646, file: !67, line: 616, baseType: !295, size: 64, offset: 1920)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3646, file: !67, line: 617, baseType: !295, size: 64, offset: 1984)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3646, file: !67, line: 618, baseType: !295, size: 64, offset: 2048)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3646, file: !67, line: 620, baseType: !3734, size: 64, offset: 2112)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3736)
!3736 = !{!3737, !3738, !3739, !3740}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3735, file: !67, line: 537, baseType: !1085)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3735, file: !67, line: 538, baseType: !7, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3735, file: !67, line: 540, baseType: !529, size: 128, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3735, file: !67, line: 543, baseType: !3741, size: 64, offset: 192)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3646, file: !67, line: 621, baseType: !3744, size: 64, offset: 2176)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{null, !3485, !2476}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3646, file: !67, line: 622, baseType: !3748, size: 64, offset: 2240)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3481, file: !60, line: 486, baseType: !3751, size: 64, offset: 4096)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3760, !3761, !3762}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3752, file: !67, line: 643, baseType: !3513, size: 1472)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3752, file: !67, line: 644, baseType: !3516, size: 64, offset: 1472)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3752, file: !67, line: 645, baseType: !3757, size: 64, offset: 1536)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{null, !3485, !828}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3752, file: !67, line: 646, baseType: !3516, size: 64, offset: 1600)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3752, file: !67, line: 647, baseType: !3507, size: 64, offset: 1664)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3752, file: !67, line: 648, baseType: !3507, size: 64, offset: 1728)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3481, file: !60, line: 493, baseType: !3764, size: 64, offset: 4160)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3766)
!3766 = !{!3767, !3768, !3769, !3942, !3943, !3944, !3945, !3946, !3947, !3950, !3951, !3952, !3953, !3954, !3955, !3956}
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3765, file: !81, line: 163, baseType: !529, size: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3765, file: !81, line: 164, baseType: !315, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3765, file: !81, line: 165, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3772)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3773)
!3773 = !{!3774, !3892, !3903, !3908, !3912, !3919, !3923, !3927, !3934, !3938}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3772, file: !81, line: 106, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!294, !3764, !3778, !80}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3780, line: 51, size: 1344, elements: !3781)
!3780 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3781 = !{!3782, !3783, !3785, !3786, !3876, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3779, file: !3780, line: 52, baseType: !315, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3779, file: !3780, line: 53, baseType: !3784, size: 32, offset: 64)
!3784 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3780, line: 28, baseType: !301)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3779, file: !3780, line: 54, baseType: !315, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3779, file: !3780, line: 55, baseType: !3787, size: 192, offset: 192)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3788, line: 17, size: 192, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3789 = !{!3790, !3792, !3875}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3787, file: !3788, line: 18, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3787, file: !3788, line: 19, baseType: !3793, size: 64, offset: 64)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3795)
!3795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3788, line: 110, size: 1152, elements: !3796)
!3796 = !{!3797, !3801, !3805, !3811, !3817, !3821, !3825, !3830, !3834, !3835, !3839, !3843, !3847, !3858, !3859, !3860, !3861, !3871}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3795, file: !3788, line: 111, baseType: !3798, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3791, !3791}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3795, file: !3788, line: 112, baseType: !3802, size: 64, offset: 64)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3791}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3795, file: !3788, line: 113, baseType: !3806, size: 64, offset: 128)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!828, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3787)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3795, file: !3788, line: 114, baseType: !3812, size: 64, offset: 192)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!2188, !3809, !3815}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3481)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3795, file: !3788, line: 116, baseType: !3818, size: 64, offset: 256)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!828, !3809, !315}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3795, file: !3788, line: 118, baseType: !3822, size: 64, offset: 320)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!294, !3809, !315, !7, !293, !917}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3795, file: !3788, line: 123, baseType: !3826, size: 64, offset: 384)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DISubroutineType(types: !3828)
!3828 = !{!294, !3809, !315, !3829, !917}
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3795, file: !3788, line: 126, baseType: !3831, size: 64, offset: 448)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!315, !3809}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3795, file: !3788, line: 127, baseType: !3831, size: 64, offset: 512)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3795, file: !3788, line: 128, baseType: !3836, size: 64, offset: 576)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DISubroutineType(types: !3838)
!3838 = !{!3791, !3809}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3795, file: !3788, line: 130, baseType: !3840, size: 64, offset: 640)
!3840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3841, size: 64)
!3841 = !DISubroutineType(types: !3842)
!3842 = !{!3791, !3809, !3791}
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3795, file: !3788, line: 133, baseType: !3844, size: 64, offset: 704)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3845, size: 64)
!3845 = !DISubroutineType(types: !3846)
!3846 = !{!3791, !3809, !315}
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3795, file: !3788, line: 135, baseType: !3848, size: 64, offset: 768)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!294, !3809, !315, !315, !7, !7, !3851}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3788, line: 43, size: 640, elements: !3853)
!3853 = !{!3854, !3855, !3856}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3852, file: !3788, line: 44, baseType: !3791, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3852, file: !3788, line: 45, baseType: !7, size: 32, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3852, file: !3788, line: 46, baseType: !3857, size: 512, offset: 128)
!3857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 512, elements: !611)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3795, file: !3788, line: 140, baseType: !3840, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3795, file: !3788, line: 143, baseType: !3836, size: 64, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3795, file: !3788, line: 145, baseType: !3798, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3795, file: !3788, line: 146, baseType: !3862, size: 64, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!294, !3809, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3788, line: 29, size: 128, elements: !3867)
!3867 = !{!3868, !3869, !3870}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3866, file: !3788, line: 30, baseType: !7, size: 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3866, file: !3788, line: 31, baseType: !7, size: 32, offset: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3866, file: !3788, line: 32, baseType: !3809, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3795, file: !3788, line: 148, baseType: !3872, size: 64, offset: 1088)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!294, !3809, !3485}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3787, file: !3788, line: 20, baseType: !3485, size: 64, offset: 128)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3779, file: !3780, line: 57, baseType: !3877, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3780, line: 31, size: 704, elements: !3879)
!3879 = !{!3880, !3881, !3882, !3883, !3884}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !3780, line: 32, baseType: !337, size: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3878, file: !3780, line: 33, baseType: !294, size: 32, offset: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3878, file: !3780, line: 34, baseType: !293, size: 64, offset: 128)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3878, file: !3780, line: 35, baseType: !3877, size: 64, offset: 192)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3878, file: !3780, line: 43, baseType: !2150, size: 448, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3779, file: !3780, line: 58, baseType: !3877, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3779, file: !3780, line: 59, baseType: !3778, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3779, file: !3780, line: 60, baseType: !3778, size: 64, offset: 576)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3779, file: !3780, line: 61, baseType: !3778, size: 64, offset: 640)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3779, file: !3780, line: 63, baseType: !2056, size: 512, offset: 704)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3779, file: !3780, line: 65, baseType: !480, size: 64, offset: 1216)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3779, file: !3780, line: 66, baseType: !293, size: 64, offset: 1280)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3772, file: !81, line: 108, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!294, !3764, !3896, !80}
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3898)
!3898 = !{!3899, !3900, !3901}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3897, file: !81, line: 64, baseType: !3791, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3897, file: !81, line: 65, baseType: !294, size: 32, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3897, file: !81, line: 66, baseType: !3902, size: 512, offset: 96)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 512, elements: !1628)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3772, file: !81, line: 110, baseType: !3904, size: 64, offset: 128)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!294, !3764, !7, !3907}
!3907 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !292, line: 164, baseType: !480)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3772, file: !81, line: 111, baseType: !3909, size: 64, offset: 192)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{null, !3764, !7}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3772, file: !81, line: 112, baseType: !3913, size: 64, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!294, !3764, !3778, !3916, !7, !3918, !371}
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3772, file: !81, line: 117, baseType: !3920, size: 64, offset: 320)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!294, !3764, !7, !7, !293}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3772, file: !81, line: 119, baseType: !3924, size: 64, offset: 384)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !3764, !7, !7}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3772, file: !81, line: 121, baseType: !3928, size: 64, offset: 448)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!294, !3764, !3931, !828}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3933, line: 11, flags: DIFlagFwdDecl)
!3933 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3772, file: !81, line: 122, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{null, !3764, !3931}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3772, file: !81, line: 123, baseType: !3939, size: 64, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!294, !3764, !3896, !3918, !371}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3765, file: !81, line: 166, baseType: !293, size: 64, offset: 256)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3765, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3765, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3765, file: !81, line: 171, baseType: !3791, size: 64, offset: 384)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3765, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3765, file: !81, line: 173, baseType: !3948, size: 64, offset: 512)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3765, file: !81, line: 175, baseType: !3764, size: 64, offset: 576)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3765, file: !81, line: 182, baseType: !3907, size: 64, offset: 640)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3765, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3765, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3765, file: !81, line: 185, baseType: !1081, size: 128, offset: 768)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3765, file: !81, line: 186, baseType: !1352, size: 192, offset: 896)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3765, file: !81, line: 187, baseType: !3957, offset: 1088)
!3957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2779)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3481, file: !60, line: 499, baseType: !529, size: 128, offset: 4224)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3481, file: !60, line: 502, baseType: !3960, size: 64, offset: 4352)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3481, file: !60, line: 504, baseType: !3964, size: 64, offset: 4416)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3481, file: !60, line: 505, baseType: !295, size: 64, offset: 4480)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3481, file: !60, line: 510, baseType: !295, size: 64, offset: 4544)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3481, file: !60, line: 511, baseType: !3968, size: 64, offset: 4608)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3970)
!3970 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3481, file: !60, line: 513, baseType: !3972, size: 64, offset: 4672)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3974)
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3973, file: !60, line: 293, baseType: !7, size: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3973, file: !60, line: 294, baseType: !480, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3481, file: !60, line: 515, baseType: !529, size: 128, offset: 4736)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3481, file: !60, line: 526, baseType: !3979, offset: 4864)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3980, line: 5, elements: !467)
!3980 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3481, file: !60, line: 528, baseType: !3778, size: 64, offset: 4864)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3481, file: !60, line: 529, baseType: !3791, size: 64, offset: 4928)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3481, file: !60, line: 534, baseType: !851, size: 32, offset: 4992)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3481, file: !60, line: 535, baseType: !301, size: 32, offset: 5024)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3481, file: !60, line: 537, baseType: !1085, offset: 5056)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3481, file: !60, line: 538, baseType: !529, size: 128, offset: 5056)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3481, file: !60, line: 540, baseType: !3988, size: 64, offset: 5184)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3990, line: 54, size: 960, elements: !3991)
!3990 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3991 = !{!3992, !3993, !3994, !3995, !3996, !3997, !3998, !4002, !4006, !4007, !4008, !4009, !4013, !4017, !4018}
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3989, file: !3990, line: 55, baseType: !315, size: 64)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3989, file: !3990, line: 56, baseType: !319, size: 64, offset: 64)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3989, file: !3990, line: 58, baseType: !2135, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3989, file: !3990, line: 59, baseType: !2135, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3989, file: !3990, line: 60, baseType: !2062, size: 64, offset: 256)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3989, file: !3990, line: 62, baseType: !3498, size: 64, offset: 320)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3989, file: !3990, line: 63, baseType: !3999, size: 64, offset: 384)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!337, !3485, !3505}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3989, file: !3990, line: 65, baseType: !4003, size: 64, offset: 448)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{null, !3988}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3989, file: !3990, line: 66, baseType: !3507, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3989, file: !3990, line: 68, baseType: !3516, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3989, file: !3990, line: 70, baseType: !2171, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3989, file: !3990, line: 71, baseType: !4010, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4011, size: 64)
!4011 = !DISubroutineType(types: !4012)
!4012 = !{!2188, !3485}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3989, file: !3990, line: 73, baseType: !4014, size: 64, offset: 768)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{null, !3485, !2205, !2206}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3989, file: !3990, line: 75, baseType: !3511, size: 64, offset: 832)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3989, file: !3990, line: 77, baseType: !3628, size: 64, offset: 896)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3481, file: !60, line: 541, baseType: !2135, size: 64, offset: 5248)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3481, file: !60, line: 543, baseType: !3507, size: 64, offset: 5312)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3481, file: !60, line: 544, baseType: !4022, size: 64, offset: 5376)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3481, file: !60, line: 545, baseType: !4025, size: 64, offset: 5440)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3481, file: !60, line: 547, baseType: !828, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3481, file: !60, line: 548, baseType: !828, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3481, file: !60, line: 549, baseType: !828, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3481, file: !60, line: 550, baseType: !828, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !433, file: !426, line: 709, baseType: !480, size: 64, offset: 6336)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !433, file: !426, line: 713, baseType: !294, size: 32, offset: 6400)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !433, file: !426, line: 714, baseType: !4034, size: 384, offset: 6432)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 384, elements: !4035)
!4035 = !{!4036}
!4036 = !DISubrange(count: 48)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !433, file: !426, line: 715, baseType: !2751, size: 192, offset: 6848)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !433, file: !426, line: 717, baseType: !1352, size: 192, offset: 7040)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !433, file: !426, line: 718, baseType: !529, size: 128, offset: 7232)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !433, file: !426, line: 720, baseType: !4041, size: 64, offset: 7360)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !426, line: 618, size: 832, elements: !4043)
!4043 = !{!4044, !4048, !4049, !4053, !4054, !4055, !4056, !4060, !4061, !4064, !4065, !4068, !4071}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4042, file: !426, line: 619, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DISubroutineType(types: !4047)
!4047 = !{!294, !432}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4042, file: !426, line: 621, baseType: !4045, size: 64, offset: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4042, file: !426, line: 622, baseType: !4050, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DISubroutineType(types: !4052)
!4052 = !{null, !432, !294}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4042, file: !426, line: 623, baseType: !4045, size: 64, offset: 192)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4042, file: !426, line: 624, baseType: !4050, size: 64, offset: 256)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4042, file: !426, line: 625, baseType: !4045, size: 64, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4042, file: !426, line: 627, baseType: !4057, size: 64, offset: 384)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{null, !432}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4042, file: !426, line: 628, baseType: !4057, size: 64, offset: 448)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4042, file: !426, line: 631, baseType: !4062, size: 64, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !426, line: 631, flags: DIFlagFwdDecl)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4042, file: !426, line: 632, baseType: !4062, size: 64, offset: 576)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4042, file: !426, line: 633, baseType: !4066, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !426, line: 633, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4042, file: !426, line: 634, baseType: !4069, size: 64, offset: 704)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !426, line: 634, flags: DIFlagFwdDecl)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4042, file: !426, line: 635, baseType: !4069, size: 64, offset: 768)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !433, file: !426, line: 721, baseType: !4073, size: 64, offset: 7424)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4075)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !426, line: 664, size: 192, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4075, file: !426, line: 665, baseType: !295, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4075, file: !426, line: 666, baseType: !294, size: 32, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4075, file: !426, line: 667, baseType: !304, size: 16, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4075, file: !426, line: 668, baseType: !304, size: 16, offset: 112)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4075, file: !426, line: 669, baseType: !304, size: 16, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4075, file: !426, line: 670, baseType: !304, size: 16, offset: 144)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !433, file: !426, line: 723, baseType: !3764, size: 64, offset: 7488)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4086, line: 69, size: 128, elements: !4087)
!4086 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4087 = !{!4088, !4089, !4090, !4091}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4085, file: !4086, line: 70, baseType: !305, size: 16)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4085, file: !4086, line: 71, baseType: !305, size: 16, offset: 16)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4085, file: !4086, line: 84, baseType: !305, size: 16, offset: 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4085, file: !4086, line: 85, baseType: !4092, size: 64, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !425, file: !426, line: 531, baseType: !429, size: 64, offset: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !425, file: !426, line: 533, baseType: !4095, size: 64, offset: 128)
!4095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4096, size: 64)
!4096 = !DISubroutineType(types: !4097)
!4097 = !{!294, !432, !304, !306, !317, !349, !294, !4098}
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4086, line: 135, size: 272, elements: !4100)
!4100 = !{!4101, !4102, !4103}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4099, file: !4086, line: 136, baseType: !350, size: 8)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4099, file: !4086, line: 137, baseType: !305, size: 16)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4099, file: !4086, line: 138, baseType: !4104, size: 272)
!4104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 272, elements: !4105)
!4105 = !{!4106}
!4106 = !DISubrange(count: 34)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !425, file: !426, line: 536, baseType: !4095, size: 64, offset: 192)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !425, file: !426, line: 541, baseType: !4109, size: 64, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!301, !432}
!4112 = !DIGlobalVariableExpression(var: !4113, expr: !DIExpression())
!4113 = distinct !DIGlobalVariable(name: "cx24123_ops", scope: !2, file: !3, line: 1101, type: !4114, isLocal: true, isDefinition: true)
!4114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4115)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !139, line: 435, size: 6016, elements: !4116)
!4116 = !{!4117, !4129, !4131, !4258, !4259, !4260, !4264, !4265, !4271, !4276, !4280, !4281, !4291, !4296, !4300, !4304, !4309, !4310, !4311, !4312, !4322, !4333, !4337, !4341, !4345, !4349, !4353, !4357, !4358, !4359, !4363, !4417}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4115, file: !139, line: 436, baseType: !4118, size: 1280)
!4118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !139, line: 338, size: 1280, elements: !4119)
!4119 = !{!4120, !4121, !4122, !4123, !4124, !4125, !4126, !4127, !4128}
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4118, file: !139, line: 339, baseType: !3574, size: 1024)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4118, file: !139, line: 340, baseType: !301, size: 32, offset: 1024)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4118, file: !139, line: 341, baseType: !301, size: 32, offset: 1056)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4118, file: !139, line: 342, baseType: !301, size: 32, offset: 1088)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4118, file: !139, line: 343, baseType: !301, size: 32, offset: 1120)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4118, file: !139, line: 344, baseType: !301, size: 32, offset: 1152)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4118, file: !139, line: 345, baseType: !301, size: 32, offset: 1184)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4118, file: !139, line: 346, baseType: !301, size: 32, offset: 1216)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4118, file: !139, line: 347, baseType: !94, size: 32, offset: 1248)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4115, file: !139, line: 438, baseType: !4130, size: 64, offset: 1280)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !611)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4115, file: !139, line: 440, baseType: !4132, size: 64, offset: 1344)
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DISubroutineType(types: !4134)
!4134 = !{null, !4135}
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !139, line: 686, size: 10240, elements: !4137)
!4137 = !{!4138, !4139, !4140, !4174, !4175, !4176, !4177, !4178, !4179, !4252, !4256, !4257}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4136, file: !139, line: 687, baseType: !2347, size: 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4136, file: !139, line: 688, baseType: !4115, size: 6016, offset: 64)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4136, file: !139, line: 689, baseType: !4141, size: 64, offset: 6080)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !4143)
!4143 = !{!4144, !4145, !4146, !4147, !4148, !4150, !4151, !4152, !4153, !4154, !4173}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4142, file: !272, line: 102, baseType: !294, size: 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4142, file: !272, line: 103, baseType: !529, size: 128, offset: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4142, file: !272, line: 104, baseType: !529, size: 128, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4142, file: !272, line: 105, baseType: !315, size: 64, offset: 320)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4142, file: !272, line: 106, baseType: !4149, size: 48, offset: 384)
!4149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 48, elements: !2519)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4142, file: !272, line: 107, baseType: !293, size: 64, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4142, file: !272, line: 109, baseType: !3485, size: 64, offset: 512)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4142, file: !272, line: 111, baseType: !319, size: 64, offset: 576)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4142, file: !272, line: 113, baseType: !294, size: 32, offset: 640)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4142, file: !272, line: 114, baseType: !4155, size: 64, offset: 704)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4172}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4156, file: !272, line: 158, baseType: !529, size: 128)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4156, file: !272, line: 159, baseType: !1798, size: 64, offset: 128)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4156, file: !272, line: 160, baseType: !4141, size: 64, offset: 192)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4156, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4156, file: !272, line: 162, baseType: !294, size: 32, offset: 288)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4156, file: !272, line: 163, baseType: !301, size: 32, offset: 320)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4156, file: !272, line: 167, baseType: !294, size: 32, offset: 352)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4156, file: !272, line: 168, baseType: !294, size: 32, offset: 384)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4156, file: !272, line: 169, baseType: !294, size: 32, offset: 416)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4156, file: !272, line: 171, baseType: !1584, size: 128, offset: 448)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4156, file: !272, line: 173, baseType: !4169, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!294, !705, !7, !293}
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4156, file: !272, line: 187, baseType: !293, size: 64, offset: 640)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4142, file: !272, line: 115, baseType: !1352, size: 192, offset: 768)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4136, file: !139, line: 690, baseType: !293, size: 64, offset: 6144)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4136, file: !139, line: 691, baseType: !293, size: 64, offset: 6208)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4136, file: !139, line: 692, baseType: !293, size: 64, offset: 6272)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4136, file: !139, line: 693, baseType: !293, size: 64, offset: 6336)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4136, file: !139, line: 694, baseType: !293, size: 64, offset: 6400)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4136, file: !139, line: 695, baseType: !4180, size: 3648, offset: 6464)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !139, line: 586, size: 3648, elements: !4181)
!4181 = !{!4182, !4183, !4184, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4245, !4246, !4247, !4248, !4249, !4250, !4251}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4180, file: !139, line: 587, baseType: !301, size: 32)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4180, file: !139, line: 588, baseType: !145, size: 32, offset: 32)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4180, file: !139, line: 590, baseType: !161, size: 32, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4180, file: !139, line: 591, baseType: !166, size: 32, offset: 96)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4180, file: !139, line: 592, baseType: !170, size: 32, offset: 128)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4180, file: !139, line: 593, baseType: !175, size: 32, offset: 160)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4180, file: !139, line: 594, baseType: !190, size: 32, offset: 192)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4180, file: !139, line: 595, baseType: !301, size: 32, offset: 224)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4180, file: !139, line: 596, baseType: !201, size: 32, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4180, file: !139, line: 597, baseType: !214, size: 32, offset: 288)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4180, file: !139, line: 598, baseType: !301, size: 32, offset: 320)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4180, file: !139, line: 599, baseType: !175, size: 32, offset: 352)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4180, file: !139, line: 600, baseType: !175, size: 32, offset: 384)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4180, file: !139, line: 602, baseType: !221, size: 32, offset: 416)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4180, file: !139, line: 603, baseType: !226, size: 32, offset: 448)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4180, file: !139, line: 605, baseType: !232, size: 32, offset: 480)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4180, file: !139, line: 607, baseType: !253, size: 32, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4180, file: !139, line: 610, baseType: !349, size: 8, offset: 544)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4180, file: !139, line: 611, baseType: !349, size: 8, offset: 552)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4180, file: !139, line: 612, baseType: !349, size: 8, offset: 560)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4180, file: !139, line: 613, baseType: !301, size: 32, offset: 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4180, file: !139, line: 614, baseType: !301, size: 32, offset: 608)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4180, file: !139, line: 615, baseType: !349, size: 8, offset: 640)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4180, file: !139, line: 621, baseType: !4206, size: 384, offset: 672)
!4206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4207, size: 384, elements: !993)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4180, file: !139, line: 616, size: 128, elements: !4208)
!4208 = !{!4209, !4210, !4211, !4212}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4207, file: !139, line: 617, baseType: !349, size: 8)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4207, file: !139, line: 618, baseType: !175, size: 32, offset: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4207, file: !139, line: 619, baseType: !145, size: 32, offset: 64)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4207, file: !139, line: 620, baseType: !349, size: 8, offset: 96)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4180, file: !139, line: 624, baseType: !301, size: 32, offset: 1056)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4180, file: !139, line: 627, baseType: !301, size: 32, offset: 1088)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4180, file: !139, line: 630, baseType: !349, size: 8, offset: 1120)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4180, file: !139, line: 631, baseType: !349, size: 8, offset: 1128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4180, file: !139, line: 632, baseType: !349, size: 8, offset: 1136)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4180, file: !139, line: 633, baseType: !349, size: 8, offset: 1144)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4180, file: !139, line: 634, baseType: !349, size: 8, offset: 1152)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4180, file: !139, line: 635, baseType: !349, size: 8, offset: 1160)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4180, file: !139, line: 637, baseType: !349, size: 8, offset: 1168)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4180, file: !139, line: 638, baseType: !349, size: 8, offset: 1176)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4180, file: !139, line: 639, baseType: !349, size: 8, offset: 1184)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4180, file: !139, line: 640, baseType: !349, size: 8, offset: 1192)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4180, file: !139, line: 641, baseType: !349, size: 8, offset: 1200)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4180, file: !139, line: 642, baseType: !349, size: 8, offset: 1208)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4180, file: !139, line: 643, baseType: !349, size: 8, offset: 1216)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4180, file: !139, line: 644, baseType: !349, size: 8, offset: 1224)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4180, file: !139, line: 645, baseType: !349, size: 8, offset: 1232)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4180, file: !139, line: 647, baseType: !301, size: 32, offset: 1248)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4180, file: !139, line: 650, baseType: !4232, size: 296, offset: 1280)
!4232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !95, line: 825, size: 296, elements: !4233)
!4233 = !{!4234, !4235}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4232, file: !95, line: 826, baseType: !350, size: 8)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4232, file: !95, line: 827, baseType: !4236, size: 288, offset: 8)
!4236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4237, size: 288, elements: !2420)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !95, line: 803, size: 72, elements: !4238)
!4238 = !{!4239, !4240}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4237, file: !95, line: 804, baseType: !350, size: 8)
!4240 = !DIDerivedType(tag: DW_TAG_member, scope: !4237, file: !95, line: 805, baseType: !4241, size: 64, offset: 8)
!4241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4237, file: !95, line: 805, size: 64, elements: !4242)
!4242 = !{!4243, !4244}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4241, file: !95, line: 806, baseType: !297, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4241, file: !95, line: 807, baseType: !564, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4180, file: !139, line: 651, baseType: !4232, size: 296, offset: 1576)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4180, file: !139, line: 652, baseType: !4232, size: 296, offset: 1872)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4180, file: !139, line: 653, baseType: !4232, size: 296, offset: 2168)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4180, file: !139, line: 654, baseType: !4232, size: 296, offset: 2464)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4180, file: !139, line: 655, baseType: !4232, size: 296, offset: 2760)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4180, file: !139, line: 656, baseType: !4232, size: 296, offset: 3056)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4180, file: !139, line: 657, baseType: !4232, size: 296, offset: 3352)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4136, file: !139, line: 698, baseType: !4253, size: 64, offset: 10112)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!294, !293, !294, !294, !294}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4136, file: !139, line: 699, baseType: !294, size: 32, offset: 10176)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4136, file: !139, line: 700, baseType: !7, size: 32, offset: 10208)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4115, file: !139, line: 441, baseType: !4132, size: 64, offset: 1408)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4115, file: !139, line: 442, baseType: !4132, size: 64, offset: 1472)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4115, file: !139, line: 444, baseType: !4261, size: 64, offset: 1536)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!294, !4135}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4115, file: !139, line: 445, baseType: !4261, size: 64, offset: 1600)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4115, file: !139, line: 447, baseType: !4266, size: 64, offset: 1664)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!294, !4135, !4269, !294}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4115, file: !139, line: 450, baseType: !4272, size: 64, offset: 1728)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!294, !4135, !828, !7, !371, !4275}
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4115, file: !139, line: 457, baseType: !4277, size: 64, offset: 1792)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = !DISubroutineType(types: !4279)
!4279 = !{!138, !4135}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4115, file: !139, line: 460, baseType: !4261, size: 64, offset: 1856)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4115, file: !139, line: 461, baseType: !4282, size: 64, offset: 1920)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!294, !4135, !4285}
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4286, size: 64)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !139, line: 69, size: 96, elements: !4287)
!4287 = !{!4288, !4289, !4290}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4286, file: !139, line: 70, baseType: !294, size: 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4286, file: !139, line: 71, baseType: !294, size: 32, offset: 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4286, file: !139, line: 72, baseType: !294, size: 32, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4115, file: !139, line: 463, baseType: !4292, size: 64, offset: 1984)
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4293, size: 64)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!294, !4135, !4295}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4115, file: !139, line: 466, baseType: !4297, size: 64, offset: 2048)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!294, !4135, !4275}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4115, file: !139, line: 467, baseType: !4301, size: 64, offset: 2112)
!4301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4302, size: 64)
!4302 = !DISubroutineType(types: !4303)
!4303 = !{!294, !4135, !2818}
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4115, file: !139, line: 468, baseType: !4305, size: 64, offset: 2176)
!4305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!294, !4135, !4308}
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4115, file: !139, line: 469, baseType: !4305, size: 64, offset: 2240)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4115, file: !139, line: 470, baseType: !4301, size: 64, offset: 2304)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4115, file: !139, line: 472, baseType: !4261, size: 64, offset: 2368)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4115, file: !139, line: 473, baseType: !4313, size: 64, offset: 2432)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!294, !4135, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !95, line: 173, size: 56, elements: !4318)
!4318 = !{!4319, !4321}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4317, file: !95, line: 174, baseType: !4320, size: 48)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 48, elements: !2519)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4317, file: !95, line: 175, baseType: !350, size: 8, offset: 48)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4115, file: !139, line: 474, baseType: !4323, size: 64, offset: 2496)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!294, !4135, !4326}
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !95, line: 195, size: 96, elements: !4328)
!4328 = !{!4329, !4331, !4332}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4327, file: !95, line: 196, baseType: !4330, size: 32)
!4330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 32, elements: !2420)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4327, file: !95, line: 197, baseType: !350, size: 8, offset: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4327, file: !95, line: 198, baseType: !294, size: 32, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4115, file: !139, line: 475, baseType: !4334, size: 64, offset: 2560)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!294, !4135, !259}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4115, file: !139, line: 477, baseType: !4338, size: 64, offset: 2624)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4339, size: 64)
!4339 = !DISubroutineType(types: !4340)
!4340 = !{!294, !4135, !166}
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4115, file: !139, line: 478, baseType: !4342, size: 64, offset: 2688)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!294, !4135, !161}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4115, file: !139, line: 480, baseType: !4346, size: 64, offset: 2752)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!294, !4135, !303}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4115, file: !139, line: 481, baseType: !4350, size: 64, offset: 2816)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{!294, !4135, !480}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4115, file: !139, line: 482, baseType: !4354, size: 64, offset: 2880)
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!294, !4135, !294}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4115, file: !139, line: 483, baseType: !4354, size: 64, offset: 2944)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4115, file: !139, line: 484, baseType: !4261, size: 64, offset: 3008)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4115, file: !139, line: 490, baseType: !4360, size: 64, offset: 3072)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DISubroutineType(types: !4362)
!4362 = !{!263, !4135}
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4115, file: !139, line: 492, baseType: !4364, size: 2304, offset: 3136)
!4364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !139, line: 226, size: 2304, elements: !4365)
!4365 = !{!4366, !4376, !4377, !4378, !4379, !4380, !4381, !4382, !4393, !4397, !4398, !4399, !4400, !4401, !4402, !4407, !4412, !4416}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4364, file: !139, line: 228, baseType: !4367, size: 1216)
!4367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !139, line: 88, size: 1216, elements: !4368)
!4368 = !{!4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4367, file: !139, line: 89, baseType: !3574, size: 1024)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4367, file: !139, line: 91, baseType: !301, size: 32, offset: 1024)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4367, file: !139, line: 92, baseType: !301, size: 32, offset: 1056)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4367, file: !139, line: 93, baseType: !301, size: 32, offset: 1088)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4367, file: !139, line: 95, baseType: !301, size: 32, offset: 1120)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4367, file: !139, line: 96, baseType: !301, size: 32, offset: 1152)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4367, file: !139, line: 97, baseType: !301, size: 32, offset: 1184)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4364, file: !139, line: 230, baseType: !4132, size: 64, offset: 1216)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4364, file: !139, line: 231, baseType: !4261, size: 64, offset: 1280)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4364, file: !139, line: 232, baseType: !4261, size: 64, offset: 1344)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4364, file: !139, line: 233, baseType: !4261, size: 64, offset: 1408)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4364, file: !139, line: 234, baseType: !4261, size: 64, offset: 1472)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4364, file: !139, line: 237, baseType: !4261, size: 64, offset: 1536)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4364, file: !139, line: 238, baseType: !4383, size: 64, offset: 1600)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!294, !4135, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !139, line: 114, size: 192, elements: !4388)
!4388 = !{!4389, !4390, !4391, !4392}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4387, file: !139, line: 115, baseType: !7, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4387, file: !139, line: 116, baseType: !7, size: 32, offset: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4387, file: !139, line: 117, baseType: !7, size: 32, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4387, file: !139, line: 118, baseType: !295, size: 64, offset: 128)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4364, file: !139, line: 240, baseType: !4394, size: 64, offset: 1664)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!294, !4135, !293}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4364, file: !139, line: 242, baseType: !4301, size: 64, offset: 1728)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4364, file: !139, line: 243, baseType: !4301, size: 64, offset: 1792)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4364, file: !139, line: 244, baseType: !4301, size: 64, offset: 1856)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4364, file: !139, line: 248, baseType: !4301, size: 64, offset: 1920)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4364, file: !139, line: 249, baseType: !4305, size: 64, offset: 1984)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4364, file: !139, line: 250, baseType: !4403, size: 64, offset: 2048)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!294, !4135, !4406}
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4364, file: !139, line: 258, baseType: !4408, size: 64, offset: 2112)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!294, !4135, !4411, !294}
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4364, file: !139, line: 267, baseType: !4413, size: 64, offset: 2176)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{!294, !4135, !301}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4364, file: !139, line: 268, baseType: !4413, size: 64, offset: 2240)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4115, file: !139, line: 493, baseType: !4418, size: 576, offset: 5440)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !139, line: 302, size: 576, elements: !4419)
!4419 = !{!4420, !4424, !4428, !4429, !4430, !4431, !4432, !4433, !4434}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4418, file: !139, line: 304, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !139, line: 276, size: 64, elements: !4422)
!4422 = !{!4423}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4421, file: !139, line: 277, baseType: !337, size: 64)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4418, file: !139, line: 306, baseType: !4425, size: 64, offset: 64)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DISubroutineType(types: !4427)
!4427 = !{null, !4135, !4386}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4418, file: !139, line: 308, baseType: !4305, size: 64, offset: 128)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4418, file: !139, line: 309, baseType: !4403, size: 64, offset: 192)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4418, file: !139, line: 310, baseType: !4132, size: 64, offset: 256)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4418, file: !139, line: 311, baseType: !4132, size: 64, offset: 320)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4418, file: !139, line: 312, baseType: !4132, size: 64, offset: 384)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4418, file: !139, line: 313, baseType: !4354, size: 64, offset: 448)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4418, file: !139, line: 316, baseType: !4394, size: 64, offset: 512)
!4435 = !DIGlobalVariableExpression(var: !4436, expr: !DIExpression())
!4436 = distinct !DIGlobalVariable(name: "cx24123_regdata", scope: !2, file: !3, line: 187, type: !4437, isLocal: true, isDefinition: true)
!4437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4438, size: 656, elements: !4442)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 184, size: 16, elements: !4439)
!4439 = !{!4440, !4441}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4438, file: !3, line: 185, baseType: !349, size: 8)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4438, file: !3, line: 186, baseType: !349, size: 8, offset: 8)
!4442 = !{!4443}
!4443 = !DISubrange(count: 41)
!4444 = !DIGlobalVariableExpression(var: !4445, expr: !DIExpression())
!4445 = distinct !DIGlobalVariable(name: "cx24123_AGC_vals", scope: !2, file: !3, line: 72, type: !4446, isLocal: true, isDefinition: true)
!4446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4447, size: 480, elements: !993)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24123_AGC_val", file: !3, line: 66, size: 160, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "symbolrate_low", scope: !4447, file: !3, line: 67, baseType: !301, size: 32)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "symbolrate_high", scope: !4447, file: !3, line: 68, baseType: !301, size: 32, offset: 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "VCAprogdata", scope: !4447, file: !3, line: 69, baseType: !301, size: 32, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "VGAprogdata", scope: !4447, file: !3, line: 70, baseType: !301, size: 32, offset: 96)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "FILTune", scope: !4447, file: !3, line: 71, baseType: !301, size: 32, offset: 128)
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(name: "cx24123_bandselect_vals", scope: !2, file: !3, line: 109, type: !4456, isLocal: true, isDefinition: true)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4457, size: 1152, elements: !3585)
!4457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24123_bandselect_val", file: !3, line: 104, size: 128, elements: !4458)
!4458 = !{!4459, !4460, !4461, !4462}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "freq_low", scope: !4457, file: !3, line: 105, baseType: !301, size: 32)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "freq_high", scope: !4457, file: !3, line: 106, baseType: !301, size: 32, offset: 32)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "VCOdivider", scope: !4457, file: !3, line: 107, baseType: !301, size: 32, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "progdata", scope: !4457, file: !3, line: 108, baseType: !301, size: 32, offset: 96)
!4463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, size: 152, elements: !4464)
!4464 = !{!4465}
!4465 = !DISubrange(count: 19)
!4466 = !{i32 7, !"Dwarf Version", i32 4}
!4467 = !{i32 2, !"Debug Info Version", i32 3}
!4468 = !{i32 1, !"wchar_size", i32 2}
!4469 = !{i32 1, !"Code Model", i32 2}
!4470 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4471 = distinct !DISubprogram(name: "cx24123_get_tuner_i2c_adapter", scope: !3, file: !3, line: 1032, type: !4472, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!432, !4135}
!4474 = !DILocalVariable(name: "fe", arg: 1, scope: !4471, file: !3, line: 1032, type: !4135)
!4475 = !DILocation(line: 1032, column: 53, scope: !4471)
!4476 = !DILocalVariable(name: "state", scope: !4471, file: !3, line: 1034, type: !4477)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24123_state", file: !3, line: 43, size: 18240, elements: !4479)
!4479 = !{!4480, !4481, !4492, !4493, !4494, !4495, !4496, !4497, !4498, !4499, !4500, !4501}
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4478, file: !3, line: 44, baseType: !432, size: 64)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4478, file: !3, line: 45, baseType: !4482, size: 64, offset: 64)
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4484)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cx24123_config", file: !4485, line: 14, size: 256, elements: !4486)
!4485 = !DIFile(filename: "drivers/media/dvb-frontends/cx24123.h", directory: "/home/lizy2001/genbc/linux")
!4486 = !{!4487, !4488, !4489, !4490, !4491}
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4484, file: !4485, line: 16, baseType: !349, size: 8)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "set_ts_params", scope: !4484, file: !4485, line: 19, baseType: !4354, size: 64, offset: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "lnb_polarity", scope: !4484, file: !4485, line: 22, baseType: !294, size: 32, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "dont_use_pll", scope: !4484, file: !4485, line: 25, baseType: !349, size: 8, offset: 160)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "agc_callback", scope: !4484, file: !4485, line: 26, baseType: !4132, size: 64, offset: 192)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4478, file: !3, line: 47, baseType: !4136, size: 10240, offset: 128)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "VCAarg", scope: !4478, file: !3, line: 50, baseType: !301, size: 32, offset: 10368)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "VGAarg", scope: !4478, file: !3, line: 51, baseType: !301, size: 32, offset: 10400)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "bandselectarg", scope: !4478, file: !3, line: 52, baseType: !301, size: 32, offset: 10432)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "pllarg", scope: !4478, file: !3, line: 53, baseType: !301, size: 32, offset: 10464)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "FILTune", scope: !4478, file: !3, line: 54, baseType: !301, size: 32, offset: 10496)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_i2c_adapter", scope: !4478, file: !3, line: 56, baseType: !433, size: 7552, offset: 10560)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "demod_rev", scope: !4478, file: !3, line: 58, baseType: !349, size: 8, offset: 18112)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "currentfreq", scope: !4478, file: !3, line: 61, baseType: !301, size: 32, offset: 18144)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "currentsymbolrate", scope: !4478, file: !3, line: 62, baseType: !301, size: 32, offset: 18176)
!4502 = !DILocation(line: 1034, column: 24, scope: !4471)
!4503 = !DILocation(line: 1034, column: 32, scope: !4471)
!4504 = !DILocation(line: 1034, column: 36, scope: !4471)
!4505 = !DILocation(line: 1035, column: 10, scope: !4471)
!4506 = !DILocation(line: 1035, column: 17, scope: !4471)
!4507 = !DILocation(line: 1035, column: 2, scope: !4471)
!4508 = distinct !DISubprogram(name: "cx24123_attach", scope: !3, file: !3, line: 1041, type: !4509, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!4135, !4482, !432}
!4511 = !DILocalVariable(name: "config", arg: 1, scope: !4508, file: !3, line: 1041, type: !4482)
!4512 = !DILocation(line: 1041, column: 66, scope: !4508)
!4513 = !DILocalVariable(name: "i2c", arg: 2, scope: !4508, file: !3, line: 1042, type: !432)
!4514 = !DILocation(line: 1042, column: 29, scope: !4508)
!4515 = !DILocalVariable(name: "state", scope: !4508, file: !3, line: 1045, type: !4477)
!4516 = !DILocation(line: 1045, column: 24, scope: !4508)
!4517 = !DILocation(line: 1046, column: 3, scope: !4508)
!4518 = !DILocation(line: 1048, column: 2, scope: !4508)
!4519 = !DILocation(line: 1048, column: 2, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 1048, column: 2)
!4521 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1048, column: 2)
!4522 = !DILocation(line: 1048, column: 2, scope: !4521)
!4523 = !DILocation(line: 1048, column: 2, scope: !4524)
!4524 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 1048, column: 2)
!4525 = !DILocation(line: 1049, column: 6, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1049, column: 6)
!4527 = !DILocation(line: 1049, column: 12, scope: !4526)
!4528 = !DILocation(line: 1049, column: 6, scope: !4508)
!4529 = !DILocation(line: 1050, column: 3, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4526, file: !3, line: 1049, column: 21)
!4531 = !DILocation(line: 1050, column: 3, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 1050, column: 3)
!4533 = !DILocation(line: 1051, column: 3, scope: !4530)
!4534 = !DILocation(line: 1055, column: 18, scope: !4508)
!4535 = !DILocation(line: 1055, column: 2, scope: !4508)
!4536 = !DILocation(line: 1055, column: 9, scope: !4508)
!4537 = !DILocation(line: 1055, column: 16, scope: !4508)
!4538 = !DILocation(line: 1056, column: 15, scope: !4508)
!4539 = !DILocation(line: 1056, column: 2, scope: !4508)
!4540 = !DILocation(line: 1056, column: 9, scope: !4508)
!4541 = !DILocation(line: 1056, column: 13, scope: !4508)
!4542 = !DILocation(line: 1059, column: 21, scope: !4508)
!4543 = !DILocation(line: 1059, column: 2, scope: !4508)
!4544 = !DILocation(line: 1059, column: 9, scope: !4508)
!4545 = !DILocation(line: 1059, column: 19, scope: !4508)
!4546 = !DILocation(line: 1060, column: 10, scope: !4508)
!4547 = !DILocation(line: 1060, column: 17, scope: !4508)
!4548 = !DILocation(line: 1060, column: 2, scope: !4508)
!4549 = !DILocation(line: 1062, column: 3, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1060, column: 28)
!4551 = !DILocation(line: 1062, column: 3, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1062, column: 3)
!4553 = !DILocation(line: 1063, column: 3, scope: !4550)
!4554 = !DILocation(line: 1065, column: 3, scope: !4550)
!4555 = !DILocation(line: 1065, column: 3, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1065, column: 3)
!4557 = !DILocation(line: 1066, column: 3, scope: !4550)
!4558 = !DILocation(line: 1068, column: 3, scope: !4550)
!4559 = !DILocation(line: 1068, column: 3, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4550, file: !3, line: 1068, column: 3)
!4561 = !DILocation(line: 1069, column: 3, scope: !4550)
!4562 = !DILocation(line: 1073, column: 10, scope: !4508)
!4563 = !DILocation(line: 1073, column: 17, scope: !4508)
!4564 = !DILocation(line: 1073, column: 26, scope: !4508)
!4565 = !DILocation(line: 1073, column: 2, scope: !4508)
!4566 = !DILocation(line: 1075, column: 37, scope: !4508)
!4567 = !DILocation(line: 1075, column: 2, scope: !4508)
!4568 = !DILocation(line: 1075, column: 9, scope: !4508)
!4569 = !DILocation(line: 1075, column: 18, scope: !4508)
!4570 = !DILocation(line: 1075, column: 35, scope: !4508)
!4571 = !DILocation(line: 1078, column: 6, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1078, column: 6)
!4573 = !DILocation(line: 1078, column: 14, scope: !4572)
!4574 = !DILocation(line: 1078, column: 6, scope: !4508)
!4575 = !DILocation(line: 1079, column: 25, scope: !4572)
!4576 = !DILocation(line: 1079, column: 3, scope: !4572)
!4577 = !DILocation(line: 1081, column: 10, scope: !4508)
!4578 = !DILocation(line: 1081, column: 17, scope: !4508)
!4579 = !DILocation(line: 1081, column: 35, scope: !4508)
!4580 = !DILocation(line: 1081, column: 2, scope: !4508)
!4581 = !DILocation(line: 1083, column: 2, scope: !4508)
!4582 = !DILocation(line: 1083, column: 9, scope: !4508)
!4583 = !DILocation(line: 1083, column: 27, scope: !4508)
!4584 = !DILocation(line: 1083, column: 37, scope: !4508)
!4585 = !DILocation(line: 1084, column: 2, scope: !4508)
!4586 = !DILocation(line: 1084, column: 9, scope: !4508)
!4587 = !DILocation(line: 1084, column: 27, scope: !4508)
!4588 = !DILocation(line: 1084, column: 37, scope: !4508)
!4589 = !DILocation(line: 1085, column: 40, scope: !4508)
!4590 = !DILocation(line: 1085, column: 45, scope: !4508)
!4591 = !DILocation(line: 1085, column: 49, scope: !4508)
!4592 = !DILocation(line: 1085, column: 2, scope: !4508)
!4593 = !DILocation(line: 1085, column: 9, scope: !4508)
!4594 = !DILocation(line: 1085, column: 27, scope: !4508)
!4595 = !DILocation(line: 1085, column: 31, scope: !4508)
!4596 = !DILocation(line: 1085, column: 38, scope: !4508)
!4597 = !DILocation(line: 1086, column: 20, scope: !4508)
!4598 = !DILocation(line: 1086, column: 27, scope: !4508)
!4599 = !DILocation(line: 1086, column: 46, scope: !4508)
!4600 = !DILocation(line: 1086, column: 2, scope: !4508)
!4601 = !DILocation(line: 1087, column: 23, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 1087, column: 6)
!4603 = !DILocation(line: 1087, column: 30, scope: !4602)
!4604 = !DILocation(line: 1087, column: 6, scope: !4602)
!4605 = !DILocation(line: 1087, column: 49, scope: !4602)
!4606 = !DILocation(line: 1087, column: 6, scope: !4508)
!4607 = !DILocation(line: 1088, column: 3, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4602, file: !3, line: 1087, column: 54)
!4609 = !DILocation(line: 1088, column: 3, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4608, file: !3, line: 1088, column: 3)
!4611 = !DILocation(line: 1089, column: 3, scope: !4608)
!4612 = !DILocation(line: 1092, column: 10, scope: !4508)
!4613 = !DILocation(line: 1092, column: 17, scope: !4508)
!4614 = !DILocation(line: 1092, column: 2, scope: !4508)
!4615 = !DILabel(scope: !4508, name: "error", file: !3, line: 1094)
!4616 = !DILocation(line: 1094, column: 1, scope: !4508)
!4617 = !DILocation(line: 1095, column: 8, scope: !4508)
!4618 = !DILocation(line: 1095, column: 2, scope: !4508)
!4619 = !DILocation(line: 1097, column: 2, scope: !4508)
!4620 = !DILocation(line: 1098, column: 1, scope: !4508)
!4621 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4622, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!293, !917, !291}
!4624 = !DILocalVariable(name: "s", arg: 1, scope: !4625, file: !284, line: 445, type: !1262)
!4625 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4626, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!293, !1262, !291, !917}
!4628 = !DILocation(line: 445, column: 72, scope: !4625, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 552, column: 10, scope: !4630, inlinedAt: !4633)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !284, line: 540, column: 34)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !284, line: 540, column: 6)
!4632 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4622, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4633 = distinct !DILocation(line: 664, column: 9, scope: !4621)
!4634 = !DILocalVariable(name: "flags", arg: 2, scope: !4625, file: !284, line: 446, type: !291)
!4635 = !DILocation(line: 446, column: 9, scope: !4625, inlinedAt: !4629)
!4636 = !DILocalVariable(name: "size", arg: 3, scope: !4625, file: !284, line: 446, type: !917)
!4637 = !DILocation(line: 446, column: 23, scope: !4625, inlinedAt: !4629)
!4638 = !DILocalVariable(name: "ret", scope: !4625, file: !284, line: 448, type: !293)
!4639 = !DILocation(line: 448, column: 8, scope: !4625, inlinedAt: !4629)
!4640 = !DILocalVariable(name: "flags", arg: 1, scope: !4641, file: !284, line: 318, type: !291)
!4641 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4642, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4642 = !DISubroutineType(types: !4643)
!4643 = !{!283, !291}
!4644 = !DILocation(line: 318, column: 67, scope: !4641, inlinedAt: !4645)
!4645 = distinct !DILocation(line: 553, column: 20, scope: !4630, inlinedAt: !4633)
!4646 = !DILocalVariable(name: "size", arg: 1, scope: !4647, file: !284, line: 346, type: !917)
!4647 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4648, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4648 = !DISubroutineType(types: !4649)
!4649 = !{!7, !917}
!4650 = !DILocation(line: 346, column: 58, scope: !4647, inlinedAt: !4651)
!4651 = distinct !DILocation(line: 547, column: 11, scope: !4630, inlinedAt: !4633)
!4652 = !DILocalVariable(name: "size", arg: 1, scope: !4653, file: !284, line: 472, type: !917)
!4653 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4654, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!293, !917, !291, !7}
!4656 = !DILocation(line: 472, column: 28, scope: !4653, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 481, column: 9, scope: !4658, inlinedAt: !4659)
!4658 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4622, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4659 = distinct !DILocation(line: 545, column: 11, scope: !4660, inlinedAt: !4633)
!4660 = distinct !DILexicalBlock(scope: !4630, file: !284, line: 544, column: 7)
!4661 = !DILocalVariable(name: "flags", arg: 2, scope: !4653, file: !284, line: 472, type: !291)
!4662 = !DILocation(line: 472, column: 40, scope: !4653, inlinedAt: !4657)
!4663 = !DILocalVariable(name: "order", arg: 3, scope: !4653, file: !284, line: 472, type: !7)
!4664 = !DILocation(line: 472, column: 60, scope: !4653, inlinedAt: !4657)
!4665 = !DILocalVariable(name: "size", arg: 1, scope: !4658, file: !284, line: 478, type: !917)
!4666 = !DILocation(line: 478, column: 51, scope: !4658, inlinedAt: !4659)
!4667 = !DILocalVariable(name: "flags", arg: 2, scope: !4658, file: !284, line: 478, type: !291)
!4668 = !DILocation(line: 478, column: 63, scope: !4658, inlinedAt: !4659)
!4669 = !DILocalVariable(name: "order", scope: !4658, file: !284, line: 480, type: !7)
!4670 = !DILocation(line: 480, column: 15, scope: !4658, inlinedAt: !4659)
!4671 = !DILocalVariable(name: "size", arg: 1, scope: !4632, file: !284, line: 538, type: !917)
!4672 = !DILocation(line: 538, column: 45, scope: !4632, inlinedAt: !4633)
!4673 = !DILocalVariable(name: "flags", arg: 2, scope: !4632, file: !284, line: 538, type: !291)
!4674 = !DILocation(line: 538, column: 57, scope: !4632, inlinedAt: !4633)
!4675 = !DILocalVariable(name: "index", scope: !4630, file: !284, line: 542, type: !7)
!4676 = !DILocation(line: 542, column: 16, scope: !4630, inlinedAt: !4633)
!4677 = !DILocalVariable(name: "size", arg: 1, scope: !4621, file: !284, line: 662, type: !917)
!4678 = !DILocation(line: 662, column: 36, scope: !4621)
!4679 = !DILocalVariable(name: "flags", arg: 2, scope: !4621, file: !284, line: 662, type: !291)
!4680 = !DILocation(line: 662, column: 48, scope: !4621)
!4681 = !DILocation(line: 664, column: 17, scope: !4621)
!4682 = !DILocation(line: 664, column: 23, scope: !4621)
!4683 = !DILocation(line: 664, column: 29, scope: !4621)
!4684 = !DILocation(line: 540, column: 27, scope: !4631, inlinedAt: !4633)
!4685 = !DILocation(line: 540, column: 6, scope: !4631, inlinedAt: !4633)
!4686 = !DILocation(line: 540, column: 6, scope: !4632, inlinedAt: !4633)
!4687 = !DILocation(line: 544, column: 7, scope: !4660, inlinedAt: !4633)
!4688 = !DILocation(line: 544, column: 12, scope: !4660, inlinedAt: !4633)
!4689 = !DILocation(line: 544, column: 7, scope: !4630, inlinedAt: !4633)
!4690 = !DILocation(line: 545, column: 25, scope: !4660, inlinedAt: !4633)
!4691 = !DILocation(line: 545, column: 31, scope: !4660, inlinedAt: !4633)
!4692 = !DILocation(line: 480, column: 33, scope: !4658, inlinedAt: !4659)
!4693 = !DILocation(line: 480, column: 23, scope: !4658, inlinedAt: !4659)
!4694 = !DILocation(line: 481, column: 29, scope: !4658, inlinedAt: !4659)
!4695 = !DILocation(line: 481, column: 35, scope: !4658, inlinedAt: !4659)
!4696 = !DILocation(line: 481, column: 42, scope: !4658, inlinedAt: !4659)
!4697 = !DILocation(line: 474, column: 23, scope: !4653, inlinedAt: !4657)
!4698 = !DILocation(line: 474, column: 29, scope: !4653, inlinedAt: !4657)
!4699 = !DILocation(line: 474, column: 36, scope: !4653, inlinedAt: !4657)
!4700 = !DILocation(line: 474, column: 9, scope: !4653, inlinedAt: !4657)
!4701 = !DILocation(line: 545, column: 4, scope: !4660, inlinedAt: !4633)
!4702 = !DILocation(line: 547, column: 25, scope: !4630, inlinedAt: !4633)
!4703 = !DILocation(line: 348, column: 7, scope: !4704, inlinedAt: !4651)
!4704 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 348, column: 6)
!4705 = !DILocation(line: 348, column: 6, scope: !4647, inlinedAt: !4651)
!4706 = !DILocation(line: 349, column: 3, scope: !4704, inlinedAt: !4651)
!4707 = !DILocation(line: 351, column: 6, scope: !4708, inlinedAt: !4651)
!4708 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 351, column: 6)
!4709 = !DILocation(line: 351, column: 11, scope: !4708, inlinedAt: !4651)
!4710 = !DILocation(line: 351, column: 6, scope: !4647, inlinedAt: !4651)
!4711 = !DILocation(line: 352, column: 3, scope: !4708, inlinedAt: !4651)
!4712 = !DILocation(line: 354, column: 32, scope: !4713, inlinedAt: !4651)
!4713 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 354, column: 6)
!4714 = !DILocation(line: 354, column: 37, scope: !4713, inlinedAt: !4651)
!4715 = !DILocation(line: 354, column: 42, scope: !4713, inlinedAt: !4651)
!4716 = !DILocation(line: 354, column: 45, scope: !4713, inlinedAt: !4651)
!4717 = !DILocation(line: 354, column: 50, scope: !4713, inlinedAt: !4651)
!4718 = !DILocation(line: 354, column: 6, scope: !4647, inlinedAt: !4651)
!4719 = !DILocation(line: 355, column: 3, scope: !4713, inlinedAt: !4651)
!4720 = !DILocation(line: 356, column: 32, scope: !4721, inlinedAt: !4651)
!4721 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 356, column: 6)
!4722 = !DILocation(line: 356, column: 37, scope: !4721, inlinedAt: !4651)
!4723 = !DILocation(line: 356, column: 43, scope: !4721, inlinedAt: !4651)
!4724 = !DILocation(line: 356, column: 46, scope: !4721, inlinedAt: !4651)
!4725 = !DILocation(line: 356, column: 51, scope: !4721, inlinedAt: !4651)
!4726 = !DILocation(line: 356, column: 6, scope: !4647, inlinedAt: !4651)
!4727 = !DILocation(line: 357, column: 3, scope: !4721, inlinedAt: !4651)
!4728 = !DILocation(line: 358, column: 6, scope: !4729, inlinedAt: !4651)
!4729 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 358, column: 6)
!4730 = !DILocation(line: 358, column: 11, scope: !4729, inlinedAt: !4651)
!4731 = !DILocation(line: 358, column: 6, scope: !4647, inlinedAt: !4651)
!4732 = !DILocation(line: 358, column: 26, scope: !4729, inlinedAt: !4651)
!4733 = !DILocation(line: 359, column: 6, scope: !4734, inlinedAt: !4651)
!4734 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 359, column: 6)
!4735 = !DILocation(line: 359, column: 11, scope: !4734, inlinedAt: !4651)
!4736 = !DILocation(line: 359, column: 6, scope: !4647, inlinedAt: !4651)
!4737 = !DILocation(line: 359, column: 26, scope: !4734, inlinedAt: !4651)
!4738 = !DILocation(line: 360, column: 6, scope: !4739, inlinedAt: !4651)
!4739 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 360, column: 6)
!4740 = !DILocation(line: 360, column: 11, scope: !4739, inlinedAt: !4651)
!4741 = !DILocation(line: 360, column: 6, scope: !4647, inlinedAt: !4651)
!4742 = !DILocation(line: 360, column: 26, scope: !4739, inlinedAt: !4651)
!4743 = !DILocation(line: 361, column: 6, scope: !4744, inlinedAt: !4651)
!4744 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 361, column: 6)
!4745 = !DILocation(line: 361, column: 11, scope: !4744, inlinedAt: !4651)
!4746 = !DILocation(line: 361, column: 6, scope: !4647, inlinedAt: !4651)
!4747 = !DILocation(line: 361, column: 26, scope: !4744, inlinedAt: !4651)
!4748 = !DILocation(line: 362, column: 6, scope: !4749, inlinedAt: !4651)
!4749 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 362, column: 6)
!4750 = !DILocation(line: 362, column: 11, scope: !4749, inlinedAt: !4651)
!4751 = !DILocation(line: 362, column: 6, scope: !4647, inlinedAt: !4651)
!4752 = !DILocation(line: 362, column: 26, scope: !4749, inlinedAt: !4651)
!4753 = !DILocation(line: 363, column: 6, scope: !4754, inlinedAt: !4651)
!4754 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 363, column: 6)
!4755 = !DILocation(line: 363, column: 11, scope: !4754, inlinedAt: !4651)
!4756 = !DILocation(line: 363, column: 6, scope: !4647, inlinedAt: !4651)
!4757 = !DILocation(line: 363, column: 26, scope: !4754, inlinedAt: !4651)
!4758 = !DILocation(line: 364, column: 6, scope: !4759, inlinedAt: !4651)
!4759 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 364, column: 6)
!4760 = !DILocation(line: 364, column: 11, scope: !4759, inlinedAt: !4651)
!4761 = !DILocation(line: 364, column: 6, scope: !4647, inlinedAt: !4651)
!4762 = !DILocation(line: 364, column: 26, scope: !4759, inlinedAt: !4651)
!4763 = !DILocation(line: 365, column: 6, scope: !4764, inlinedAt: !4651)
!4764 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 365, column: 6)
!4765 = !DILocation(line: 365, column: 11, scope: !4764, inlinedAt: !4651)
!4766 = !DILocation(line: 365, column: 6, scope: !4647, inlinedAt: !4651)
!4767 = !DILocation(line: 365, column: 26, scope: !4764, inlinedAt: !4651)
!4768 = !DILocation(line: 366, column: 6, scope: !4769, inlinedAt: !4651)
!4769 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 366, column: 6)
!4770 = !DILocation(line: 366, column: 11, scope: !4769, inlinedAt: !4651)
!4771 = !DILocation(line: 366, column: 6, scope: !4647, inlinedAt: !4651)
!4772 = !DILocation(line: 366, column: 26, scope: !4769, inlinedAt: !4651)
!4773 = !DILocation(line: 367, column: 6, scope: !4774, inlinedAt: !4651)
!4774 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 367, column: 6)
!4775 = !DILocation(line: 367, column: 11, scope: !4774, inlinedAt: !4651)
!4776 = !DILocation(line: 367, column: 6, scope: !4647, inlinedAt: !4651)
!4777 = !DILocation(line: 367, column: 26, scope: !4774, inlinedAt: !4651)
!4778 = !DILocation(line: 368, column: 6, scope: !4779, inlinedAt: !4651)
!4779 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 368, column: 6)
!4780 = !DILocation(line: 368, column: 11, scope: !4779, inlinedAt: !4651)
!4781 = !DILocation(line: 368, column: 6, scope: !4647, inlinedAt: !4651)
!4782 = !DILocation(line: 368, column: 26, scope: !4779, inlinedAt: !4651)
!4783 = !DILocation(line: 369, column: 6, scope: !4784, inlinedAt: !4651)
!4784 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 369, column: 6)
!4785 = !DILocation(line: 369, column: 11, scope: !4784, inlinedAt: !4651)
!4786 = !DILocation(line: 369, column: 6, scope: !4647, inlinedAt: !4651)
!4787 = !DILocation(line: 369, column: 26, scope: !4784, inlinedAt: !4651)
!4788 = !DILocation(line: 370, column: 6, scope: !4789, inlinedAt: !4651)
!4789 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 370, column: 6)
!4790 = !DILocation(line: 370, column: 11, scope: !4789, inlinedAt: !4651)
!4791 = !DILocation(line: 370, column: 6, scope: !4647, inlinedAt: !4651)
!4792 = !DILocation(line: 370, column: 26, scope: !4789, inlinedAt: !4651)
!4793 = !DILocation(line: 371, column: 6, scope: !4794, inlinedAt: !4651)
!4794 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 371, column: 6)
!4795 = !DILocation(line: 371, column: 11, scope: !4794, inlinedAt: !4651)
!4796 = !DILocation(line: 371, column: 6, scope: !4647, inlinedAt: !4651)
!4797 = !DILocation(line: 371, column: 26, scope: !4794, inlinedAt: !4651)
!4798 = !DILocation(line: 372, column: 6, scope: !4799, inlinedAt: !4651)
!4799 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 372, column: 6)
!4800 = !DILocation(line: 372, column: 11, scope: !4799, inlinedAt: !4651)
!4801 = !DILocation(line: 372, column: 6, scope: !4647, inlinedAt: !4651)
!4802 = !DILocation(line: 372, column: 26, scope: !4799, inlinedAt: !4651)
!4803 = !DILocation(line: 373, column: 6, scope: !4804, inlinedAt: !4651)
!4804 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 373, column: 6)
!4805 = !DILocation(line: 373, column: 11, scope: !4804, inlinedAt: !4651)
!4806 = !DILocation(line: 373, column: 6, scope: !4647, inlinedAt: !4651)
!4807 = !DILocation(line: 373, column: 26, scope: !4804, inlinedAt: !4651)
!4808 = !DILocation(line: 374, column: 6, scope: !4809, inlinedAt: !4651)
!4809 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 374, column: 6)
!4810 = !DILocation(line: 374, column: 11, scope: !4809, inlinedAt: !4651)
!4811 = !DILocation(line: 374, column: 6, scope: !4647, inlinedAt: !4651)
!4812 = !DILocation(line: 374, column: 26, scope: !4809, inlinedAt: !4651)
!4813 = !DILocation(line: 375, column: 6, scope: !4814, inlinedAt: !4651)
!4814 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 375, column: 6)
!4815 = !DILocation(line: 375, column: 11, scope: !4814, inlinedAt: !4651)
!4816 = !DILocation(line: 375, column: 6, scope: !4647, inlinedAt: !4651)
!4817 = !DILocation(line: 375, column: 27, scope: !4814, inlinedAt: !4651)
!4818 = !DILocation(line: 376, column: 6, scope: !4819, inlinedAt: !4651)
!4819 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 376, column: 6)
!4820 = !DILocation(line: 376, column: 11, scope: !4819, inlinedAt: !4651)
!4821 = !DILocation(line: 376, column: 6, scope: !4647, inlinedAt: !4651)
!4822 = !DILocation(line: 376, column: 32, scope: !4819, inlinedAt: !4651)
!4823 = !DILocation(line: 377, column: 6, scope: !4824, inlinedAt: !4651)
!4824 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 377, column: 6)
!4825 = !DILocation(line: 377, column: 11, scope: !4824, inlinedAt: !4651)
!4826 = !DILocation(line: 377, column: 6, scope: !4647, inlinedAt: !4651)
!4827 = !DILocation(line: 377, column: 32, scope: !4824, inlinedAt: !4651)
!4828 = !DILocation(line: 378, column: 6, scope: !4829, inlinedAt: !4651)
!4829 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 378, column: 6)
!4830 = !DILocation(line: 378, column: 11, scope: !4829, inlinedAt: !4651)
!4831 = !DILocation(line: 378, column: 6, scope: !4647, inlinedAt: !4651)
!4832 = !DILocation(line: 378, column: 32, scope: !4829, inlinedAt: !4651)
!4833 = !DILocation(line: 379, column: 6, scope: !4834, inlinedAt: !4651)
!4834 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 379, column: 6)
!4835 = !DILocation(line: 379, column: 11, scope: !4834, inlinedAt: !4651)
!4836 = !DILocation(line: 379, column: 6, scope: !4647, inlinedAt: !4651)
!4837 = !DILocation(line: 379, column: 33, scope: !4834, inlinedAt: !4651)
!4838 = !DILocation(line: 380, column: 6, scope: !4839, inlinedAt: !4651)
!4839 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 380, column: 6)
!4840 = !DILocation(line: 380, column: 11, scope: !4839, inlinedAt: !4651)
!4841 = !DILocation(line: 380, column: 6, scope: !4647, inlinedAt: !4651)
!4842 = !DILocation(line: 380, column: 33, scope: !4839, inlinedAt: !4651)
!4843 = !DILocation(line: 381, column: 6, scope: !4844, inlinedAt: !4651)
!4844 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 381, column: 6)
!4845 = !DILocation(line: 381, column: 11, scope: !4844, inlinedAt: !4651)
!4846 = !DILocation(line: 381, column: 6, scope: !4647, inlinedAt: !4651)
!4847 = !DILocation(line: 381, column: 33, scope: !4844, inlinedAt: !4651)
!4848 = !DILocation(line: 382, column: 2, scope: !4849, inlinedAt: !4651)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !284, line: 382, column: 2)
!4850 = distinct !DILexicalBlock(scope: !4647, file: !284, line: 382, column: 2)
!4851 = !{i32 -2144626091, i32 -2144626062, i32 -2144626016, i32 -2144625958, i32 -2144625904, i32 -2144625850, i32 -2144625795, i32 -2144625764}
!4852 = !DILocation(line: 382, column: 2, scope: !4853, inlinedAt: !4651)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !284, line: 382, column: 2)
!4854 = distinct !DILexicalBlock(scope: !4850, file: !284, line: 382, column: 2)
!4855 = !{i32 -2144625321, i32 -2144625314, i32 -2144625260, i32 -2144625229, i32 -2144625199}
!4856 = !DILocation(line: 382, column: 2, scope: !4854, inlinedAt: !4651)
!4857 = !DILocation(line: 386, column: 1, scope: !4647, inlinedAt: !4651)
!4858 = !DILocation(line: 547, column: 9, scope: !4630, inlinedAt: !4633)
!4859 = !DILocation(line: 549, column: 8, scope: !4860, inlinedAt: !4633)
!4860 = distinct !DILexicalBlock(scope: !4630, file: !284, line: 549, column: 7)
!4861 = !DILocation(line: 549, column: 7, scope: !4630, inlinedAt: !4633)
!4862 = !DILocation(line: 550, column: 4, scope: !4860, inlinedAt: !4633)
!4863 = !DILocation(line: 553, column: 33, scope: !4630, inlinedAt: !4633)
!4864 = !DILocation(line: 325, column: 6, scope: !4865, inlinedAt: !4645)
!4865 = distinct !DILexicalBlock(scope: !4641, file: !284, line: 325, column: 6)
!4866 = !DILocation(line: 325, column: 6, scope: !4641, inlinedAt: !4645)
!4867 = !DILocation(line: 326, column: 3, scope: !4865, inlinedAt: !4645)
!4868 = !DILocation(line: 332, column: 9, scope: !4641, inlinedAt: !4645)
!4869 = !DILocation(line: 332, column: 15, scope: !4641, inlinedAt: !4645)
!4870 = !DILocation(line: 332, column: 2, scope: !4641, inlinedAt: !4645)
!4871 = !DILocation(line: 336, column: 1, scope: !4641, inlinedAt: !4645)
!4872 = !DILocation(line: 553, column: 5, scope: !4630, inlinedAt: !4633)
!4873 = !DILocation(line: 553, column: 41, scope: !4630, inlinedAt: !4633)
!4874 = !DILocation(line: 554, column: 5, scope: !4630, inlinedAt: !4633)
!4875 = !DILocation(line: 554, column: 12, scope: !4630, inlinedAt: !4633)
!4876 = !DILocation(line: 448, column: 31, scope: !4625, inlinedAt: !4629)
!4877 = !DILocation(line: 448, column: 34, scope: !4625, inlinedAt: !4629)
!4878 = !DILocation(line: 448, column: 14, scope: !4625, inlinedAt: !4629)
!4879 = !DILocation(line: 450, column: 22, scope: !4625, inlinedAt: !4629)
!4880 = !DILocation(line: 450, column: 25, scope: !4625, inlinedAt: !4629)
!4881 = !DILocation(line: 450, column: 30, scope: !4625, inlinedAt: !4629)
!4882 = !DILocation(line: 450, column: 36, scope: !4625, inlinedAt: !4629)
!4883 = !DILocation(line: 450, column: 8, scope: !4625, inlinedAt: !4629)
!4884 = !DILocation(line: 450, column: 6, scope: !4625, inlinedAt: !4629)
!4885 = !DILocation(line: 451, column: 9, scope: !4625, inlinedAt: !4629)
!4886 = !DILocation(line: 552, column: 3, scope: !4630, inlinedAt: !4633)
!4887 = !DILocation(line: 557, column: 19, scope: !4632, inlinedAt: !4633)
!4888 = !DILocation(line: 557, column: 25, scope: !4632, inlinedAt: !4633)
!4889 = !DILocation(line: 557, column: 9, scope: !4632, inlinedAt: !4633)
!4890 = !DILocation(line: 557, column: 2, scope: !4632, inlinedAt: !4633)
!4891 = !DILocation(line: 558, column: 1, scope: !4632, inlinedAt: !4633)
!4892 = !DILocation(line: 664, column: 2, scope: !4621)
!4893 = distinct !DISubprogram(name: "cx24123_i2c_readreg", scope: !3, file: !3, line: 253, type: !4894, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!294, !4477, !349, !349}
!4896 = !DILocalVariable(name: "state", arg: 1, scope: !4893, file: !3, line: 253, type: !4477)
!4897 = !DILocation(line: 253, column: 54, scope: !4893)
!4898 = !DILocalVariable(name: "i2c_addr", arg: 2, scope: !4893, file: !3, line: 253, type: !349)
!4899 = !DILocation(line: 253, column: 64, scope: !4893)
!4900 = !DILocalVariable(name: "reg", arg: 3, scope: !4893, file: !3, line: 253, type: !349)
!4901 = !DILocation(line: 253, column: 77, scope: !4893)
!4902 = !DILocalVariable(name: "ret", scope: !4893, file: !3, line: 255, type: !294)
!4903 = !DILocation(line: 255, column: 6, scope: !4893)
!4904 = !DILocalVariable(name: "b", scope: !4893, file: !3, line: 256, type: !349)
!4905 = !DILocation(line: 256, column: 5, scope: !4893)
!4906 = !DILocalVariable(name: "msg", scope: !4893, file: !3, line: 257, type: !4907)
!4907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 256, elements: !2460)
!4908 = !DILocation(line: 257, column: 17, scope: !4893)
!4909 = !DILocation(line: 257, column: 25, scope: !4893)
!4910 = !DILocation(line: 258, column: 3, scope: !4893)
!4911 = !DILocation(line: 258, column: 13, scope: !4893)
!4912 = !DILocation(line: 259, column: 3, scope: !4893)
!4913 = !DILocation(line: 259, column: 13, scope: !4893)
!4914 = !DILocation(line: 262, column: 21, scope: !4893)
!4915 = !DILocation(line: 262, column: 28, scope: !4893)
!4916 = !DILocation(line: 262, column: 33, scope: !4893)
!4917 = !DILocation(line: 262, column: 8, scope: !4893)
!4918 = !DILocation(line: 262, column: 6, scope: !4893)
!4919 = !DILocation(line: 264, column: 6, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4893, file: !3, line: 264, column: 6)
!4921 = !DILocation(line: 264, column: 10, scope: !4920)
!4922 = !DILocation(line: 264, column: 6, scope: !4893)
!4923 = !DILocation(line: 265, column: 3, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 264, column: 16)
!4925 = !DILocation(line: 265, column: 3, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4924, file: !3, line: 265, column: 3)
!4927 = !DILocation(line: 266, column: 10, scope: !4924)
!4928 = !DILocation(line: 266, column: 3, scope: !4924)
!4929 = !DILocation(line: 271, column: 9, scope: !4893)
!4930 = !DILocation(line: 271, column: 2, scope: !4893)
!4931 = !DILocation(line: 272, column: 1, scope: !4893)
!4932 = distinct !DISubprogram(name: "cx24123_repeater_mode", scope: !3, file: !3, line: 676, type: !4894, scopeLine: 677, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4933 = !DILocalVariable(name: "state", arg: 1, scope: !4932, file: !3, line: 676, type: !4477)
!4934 = !DILocation(line: 676, column: 56, scope: !4932)
!4935 = !DILocalVariable(name: "mode", arg: 2, scope: !4932, file: !3, line: 676, type: !349)
!4936 = !DILocation(line: 676, column: 66, scope: !4932)
!4937 = !DILocalVariable(name: "start", arg: 3, scope: !4932, file: !3, line: 676, type: !349)
!4938 = !DILocation(line: 676, column: 75, scope: !4932)
!4939 = !DILocalVariable(name: "r", scope: !4932, file: !3, line: 678, type: !349)
!4940 = !DILocation(line: 678, column: 5, scope: !4932)
!4941 = !DILocation(line: 678, column: 9, scope: !4932)
!4942 = !DILocation(line: 678, column: 38, scope: !4932)
!4943 = !DILocation(line: 679, column: 6, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4932, file: !3, line: 679, column: 6)
!4945 = !DILocation(line: 679, column: 6, scope: !4932)
!4946 = !DILocation(line: 680, column: 20, scope: !4944)
!4947 = !DILocation(line: 680, column: 26, scope: !4944)
!4948 = !DILocation(line: 680, column: 17, scope: !4944)
!4949 = !DILocation(line: 680, column: 5, scope: !4944)
!4950 = !DILocation(line: 680, column: 3, scope: !4944)
!4951 = !DILocation(line: 682, column: 20, scope: !4944)
!4952 = !DILocation(line: 682, column: 19, scope: !4944)
!4953 = !DILocation(line: 682, column: 17, scope: !4944)
!4954 = !DILocation(line: 682, column: 5, scope: !4944)
!4955 = !DILocation(line: 683, column: 9, scope: !4932)
!4956 = !DILocation(line: 683, column: 2, scope: !4932)
!4957 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !426, file: !426, line: 732, type: !4958, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{null, !432, !293}
!4960 = !DILocalVariable(name: "adap", arg: 1, scope: !4957, file: !426, line: 732, type: !432)
!4961 = !DILocation(line: 732, column: 57, scope: !4957)
!4962 = !DILocalVariable(name: "data", arg: 2, scope: !4957, file: !426, line: 732, type: !293)
!4963 = !DILocation(line: 732, column: 69, scope: !4957)
!4964 = !DILocation(line: 734, column: 19, scope: !4957)
!4965 = !DILocation(line: 734, column: 25, scope: !4957)
!4966 = !DILocation(line: 734, column: 30, scope: !4957)
!4967 = !DILocation(line: 734, column: 2, scope: !4957)
!4968 = !DILocation(line: 735, column: 1, scope: !4957)
!4969 = distinct !DISubprogram(name: "get_order", scope: !4970, file: !4970, line: 29, type: !4971, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4970 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!294, !480}
!4973 = !DILocalVariable(name: "x", arg: 1, scope: !4974, file: !4975, line: 366, type: !297)
!4974 = distinct !DISubprogram(name: "fls64", scope: !4975, file: !4975, line: 366, type: !4976, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!4975 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4976 = !DISubroutineType(types: !4977)
!4977 = !{!294, !297}
!4978 = !DILocation(line: 366, column: 40, scope: !4974, inlinedAt: !4979)
!4979 = distinct !DILocation(line: 46, column: 9, scope: !4969)
!4980 = !DILocalVariable(name: "bitpos", scope: !4974, file: !4975, line: 368, type: !294)
!4981 = !DILocation(line: 368, column: 6, scope: !4974, inlinedAt: !4979)
!4982 = !DILocalVariable(name: "size", arg: 1, scope: !4969, file: !4970, line: 29, type: !480)
!4983 = !DILocation(line: 29, column: 63, scope: !4969)
!4984 = !DILocation(line: 31, column: 27, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4969, file: !4970, line: 31, column: 6)
!4986 = !DILocation(line: 31, column: 6, scope: !4985)
!4987 = !DILocation(line: 31, column: 6, scope: !4969)
!4988 = !DILocation(line: 32, column: 8, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !4970, line: 32, column: 7)
!4990 = distinct !DILexicalBlock(scope: !4985, file: !4970, line: 31, column: 34)
!4991 = !DILocation(line: 32, column: 7, scope: !4990)
!4992 = !DILocation(line: 33, column: 4, scope: !4989)
!4993 = !DILocation(line: 35, column: 7, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4990, file: !4970, line: 35, column: 7)
!4995 = !DILocation(line: 35, column: 12, scope: !4994)
!4996 = !DILocation(line: 35, column: 7, scope: !4990)
!4997 = !DILocation(line: 36, column: 4, scope: !4994)
!4998 = !DILocation(line: 38, column: 10, scope: !4990)
!4999 = !DILocation(line: 38, column: 28, scope: !4990)
!5000 = !DILocation(line: 38, column: 41, scope: !4990)
!5001 = !DILocation(line: 38, column: 3, scope: !4990)
!5002 = !DILocation(line: 41, column: 6, scope: !4969)
!5003 = !DILocation(line: 42, column: 7, scope: !4969)
!5004 = !DILocation(line: 46, column: 15, scope: !4969)
!5005 = !DILocation(line: 374, column: 2, scope: !4974, inlinedAt: !4979)
!5006 = !DILocation(line: 376, column: 14, scope: !4974, inlinedAt: !4979)
!5007 = !{i32 329221}
!5008 = !DILocation(line: 377, column: 9, scope: !4974, inlinedAt: !4979)
!5009 = !DILocation(line: 377, column: 16, scope: !4974, inlinedAt: !4979)
!5010 = !DILocation(line: 46, column: 2, scope: !4969)
!5011 = !DILocation(line: 48, column: 1, scope: !4969)
!5012 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5013, file: !5013, line: 30, type: !5014, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5013 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5014 = !DISubroutineType(types: !5015)
!5015 = !{!294, !295}
!5016 = !DILocation(line: 366, column: 40, scope: !4974, inlinedAt: !5017)
!5017 = distinct !DILocation(line: 32, column: 9, scope: !5012)
!5018 = !DILocation(line: 368, column: 6, scope: !4974, inlinedAt: !5017)
!5019 = !DILocalVariable(name: "n", arg: 1, scope: !5012, file: !5013, line: 30, type: !295)
!5020 = !DILocation(line: 30, column: 21, scope: !5012)
!5021 = !DILocation(line: 32, column: 15, scope: !5012)
!5022 = !DILocation(line: 374, column: 2, scope: !4974, inlinedAt: !5017)
!5023 = !DILocation(line: 376, column: 14, scope: !4974, inlinedAt: !5017)
!5024 = !DILocation(line: 377, column: 9, scope: !4974, inlinedAt: !5017)
!5025 = !DILocation(line: 377, column: 16, scope: !4974, inlinedAt: !5017)
!5026 = !DILocation(line: 32, column: 18, scope: !5012)
!5027 = !DILocation(line: 32, column: 2, scope: !5012)
!5028 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5029, file: !5029, line: 137, type: !5030, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5029 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5030 = !DISubroutineType(types: !5031)
!5031 = !{!293, !1262, !2188, !917, !291}
!5032 = !DILocalVariable(name: "s", arg: 1, scope: !5028, file: !5029, line: 137, type: !1262)
!5033 = !DILocation(line: 137, column: 54, scope: !5028)
!5034 = !DILocalVariable(name: "object", arg: 2, scope: !5028, file: !5029, line: 137, type: !2188)
!5035 = !DILocation(line: 137, column: 69, scope: !5028)
!5036 = !DILocalVariable(name: "size", arg: 3, scope: !5028, file: !5029, line: 138, type: !917)
!5037 = !DILocation(line: 138, column: 12, scope: !5028)
!5038 = !DILocalVariable(name: "flags", arg: 4, scope: !5028, file: !5029, line: 138, type: !291)
!5039 = !DILocation(line: 138, column: 24, scope: !5028)
!5040 = !DILocation(line: 140, column: 17, scope: !5028)
!5041 = !DILocation(line: 140, column: 2, scope: !5028)
!5042 = distinct !DISubprogram(name: "cx24123_i2c_writereg", scope: !3, file: !3, line: 232, type: !5043, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5043 = !DISubroutineType(types: !5044)
!5044 = !{!294, !4477, !349, !294, !294}
!5045 = !DILocalVariable(name: "state", arg: 1, scope: !5042, file: !3, line: 232, type: !4477)
!5046 = !DILocation(line: 232, column: 55, scope: !5042)
!5047 = !DILocalVariable(name: "i2c_addr", arg: 2, scope: !5042, file: !3, line: 233, type: !349)
!5048 = !DILocation(line: 233, column: 5, scope: !5042)
!5049 = !DILocalVariable(name: "reg", arg: 3, scope: !5042, file: !3, line: 233, type: !294)
!5050 = !DILocation(line: 233, column: 19, scope: !5042)
!5051 = !DILocalVariable(name: "data", arg: 4, scope: !5042, file: !3, line: 233, type: !294)
!5052 = !DILocation(line: 233, column: 28, scope: !5042)
!5053 = !DILocalVariable(name: "buf", scope: !5042, file: !3, line: 235, type: !5054)
!5054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 16, elements: !2460)
!5055 = !DILocation(line: 235, column: 5, scope: !5042)
!5056 = !DILocation(line: 235, column: 13, scope: !5042)
!5057 = !DILocation(line: 235, column: 15, scope: !5042)
!5058 = !DILocation(line: 235, column: 20, scope: !5042)
!5059 = !DILocalVariable(name: "msg", scope: !5042, file: !3, line: 236, type: !4085)
!5060 = !DILocation(line: 236, column: 17, scope: !5042)
!5061 = !DILocation(line: 236, column: 23, scope: !5042)
!5062 = !DILocation(line: 237, column: 11, scope: !5042)
!5063 = !DILocation(line: 237, column: 40, scope: !5042)
!5064 = !DILocalVariable(name: "err", scope: !5042, file: !3, line: 239, type: !294)
!5065 = !DILocation(line: 239, column: 6, scope: !5042)
!5066 = !DILocation(line: 243, column: 21, scope: !5042)
!5067 = !DILocation(line: 243, column: 28, scope: !5042)
!5068 = !DILocation(line: 243, column: 8, scope: !5042)
!5069 = !DILocation(line: 243, column: 6, scope: !5042)
!5070 = !DILocation(line: 244, column: 6, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 244, column: 6)
!5072 = !DILocation(line: 244, column: 10, scope: !5071)
!5073 = !DILocation(line: 244, column: 6, scope: !5042)
!5074 = !DILocation(line: 246, column: 20, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 244, column: 16)
!5076 = !DILocation(line: 246, column: 25, scope: !5075)
!5077 = !DILocation(line: 246, column: 30, scope: !5075)
!5078 = !DILocation(line: 245, column: 3, scope: !5075)
!5079 = !DILocation(line: 247, column: 10, scope: !5075)
!5080 = !DILocation(line: 247, column: 3, scope: !5075)
!5081 = !DILocation(line: 250, column: 2, scope: !5042)
!5082 = !DILocation(line: 251, column: 1, scope: !5042)
!5083 = distinct !DISubprogram(name: "cx24123_tuner_i2c_tuner_xfer", scope: !3, file: !3, line: 1012, type: !430, scopeLine: 1014, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5084 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !5083, file: !3, line: 1012, type: !432)
!5085 = !DILocation(line: 1012, column: 61, scope: !5083)
!5086 = !DILocalVariable(name: "msg", arg: 2, scope: !5083, file: !3, line: 1013, type: !4084)
!5087 = !DILocation(line: 1013, column: 17, scope: !5083)
!5088 = !DILocalVariable(name: "num", arg: 3, scope: !5083, file: !3, line: 1013, type: !294)
!5089 = !DILocation(line: 1013, column: 28, scope: !5083)
!5090 = !DILocalVariable(name: "state", scope: !5083, file: !3, line: 1015, type: !4477)
!5091 = !DILocation(line: 1015, column: 24, scope: !5083)
!5092 = !DILocation(line: 1015, column: 49, scope: !5083)
!5093 = !DILocation(line: 1015, column: 32, scope: !5083)
!5094 = !DILocation(line: 1017, column: 24, scope: !5083)
!5095 = !DILocation(line: 1017, column: 2, scope: !5083)
!5096 = !DILocation(line: 1018, column: 22, scope: !5083)
!5097 = !DILocation(line: 1018, column: 29, scope: !5083)
!5098 = !DILocation(line: 1018, column: 34, scope: !5083)
!5099 = !DILocation(line: 1018, column: 39, scope: !5083)
!5100 = !DILocation(line: 1018, column: 9, scope: !5083)
!5101 = !DILocation(line: 1018, column: 2, scope: !5083)
!5102 = distinct !DISubprogram(name: "cx24123_tuner_i2c_func", scope: !3, file: !3, line: 1021, type: !4110, scopeLine: 1022, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5103 = !DILocalVariable(name: "adapter", arg: 1, scope: !5102, file: !3, line: 1021, type: !432)
!5104 = !DILocation(line: 1021, column: 55, scope: !5102)
!5105 = !DILocation(line: 1023, column: 2, scope: !5102)
!5106 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !426, file: !426, line: 727, type: !5107, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{!293, !5109}
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!5111 = !DILocalVariable(name: "adap", arg: 1, scope: !5106, file: !426, line: 727, type: !5109)
!5112 = !DILocation(line: 727, column: 64, scope: !5106)
!5113 = !DILocation(line: 729, column: 26, scope: !5106)
!5114 = !DILocation(line: 729, column: 32, scope: !5106)
!5115 = !DILocation(line: 729, column: 9, scope: !5106)
!5116 = !DILocation(line: 729, column: 2, scope: !5106)
!5117 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !60, file: !60, line: 655, type: !5118, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!293, !3815}
!5120 = !DILocalVariable(name: "dev", arg: 1, scope: !5117, file: !60, line: 655, type: !3815)
!5121 = !DILocation(line: 655, column: 58, scope: !5117)
!5122 = !DILocation(line: 657, column: 9, scope: !5117)
!5123 = !DILocation(line: 657, column: 14, scope: !5117)
!5124 = !DILocation(line: 657, column: 2, scope: !5117)
!5125 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !60, file: !60, line: 660, type: !5126, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !3485, !293}
!5128 = !DILocalVariable(name: "dev", arg: 1, scope: !5125, file: !60, line: 660, type: !3485)
!5129 = !DILocation(line: 660, column: 51, scope: !5125)
!5130 = !DILocalVariable(name: "data", arg: 2, scope: !5125, file: !60, line: 660, type: !293)
!5131 = !DILocation(line: 660, column: 62, scope: !5125)
!5132 = !DILocation(line: 662, column: 21, scope: !5125)
!5133 = !DILocation(line: 662, column: 2, scope: !5125)
!5134 = !DILocation(line: 662, column: 7, scope: !5125)
!5135 = !DILocation(line: 662, column: 19, scope: !5125)
!5136 = !DILocation(line: 663, column: 1, scope: !5125)
!5137 = distinct !DISubprogram(name: "cx24123_release", scope: !3, file: !3, line: 1004, type: !4133, scopeLine: 1005, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5138 = !DILocalVariable(name: "fe", arg: 1, scope: !5137, file: !3, line: 1004, type: !4135)
!5139 = !DILocation(line: 1004, column: 50, scope: !5137)
!5140 = !DILocalVariable(name: "state", scope: !5137, file: !3, line: 1006, type: !4477)
!5141 = !DILocation(line: 1006, column: 24, scope: !5137)
!5142 = !DILocation(line: 1006, column: 32, scope: !5137)
!5143 = !DILocation(line: 1006, column: 36, scope: !5137)
!5144 = !DILocation(line: 1007, column: 2, scope: !5137)
!5145 = !DILocation(line: 1007, column: 2, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 1007, column: 2)
!5147 = distinct !DILexicalBlock(scope: !5137, file: !3, line: 1007, column: 2)
!5148 = !DILocation(line: 1007, column: 2, scope: !5147)
!5149 = !DILocation(line: 1007, column: 2, scope: !5150)
!5150 = distinct !DILexicalBlock(scope: !5146, file: !3, line: 1007, column: 2)
!5151 = !DILocation(line: 1008, column: 19, scope: !5137)
!5152 = !DILocation(line: 1008, column: 26, scope: !5137)
!5153 = !DILocation(line: 1008, column: 2, scope: !5137)
!5154 = !DILocation(line: 1009, column: 8, scope: !5137)
!5155 = !DILocation(line: 1009, column: 2, scope: !5137)
!5156 = !DILocation(line: 1010, column: 1, scope: !5137)
!5157 = distinct !DISubprogram(name: "cx24123_initfe", scope: !3, file: !3, line: 686, type: !4262, scopeLine: 687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5158 = !DILocalVariable(name: "fe", arg: 1, scope: !5157, file: !3, line: 686, type: !4135)
!5159 = !DILocation(line: 686, column: 48, scope: !5157)
!5160 = !DILocalVariable(name: "state", scope: !5157, file: !3, line: 688, type: !4477)
!5161 = !DILocation(line: 688, column: 24, scope: !5157)
!5162 = !DILocation(line: 688, column: 32, scope: !5157)
!5163 = !DILocation(line: 688, column: 36, scope: !5157)
!5164 = !DILocalVariable(name: "i", scope: !5157, file: !3, line: 689, type: !294)
!5165 = !DILocation(line: 689, column: 6, scope: !5157)
!5166 = !DILocation(line: 691, column: 2, scope: !5157)
!5167 = !DILocation(line: 691, column: 2, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 691, column: 2)
!5169 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 691, column: 2)
!5170 = !DILocation(line: 691, column: 2, scope: !5169)
!5171 = !DILocation(line: 691, column: 2, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 691, column: 2)
!5173 = !DILocation(line: 694, column: 9, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 694, column: 2)
!5175 = !DILocation(line: 694, column: 7, scope: !5174)
!5176 = !DILocation(line: 694, column: 14, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5174, file: !3, line: 694, column: 2)
!5178 = !DILocation(line: 694, column: 16, scope: !5177)
!5179 = !DILocation(line: 694, column: 2, scope: !5174)
!5180 = !DILocation(line: 695, column: 3, scope: !5177)
!5181 = !DILocation(line: 694, column: 48, scope: !5177)
!5182 = !DILocation(line: 694, column: 2, scope: !5177)
!5183 = distinct !{!5183, !5179, !5184}
!5184 = !DILocation(line: 695, column: 3, scope: !5174)
!5185 = !DILocation(line: 699, column: 6, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 699, column: 6)
!5187 = !DILocation(line: 699, column: 13, scope: !5186)
!5188 = !DILocation(line: 699, column: 21, scope: !5186)
!5189 = !DILocation(line: 699, column: 6, scope: !5157)
!5190 = !DILocation(line: 700, column: 3, scope: !5186)
!5191 = !DILocation(line: 703, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5157, file: !3, line: 703, column: 6)
!5193 = !DILocation(line: 703, column: 13, scope: !5192)
!5194 = !DILocation(line: 703, column: 21, scope: !5192)
!5195 = !DILocation(line: 703, column: 6, scope: !5157)
!5196 = !DILocation(line: 704, column: 25, scope: !5192)
!5197 = !DILocation(line: 704, column: 3, scope: !5192)
!5198 = !DILocation(line: 706, column: 2, scope: !5157)
!5199 = distinct !DISubprogram(name: "cx24123_tune", scope: !3, file: !3, line: 981, type: !4273, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5200 = !DILocalVariable(name: "fe", arg: 1, scope: !5199, file: !3, line: 981, type: !4135)
!5201 = !DILocation(line: 981, column: 46, scope: !5199)
!5202 = !DILocalVariable(name: "re_tune", arg: 2, scope: !5199, file: !3, line: 982, type: !828)
!5203 = !DILocation(line: 982, column: 9, scope: !5199)
!5204 = !DILocalVariable(name: "mode_flags", arg: 3, scope: !5199, file: !3, line: 983, type: !7)
!5205 = !DILocation(line: 983, column: 17, scope: !5199)
!5206 = !DILocalVariable(name: "delay", arg: 4, scope: !5199, file: !3, line: 984, type: !371)
!5207 = !DILocation(line: 984, column: 18, scope: !5199)
!5208 = !DILocalVariable(name: "status", arg: 5, scope: !5199, file: !3, line: 985, type: !4275)
!5209 = !DILocation(line: 985, column: 20, scope: !5199)
!5210 = !DILocalVariable(name: "retval", scope: !5199, file: !3, line: 987, type: !294)
!5211 = !DILocation(line: 987, column: 6, scope: !5199)
!5212 = !DILocation(line: 989, column: 6, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 989, column: 6)
!5214 = !DILocation(line: 989, column: 6, scope: !5199)
!5215 = !DILocation(line: 990, column: 33, scope: !5213)
!5216 = !DILocation(line: 990, column: 12, scope: !5213)
!5217 = !DILocation(line: 990, column: 10, scope: !5213)
!5218 = !DILocation(line: 990, column: 3, scope: !5213)
!5219 = !DILocation(line: 992, column: 8, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 992, column: 6)
!5221 = !DILocation(line: 992, column: 19, scope: !5220)
!5222 = !DILocation(line: 992, column: 6, scope: !5199)
!5223 = !DILocation(line: 993, column: 23, scope: !5220)
!5224 = !DILocation(line: 993, column: 27, scope: !5220)
!5225 = !DILocation(line: 993, column: 3, scope: !5220)
!5226 = !DILocation(line: 994, column: 3, scope: !5199)
!5227 = !DILocation(line: 994, column: 9, scope: !5199)
!5228 = !DILocation(line: 996, column: 9, scope: !5199)
!5229 = !DILocation(line: 996, column: 2, scope: !5199)
!5230 = distinct !DISubprogram(name: "cx24123_get_algo", scope: !3, file: !3, line: 999, type: !4278, scopeLine: 1000, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5231 = !DILocalVariable(name: "fe", arg: 1, scope: !5230, file: !3, line: 999, type: !4135)
!5232 = !DILocation(line: 999, column: 62, scope: !5230)
!5233 = !DILocation(line: 1001, column: 2, scope: !5230)
!5234 = distinct !DISubprogram(name: "cx24123_set_frontend", scope: !3, file: !3, line: 900, type: !4262, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5235 = !DILocalVariable(name: "fe", arg: 1, scope: !5234, file: !3, line: 900, type: !4135)
!5236 = !DILocation(line: 900, column: 54, scope: !5234)
!5237 = !DILocalVariable(name: "state", scope: !5234, file: !3, line: 902, type: !4477)
!5238 = !DILocation(line: 902, column: 24, scope: !5234)
!5239 = !DILocation(line: 902, column: 32, scope: !5234)
!5240 = !DILocation(line: 902, column: 36, scope: !5234)
!5241 = !DILocalVariable(name: "p", scope: !5234, file: !3, line: 903, type: !4295)
!5242 = !DILocation(line: 903, column: 34, scope: !5234)
!5243 = !DILocation(line: 903, column: 39, scope: !5234)
!5244 = !DILocation(line: 903, column: 43, scope: !5234)
!5245 = !DILocation(line: 905, column: 2, scope: !5234)
!5246 = !DILocation(line: 905, column: 2, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 905, column: 2)
!5248 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 905, column: 2)
!5249 = !DILocation(line: 905, column: 2, scope: !5248)
!5250 = !DILocation(line: 905, column: 2, scope: !5251)
!5251 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 905, column: 2)
!5252 = !DILocation(line: 907, column: 6, scope: !5253)
!5253 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 907, column: 6)
!5254 = !DILocation(line: 907, column: 13, scope: !5253)
!5255 = !DILocation(line: 907, column: 21, scope: !5253)
!5256 = !DILocation(line: 907, column: 6, scope: !5234)
!5257 = !DILocation(line: 908, column: 3, scope: !5253)
!5258 = !DILocation(line: 908, column: 10, scope: !5253)
!5259 = !DILocation(line: 908, column: 18, scope: !5253)
!5260 = !DILocation(line: 908, column: 32, scope: !5253)
!5261 = !DILocation(line: 910, column: 23, scope: !5234)
!5262 = !DILocation(line: 910, column: 26, scope: !5234)
!5263 = !DILocation(line: 910, column: 2, scope: !5234)
!5264 = !DILocation(line: 910, column: 9, scope: !5234)
!5265 = !DILocation(line: 910, column: 21, scope: !5234)
!5266 = !DILocation(line: 911, column: 29, scope: !5234)
!5267 = !DILocation(line: 911, column: 32, scope: !5234)
!5268 = !DILocation(line: 911, column: 2, scope: !5234)
!5269 = !DILocation(line: 911, column: 9, scope: !5234)
!5270 = !DILocation(line: 911, column: 27, scope: !5234)
!5271 = !DILocation(line: 913, column: 24, scope: !5234)
!5272 = !DILocation(line: 913, column: 31, scope: !5234)
!5273 = !DILocation(line: 913, column: 34, scope: !5234)
!5274 = !DILocation(line: 913, column: 2, scope: !5234)
!5275 = !DILocation(line: 914, column: 18, scope: !5234)
!5276 = !DILocation(line: 914, column: 25, scope: !5234)
!5277 = !DILocation(line: 914, column: 28, scope: !5234)
!5278 = !DILocation(line: 914, column: 2, scope: !5234)
!5279 = !DILocation(line: 915, column: 25, scope: !5234)
!5280 = !DILocation(line: 915, column: 32, scope: !5234)
!5281 = !DILocation(line: 915, column: 35, scope: !5234)
!5282 = !DILocation(line: 915, column: 2, scope: !5234)
!5283 = !DILocation(line: 917, column: 7, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 917, column: 6)
!5285 = !DILocation(line: 917, column: 14, scope: !5284)
!5286 = !DILocation(line: 917, column: 22, scope: !5284)
!5287 = !DILocation(line: 917, column: 6, scope: !5234)
!5288 = !DILocation(line: 918, column: 20, scope: !5284)
!5289 = !DILocation(line: 918, column: 3, scope: !5284)
!5290 = !DILocation(line: 919, column: 11, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 919, column: 11)
!5292 = !DILocation(line: 919, column: 15, scope: !5291)
!5293 = !DILocation(line: 919, column: 19, scope: !5291)
!5294 = !DILocation(line: 919, column: 29, scope: !5291)
!5295 = !DILocation(line: 919, column: 11, scope: !5284)
!5296 = !DILocation(line: 920, column: 3, scope: !5291)
!5297 = !DILocation(line: 920, column: 7, scope: !5291)
!5298 = !DILocation(line: 920, column: 11, scope: !5291)
!5299 = !DILocation(line: 920, column: 21, scope: !5291)
!5300 = !DILocation(line: 920, column: 32, scope: !5291)
!5301 = !DILocation(line: 922, column: 3, scope: !5291)
!5302 = !DILocation(line: 922, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5291, file: !3, line: 922, column: 3)
!5304 = !DILocation(line: 925, column: 2, scope: !5234)
!5305 = !DILocation(line: 926, column: 2, scope: !5234)
!5306 = !DILocation(line: 927, column: 2, scope: !5234)
!5307 = !DILocation(line: 929, column: 6, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5234, file: !3, line: 929, column: 6)
!5309 = !DILocation(line: 929, column: 13, scope: !5308)
!5310 = !DILocation(line: 929, column: 21, scope: !5308)
!5311 = !DILocation(line: 929, column: 6, scope: !5234)
!5312 = !DILocation(line: 930, column: 3, scope: !5308)
!5313 = !DILocation(line: 930, column: 10, scope: !5308)
!5314 = !DILocation(line: 930, column: 18, scope: !5308)
!5315 = !DILocation(line: 930, column: 31, scope: !5308)
!5316 = !DILocation(line: 932, column: 2, scope: !5234)
!5317 = distinct !DISubprogram(name: "cx24123_get_frontend", scope: !3, file: !3, line: 935, type: !4293, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5318 = !DILocalVariable(name: "fe", arg: 1, scope: !5317, file: !3, line: 935, type: !4135)
!5319 = !DILocation(line: 935, column: 54, scope: !5317)
!5320 = !DILocalVariable(name: "p", arg: 2, scope: !5317, file: !3, line: 936, type: !4295)
!5321 = !DILocation(line: 936, column: 37, scope: !5317)
!5322 = !DILocalVariable(name: "state", scope: !5317, file: !3, line: 938, type: !4477)
!5323 = !DILocation(line: 938, column: 24, scope: !5317)
!5324 = !DILocation(line: 938, column: 32, scope: !5317)
!5325 = !DILocation(line: 938, column: 36, scope: !5317)
!5326 = !DILocation(line: 940, column: 2, scope: !5317)
!5327 = !DILocation(line: 940, column: 2, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5329, file: !3, line: 940, column: 2)
!5329 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 940, column: 2)
!5330 = !DILocation(line: 940, column: 2, scope: !5329)
!5331 = !DILocation(line: 940, column: 2, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5328, file: !3, line: 940, column: 2)
!5333 = !DILocation(line: 942, column: 28, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 942, column: 6)
!5335 = !DILocation(line: 942, column: 36, scope: !5334)
!5336 = !DILocation(line: 942, column: 39, scope: !5334)
!5337 = !DILocation(line: 942, column: 6, scope: !5334)
!5338 = !DILocation(line: 942, column: 50, scope: !5334)
!5339 = !DILocation(line: 942, column: 6, scope: !5317)
!5340 = !DILocation(line: 943, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 942, column: 56)
!5342 = !DILocation(line: 943, column: 3, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 943, column: 3)
!5344 = !DILocation(line: 944, column: 3, scope: !5341)
!5345 = !DILocation(line: 946, column: 22, scope: !5346)
!5346 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 946, column: 6)
!5347 = !DILocation(line: 946, column: 30, scope: !5346)
!5348 = !DILocation(line: 946, column: 33, scope: !5346)
!5349 = !DILocation(line: 946, column: 6, scope: !5346)
!5350 = !DILocation(line: 946, column: 44, scope: !5346)
!5351 = !DILocation(line: 946, column: 6, scope: !5317)
!5352 = !DILocation(line: 947, column: 3, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5346, file: !3, line: 946, column: 50)
!5354 = !DILocation(line: 947, column: 3, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 947, column: 3)
!5356 = !DILocation(line: 948, column: 3, scope: !5353)
!5357 = !DILocation(line: 950, column: 17, scope: !5317)
!5358 = !DILocation(line: 950, column: 24, scope: !5317)
!5359 = !DILocation(line: 950, column: 2, scope: !5317)
!5360 = !DILocation(line: 950, column: 5, scope: !5317)
!5361 = !DILocation(line: 950, column: 15, scope: !5317)
!5362 = !DILocation(line: 951, column: 19, scope: !5317)
!5363 = !DILocation(line: 951, column: 26, scope: !5317)
!5364 = !DILocation(line: 951, column: 2, scope: !5317)
!5365 = !DILocation(line: 951, column: 5, scope: !5317)
!5366 = !DILocation(line: 951, column: 17, scope: !5317)
!5367 = !DILocation(line: 953, column: 2, scope: !5317)
!5368 = !DILocation(line: 954, column: 1, scope: !5317)
!5369 = distinct !DISubprogram(name: "cx24123_read_status", scope: !3, file: !3, line: 821, type: !4298, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5370 = !DILocalVariable(name: "fe", arg: 1, scope: !5369, file: !3, line: 821, type: !4135)
!5371 = !DILocation(line: 821, column: 53, scope: !5369)
!5372 = !DILocalVariable(name: "status", arg: 2, scope: !5369, file: !3, line: 821, type: !4275)
!5373 = !DILocation(line: 821, column: 73, scope: !5369)
!5374 = !DILocalVariable(name: "state", scope: !5369, file: !3, line: 823, type: !4477)
!5375 = !DILocation(line: 823, column: 24, scope: !5369)
!5376 = !DILocation(line: 823, column: 32, scope: !5369)
!5377 = !DILocation(line: 823, column: 36, scope: !5369)
!5378 = !DILocalVariable(name: "sync", scope: !5369, file: !3, line: 824, type: !294)
!5379 = !DILocation(line: 824, column: 6, scope: !5369)
!5380 = !DILocation(line: 824, column: 13, scope: !5369)
!5381 = !DILocation(line: 826, column: 3, scope: !5369)
!5382 = !DILocation(line: 826, column: 10, scope: !5369)
!5383 = !DILocation(line: 827, column: 6, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 827, column: 6)
!5385 = !DILocation(line: 827, column: 13, scope: !5384)
!5386 = !DILocation(line: 827, column: 21, scope: !5384)
!5387 = !DILocation(line: 827, column: 6, scope: !5369)
!5388 = !DILocalVariable(name: "tun_status", scope: !5389, file: !3, line: 828, type: !301)
!5389 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 827, column: 35)
!5390 = !DILocation(line: 828, column: 7, scope: !5389)
!5391 = !DILocation(line: 829, column: 7, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 829, column: 7)
!5393 = !DILocation(line: 829, column: 11, scope: !5392)
!5394 = !DILocation(line: 829, column: 15, scope: !5392)
!5395 = !DILocation(line: 829, column: 25, scope: !5392)
!5396 = !DILocation(line: 829, column: 7, scope: !5389)
!5397 = !DILocation(line: 830, column: 4, scope: !5392)
!5398 = !DILocation(line: 830, column: 8, scope: !5392)
!5399 = !DILocation(line: 830, column: 12, scope: !5392)
!5400 = !DILocation(line: 830, column: 22, scope: !5392)
!5401 = !DILocation(line: 830, column: 33, scope: !5392)
!5402 = !DILocation(line: 831, column: 7, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 831, column: 7)
!5404 = !DILocation(line: 831, column: 18, scope: !5403)
!5405 = !DILocation(line: 831, column: 7, scope: !5389)
!5406 = !DILocation(line: 832, column: 5, scope: !5403)
!5407 = !DILocation(line: 832, column: 12, scope: !5403)
!5408 = !DILocation(line: 832, column: 4, scope: !5403)
!5409 = !DILocation(line: 833, column: 2, scope: !5389)
!5410 = !DILocalVariable(name: "lock", scope: !5411, file: !3, line: 834, type: !294)
!5411 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 833, column: 9)
!5412 = !DILocation(line: 834, column: 7, scope: !5411)
!5413 = !DILocation(line: 834, column: 14, scope: !5411)
!5414 = !DILocation(line: 835, column: 7, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 835, column: 7)
!5416 = !DILocation(line: 835, column: 12, scope: !5415)
!5417 = !DILocation(line: 835, column: 7, scope: !5411)
!5418 = !DILocation(line: 836, column: 5, scope: !5415)
!5419 = !DILocation(line: 836, column: 12, scope: !5415)
!5420 = !DILocation(line: 836, column: 4, scope: !5415)
!5421 = !DILocation(line: 839, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 839, column: 6)
!5423 = !DILocation(line: 839, column: 11, scope: !5422)
!5424 = !DILocation(line: 839, column: 6, scope: !5369)
!5425 = !DILocation(line: 840, column: 4, scope: !5422)
!5426 = !DILocation(line: 840, column: 11, scope: !5422)
!5427 = !DILocation(line: 840, column: 3, scope: !5422)
!5428 = !DILocation(line: 841, column: 6, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 841, column: 6)
!5430 = !DILocation(line: 841, column: 11, scope: !5429)
!5431 = !DILocation(line: 841, column: 6, scope: !5369)
!5432 = !DILocation(line: 842, column: 4, scope: !5429)
!5433 = !DILocation(line: 842, column: 11, scope: !5429)
!5434 = !DILocation(line: 842, column: 3, scope: !5429)
!5435 = !DILocation(line: 845, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 845, column: 6)
!5437 = !DILocation(line: 845, column: 11, scope: !5436)
!5438 = !DILocation(line: 845, column: 6, scope: !5369)
!5439 = !DILocation(line: 846, column: 4, scope: !5436)
!5440 = !DILocation(line: 846, column: 11, scope: !5436)
!5441 = !DILocation(line: 846, column: 3, scope: !5436)
!5442 = !DILocation(line: 847, column: 6, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5369, file: !3, line: 847, column: 6)
!5444 = !DILocation(line: 847, column: 11, scope: !5443)
!5445 = !DILocation(line: 847, column: 6, scope: !5369)
!5446 = !DILocation(line: 848, column: 4, scope: !5443)
!5447 = !DILocation(line: 848, column: 11, scope: !5443)
!5448 = !DILocation(line: 848, column: 3, scope: !5443)
!5449 = !DILocation(line: 850, column: 2, scope: !5369)
!5450 = distinct !DISubprogram(name: "cx24123_read_ber", scope: !3, file: !3, line: 858, type: !4302, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5451 = !DILocalVariable(name: "fe", arg: 1, scope: !5450, file: !3, line: 858, type: !4135)
!5452 = !DILocation(line: 858, column: 50, scope: !5450)
!5453 = !DILocalVariable(name: "ber", arg: 2, scope: !5450, file: !3, line: 858, type: !2818)
!5454 = !DILocation(line: 858, column: 59, scope: !5450)
!5455 = !DILocalVariable(name: "state", scope: !5450, file: !3, line: 860, type: !4477)
!5456 = !DILocation(line: 860, column: 24, scope: !5450)
!5457 = !DILocation(line: 860, column: 32, scope: !5450)
!5458 = !DILocation(line: 860, column: 36, scope: !5450)
!5459 = !DILocation(line: 864, column: 11, scope: !5450)
!5460 = !DILocation(line: 864, column: 40, scope: !5450)
!5461 = !DILocation(line: 864, column: 48, scope: !5450)
!5462 = !DILocation(line: 865, column: 4, scope: !5450)
!5463 = !DILocation(line: 865, column: 33, scope: !5450)
!5464 = !DILocation(line: 866, column: 4, scope: !5450)
!5465 = !DILocation(line: 865, column: 38, scope: !5450)
!5466 = !DILocation(line: 864, column: 55, scope: !5450)
!5467 = !DILocation(line: 864, column: 3, scope: !5450)
!5468 = !DILocation(line: 864, column: 7, scope: !5450)
!5469 = !DILocation(line: 868, column: 2, scope: !5450)
!5470 = !DILocation(line: 868, column: 2, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 868, column: 2)
!5472 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 868, column: 2)
!5473 = !DILocation(line: 868, column: 2, scope: !5472)
!5474 = !DILocation(line: 868, column: 2, scope: !5475)
!5475 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 868, column: 2)
!5476 = !DILocation(line: 870, column: 2, scope: !5450)
!5477 = distinct !DISubprogram(name: "cx24123_read_signal_strength", scope: !3, file: !3, line: 873, type: !4306, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5478 = !DILocalVariable(name: "fe", arg: 1, scope: !5477, file: !3, line: 873, type: !4135)
!5479 = !DILocation(line: 873, column: 62, scope: !5477)
!5480 = !DILocalVariable(name: "signal_strength", arg: 2, scope: !5477, file: !3, line: 874, type: !4308)
!5481 = !DILocation(line: 874, column: 7, scope: !5477)
!5482 = !DILocalVariable(name: "state", scope: !5477, file: !3, line: 876, type: !4477)
!5483 = !DILocation(line: 876, column: 24, scope: !5477)
!5484 = !DILocation(line: 876, column: 32, scope: !5477)
!5485 = !DILocation(line: 876, column: 36, scope: !5477)
!5486 = !DILocation(line: 879, column: 21, scope: !5477)
!5487 = !DILocation(line: 879, column: 50, scope: !5477)
!5488 = !DILocation(line: 879, column: 3, scope: !5477)
!5489 = !DILocation(line: 879, column: 19, scope: !5477)
!5490 = !DILocation(line: 881, column: 2, scope: !5477)
!5491 = !DILocation(line: 881, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 881, column: 2)
!5493 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 881, column: 2)
!5494 = !DILocation(line: 881, column: 2, scope: !5493)
!5495 = !DILocation(line: 881, column: 2, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 881, column: 2)
!5497 = !DILocation(line: 883, column: 2, scope: !5477)
!5498 = distinct !DISubprogram(name: "cx24123_read_snr", scope: !3, file: !3, line: 886, type: !4306, scopeLine: 887, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5499 = !DILocalVariable(name: "fe", arg: 1, scope: !5498, file: !3, line: 886, type: !4135)
!5500 = !DILocation(line: 886, column: 50, scope: !5498)
!5501 = !DILocalVariable(name: "snr", arg: 2, scope: !5498, file: !3, line: 886, type: !4308)
!5502 = !DILocation(line: 886, column: 59, scope: !5498)
!5503 = !DILocalVariable(name: "state", scope: !5498, file: !3, line: 888, type: !4477)
!5504 = !DILocation(line: 888, column: 24, scope: !5498)
!5505 = !DILocation(line: 888, column: 32, scope: !5498)
!5506 = !DILocation(line: 888, column: 36, scope: !5498)
!5507 = !DILocation(line: 892, column: 24, scope: !5498)
!5508 = !DILocation(line: 892, column: 19, scope: !5498)
!5509 = !DILocation(line: 892, column: 53, scope: !5498)
!5510 = !DILocation(line: 893, column: 10, scope: !5498)
!5511 = !DILocation(line: 893, column: 5, scope: !5498)
!5512 = !DILocation(line: 892, column: 59, scope: !5498)
!5513 = !DILocation(line: 892, column: 15, scope: !5498)
!5514 = !DILocation(line: 892, column: 9, scope: !5498)
!5515 = !DILocation(line: 892, column: 3, scope: !5498)
!5516 = !DILocation(line: 892, column: 7, scope: !5498)
!5517 = !DILocation(line: 895, column: 2, scope: !5498)
!5518 = !DILocation(line: 895, column: 2, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5520, file: !3, line: 895, column: 2)
!5520 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 895, column: 2)
!5521 = !DILocation(line: 895, column: 2, scope: !5520)
!5522 = !DILocation(line: 895, column: 2, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 895, column: 2)
!5524 = !DILocation(line: 897, column: 2, scope: !5498)
!5525 = distinct !DISubprogram(name: "cx24123_send_diseqc_msg", scope: !3, file: !3, line: 748, type: !4314, scopeLine: 750, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5526 = !DILocalVariable(name: "fe", arg: 1, scope: !5525, file: !3, line: 748, type: !4135)
!5527 = !DILocation(line: 748, column: 57, scope: !5525)
!5528 = !DILocalVariable(name: "cmd", arg: 2, scope: !5525, file: !3, line: 749, type: !4316)
!5529 = !DILocation(line: 749, column: 32, scope: !5525)
!5530 = !DILocalVariable(name: "state", scope: !5525, file: !3, line: 751, type: !4477)
!5531 = !DILocation(line: 751, column: 24, scope: !5525)
!5532 = !DILocation(line: 751, column: 32, scope: !5525)
!5533 = !DILocation(line: 751, column: 36, scope: !5525)
!5534 = !DILocalVariable(name: "i", scope: !5525, file: !3, line: 752, type: !294)
!5535 = !DILocation(line: 752, column: 6, scope: !5525)
!5536 = !DILocalVariable(name: "val", scope: !5525, file: !3, line: 752, type: !294)
!5537 = !DILocation(line: 752, column: 9, scope: !5525)
!5538 = !DILocalVariable(name: "tone", scope: !5525, file: !3, line: 752, type: !294)
!5539 = !DILocation(line: 752, column: 14, scope: !5525)
!5540 = !DILocation(line: 754, column: 2, scope: !5525)
!5541 = !DILocation(line: 754, column: 2, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 754, column: 2)
!5543 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 754, column: 2)
!5544 = !DILocation(line: 754, column: 2, scope: !5543)
!5545 = !DILocation(line: 754, column: 2, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 754, column: 2)
!5547 = !DILocation(line: 757, column: 9, scope: !5525)
!5548 = !DILocation(line: 757, column: 7, scope: !5525)
!5549 = !DILocation(line: 758, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 758, column: 6)
!5551 = !DILocation(line: 758, column: 11, scope: !5550)
!5552 = !DILocation(line: 758, column: 6, scope: !5525)
!5553 = !DILocation(line: 759, column: 3, scope: !5550)
!5554 = !DILocation(line: 762, column: 26, scope: !5525)
!5555 = !DILocation(line: 762, column: 2, scope: !5525)
!5556 = !DILocation(line: 765, column: 2, scope: !5525)
!5557 = !DILocation(line: 767, column: 9, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 767, column: 2)
!5559 = !DILocation(line: 767, column: 7, scope: !5558)
!5560 = !DILocation(line: 767, column: 14, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 767, column: 2)
!5562 = !DILocation(line: 767, column: 18, scope: !5561)
!5563 = !DILocation(line: 767, column: 23, scope: !5561)
!5564 = !DILocation(line: 767, column: 16, scope: !5561)
!5565 = !DILocation(line: 767, column: 2, scope: !5558)
!5566 = !DILocation(line: 768, column: 3, scope: !5561)
!5567 = !DILocation(line: 767, column: 33, scope: !5561)
!5568 = !DILocation(line: 767, column: 2, scope: !5561)
!5569 = distinct !{!5569, !5565, !5570}
!5570 = !DILocation(line: 768, column: 3, scope: !5558)
!5571 = !DILocation(line: 770, column: 8, scope: !5525)
!5572 = !DILocation(line: 770, column: 6, scope: !5525)
!5573 = !DILocation(line: 771, column: 2, scope: !5525)
!5574 = !DILocation(line: 775, column: 26, scope: !5525)
!5575 = !DILocation(line: 775, column: 2, scope: !5525)
!5576 = !DILocation(line: 778, column: 6, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 778, column: 6)
!5578 = !DILocation(line: 778, column: 11, scope: !5577)
!5579 = !DILocation(line: 778, column: 6, scope: !5525)
!5580 = !DILocation(line: 779, column: 3, scope: !5577)
!5581 = !DILocation(line: 781, column: 2, scope: !5525)
!5582 = distinct !DISubprogram(name: "cx24123_diseqc_send_burst", scope: !3, file: !3, line: 784, type: !4335, scopeLine: 786, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5583 = !DILocalVariable(name: "fe", arg: 1, scope: !5582, file: !3, line: 784, type: !4135)
!5584 = !DILocation(line: 784, column: 59, scope: !5582)
!5585 = !DILocalVariable(name: "burst", arg: 2, scope: !5582, file: !3, line: 785, type: !259)
!5586 = !DILocation(line: 785, column: 31, scope: !5582)
!5587 = !DILocalVariable(name: "state", scope: !5582, file: !3, line: 787, type: !4477)
!5588 = !DILocation(line: 787, column: 24, scope: !5582)
!5589 = !DILocation(line: 787, column: 32, scope: !5582)
!5590 = !DILocation(line: 787, column: 36, scope: !5582)
!5591 = !DILocalVariable(name: "val", scope: !5582, file: !3, line: 788, type: !294)
!5592 = !DILocation(line: 788, column: 6, scope: !5582)
!5593 = !DILocalVariable(name: "tone", scope: !5582, file: !3, line: 788, type: !294)
!5594 = !DILocation(line: 788, column: 11, scope: !5582)
!5595 = !DILocation(line: 790, column: 2, scope: !5582)
!5596 = !DILocation(line: 790, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5598, file: !3, line: 790, column: 2)
!5598 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 790, column: 2)
!5599 = !DILocation(line: 790, column: 2, scope: !5598)
!5600 = !DILocation(line: 790, column: 2, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !3, line: 790, column: 2)
!5602 = !DILocation(line: 793, column: 9, scope: !5582)
!5603 = !DILocation(line: 793, column: 7, scope: !5582)
!5604 = !DILocation(line: 794, column: 6, scope: !5605)
!5605 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 794, column: 6)
!5606 = !DILocation(line: 794, column: 11, scope: !5605)
!5607 = !DILocation(line: 794, column: 6, scope: !5582)
!5608 = !DILocation(line: 795, column: 3, scope: !5605)
!5609 = !DILocation(line: 798, column: 26, scope: !5582)
!5610 = !DILocation(line: 798, column: 2, scope: !5582)
!5611 = !DILocation(line: 801, column: 2, scope: !5582)
!5612 = !DILocation(line: 802, column: 2, scope: !5582)
!5613 = !DILocation(line: 803, column: 8, scope: !5582)
!5614 = !DILocation(line: 803, column: 6, scope: !5582)
!5615 = !DILocation(line: 804, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 804, column: 6)
!5617 = !DILocation(line: 804, column: 12, scope: !5616)
!5618 = !DILocation(line: 804, column: 6, scope: !5582)
!5619 = !DILocation(line: 805, column: 3, scope: !5616)
!5620 = !DILocation(line: 806, column: 11, scope: !5621)
!5621 = distinct !DILexicalBlock(scope: !5616, file: !3, line: 806, column: 11)
!5622 = !DILocation(line: 806, column: 17, scope: !5621)
!5623 = !DILocation(line: 806, column: 11, scope: !5616)
!5624 = !DILocation(line: 807, column: 3, scope: !5621)
!5625 = !DILocation(line: 809, column: 3, scope: !5621)
!5626 = !DILocation(line: 811, column: 26, scope: !5582)
!5627 = !DILocation(line: 811, column: 2, scope: !5582)
!5628 = !DILocation(line: 812, column: 2, scope: !5582)
!5629 = !DILocation(line: 815, column: 6, scope: !5630)
!5630 = distinct !DILexicalBlock(scope: !5582, file: !3, line: 815, column: 6)
!5631 = !DILocation(line: 815, column: 11, scope: !5630)
!5632 = !DILocation(line: 815, column: 6, scope: !5582)
!5633 = !DILocation(line: 816, column: 3, scope: !5630)
!5634 = !DILocation(line: 818, column: 2, scope: !5582)
!5635 = !DILocation(line: 819, column: 1, scope: !5582)
!5636 = distinct !DISubprogram(name: "cx24123_set_tone", scope: !3, file: !3, line: 956, type: !4339, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5637 = !DILocalVariable(name: "fe", arg: 1, scope: !5636, file: !3, line: 956, type: !4135)
!5638 = !DILocation(line: 956, column: 50, scope: !5636)
!5639 = !DILocalVariable(name: "tone", arg: 2, scope: !5636, file: !3, line: 956, type: !166)
!5640 = !DILocation(line: 956, column: 76, scope: !5636)
!5641 = !DILocalVariable(name: "state", scope: !5636, file: !3, line: 958, type: !4477)
!5642 = !DILocation(line: 958, column: 24, scope: !5636)
!5643 = !DILocation(line: 958, column: 32, scope: !5636)
!5644 = !DILocation(line: 958, column: 36, scope: !5636)
!5645 = !DILocalVariable(name: "val", scope: !5636, file: !3, line: 959, type: !349)
!5646 = !DILocation(line: 959, column: 5, scope: !5636)
!5647 = !DILocation(line: 962, column: 26, scope: !5636)
!5648 = !DILocation(line: 962, column: 2, scope: !5636)
!5649 = !DILocation(line: 964, column: 8, scope: !5636)
!5650 = !DILocation(line: 964, column: 37, scope: !5636)
!5651 = !DILocation(line: 964, column: 6, scope: !5636)
!5652 = !DILocation(line: 966, column: 10, scope: !5636)
!5653 = !DILocation(line: 966, column: 2, scope: !5636)
!5654 = !DILocation(line: 968, column: 3, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 966, column: 16)
!5656 = !DILocation(line: 968, column: 3, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 968, column: 3)
!5658 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 968, column: 3)
!5659 = !DILocation(line: 968, column: 3, scope: !5658)
!5660 = !DILocation(line: 968, column: 3, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5657, file: !3, line: 968, column: 3)
!5662 = !DILocation(line: 969, column: 10, scope: !5655)
!5663 = !DILocation(line: 969, column: 3, scope: !5655)
!5664 = !DILocation(line: 971, column: 3, scope: !5655)
!5665 = !DILocation(line: 971, column: 3, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5667, file: !3, line: 971, column: 3)
!5667 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 971, column: 3)
!5668 = !DILocation(line: 971, column: 3, scope: !5667)
!5669 = !DILocation(line: 971, column: 3, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 971, column: 3)
!5671 = !DILocation(line: 972, column: 10, scope: !5655)
!5672 = !DILocation(line: 972, column: 3, scope: !5655)
!5673 = !DILocation(line: 974, column: 3, scope: !5655)
!5674 = !DILocation(line: 974, column: 3, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5655, file: !3, line: 974, column: 3)
!5676 = !DILocation(line: 975, column: 3, scope: !5655)
!5677 = !DILocation(line: 979, column: 1, scope: !5636)
!5678 = distinct !DISubprogram(name: "cx24123_set_voltage", scope: !3, file: !3, line: 709, type: !4343, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5679 = !DILocalVariable(name: "fe", arg: 1, scope: !5678, file: !3, line: 709, type: !4135)
!5680 = !DILocation(line: 709, column: 53, scope: !5678)
!5681 = !DILocalVariable(name: "voltage", arg: 2, scope: !5678, file: !3, line: 710, type: !161)
!5682 = !DILocation(line: 710, column: 31, scope: !5678)
!5683 = !DILocalVariable(name: "state", scope: !5678, file: !3, line: 712, type: !4477)
!5684 = !DILocation(line: 712, column: 24, scope: !5678)
!5685 = !DILocation(line: 712, column: 32, scope: !5678)
!5686 = !DILocation(line: 712, column: 36, scope: !5678)
!5687 = !DILocalVariable(name: "val", scope: !5678, file: !3, line: 713, type: !349)
!5688 = !DILocation(line: 713, column: 5, scope: !5678)
!5689 = !DILocation(line: 715, column: 8, scope: !5678)
!5690 = !DILocation(line: 715, column: 37, scope: !5678)
!5691 = !DILocation(line: 715, column: 6, scope: !5678)
!5692 = !DILocation(line: 717, column: 10, scope: !5678)
!5693 = !DILocation(line: 717, column: 2, scope: !5678)
!5694 = !DILocation(line: 719, column: 3, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5678, file: !3, line: 717, column: 19)
!5696 = !DILocation(line: 719, column: 3, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5698, file: !3, line: 719, column: 3)
!5698 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 719, column: 3)
!5699 = !DILocation(line: 719, column: 3, scope: !5698)
!5700 = !DILocation(line: 719, column: 3, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 719, column: 3)
!5702 = !DILocation(line: 720, column: 10, scope: !5695)
!5703 = !DILocation(line: 720, column: 3, scope: !5695)
!5704 = !DILocation(line: 722, column: 3, scope: !5695)
!5705 = !DILocation(line: 722, column: 3, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !3, line: 722, column: 3)
!5707 = distinct !DILexicalBlock(scope: !5695, file: !3, line: 722, column: 3)
!5708 = !DILocation(line: 722, column: 3, scope: !5707)
!5709 = !DILocation(line: 722, column: 3, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 722, column: 3)
!5711 = !DILocation(line: 723, column: 10, scope: !5695)
!5712 = !DILocation(line: 723, column: 3, scope: !5695)
!5713 = !DILocation(line: 726, column: 3, scope: !5695)
!5714 = !DILocation(line: 728, column: 3, scope: !5695)
!5715 = !DILocation(line: 732, column: 1, scope: !5678)
!5716 = distinct !DISubprogram(name: "cx24123_set_inversion", scope: !3, file: !3, line: 279, type: !5717, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{!294, !4477, !170}
!5719 = !DILocalVariable(name: "state", arg: 1, scope: !5716, file: !3, line: 279, type: !4477)
!5720 = !DILocation(line: 279, column: 56, scope: !5716)
!5721 = !DILocalVariable(name: "inversion", arg: 2, scope: !5716, file: !3, line: 280, type: !170)
!5722 = !DILocation(line: 280, column: 33, scope: !5716)
!5723 = !DILocalVariable(name: "nom_reg", scope: !5716, file: !3, line: 282, type: !349)
!5724 = !DILocation(line: 282, column: 5, scope: !5716)
!5725 = !DILocation(line: 282, column: 15, scope: !5716)
!5726 = !DILocalVariable(name: "auto_reg", scope: !5716, file: !3, line: 283, type: !349)
!5727 = !DILocation(line: 283, column: 5, scope: !5716)
!5728 = !DILocation(line: 283, column: 16, scope: !5716)
!5729 = !DILocation(line: 285, column: 10, scope: !5716)
!5730 = !DILocation(line: 285, column: 2, scope: !5716)
!5731 = !DILocation(line: 287, column: 3, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5716, file: !3, line: 285, column: 21)
!5733 = !DILocation(line: 287, column: 3, scope: !5734)
!5734 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 287, column: 3)
!5735 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 287, column: 3)
!5736 = !DILocation(line: 287, column: 3, scope: !5735)
!5737 = !DILocation(line: 287, column: 3, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5734, file: !3, line: 287, column: 3)
!5739 = !DILocation(line: 288, column: 3, scope: !5732)
!5740 = !DILocation(line: 289, column: 3, scope: !5732)
!5741 = !DILocation(line: 290, column: 3, scope: !5732)
!5742 = !DILocation(line: 292, column: 3, scope: !5732)
!5743 = !DILocation(line: 292, column: 3, scope: !5744)
!5744 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 292, column: 3)
!5745 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 292, column: 3)
!5746 = !DILocation(line: 292, column: 3, scope: !5745)
!5747 = !DILocation(line: 292, column: 3, scope: !5748)
!5748 = distinct !DILexicalBlock(scope: !5744, file: !3, line: 292, column: 3)
!5749 = !DILocation(line: 293, column: 3, scope: !5732)
!5750 = !DILocation(line: 294, column: 3, scope: !5732)
!5751 = !DILocation(line: 295, column: 3, scope: !5732)
!5752 = !DILocation(line: 297, column: 3, scope: !5732)
!5753 = !DILocation(line: 297, column: 3, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 297, column: 3)
!5755 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 297, column: 3)
!5756 = !DILocation(line: 297, column: 3, scope: !5755)
!5757 = !DILocation(line: 297, column: 3, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5754, file: !3, line: 297, column: 3)
!5759 = !DILocation(line: 298, column: 3, scope: !5732)
!5760 = !DILocation(line: 299, column: 3, scope: !5732)
!5761 = !DILocation(line: 301, column: 3, scope: !5732)
!5762 = !DILocation(line: 304, column: 2, scope: !5716)
!5763 = !DILocation(line: 305, column: 1, scope: !5716)
!5764 = distinct !DISubprogram(name: "cx24123_set_fec", scope: !3, file: !3, line: 325, type: !5765, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5765 = !DISubroutineType(types: !5766)
!5766 = !{!294, !4477, !175}
!5767 = !DILocalVariable(name: "state", arg: 1, scope: !5764, file: !3, line: 325, type: !4477)
!5768 = !DILocation(line: 325, column: 50, scope: !5764)
!5769 = !DILocalVariable(name: "fec", arg: 2, scope: !5764, file: !3, line: 325, type: !175)
!5770 = !DILocation(line: 325, column: 75, scope: !5764)
!5771 = !DILocalVariable(name: "nom_reg", scope: !5764, file: !3, line: 327, type: !349)
!5772 = !DILocation(line: 327, column: 5, scope: !5764)
!5773 = !DILocation(line: 327, column: 15, scope: !5764)
!5774 = !DILocation(line: 327, column: 44, scope: !5764)
!5775 = !DILocation(line: 329, column: 12, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 329, column: 6)
!5777 = !DILocation(line: 329, column: 16, scope: !5776)
!5778 = !DILocation(line: 329, column: 28, scope: !5776)
!5779 = !DILocation(line: 329, column: 32, scope: !5776)
!5780 = !DILocation(line: 329, column: 36, scope: !5776)
!5781 = !DILocation(line: 329, column: 6, scope: !5764)
!5782 = !DILocation(line: 330, column: 7, scope: !5776)
!5783 = !DILocation(line: 330, column: 3, scope: !5776)
!5784 = !DILocation(line: 333, column: 6, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 333, column: 6)
!5786 = !DILocation(line: 333, column: 10, scope: !5785)
!5787 = !DILocation(line: 333, column: 6, scope: !5764)
!5788 = !DILocation(line: 334, column: 3, scope: !5785)
!5789 = !DILocation(line: 337, column: 3, scope: !5785)
!5790 = !DILocation(line: 340, column: 10, scope: !5764)
!5791 = !DILocation(line: 340, column: 2, scope: !5764)
!5792 = !DILocation(line: 342, column: 3, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5764, file: !3, line: 340, column: 15)
!5794 = !DILocation(line: 342, column: 3, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5796, file: !3, line: 342, column: 3)
!5796 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 342, column: 3)
!5797 = !DILocation(line: 342, column: 3, scope: !5796)
!5798 = !DILocation(line: 342, column: 3, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 342, column: 3)
!5800 = !DILocation(line: 343, column: 3, scope: !5793)
!5801 = !DILocation(line: 344, column: 3, scope: !5793)
!5802 = !DILocation(line: 345, column: 3, scope: !5793)
!5803 = !DILocation(line: 347, column: 3, scope: !5793)
!5804 = !DILocation(line: 347, column: 3, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 347, column: 3)
!5806 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 347, column: 3)
!5807 = !DILocation(line: 347, column: 3, scope: !5806)
!5808 = !DILocation(line: 347, column: 3, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5805, file: !3, line: 347, column: 3)
!5810 = !DILocation(line: 348, column: 3, scope: !5793)
!5811 = !DILocation(line: 349, column: 3, scope: !5793)
!5812 = !DILocation(line: 350, column: 3, scope: !5793)
!5813 = !DILocation(line: 352, column: 3, scope: !5793)
!5814 = !DILocation(line: 352, column: 3, scope: !5815)
!5815 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 352, column: 3)
!5816 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 352, column: 3)
!5817 = !DILocation(line: 352, column: 3, scope: !5816)
!5818 = !DILocation(line: 352, column: 3, scope: !5819)
!5819 = distinct !DILexicalBlock(scope: !5815, file: !3, line: 352, column: 3)
!5820 = !DILocation(line: 353, column: 3, scope: !5793)
!5821 = !DILocation(line: 354, column: 3, scope: !5793)
!5822 = !DILocation(line: 355, column: 3, scope: !5793)
!5823 = !DILocation(line: 357, column: 3, scope: !5793)
!5824 = !DILocation(line: 357, column: 3, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5826, file: !3, line: 357, column: 3)
!5826 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 357, column: 3)
!5827 = !DILocation(line: 357, column: 3, scope: !5826)
!5828 = !DILocation(line: 357, column: 3, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5825, file: !3, line: 357, column: 3)
!5830 = !DILocation(line: 358, column: 3, scope: !5793)
!5831 = !DILocation(line: 359, column: 3, scope: !5793)
!5832 = !DILocation(line: 360, column: 3, scope: !5793)
!5833 = !DILocation(line: 362, column: 3, scope: !5793)
!5834 = !DILocation(line: 362, column: 3, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5836, file: !3, line: 362, column: 3)
!5836 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 362, column: 3)
!5837 = !DILocation(line: 362, column: 3, scope: !5836)
!5838 = !DILocation(line: 362, column: 3, scope: !5839)
!5839 = distinct !DILexicalBlock(scope: !5835, file: !3, line: 362, column: 3)
!5840 = !DILocation(line: 363, column: 3, scope: !5793)
!5841 = !DILocation(line: 364, column: 3, scope: !5793)
!5842 = !DILocation(line: 365, column: 3, scope: !5793)
!5843 = !DILocation(line: 367, column: 3, scope: !5793)
!5844 = !DILocation(line: 367, column: 3, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5846, file: !3, line: 367, column: 3)
!5846 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 367, column: 3)
!5847 = !DILocation(line: 367, column: 3, scope: !5846)
!5848 = !DILocation(line: 367, column: 3, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 367, column: 3)
!5850 = !DILocation(line: 368, column: 3, scope: !5793)
!5851 = !DILocation(line: 369, column: 3, scope: !5793)
!5852 = !DILocation(line: 370, column: 3, scope: !5793)
!5853 = !DILocation(line: 372, column: 3, scope: !5793)
!5854 = !DILocation(line: 372, column: 3, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5856, file: !3, line: 372, column: 3)
!5856 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 372, column: 3)
!5857 = !DILocation(line: 372, column: 3, scope: !5856)
!5858 = !DILocation(line: 372, column: 3, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5855, file: !3, line: 372, column: 3)
!5860 = !DILocation(line: 373, column: 3, scope: !5793)
!5861 = !DILocation(line: 374, column: 3, scope: !5793)
!5862 = !DILocation(line: 375, column: 3, scope: !5793)
!5863 = !DILocation(line: 377, column: 3, scope: !5793)
!5864 = !DILocation(line: 377, column: 3, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 377, column: 3)
!5866 = distinct !DILexicalBlock(scope: !5793, file: !3, line: 377, column: 3)
!5867 = !DILocation(line: 377, column: 3, scope: !5866)
!5868 = !DILocation(line: 377, column: 3, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5865, file: !3, line: 377, column: 3)
!5870 = !DILocation(line: 378, column: 3, scope: !5793)
!5871 = !DILocation(line: 379, column: 3, scope: !5793)
!5872 = !DILocation(line: 381, column: 3, scope: !5793)
!5873 = !DILocation(line: 384, column: 2, scope: !5764)
!5874 = !DILocation(line: 385, column: 1, scope: !5764)
!5875 = distinct !DISubprogram(name: "cx24123_set_symbolrate", scope: !3, file: !3, line: 441, type: !5876, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5876 = !DISubroutineType(types: !5877)
!5877 = !{!294, !4477, !301}
!5878 = !DILocalVariable(name: "state", arg: 1, scope: !5875, file: !3, line: 441, type: !4477)
!5879 = !DILocation(line: 441, column: 57, scope: !5875)
!5880 = !DILocalVariable(name: "srate", arg: 2, scope: !5875, file: !3, line: 441, type: !301)
!5881 = !DILocation(line: 441, column: 68, scope: !5875)
!5882 = !DILocalVariable(name: "tmp", scope: !5875, file: !3, line: 443, type: !295)
!5883 = !DILocation(line: 443, column: 6, scope: !5875)
!5884 = !DILocalVariable(name: "sample_rate", scope: !5875, file: !3, line: 444, type: !301)
!5885 = !DILocation(line: 444, column: 6, scope: !5875)
!5886 = !DILocalVariable(name: "ratio", scope: !5875, file: !3, line: 444, type: !301)
!5887 = !DILocation(line: 444, column: 19, scope: !5875)
!5888 = !DILocalVariable(name: "sample_gain", scope: !5875, file: !3, line: 444, type: !301)
!5889 = !DILocation(line: 444, column: 26, scope: !5875)
!5890 = !DILocalVariable(name: "pll_mult", scope: !5875, file: !3, line: 445, type: !349)
!5891 = !DILocation(line: 445, column: 5, scope: !5875)
!5892 = !DILocation(line: 448, column: 7, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 448, column: 6)
!5894 = !DILocation(line: 448, column: 15, scope: !5893)
!5895 = !DILocation(line: 448, column: 22, scope: !5893)
!5896 = !DILocation(line: 448, column: 31, scope: !5893)
!5897 = !DILocation(line: 448, column: 35, scope: !5893)
!5898 = !DILocation(line: 448, column: 40, scope: !5893)
!5899 = !DILocation(line: 448, column: 13, scope: !5893)
!5900 = !DILocation(line: 448, column: 57, scope: !5893)
!5901 = !DILocation(line: 449, column: 7, scope: !5893)
!5902 = !DILocation(line: 449, column: 15, scope: !5893)
!5903 = !DILocation(line: 449, column: 22, scope: !5893)
!5904 = !DILocation(line: 449, column: 31, scope: !5893)
!5905 = !DILocation(line: 449, column: 35, scope: !5893)
!5906 = !DILocation(line: 449, column: 40, scope: !5893)
!5907 = !DILocation(line: 449, column: 13, scope: !5893)
!5908 = !DILocation(line: 448, column: 6, scope: !5875)
!5909 = !DILocation(line: 450, column: 3, scope: !5893)
!5910 = !DILocation(line: 454, column: 6, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 454, column: 6)
!5912 = !DILocation(line: 454, column: 12, scope: !5911)
!5913 = !DILocation(line: 454, column: 6, scope: !5875)
!5914 = !DILocation(line: 455, column: 12, scope: !5911)
!5915 = !DILocation(line: 455, column: 3, scope: !5911)
!5916 = !DILocation(line: 456, column: 11, scope: !5917)
!5917 = distinct !DILexicalBlock(scope: !5911, file: !3, line: 456, column: 11)
!5918 = !DILocation(line: 456, column: 17, scope: !5917)
!5919 = !DILocation(line: 456, column: 11, scope: !5911)
!5920 = !DILocation(line: 457, column: 12, scope: !5917)
!5921 = !DILocation(line: 457, column: 3, scope: !5917)
!5922 = !DILocation(line: 458, column: 11, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5917, file: !3, line: 458, column: 11)
!5924 = !DILocation(line: 458, column: 17, scope: !5923)
!5925 = !DILocation(line: 458, column: 11, scope: !5917)
!5926 = !DILocation(line: 459, column: 12, scope: !5923)
!5927 = !DILocation(line: 459, column: 3, scope: !5923)
!5928 = !DILocation(line: 460, column: 11, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !5923, file: !3, line: 460, column: 11)
!5930 = !DILocation(line: 460, column: 17, scope: !5929)
!5931 = !DILocation(line: 460, column: 11, scope: !5923)
!5932 = !DILocation(line: 461, column: 12, scope: !5929)
!5933 = !DILocation(line: 461, column: 3, scope: !5929)
!5934 = !DILocation(line: 462, column: 11, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 462, column: 11)
!5936 = !DILocation(line: 462, column: 17, scope: !5935)
!5937 = !DILocation(line: 462, column: 11, scope: !5929)
!5938 = !DILocation(line: 463, column: 12, scope: !5935)
!5939 = !DILocation(line: 463, column: 3, scope: !5935)
!5940 = !DILocation(line: 464, column: 11, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 464, column: 11)
!5942 = !DILocation(line: 464, column: 17, scope: !5941)
!5943 = !DILocation(line: 464, column: 11, scope: !5935)
!5944 = !DILocation(line: 465, column: 12, scope: !5941)
!5945 = !DILocation(line: 465, column: 3, scope: !5941)
!5946 = !DILocation(line: 466, column: 11, scope: !5947)
!5947 = distinct !DILexicalBlock(scope: !5941, file: !3, line: 466, column: 11)
!5948 = !DILocation(line: 466, column: 17, scope: !5947)
!5949 = !DILocation(line: 466, column: 11, scope: !5941)
!5950 = !DILocation(line: 467, column: 12, scope: !5947)
!5951 = !DILocation(line: 467, column: 3, scope: !5947)
!5952 = !DILocation(line: 469, column: 12, scope: !5947)
!5953 = !DILocation(line: 472, column: 16, scope: !5875)
!5954 = !DILocation(line: 472, column: 25, scope: !5875)
!5955 = !DILocation(line: 472, column: 14, scope: !5875)
!5956 = !DILocation(line: 476, column: 14, scope: !5875)
!5957 = !DILocation(line: 476, column: 9, scope: !5875)
!5958 = !DILocation(line: 476, column: 21, scope: !5875)
!5959 = !DILocation(line: 476, column: 6, scope: !5875)
!5960 = !DILocalVariable(name: "__base", scope: !5961, file: !3, line: 477, type: !895)
!5961 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 477, column: 2)
!5962 = !DILocation(line: 477, column: 2, scope: !5961)
!5963 = !DILocalVariable(name: "__rem", scope: !5961, file: !3, line: 477, type: !895)
!5964 = !DILocation(line: 478, column: 16, scope: !5875)
!5965 = !DILocation(line: 478, column: 10, scope: !5875)
!5966 = !DILocation(line: 478, column: 8, scope: !5875)
!5967 = !DILocation(line: 480, column: 2, scope: !5875)
!5968 = !DILocation(line: 482, column: 2, scope: !5875)
!5969 = !DILocation(line: 483, column: 2, scope: !5875)
!5970 = !DILocation(line: 484, column: 2, scope: !5875)
!5971 = !DILocation(line: 487, column: 33, scope: !5875)
!5972 = !DILocation(line: 487, column: 46, scope: !5875)
!5973 = !DILocation(line: 487, column: 16, scope: !5875)
!5974 = !DILocation(line: 487, column: 14, scope: !5875)
!5975 = !DILocation(line: 488, column: 8, scope: !5875)
!5976 = !DILocation(line: 488, column: 37, scope: !5875)
!5977 = !DILocation(line: 488, column: 6, scope: !5875)
!5978 = !DILocation(line: 489, column: 2, scope: !5875)
!5979 = !DILocation(line: 491, column: 2, scope: !5875)
!5980 = !DILocation(line: 491, column: 2, scope: !5981)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 491, column: 2)
!5982 = distinct !DILexicalBlock(scope: !5875, file: !3, line: 491, column: 2)
!5983 = !DILocation(line: 491, column: 2, scope: !5982)
!5984 = !DILocation(line: 491, column: 2, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 491, column: 2)
!5986 = !DILocation(line: 494, column: 2, scope: !5875)
!5987 = !DILocation(line: 495, column: 1, scope: !5875)
!5988 = distinct !DISubprogram(name: "cx24123_pll_tune", scope: !3, file: !3, line: 634, type: !4262, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!5989 = !DILocalVariable(name: "fe", arg: 1, scope: !5988, file: !3, line: 634, type: !4135)
!5990 = !DILocation(line: 634, column: 50, scope: !5988)
!5991 = !DILocalVariable(name: "p", scope: !5988, file: !3, line: 636, type: !4295)
!5992 = !DILocation(line: 636, column: 34, scope: !5988)
!5993 = !DILocation(line: 636, column: 39, scope: !5988)
!5994 = !DILocation(line: 636, column: 43, scope: !5988)
!5995 = !DILocalVariable(name: "state", scope: !5988, file: !3, line: 637, type: !4477)
!5996 = !DILocation(line: 637, column: 24, scope: !5988)
!5997 = !DILocation(line: 637, column: 32, scope: !5988)
!5998 = !DILocation(line: 637, column: 36, scope: !5988)
!5999 = !DILocalVariable(name: "val", scope: !5988, file: !3, line: 638, type: !349)
!6000 = !DILocation(line: 638, column: 5, scope: !5988)
!6001 = !DILocation(line: 640, column: 2, scope: !5988)
!6002 = !DILocation(line: 640, column: 2, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !6004, file: !3, line: 640, column: 2)
!6004 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 640, column: 2)
!6005 = !DILocation(line: 640, column: 2, scope: !6004)
!6006 = !DILocation(line: 640, column: 2, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6003, file: !3, line: 640, column: 2)
!6008 = !DILocation(line: 642, column: 28, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 642, column: 6)
!6010 = !DILocation(line: 642, column: 6, scope: !6009)
!6011 = !DILocation(line: 642, column: 32, scope: !6009)
!6012 = !DILocation(line: 642, column: 6, scope: !5988)
!6013 = !DILocation(line: 643, column: 3, scope: !6014)
!6014 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 642, column: 38)
!6015 = !DILocation(line: 643, column: 3, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6014, file: !3, line: 643, column: 3)
!6017 = !DILocation(line: 644, column: 3, scope: !6014)
!6018 = !DILocation(line: 648, column: 23, scope: !5988)
!6019 = !DILocation(line: 648, column: 27, scope: !5988)
!6020 = !DILocation(line: 648, column: 34, scope: !5988)
!6021 = !DILocation(line: 648, column: 2, scope: !5988)
!6022 = !DILocation(line: 649, column: 23, scope: !5988)
!6023 = !DILocation(line: 649, column: 27, scope: !5988)
!6024 = !DILocation(line: 649, column: 34, scope: !5988)
!6025 = !DILocation(line: 649, column: 2, scope: !5988)
!6026 = !DILocation(line: 652, column: 23, scope: !5988)
!6027 = !DILocation(line: 652, column: 27, scope: !5988)
!6028 = !DILocation(line: 652, column: 34, scope: !5988)
!6029 = !DILocation(line: 652, column: 2, scope: !5988)
!6030 = !DILocation(line: 653, column: 23, scope: !5988)
!6031 = !DILocation(line: 653, column: 27, scope: !5988)
!6032 = !DILocation(line: 653, column: 34, scope: !5988)
!6033 = !DILocation(line: 653, column: 2, scope: !5988)
!6034 = !DILocation(line: 656, column: 8, scope: !5988)
!6035 = !DILocation(line: 656, column: 37, scope: !5988)
!6036 = !DILocation(line: 656, column: 6, scope: !5988)
!6037 = !DILocation(line: 657, column: 2, scope: !5988)
!6038 = !DILocation(line: 658, column: 2, scope: !5988)
!6039 = !DILocation(line: 660, column: 2, scope: !5988)
!6040 = !DILocation(line: 660, column: 2, scope: !6041)
!6041 = distinct !DILexicalBlock(scope: !6042, file: !3, line: 660, column: 2)
!6042 = distinct !DILexicalBlock(scope: !5988, file: !3, line: 660, column: 2)
!6043 = !DILocation(line: 660, column: 2, scope: !6042)
!6044 = !DILocation(line: 660, column: 2, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !6041, file: !3, line: 660, column: 2)
!6046 = !DILocation(line: 663, column: 2, scope: !5988)
!6047 = !DILocation(line: 664, column: 1, scope: !5988)
!6048 = distinct !DISubprogram(name: "cx24123_int_log2", scope: !3, file: !3, line: 428, type: !6049, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!301, !301, !301}
!6051 = !DILocalVariable(name: "a", arg: 1, scope: !6048, file: !3, line: 428, type: !301)
!6052 = !DILocation(line: 428, column: 33, scope: !6048)
!6053 = !DILocalVariable(name: "b", arg: 2, scope: !6048, file: !3, line: 428, type: !301)
!6054 = !DILocation(line: 428, column: 40, scope: !6048)
!6055 = !DILocalVariable(name: "exp", scope: !6048, file: !3, line: 430, type: !301)
!6056 = !DILocation(line: 430, column: 6, scope: !6048)
!6057 = !DILocalVariable(name: "nearest", scope: !6048, file: !3, line: 430, type: !301)
!6058 = !DILocation(line: 430, column: 11, scope: !6048)
!6059 = !DILocalVariable(name: "div", scope: !6048, file: !3, line: 431, type: !301)
!6060 = !DILocation(line: 431, column: 6, scope: !6048)
!6061 = !DILocation(line: 431, column: 12, scope: !6048)
!6062 = !DILocation(line: 431, column: 16, scope: !6048)
!6063 = !DILocation(line: 431, column: 14, scope: !6048)
!6064 = !DILocation(line: 432, column: 6, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 432, column: 6)
!6066 = !DILocation(line: 432, column: 10, scope: !6065)
!6067 = !DILocation(line: 432, column: 8, scope: !6065)
!6068 = !DILocation(line: 432, column: 15, scope: !6065)
!6069 = !DILocation(line: 432, column: 17, scope: !6065)
!6070 = !DILocation(line: 432, column: 12, scope: !6065)
!6071 = !DILocation(line: 432, column: 6, scope: !6048)
!6072 = !DILocation(line: 433, column: 3, scope: !6065)
!6073 = !DILocation(line: 434, column: 6, scope: !6074)
!6074 = distinct !DILexicalBlock(scope: !6048, file: !3, line: 434, column: 6)
!6075 = !DILocation(line: 434, column: 10, scope: !6074)
!6076 = !DILocation(line: 434, column: 6, scope: !6048)
!6077 = !DILocation(line: 435, column: 12, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 435, column: 3)
!6079 = distinct !DILexicalBlock(scope: !6074, file: !3, line: 434, column: 25)
!6080 = !DILocation(line: 435, column: 8, scope: !6078)
!6081 = !DILocation(line: 435, column: 17, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 435, column: 3)
!6083 = !DILocation(line: 435, column: 23, scope: !6082)
!6084 = !DILocation(line: 435, column: 21, scope: !6082)
!6085 = !DILocation(line: 435, column: 3, scope: !6078)
!6086 = !DILocation(line: 436, column: 11, scope: !6082)
!6087 = !DILocation(line: 436, column: 8, scope: !6082)
!6088 = !DILocation(line: 436, column: 4, scope: !6082)
!6089 = !DILocation(line: 435, column: 35, scope: !6082)
!6090 = !DILocation(line: 435, column: 3, scope: !6082)
!6091 = distinct !{!6091, !6085, !6092}
!6092 = !DILocation(line: 436, column: 11, scope: !6078)
!6093 = !DILocation(line: 437, column: 2, scope: !6079)
!6094 = !DILocation(line: 438, column: 9, scope: !6048)
!6095 = !DILocation(line: 438, column: 2, scope: !6048)
!6096 = distinct !DISubprogram(name: "cx24123_pll_calculate", scope: !3, file: !3, line: 502, type: !4262, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6097 = !DILocalVariable(name: "fe", arg: 1, scope: !6096, file: !3, line: 502, type: !4135)
!6098 = !DILocation(line: 502, column: 55, scope: !6096)
!6099 = !DILocalVariable(name: "p", scope: !6096, file: !3, line: 504, type: !4295)
!6100 = !DILocation(line: 504, column: 34, scope: !6096)
!6101 = !DILocation(line: 504, column: 39, scope: !6096)
!6102 = !DILocation(line: 504, column: 43, scope: !6096)
!6103 = !DILocalVariable(name: "state", scope: !6096, file: !3, line: 505, type: !4477)
!6104 = !DILocation(line: 505, column: 24, scope: !6096)
!6105 = !DILocation(line: 505, column: 32, scope: !6096)
!6106 = !DILocation(line: 505, column: 36, scope: !6096)
!6107 = !DILocalVariable(name: "ndiv", scope: !6096, file: !3, line: 506, type: !301)
!6108 = !DILocation(line: 506, column: 6, scope: !6096)
!6109 = !DILocalVariable(name: "adiv", scope: !6096, file: !3, line: 506, type: !301)
!6110 = !DILocation(line: 506, column: 16, scope: !6096)
!6111 = !DILocalVariable(name: "vco_div", scope: !6096, file: !3, line: 506, type: !301)
!6112 = !DILocation(line: 506, column: 26, scope: !6096)
!6113 = !DILocalVariable(name: "i", scope: !6096, file: !3, line: 507, type: !294)
!6114 = !DILocation(line: 507, column: 6, scope: !6096)
!6115 = !DILocalVariable(name: "pump", scope: !6096, file: !3, line: 508, type: !294)
!6116 = !DILocation(line: 508, column: 6, scope: !6096)
!6117 = !DILocalVariable(name: "band", scope: !6096, file: !3, line: 509, type: !294)
!6118 = !DILocation(line: 509, column: 6, scope: !6096)
!6119 = !DILocalVariable(name: "num_bands", scope: !6096, file: !3, line: 510, type: !294)
!6120 = !DILocation(line: 510, column: 6, scope: !6096)
!6121 = !DILocalVariable(name: "bsv", scope: !6096, file: !3, line: 511, type: !6122)
!6122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!6123 = !DILocation(line: 511, column: 33, scope: !6096)
!6124 = !DILocalVariable(name: "agcv", scope: !6096, file: !3, line: 512, type: !6125)
!6125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!6126 = !DILocation(line: 512, column: 26, scope: !6096)
!6127 = !DILocation(line: 515, column: 38, scope: !6096)
!6128 = !DILocation(line: 515, column: 2, scope: !6096)
!6129 = !DILocation(line: 515, column: 9, scope: !6096)
!6130 = !DILocation(line: 515, column: 16, scope: !6096)
!6131 = !DILocation(line: 516, column: 38, scope: !6096)
!6132 = !DILocation(line: 516, column: 2, scope: !6096)
!6133 = !DILocation(line: 516, column: 9, scope: !6096)
!6134 = !DILocation(line: 516, column: 16, scope: !6096)
!6135 = !DILocation(line: 517, column: 52, scope: !6096)
!6136 = !DILocation(line: 517, column: 2, scope: !6096)
!6137 = !DILocation(line: 517, column: 9, scope: !6096)
!6138 = !DILocation(line: 517, column: 23, scope: !6096)
!6139 = !DILocation(line: 518, column: 39, scope: !6096)
!6140 = !DILocation(line: 518, column: 10, scope: !6096)
!6141 = !DILocation(line: 522, column: 9, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 522, column: 2)
!6143 = !DILocation(line: 522, column: 7, scope: !6142)
!6144 = !DILocation(line: 522, column: 14, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 522, column: 2)
!6146 = !DILocation(line: 522, column: 16, scope: !6145)
!6147 = !DILocation(line: 522, column: 2, scope: !6142)
!6148 = !DILocation(line: 523, column: 28, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 522, column: 53)
!6150 = !DILocation(line: 523, column: 11, scope: !6149)
!6151 = !DILocation(line: 523, column: 8, scope: !6149)
!6152 = !DILocation(line: 524, column: 8, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 524, column: 7)
!6154 = !DILocation(line: 524, column: 14, scope: !6153)
!6155 = !DILocation(line: 524, column: 32, scope: !6153)
!6156 = !DILocation(line: 524, column: 35, scope: !6153)
!6157 = !DILocation(line: 524, column: 29, scope: !6153)
!6158 = !DILocation(line: 524, column: 48, scope: !6153)
!6159 = !DILocation(line: 525, column: 8, scope: !6153)
!6160 = !DILocation(line: 525, column: 14, scope: !6153)
!6161 = !DILocation(line: 525, column: 33, scope: !6153)
!6162 = !DILocation(line: 525, column: 36, scope: !6153)
!6163 = !DILocation(line: 525, column: 30, scope: !6153)
!6164 = !DILocation(line: 524, column: 7, scope: !6149)
!6165 = !DILocation(line: 526, column: 20, scope: !6166)
!6166 = distinct !DILexicalBlock(scope: !6153, file: !3, line: 525, column: 50)
!6167 = !DILocation(line: 526, column: 26, scope: !6166)
!6168 = !DILocation(line: 526, column: 4, scope: !6166)
!6169 = !DILocation(line: 526, column: 11, scope: !6166)
!6170 = !DILocation(line: 526, column: 18, scope: !6166)
!6171 = !DILocation(line: 527, column: 20, scope: !6166)
!6172 = !DILocation(line: 527, column: 26, scope: !6166)
!6173 = !DILocation(line: 527, column: 4, scope: !6166)
!6174 = !DILocation(line: 527, column: 11, scope: !6166)
!6175 = !DILocation(line: 527, column: 18, scope: !6166)
!6176 = !DILocation(line: 528, column: 21, scope: !6166)
!6177 = !DILocation(line: 528, column: 27, scope: !6166)
!6178 = !DILocation(line: 528, column: 4, scope: !6166)
!6179 = !DILocation(line: 528, column: 11, scope: !6166)
!6180 = !DILocation(line: 528, column: 19, scope: !6166)
!6181 = !DILocation(line: 529, column: 3, scope: !6166)
!6182 = !DILocation(line: 530, column: 2, scope: !6149)
!6183 = !DILocation(line: 522, column: 49, scope: !6145)
!6184 = !DILocation(line: 522, column: 2, scope: !6145)
!6185 = distinct !{!6185, !6147, !6186}
!6186 = !DILocation(line: 530, column: 2, scope: !6142)
!6187 = !DILocation(line: 533, column: 6, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 533, column: 6)
!6189 = !DILocation(line: 533, column: 17, scope: !6188)
!6190 = !DILocation(line: 533, column: 21, scope: !6188)
!6191 = !DILocation(line: 533, column: 24, scope: !6188)
!6192 = !DILocation(line: 533, column: 37, scope: !6188)
!6193 = !DILocation(line: 533, column: 35, scope: !6188)
!6194 = !DILocation(line: 533, column: 6, scope: !6096)
!6195 = !DILocation(line: 534, column: 10, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6197, file: !3, line: 534, column: 3)
!6197 = distinct !DILexicalBlock(scope: !6188, file: !3, line: 533, column: 48)
!6198 = !DILocation(line: 534, column: 8, scope: !6196)
!6199 = !DILocation(line: 534, column: 15, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6196, file: !3, line: 534, column: 3)
!6201 = !DILocation(line: 534, column: 19, scope: !6200)
!6202 = !DILocation(line: 534, column: 17, scope: !6200)
!6203 = !DILocation(line: 534, column: 3, scope: !6196)
!6204 = !DILocation(line: 535, column: 35, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6200, file: !3, line: 534, column: 35)
!6206 = !DILocation(line: 535, column: 11, scope: !6205)
!6207 = !DILocation(line: 535, column: 8, scope: !6205)
!6208 = !DILocation(line: 536, column: 9, scope: !6209)
!6209 = distinct !DILexicalBlock(scope: !6205, file: !3, line: 536, column: 8)
!6210 = !DILocation(line: 536, column: 14, scope: !6209)
!6211 = !DILocation(line: 536, column: 26, scope: !6209)
!6212 = !DILocation(line: 536, column: 29, scope: !6209)
!6213 = !DILocation(line: 536, column: 23, scope: !6209)
!6214 = !DILocation(line: 536, column: 40, scope: !6209)
!6215 = !DILocation(line: 537, column: 6, scope: !6209)
!6216 = !DILocation(line: 537, column: 11, scope: !6209)
!6217 = !DILocation(line: 537, column: 24, scope: !6209)
!6218 = !DILocation(line: 537, column: 27, scope: !6209)
!6219 = !DILocation(line: 537, column: 21, scope: !6209)
!6220 = !DILocation(line: 536, column: 8, scope: !6205)
!6221 = !DILocation(line: 538, column: 12, scope: !6209)
!6222 = !DILocation(line: 538, column: 10, scope: !6209)
!6223 = !DILocation(line: 538, column: 5, scope: !6209)
!6224 = !DILocation(line: 539, column: 3, scope: !6205)
!6225 = !DILocation(line: 534, column: 31, scope: !6200)
!6226 = !DILocation(line: 534, column: 3, scope: !6200)
!6227 = distinct !{!6227, !6203, !6228}
!6228 = !DILocation(line: 539, column: 3, scope: !6196)
!6229 = !DILocation(line: 540, column: 2, scope: !6197)
!6230 = !DILocation(line: 541, column: 10, scope: !6188)
!6231 = !DILocation(line: 541, column: 21, scope: !6188)
!6232 = !DILocation(line: 541, column: 8, scope: !6188)
!6233 = !DILocation(line: 543, column: 49, scope: !6096)
!6234 = !DILocation(line: 543, column: 25, scope: !6096)
!6235 = !DILocation(line: 543, column: 55, scope: !6096)
!6236 = !DILocation(line: 543, column: 2, scope: !6096)
!6237 = !DILocation(line: 543, column: 9, scope: !6096)
!6238 = !DILocation(line: 543, column: 23, scope: !6096)
!6239 = !DILocation(line: 544, column: 36, scope: !6096)
!6240 = !DILocation(line: 544, column: 12, scope: !6096)
!6241 = !DILocation(line: 544, column: 42, scope: !6096)
!6242 = !DILocation(line: 544, column: 10, scope: !6096)
!6243 = !DILocation(line: 547, column: 6, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 547, column: 6)
!6245 = !DILocation(line: 547, column: 9, scope: !6244)
!6246 = !DILocation(line: 547, column: 46, scope: !6244)
!6247 = !DILocation(line: 547, column: 22, scope: !6244)
!6248 = !DILocation(line: 547, column: 52, scope: !6244)
!6249 = !DILocation(line: 548, column: 27, scope: !6244)
!6250 = !DILocation(line: 548, column: 3, scope: !6244)
!6251 = !DILocation(line: 548, column: 33, scope: !6244)
!6252 = !DILocation(line: 547, column: 61, scope: !6244)
!6253 = !DILocation(line: 548, column: 44, scope: !6244)
!6254 = !DILocation(line: 547, column: 19, scope: !6244)
!6255 = !DILocation(line: 547, column: 6, scope: !6096)
!6256 = !DILocation(line: 549, column: 8, scope: !6244)
!6257 = !DILocation(line: 549, column: 3, scope: !6244)
!6258 = !DILocation(line: 551, column: 8, scope: !6244)
!6259 = !DILocation(line: 556, column: 12, scope: !6096)
!6260 = !DILocation(line: 556, column: 15, scope: !6096)
!6261 = !DILocation(line: 556, column: 27, scope: !6096)
!6262 = !DILocation(line: 556, column: 25, scope: !6096)
!6263 = !DILocation(line: 556, column: 35, scope: !6096)
!6264 = !DILocation(line: 556, column: 41, scope: !6096)
!6265 = !DILocation(line: 557, column: 22, scope: !6096)
!6266 = !DILocation(line: 557, column: 28, scope: !6096)
!6267 = !DILocation(line: 556, column: 7, scope: !6096)
!6268 = !DILocation(line: 558, column: 12, scope: !6096)
!6269 = !DILocation(line: 558, column: 15, scope: !6096)
!6270 = !DILocation(line: 558, column: 27, scope: !6096)
!6271 = !DILocation(line: 558, column: 25, scope: !6096)
!6272 = !DILocation(line: 558, column: 35, scope: !6096)
!6273 = !DILocation(line: 558, column: 41, scope: !6096)
!6274 = !DILocation(line: 559, column: 22, scope: !6096)
!6275 = !DILocation(line: 559, column: 28, scope: !6096)
!6276 = !DILocation(line: 558, column: 7, scope: !6096)
!6277 = !DILocation(line: 561, column: 6, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6096, file: !3, line: 561, column: 6)
!6279 = !DILocation(line: 561, column: 11, scope: !6278)
!6280 = !DILocation(line: 561, column: 16, scope: !6278)
!6281 = !DILocation(line: 561, column: 19, scope: !6278)
!6282 = !DILocation(line: 561, column: 24, scope: !6278)
!6283 = !DILocation(line: 561, column: 6, scope: !6096)
!6284 = !DILocation(line: 562, column: 7, scope: !6278)
!6285 = !DILocation(line: 562, column: 3, scope: !6278)
!6286 = !DILocation(line: 567, column: 4, scope: !6096)
!6287 = !DILocation(line: 567, column: 9, scope: !6096)
!6288 = !DILocation(line: 566, column: 52, scope: !6096)
!6289 = !DILocation(line: 567, column: 19, scope: !6096)
!6290 = !DILocation(line: 567, column: 24, scope: !6096)
!6291 = !DILocation(line: 567, column: 16, scope: !6096)
!6292 = !DILocation(line: 567, column: 32, scope: !6096)
!6293 = !DILocation(line: 567, column: 30, scope: !6096)
!6294 = !DILocation(line: 566, column: 2, scope: !6096)
!6295 = !DILocation(line: 566, column: 9, scope: !6096)
!6296 = !DILocation(line: 566, column: 16, scope: !6096)
!6297 = !DILocation(line: 569, column: 2, scope: !6096)
!6298 = distinct !DISubprogram(name: "cx24123_pll_writereg", scope: !3, file: !3, line: 577, type: !4414, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6299 = !DILocalVariable(name: "m", arg: 1, scope: !6300, file: !6301, line: 363, type: !1762)
!6300 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6301, file: !6301, line: 363, type: !6302, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6301 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!6302 = !DISubroutineType(types: !6303)
!6303 = !{!480, !1762}
!6304 = !DILocation(line: 363, column: 74, scope: !6300, inlinedAt: !6305)
!6305 = distinct !DILocation(line: 616, column: 22, scope: !6298)
!6306 = !DILocation(line: 363, column: 74, scope: !6300, inlinedAt: !6307)
!6307 = distinct !DILocation(line: 603, column: 22, scope: !6298)
!6308 = !DILocation(line: 363, column: 74, scope: !6300, inlinedAt: !6309)
!6309 = distinct !DILocation(line: 591, column: 22, scope: !6298)
!6310 = !DILocalVariable(name: "fe", arg: 1, scope: !6298, file: !3, line: 577, type: !4135)
!6311 = !DILocation(line: 577, column: 54, scope: !6298)
!6312 = !DILocalVariable(name: "data", arg: 2, scope: !6298, file: !3, line: 577, type: !301)
!6313 = !DILocation(line: 577, column: 62, scope: !6298)
!6314 = !DILocalVariable(name: "state", scope: !6298, file: !3, line: 579, type: !4477)
!6315 = !DILocation(line: 579, column: 24, scope: !6298)
!6316 = !DILocation(line: 579, column: 32, scope: !6298)
!6317 = !DILocation(line: 579, column: 36, scope: !6298)
!6318 = !DILocalVariable(name: "timeout", scope: !6298, file: !3, line: 580, type: !480)
!6319 = !DILocation(line: 580, column: 16, scope: !6298)
!6320 = !DILocation(line: 582, column: 2, scope: !6298)
!6321 = !DILocation(line: 582, column: 2, scope: !6322)
!6322 = distinct !DILexicalBlock(scope: !6323, file: !3, line: 582, column: 2)
!6323 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 582, column: 2)
!6324 = !DILocation(line: 582, column: 2, scope: !6323)
!6325 = !DILocation(line: 582, column: 2, scope: !6326)
!6326 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 582, column: 2)
!6327 = !DILocation(line: 585, column: 9, scope: !6298)
!6328 = !DILocation(line: 585, column: 14, scope: !6298)
!6329 = !DILocation(line: 585, column: 7, scope: !6298)
!6330 = !DILocation(line: 588, column: 2, scope: !6298)
!6331 = !DILocation(line: 591, column: 12, scope: !6298)
!6332 = !DILocation(line: 365, column: 27, scope: !6333, inlinedAt: !6309)
!6333 = distinct !DILexicalBlock(scope: !6300, file: !6301, line: 365, column: 6)
!6334 = !DILocation(line: 365, column: 6, scope: !6333, inlinedAt: !6309)
!6335 = !DILocation(line: 365, column: 6, scope: !6300, inlinedAt: !6309)
!6336 = !DILocation(line: 366, column: 12, scope: !6337, inlinedAt: !6309)
!6337 = distinct !DILexicalBlock(scope: !6338, file: !6301, line: 366, column: 7)
!6338 = distinct !DILexicalBlock(scope: !6333, file: !6301, line: 365, column: 31)
!6339 = !DILocation(line: 366, column: 14, scope: !6337, inlinedAt: !6309)
!6340 = !DILocation(line: 366, column: 7, scope: !6338, inlinedAt: !6309)
!6341 = !DILocation(line: 367, column: 4, scope: !6337, inlinedAt: !6309)
!6342 = !DILocation(line: 368, column: 28, scope: !6338, inlinedAt: !6309)
!6343 = !DILocation(line: 368, column: 10, scope: !6338, inlinedAt: !6309)
!6344 = !DILocation(line: 368, column: 3, scope: !6338, inlinedAt: !6309)
!6345 = !DILocation(line: 370, column: 29, scope: !6346, inlinedAt: !6309)
!6346 = distinct !DILexicalBlock(scope: !6333, file: !6301, line: 369, column: 9)
!6347 = !DILocation(line: 370, column: 10, scope: !6346, inlinedAt: !6309)
!6348 = !DILocation(line: 370, column: 3, scope: !6346, inlinedAt: !6309)
!6349 = !DILocation(line: 372, column: 1, scope: !6300, inlinedAt: !6309)
!6350 = !DILocation(line: 591, column: 20, scope: !6298)
!6351 = !DILocation(line: 591, column: 10, scope: !6298)
!6352 = !DILocation(line: 592, column: 2, scope: !6298)
!6353 = !DILocation(line: 593, column: 2, scope: !6298)
!6354 = !DILocation(line: 593, column: 10, scope: !6298)
!6355 = !DILocation(line: 593, column: 39, scope: !6298)
!6356 = !DILocation(line: 593, column: 47, scope: !6298)
!6357 = !DILocation(line: 594, column: 7, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6359, file: !3, line: 594, column: 7)
!6359 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 593, column: 53)
!6360 = !DILocation(line: 594, column: 7, scope: !6359)
!6361 = !DILocation(line: 595, column: 4, scope: !6362)
!6362 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 594, column: 37)
!6363 = !DILocation(line: 595, column: 4, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6362, file: !3, line: 595, column: 4)
!6365 = !DILocation(line: 597, column: 4, scope: !6362)
!6366 = !DILocation(line: 599, column: 3, scope: !6359)
!6367 = distinct !{!6367, !6353, !6368}
!6368 = !DILocation(line: 600, column: 2, scope: !6298)
!6369 = !DILocation(line: 603, column: 12, scope: !6298)
!6370 = !DILocation(line: 365, column: 27, scope: !6333, inlinedAt: !6307)
!6371 = !DILocation(line: 365, column: 6, scope: !6333, inlinedAt: !6307)
!6372 = !DILocation(line: 365, column: 6, scope: !6300, inlinedAt: !6307)
!6373 = !DILocation(line: 366, column: 12, scope: !6337, inlinedAt: !6307)
!6374 = !DILocation(line: 366, column: 14, scope: !6337, inlinedAt: !6307)
!6375 = !DILocation(line: 366, column: 7, scope: !6338, inlinedAt: !6307)
!6376 = !DILocation(line: 367, column: 4, scope: !6337, inlinedAt: !6307)
!6377 = !DILocation(line: 368, column: 28, scope: !6338, inlinedAt: !6307)
!6378 = !DILocation(line: 368, column: 10, scope: !6338, inlinedAt: !6307)
!6379 = !DILocation(line: 368, column: 3, scope: !6338, inlinedAt: !6307)
!6380 = !DILocation(line: 370, column: 29, scope: !6346, inlinedAt: !6307)
!6381 = !DILocation(line: 370, column: 10, scope: !6346, inlinedAt: !6307)
!6382 = !DILocation(line: 370, column: 3, scope: !6346, inlinedAt: !6307)
!6383 = !DILocation(line: 372, column: 1, scope: !6300, inlinedAt: !6307)
!6384 = !DILocation(line: 603, column: 20, scope: !6298)
!6385 = !DILocation(line: 603, column: 10, scope: !6298)
!6386 = !DILocation(line: 604, column: 2, scope: !6298)
!6387 = !DILocation(line: 605, column: 2, scope: !6298)
!6388 = !DILocation(line: 605, column: 10, scope: !6298)
!6389 = !DILocation(line: 605, column: 39, scope: !6298)
!6390 = !DILocation(line: 605, column: 47, scope: !6298)
!6391 = !DILocation(line: 606, column: 7, scope: !6392)
!6392 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 606, column: 7)
!6393 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 605, column: 53)
!6394 = !DILocation(line: 606, column: 7, scope: !6393)
!6395 = !DILocation(line: 607, column: 4, scope: !6396)
!6396 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 606, column: 37)
!6397 = !DILocation(line: 607, column: 4, scope: !6398)
!6398 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 607, column: 4)
!6399 = !DILocation(line: 609, column: 4, scope: !6396)
!6400 = !DILocation(line: 611, column: 3, scope: !6393)
!6401 = distinct !{!6401, !6387, !6402}
!6402 = !DILocation(line: 612, column: 2, scope: !6298)
!6403 = !DILocation(line: 616, column: 12, scope: !6298)
!6404 = !DILocation(line: 365, column: 27, scope: !6333, inlinedAt: !6305)
!6405 = !DILocation(line: 365, column: 6, scope: !6333, inlinedAt: !6305)
!6406 = !DILocation(line: 365, column: 6, scope: !6300, inlinedAt: !6305)
!6407 = !DILocation(line: 366, column: 12, scope: !6337, inlinedAt: !6305)
!6408 = !DILocation(line: 366, column: 14, scope: !6337, inlinedAt: !6305)
!6409 = !DILocation(line: 366, column: 7, scope: !6338, inlinedAt: !6305)
!6410 = !DILocation(line: 367, column: 4, scope: !6337, inlinedAt: !6305)
!6411 = !DILocation(line: 368, column: 28, scope: !6338, inlinedAt: !6305)
!6412 = !DILocation(line: 368, column: 10, scope: !6338, inlinedAt: !6305)
!6413 = !DILocation(line: 368, column: 3, scope: !6338, inlinedAt: !6305)
!6414 = !DILocation(line: 370, column: 29, scope: !6346, inlinedAt: !6305)
!6415 = !DILocation(line: 370, column: 10, scope: !6346, inlinedAt: !6305)
!6416 = !DILocation(line: 370, column: 3, scope: !6346, inlinedAt: !6305)
!6417 = !DILocation(line: 372, column: 1, scope: !6300, inlinedAt: !6305)
!6418 = !DILocation(line: 616, column: 20, scope: !6298)
!6419 = !DILocation(line: 616, column: 10, scope: !6298)
!6420 = !DILocation(line: 617, column: 2, scope: !6298)
!6421 = !DILocation(line: 618, column: 2, scope: !6298)
!6422 = !DILocation(line: 618, column: 10, scope: !6298)
!6423 = !DILocation(line: 618, column: 39, scope: !6298)
!6424 = !DILocation(line: 619, column: 7, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6426, file: !3, line: 619, column: 7)
!6426 = distinct !DILexicalBlock(scope: !6298, file: !3, line: 618, column: 48)
!6427 = !DILocation(line: 619, column: 7, scope: !6426)
!6428 = !DILocation(line: 620, column: 4, scope: !6429)
!6429 = distinct !DILexicalBlock(scope: !6425, file: !3, line: 619, column: 37)
!6430 = !DILocation(line: 620, column: 4, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6429, file: !3, line: 620, column: 4)
!6432 = !DILocation(line: 622, column: 4, scope: !6429)
!6433 = !DILocation(line: 624, column: 3, scope: !6426)
!6434 = distinct !{!6434, !6421, !6435}
!6435 = !DILocation(line: 625, column: 2, scope: !6298)
!6436 = !DILocation(line: 628, column: 2, scope: !6298)
!6437 = !DILocation(line: 629, column: 2, scope: !6298)
!6438 = !DILocation(line: 631, column: 2, scope: !6298)
!6439 = !DILocation(line: 632, column: 1, scope: !6298)
!6440 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6301, file: !6301, line: 308, type: !6302, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6441 = !DILocalVariable(name: "m", arg: 1, scope: !6440, file: !6301, line: 308, type: !1762)
!6442 = !DILocation(line: 308, column: 66, scope: !6440)
!6443 = !DILocation(line: 310, column: 10, scope: !6440)
!6444 = !DILocation(line: 310, column: 12, scope: !6440)
!6445 = !DILocation(line: 310, column: 34, scope: !6440)
!6446 = !DILocation(line: 310, column: 39, scope: !6440)
!6447 = !DILocation(line: 310, column: 2, scope: !6440)
!6448 = distinct !DISubprogram(name: "cx24123_get_inversion", scope: !3, file: !3, line: 307, type: !6449, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6449 = !DISubroutineType(types: !6450)
!6450 = !{!294, !4477, !6451}
!6451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!6452 = !DILocalVariable(name: "state", arg: 1, scope: !6448, file: !3, line: 307, type: !4477)
!6453 = !DILocation(line: 307, column: 56, scope: !6448)
!6454 = !DILocalVariable(name: "inversion", arg: 2, scope: !6448, file: !3, line: 308, type: !6451)
!6455 = !DILocation(line: 308, column: 34, scope: !6448)
!6456 = !DILocalVariable(name: "val", scope: !6448, file: !3, line: 310, type: !349)
!6457 = !DILocation(line: 310, column: 5, scope: !6448)
!6458 = !DILocation(line: 312, column: 8, scope: !6448)
!6459 = !DILocation(line: 312, column: 37, scope: !6448)
!6460 = !DILocation(line: 312, column: 6, scope: !6448)
!6461 = !DILocation(line: 314, column: 6, scope: !6462)
!6462 = distinct !DILexicalBlock(scope: !6448, file: !3, line: 314, column: 6)
!6463 = !DILocation(line: 314, column: 10, scope: !6462)
!6464 = !DILocation(line: 314, column: 6, scope: !6448)
!6465 = !DILocation(line: 315, column: 3, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 314, column: 16)
!6467 = !DILocation(line: 315, column: 3, scope: !6468)
!6468 = distinct !DILexicalBlock(scope: !6469, file: !3, line: 315, column: 3)
!6469 = distinct !DILexicalBlock(scope: !6466, file: !3, line: 315, column: 3)
!6470 = !DILocation(line: 315, column: 3, scope: !6469)
!6471 = !DILocation(line: 315, column: 3, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6468, file: !3, line: 315, column: 3)
!6473 = !DILocation(line: 316, column: 4, scope: !6466)
!6474 = !DILocation(line: 316, column: 14, scope: !6466)
!6475 = !DILocation(line: 317, column: 2, scope: !6466)
!6476 = !DILocation(line: 318, column: 3, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6462, file: !3, line: 317, column: 9)
!6478 = !DILocation(line: 318, column: 3, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6480, file: !3, line: 318, column: 3)
!6480 = distinct !DILexicalBlock(scope: !6477, file: !3, line: 318, column: 3)
!6481 = !DILocation(line: 318, column: 3, scope: !6480)
!6482 = !DILocation(line: 318, column: 3, scope: !6483)
!6483 = distinct !DILexicalBlock(scope: !6479, file: !3, line: 318, column: 3)
!6484 = !DILocation(line: 319, column: 4, scope: !6477)
!6485 = !DILocation(line: 319, column: 14, scope: !6477)
!6486 = !DILocation(line: 322, column: 2, scope: !6448)
!6487 = distinct !DISubprogram(name: "cx24123_get_fec", scope: !3, file: !3, line: 387, type: !6488, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6488 = !DISubroutineType(types: !6489)
!6489 = !{!294, !4477, !6490}
!6490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!6491 = !DILocalVariable(name: "state", arg: 1, scope: !6487, file: !3, line: 387, type: !4477)
!6492 = !DILocation(line: 387, column: 50, scope: !6487)
!6493 = !DILocalVariable(name: "fec", arg: 2, scope: !6487, file: !3, line: 387, type: !6490)
!6494 = !DILocation(line: 387, column: 76, scope: !6487)
!6495 = !DILocalVariable(name: "ret", scope: !6487, file: !3, line: 389, type: !294)
!6496 = !DILocation(line: 389, column: 6, scope: !6487)
!6497 = !DILocation(line: 391, column: 8, scope: !6487)
!6498 = !DILocation(line: 391, column: 6, scope: !6487)
!6499 = !DILocation(line: 392, column: 6, scope: !6500)
!6500 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 392, column: 6)
!6501 = !DILocation(line: 392, column: 10, scope: !6500)
!6502 = !DILocation(line: 392, column: 6, scope: !6487)
!6503 = !DILocation(line: 393, column: 10, scope: !6500)
!6504 = !DILocation(line: 393, column: 3, scope: !6500)
!6505 = !DILocation(line: 394, column: 8, scope: !6487)
!6506 = !DILocation(line: 394, column: 12, scope: !6487)
!6507 = !DILocation(line: 394, column: 6, scope: !6487)
!6508 = !DILocation(line: 396, column: 10, scope: !6487)
!6509 = !DILocation(line: 396, column: 2, scope: !6487)
!6510 = !DILocation(line: 398, column: 4, scope: !6511)
!6511 = distinct !DILexicalBlock(scope: !6487, file: !3, line: 396, column: 15)
!6512 = !DILocation(line: 398, column: 8, scope: !6511)
!6513 = !DILocation(line: 399, column: 3, scope: !6511)
!6514 = !DILocation(line: 401, column: 4, scope: !6511)
!6515 = !DILocation(line: 401, column: 8, scope: !6511)
!6516 = !DILocation(line: 402, column: 3, scope: !6511)
!6517 = !DILocation(line: 404, column: 4, scope: !6511)
!6518 = !DILocation(line: 404, column: 8, scope: !6511)
!6519 = !DILocation(line: 405, column: 3, scope: !6511)
!6520 = !DILocation(line: 407, column: 4, scope: !6511)
!6521 = !DILocation(line: 407, column: 8, scope: !6511)
!6522 = !DILocation(line: 408, column: 3, scope: !6511)
!6523 = !DILocation(line: 410, column: 4, scope: !6511)
!6524 = !DILocation(line: 410, column: 8, scope: !6511)
!6525 = !DILocation(line: 411, column: 3, scope: !6511)
!6526 = !DILocation(line: 413, column: 4, scope: !6511)
!6527 = !DILocation(line: 413, column: 8, scope: !6511)
!6528 = !DILocation(line: 414, column: 3, scope: !6511)
!6529 = !DILocation(line: 416, column: 4, scope: !6511)
!6530 = !DILocation(line: 416, column: 8, scope: !6511)
!6531 = !DILocation(line: 417, column: 3, scope: !6511)
!6532 = !DILocation(line: 420, column: 4, scope: !6511)
!6533 = !DILocation(line: 420, column: 8, scope: !6511)
!6534 = !DILocation(line: 421, column: 2, scope: !6511)
!6535 = !DILocation(line: 423, column: 2, scope: !6487)
!6536 = !DILocation(line: 424, column: 1, scope: !6487)
!6537 = distinct !DISubprogram(name: "cx24123_wait_for_diseqc", scope: !3, file: !3, line: 735, type: !6538, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !467)
!6538 = !DISubroutineType(types: !6539)
!6539 = !{null, !4477}
!6540 = !DILocation(line: 363, column: 74, scope: !6300, inlinedAt: !6541)
!6541 = distinct !DILocation(line: 737, column: 36, scope: !6537)
!6542 = !DILocalVariable(name: "state", arg: 1, scope: !6537, file: !3, line: 735, type: !4477)
!6543 = !DILocation(line: 735, column: 59, scope: !6537)
!6544 = !DILocalVariable(name: "timeout", scope: !6537, file: !3, line: 737, type: !480)
!6545 = !DILocation(line: 737, column: 16, scope: !6537)
!6546 = !DILocation(line: 737, column: 26, scope: !6537)
!6547 = !DILocation(line: 365, column: 27, scope: !6333, inlinedAt: !6541)
!6548 = !DILocation(line: 365, column: 6, scope: !6333, inlinedAt: !6541)
!6549 = !DILocation(line: 365, column: 6, scope: !6300, inlinedAt: !6541)
!6550 = !DILocation(line: 366, column: 12, scope: !6337, inlinedAt: !6541)
!6551 = !DILocation(line: 366, column: 14, scope: !6337, inlinedAt: !6541)
!6552 = !DILocation(line: 366, column: 7, scope: !6338, inlinedAt: !6541)
!6553 = !DILocation(line: 367, column: 4, scope: !6337, inlinedAt: !6541)
!6554 = !DILocation(line: 368, column: 28, scope: !6338, inlinedAt: !6541)
!6555 = !DILocation(line: 368, column: 10, scope: !6338, inlinedAt: !6541)
!6556 = !DILocation(line: 368, column: 3, scope: !6338, inlinedAt: !6541)
!6557 = !DILocation(line: 370, column: 29, scope: !6346, inlinedAt: !6541)
!6558 = !DILocation(line: 370, column: 10, scope: !6346, inlinedAt: !6541)
!6559 = !DILocation(line: 370, column: 3, scope: !6346, inlinedAt: !6541)
!6560 = !DILocation(line: 372, column: 1, scope: !6300, inlinedAt: !6541)
!6561 = !DILocation(line: 737, column: 34, scope: !6537)
!6562 = !DILocation(line: 738, column: 2, scope: !6537)
!6563 = !DILocation(line: 738, column: 11, scope: !6537)
!6564 = !DILocation(line: 738, column: 40, scope: !6537)
!6565 = !DILocation(line: 738, column: 9, scope: !6537)
!6566 = !DILocation(line: 739, column: 7, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6568, file: !3, line: 739, column: 7)
!6568 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 738, column: 49)
!6569 = !DILocation(line: 739, column: 7, scope: !6568)
!6570 = !DILocation(line: 740, column: 4, scope: !6571)
!6571 = distinct !DILexicalBlock(scope: !6567, file: !3, line: 739, column: 37)
!6572 = !DILocation(line: 740, column: 4, scope: !6573)
!6573 = distinct !DILexicalBlock(scope: !6571, file: !3, line: 740, column: 4)
!6574 = !DILocation(line: 742, column: 4, scope: !6571)
!6575 = !DILocation(line: 744, column: 3, scope: !6568)
!6576 = distinct !{!6576, !6562, !6577}
!6577 = !DILocation(line: 745, column: 2, scope: !6537)
!6578 = !DILocation(line: 746, column: 1, scope: !6537)
