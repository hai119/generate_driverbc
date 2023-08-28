; ModuleID = '../bcout/drivers/media/dvb-frontends/atbm8830.llvm.bc'
source_filename = "drivers/media/dvb-frontends/atbm8830.c"
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.66, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.66 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.64, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.62 }
%union.anon.62 = type { %struct.anon.63 }
%struct.anon.63 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.54, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.54 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.55, i32 }
%union.anon.55 = type { %struct.kuid_t }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.48, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.18, [0 x i64] }
%struct.anon.18 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.19, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.25, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.26, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.27, %union.anon.31, %struct.key_restriction* }
%union.anon.25 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.26 = type { i64 }
%union.anon.27 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.28, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.28 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.31 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.34, %union.anon.35, i32 }
%struct.request_queue = type opaque
%union.anon.34 = type { %struct.list_head }
%union.anon.35 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.36 }
%struct.anon.36 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.40 }
%struct.anon.40 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.47, i32, [12 x i8] }
%union.anon.47 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.48 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.49, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.52 }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { i64, i64 }
%union.anon.52 = type { [12 x i32] }
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
%union.anon.64 = type { %struct.list_head }
%union.anon.65 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.56, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.57, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.58, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.61, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.56 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.57 = type { %struct.callback_head }
%union.anon.58 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.61 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.59 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.59 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.atomic64_t = type { i64 }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.0 }>
%union.anon.0 = type { i64 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.kmem_cache = type opaque
%struct.atbm8830_config = type { i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8 }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.atbm_state = type { %struct.i2c_adapter*, %struct.atbm8830_config*, %struct.dvb_frontend }

@__param_str_debug = internal constant [15 x i8] c"atbm8830.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !401
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !301
@__UNIQUE_ID_debugtype220 = internal constant [28 x i8] c"atbm8830.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !371
@__UNIQUE_ID_debug221 = internal constant [66 x i8] c"atbm8830.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !376
@.str = private unnamed_addr constant [18 x i8] c"\017atbm8830: %s()\0A\00", align 1
@__func__.atbm8830_attach = private unnamed_addr constant [16 x i8] c"atbm8830_attach\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\017atbm8830: %s atbm8830/8831 not found at i2c addr 0x%02X\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\017atbm8830: atbm8830 chip id: 0x%02X\0A\00", align 1
@atbm8830_ops = internal constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"AltoBeam ATBM8830/8831 DMB-TH\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 474000000, i32 858000000, i32 10000, i32 0, i32 0, i32 0, i32 0, i32 721408 }, [8 x i8] c"\0D\00\00\00\00\00\00\00", void (%struct.dvb_frontend*)* null, void (%struct.dvb_frontend*)* @atbm8830_release, void (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @atbm8830_init, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @atbm8830_set_fe, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)* @atbm8830_get_tune_settings, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @atbm8830_get_fe, i32 (%struct.dvb_frontend*, i32*)* @atbm8830_read_status, i32 (%struct.dvb_frontend*, i32*)* @atbm8830_read_ber, i32 (%struct.dvb_frontend*, i16*)* @atbm8830_read_signal_strength, i32 (%struct.dvb_frontend*, i16*)* @atbm8830_read_snr, i32 (%struct.dvb_frontend*, i32*)* @atbm8830_read_ucblocks, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)* null, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i64)* null, i32 (%struct.dvb_frontend*, i32)* @atbm8830_i2c_gate_ctrl, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 8, !dbg !403
@.str.3 = private unnamed_addr constant [28 x i8] c"\017atbm8830: %s() error_out\0A\00", align 1
@__UNIQUE_ID_description222 = internal constant [71 x i8] c"atbm8830.description=AltoBeam ATBM8830/8831 GB20600 demodulator driver\00", section ".modinfo", align 1, !dbg !381
@__UNIQUE_ID_author223 = internal constant [57 x i8] c"atbm8830.author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1, !dbg !386
@__UNIQUE_ID_file224 = internal constant [51 x i8] c"atbm8830.file=drivers/media/dvb-frontends/atbm8830\00", section ".modinfo", align 1, !dbg !391
@__UNIQUE_ID_license225 = internal constant [21 x i8] c"atbm8830.license=GPL\00", section ".modinfo", align 1, !dbg !396
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\017atbm8830: %s: error reg=0x%04x, ret=%i\0A\00", align 1
@__func__.atbm8830_read_reg = private unnamed_addr constant [18 x i8] c"atbm8830_read_reg\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\017atbm8830: %s: reg=0x%04X, data=0x%02X\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\017atbm8830: %s\0A\00", align 1
@__func__.atbm8830_release = private unnamed_addr constant [17 x i8] c"atbm8830_release\00", align 1
@__func__.atbm8830_set_fe = private unnamed_addr constant [16 x i8] c"atbm8830_set_fe\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"\017atbm8830: Try %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\017atbm8830: ATBM8830 locked!\0A\00", align 1
@__func__.atbm8830_get_fe = private unnamed_addr constant [16 x i8] c"atbm8830_get_fe\00", align 1
@__func__.atbm8830_read_status = private unnamed_addr constant [21 x i8] c"atbm8830_read_status\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"\017atbm8830: %s: fe_status=0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"\017atbm8830: AGC Lock: %d\0A\00", align 1
@__func__.atbm8830_read_ber = private unnamed_addr constant [18 x i8] c"atbm8830_read_ber\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"\017atbm8830: %s: ber=0x%x\0A\00", align 1
@__func__.atbm8830_write_reg = private unnamed_addr constant [19 x i8] c"atbm8830_write_reg\00", align 1
@__func__.atbm8830_read_signal_strength = private unnamed_addr constant [30 x i8] c"atbm8830_read_signal_strength\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"\017atbm8830: AGC PWM = 0x%02X\0A\00", align 1
@__func__.atbm8830_read_snr = private unnamed_addr constant [18 x i8] c"atbm8830_read_snr\00", align 1
@__func__.atbm8830_read_ucblocks = private unnamed_addr constant [23 x i8] c"atbm8830_read_ucblocks\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @atbm8830_attach(%struct.atbm8830_config* %config, %struct.i2c_adapter* %i2c) #0 !dbg !4306 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %config.addr = alloca %struct.atbm8830_config*, align 8
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %data = alloca i8, align 1
  store %struct.atbm8830_config* %config, %struct.atbm8830_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm8830_config** %config.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !4451, metadata !DIExpression()), !dbg !4459
  store %struct.atbm_state* null, %struct.atbm_state** %priv, align 8, !dbg !4459
  call void @llvm.dbg.declare(metadata i8* %data, metadata !4460, metadata !DIExpression()), !dbg !4461
  store i8 0, i8* %data, align 1, !dbg !4461
  br label %do.body, !dbg !4462

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4463
  %tobool = icmp ne i32 %0, 0, !dbg !4463
  br i1 %tobool, label %if.then, label %if.end, !dbg !4466

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.atbm8830_attach, i64 0, i64 0)) #8, !dbg !4463
  br label %if.end, !dbg !4463

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4466

do.end:                                           ; preds = %if.end
  %1 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config.addr, align 8, !dbg !4467
  %cmp = icmp eq %struct.atbm8830_config* %1, null, !dbg !4469
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !4470

lor.lhs.false:                                    ; preds = %do.end
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4471
  %cmp1 = icmp eq %struct.i2c_adapter* %2, null, !dbg !4472
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4473

if.then2:                                         ; preds = %lor.lhs.false, %do.end
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4474
  br label %return, !dbg !4474

if.end3:                                          ; preds = %lor.lhs.false
  %call4 = call i8* @kzalloc(i64 1296, i32 3264) #9, !dbg !4475
  %3 = bitcast i8* %call4 to %struct.atbm_state*, !dbg !4475
  store %struct.atbm_state* %3, %struct.atbm_state** %priv, align 8, !dbg !4476
  %4 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4477
  %cmp5 = icmp eq %struct.atbm_state* %4, null, !dbg !4479
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !4480

if.then6:                                         ; preds = %if.end3
  br label %error_out, !dbg !4481

if.end7:                                          ; preds = %if.end3
  %5 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config.addr, align 8, !dbg !4482
  %6 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4483
  %config8 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %6, i32 0, i32 1, !dbg !4484
  store %struct.atbm8830_config* %5, %struct.atbm8830_config** %config8, align 8, !dbg !4485
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4486
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4487
  %i2c9 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %8, i32 0, i32 0, !dbg !4488
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %i2c9, align 8, !dbg !4489
  %9 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4490
  %call10 = call i32 @atbm8830_read_reg(%struct.atbm_state* %9, i16 zeroext 0, i8* %data) #9, !dbg !4492
  %cmp11 = icmp ne i32 %call10, 0, !dbg !4493
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !4494

if.then12:                                        ; preds = %if.end7
  br label %do.body13, !dbg !4495

do.body13:                                        ; preds = %if.then12
  %10 = load i32, i32* @debug, align 4, !dbg !4497
  %tobool14 = icmp ne i32 %10, 0, !dbg !4497
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !4500

if.then15:                                        ; preds = %do.body13
  %11 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4497
  %config16 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %11, i32 0, i32 1, !dbg !4497
  %12 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config16, align 8, !dbg !4497
  %demod_address = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %12, i32 0, i32 1, !dbg !4497
  %13 = load i8, i8* %demod_address, align 1, !dbg !4497
  %conv = zext i8 %13 to i32, !dbg !4497
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.atbm8830_attach, i64 0, i64 0), i32 %conv) #8, !dbg !4497
  br label %if.end18, !dbg !4497

if.end18:                                         ; preds = %if.then15, %do.body13
  br label %do.end19, !dbg !4500

do.end19:                                         ; preds = %if.end18
  br label %error_out, !dbg !4501

if.end20:                                         ; preds = %if.end7
  br label %do.body21, !dbg !4502

do.body21:                                        ; preds = %if.end20
  %14 = load i32, i32* @debug, align 4, !dbg !4503
  %tobool22 = icmp ne i32 %14, 0, !dbg !4503
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !4506

if.then23:                                        ; preds = %do.body21
  %15 = load i8, i8* %data, align 1, !dbg !4503
  %conv24 = zext i8 %15 to i32, !dbg !4503
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %conv24) #8, !dbg !4503
  br label %if.end26, !dbg !4503

if.end26:                                         ; preds = %if.then23, %do.body21
  br label %do.end27, !dbg !4506

do.end27:                                         ; preds = %if.end26
  %16 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4507
  %frontend = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %16, i32 0, i32 2, !dbg !4508
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend, i32 0, i32 1, !dbg !4509
  %17 = bitcast %struct.dvb_frontend_ops* %ops to i8*, !dbg !4510
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 getelementptr inbounds (%struct.dvb_frontend_ops, %struct.dvb_frontend_ops* @atbm8830_ops, i32 0, i32 0, i32 0, i32 0), i64 752, i1 false), !dbg !4510
  %18 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4511
  %19 = bitcast %struct.atbm_state* %18 to i8*, !dbg !4511
  %20 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4512
  %frontend28 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %20, i32 0, i32 2, !dbg !4513
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %frontend28, i32 0, i32 3, !dbg !4514
  store i8* %19, i8** %demodulator_priv, align 8, !dbg !4515
  %21 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4516
  %frontend29 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %21, i32 0, i32 2, !dbg !4517
  %call30 = call i32 @atbm8830_init(%struct.dvb_frontend* %frontend29) #9, !dbg !4518
  %22 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4519
  %frontend31 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %22, i32 0, i32 2, !dbg !4520
  %call32 = call i32 @atbm8830_i2c_gate_ctrl(%struct.dvb_frontend* %frontend31, i32 1) #9, !dbg !4521
  %23 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4522
  %frontend33 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %23, i32 0, i32 2, !dbg !4523
  store %struct.dvb_frontend* %frontend33, %struct.dvb_frontend** %retval, align 8, !dbg !4524
  br label %return, !dbg !4524

error_out:                                        ; preds = %do.end19, %if.then6
  call void @llvm.dbg.label(metadata !4525), !dbg !4526
  br label %do.body34, !dbg !4527

do.body34:                                        ; preds = %error_out
  %24 = load i32, i32* @debug, align 4, !dbg !4528
  %tobool35 = icmp ne i32 %24, 0, !dbg !4528
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !4531

if.then36:                                        ; preds = %do.body34
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.atbm8830_attach, i64 0, i64 0)) #8, !dbg !4528
  br label %if.end38, !dbg !4528

if.end38:                                         ; preds = %if.then36, %do.body34
  br label %do.end39, !dbg !4531

do.end39:                                         ; preds = %if.end38
  %25 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4532
  %26 = bitcast %struct.atbm_state* %25 to i8*, !dbg !4532
  call void @kfree(i8* %26) #9, !dbg !4533
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4534
  br label %return, !dbg !4534

return:                                           ; preds = %do.end39, %do.end27, %if.then2
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4535
  ret %struct.dvb_frontend* %27, !dbg !4535
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4536 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4539, metadata !DIExpression()), !dbg !4543
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4549, metadata !DIExpression()), !dbg !4550
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4551, metadata !DIExpression()), !dbg !4552
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4553, metadata !DIExpression()), !dbg !4554
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4555, metadata !DIExpression()), !dbg !4559
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4561, metadata !DIExpression()), !dbg !4565
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4567, metadata !DIExpression()), !dbg !4571
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4580, metadata !DIExpression()), !dbg !4581
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4582, metadata !DIExpression()), !dbg !4583
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4584, metadata !DIExpression()), !dbg !4585
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4586, metadata !DIExpression()), !dbg !4587
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4588, metadata !DIExpression()), !dbg !4589
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4590, metadata !DIExpression()), !dbg !4591
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4592, metadata !DIExpression()), !dbg !4593
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4594, metadata !DIExpression()), !dbg !4595
  %0 = load i64, i64* %size.addr, align 8, !dbg !4596
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4597
  %or = or i32 %1, 256, !dbg !4598
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4599
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4600
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4601

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4602
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4603
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4604

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4605
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4606
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4607
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4608
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4585
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4609
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4610
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4611
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4612
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4613
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4614
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4615
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4615
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4615
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4615
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4615
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4616
  br label %kmalloc.exit, !dbg !4616

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4617
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4618
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4618
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4620

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4621
  br label %kmalloc_index.exit.i, !dbg !4621

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4622
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4624
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4625

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4626
  br label %kmalloc_index.exit.i, !dbg !4626

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4627
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4629
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4630

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4631
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4632
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4633

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4634
  br label %kmalloc_index.exit.i, !dbg !4634

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4635
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4637
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4638

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4639
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4640
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4641

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4642
  br label %kmalloc_index.exit.i, !dbg !4642

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4645
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4646

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4647
  br label %kmalloc_index.exit.i, !dbg !4647

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4648
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4650
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4651

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4652
  br label %kmalloc_index.exit.i, !dbg !4652

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4653
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4655
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4656

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4657
  br label %kmalloc_index.exit.i, !dbg !4657

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4658
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4660
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4661

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4662
  br label %kmalloc_index.exit.i, !dbg !4662

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4663
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4665
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4666

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4670
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4671

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4675
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4676

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4680
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4681

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4685
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4686

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4690
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4691

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4695
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4696

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4700
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4701

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4705
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4706

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4710
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4711

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4715
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4716

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4720
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4721

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4725
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4726

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4730
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4731

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4735
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4736

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4740
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4741

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4745
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4746

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4750
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4751

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4755
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4756

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4760
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4761

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4763, !srcloc !4766
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #10, !dbg !4767, !srcloc !4770
  unreachable, !dbg !4771

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4772
  store i32 %45, i32* %index.i, align 4, !dbg !4773
  %46 = load i32, i32* %index.i, align 4, !dbg !4774
  %tobool.i = icmp ne i32 %46, 0, !dbg !4774
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4776

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4777
  br label %kmalloc.exit, !dbg !4777

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4778
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4779
  %and.i.i = and i32 %48, 17, !dbg !4779
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4779
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4779
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4779
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4779
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4781

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4782
  br label %kmalloc_type.exit.i, !dbg !4782

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4783
  %and2.i.i = and i32 %49, 1, !dbg !4784
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4783
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4783
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4783
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4785
  br label %kmalloc_type.exit.i, !dbg !4785

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4786
  %idxprom.i = zext i32 %51 to i64, !dbg !4787
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4787
  %52 = load i32, i32* %index.i, align 4, !dbg !4788
  %idxprom6.i = zext i32 %52 to i64, !dbg !4787
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4787
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4787
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4789
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4790
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4791
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4792
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4793
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4793
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4793
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4793
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4793
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4554
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4794
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4795
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4796
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4797
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4798
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4799
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4800
  store i8* %62, i8** %retval.i, align 8, !dbg !4801
  br label %kmalloc.exit, !dbg !4801

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4802
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4803
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4804
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4804
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4804
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4804
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4804
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4805
  br label %kmalloc.exit, !dbg !4805

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4806
  ret i8* %65, !dbg !4807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_reg(%struct.atbm_state* %priv, i16 zeroext %reg, i8* %p_data) #0 !dbg !4808 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.atbm_state*, align 8
  %reg.addr = alloca i16, align 2
  %p_data.addr = alloca i8*, align 8
  %ret = alloca i32, align 4
  %dev_addr = alloca i8, align 1
  %buf1 = alloca [2 x i8], align 1
  %buf2 = alloca [1 x i8], align 1
  %msg1 = alloca %struct.i2c_msg, align 8
  %msg2 = alloca %struct.i2c_msg, align 8
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !4811, metadata !DIExpression()), !dbg !4812
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !4813, metadata !DIExpression()), !dbg !4814
  store i8* %p_data, i8** %p_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p_data.addr, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4817, metadata !DIExpression()), !dbg !4818
  call void @llvm.dbg.declare(metadata i8* %dev_addr, metadata !4819, metadata !DIExpression()), !dbg !4820
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf1, metadata !4821, metadata !DIExpression()), !dbg !4823
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf1, i64 0, i64 0, !dbg !4824
  %0 = load i16, i16* %reg.addr, align 2, !dbg !4825
  %conv = zext i16 %0 to i32, !dbg !4825
  %shr = ashr i32 %conv, 8, !dbg !4826
  %conv1 = trunc i32 %shr to i8, !dbg !4825
  store i8 %conv1, i8* %arrayinit.begin, align 1, !dbg !4824
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !4824
  %1 = load i16, i16* %reg.addr, align 2, !dbg !4827
  %conv2 = zext i16 %1 to i32, !dbg !4827
  %and = and i32 %conv2, 255, !dbg !4828
  %conv3 = trunc i32 %and to i8, !dbg !4827
  store i8 %conv3, i8* %arrayinit.element, align 1, !dbg !4824
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf2, metadata !4829, metadata !DIExpression()), !dbg !4831
  %2 = bitcast [1 x i8]* %buf2 to i8*, !dbg !4831
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 1, i1 false), !dbg !4831
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg1, metadata !4832, metadata !DIExpression()), !dbg !4833
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 0, !dbg !4834
  store i16 0, i16* %addr, align 8, !dbg !4834
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 1, !dbg !4834
  store i16 0, i16* %flags, align 2, !dbg !4834
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 2, !dbg !4834
  store i16 2, i16* %len, align 4, !dbg !4834
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 3, !dbg !4834
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf1, i64 0, i64 0, !dbg !4835
  store i8* %arraydecay, i8** %buf, align 8, !dbg !4834
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg2, metadata !4836, metadata !DIExpression()), !dbg !4837
  %addr4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 0, !dbg !4838
  store i16 0, i16* %addr4, align 8, !dbg !4838
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 1, !dbg !4838
  store i16 1, i16* %flags5, align 2, !dbg !4838
  %len6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 2, !dbg !4838
  store i16 1, i16* %len6, align 4, !dbg !4838
  %buf7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 3, !dbg !4838
  %arraydecay8 = getelementptr inbounds [1 x i8], [1 x i8]* %buf2, i64 0, i64 0, !dbg !4839
  store i8* %arraydecay8, i8** %buf7, align 8, !dbg !4838
  %3 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !4840
  %config = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %3, i32 0, i32 1, !dbg !4841
  %4 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config, align 8, !dbg !4841
  %demod_address = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %4, i32 0, i32 1, !dbg !4842
  %5 = load i8, i8* %demod_address, align 1, !dbg !4842
  store i8 %5, i8* %dev_addr, align 1, !dbg !4843
  %6 = load i8, i8* %dev_addr, align 1, !dbg !4844
  %conv9 = zext i8 %6 to i16, !dbg !4844
  %addr10 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 0, !dbg !4845
  store i16 %conv9, i16* %addr10, align 8, !dbg !4846
  %7 = load i8, i8* %dev_addr, align 1, !dbg !4847
  %conv11 = zext i8 %7 to i16, !dbg !4847
  %addr12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 0, !dbg !4848
  store i16 %conv11, i16* %addr12, align 8, !dbg !4849
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !4850
  %i2c = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %8, i32 0, i32 0, !dbg !4851
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !4851
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %msg1, i32 1) #9, !dbg !4852
  store i32 %call, i32* %ret, align 4, !dbg !4853
  %10 = load i32, i32* %ret, align 4, !dbg !4854
  %cmp = icmp ne i32 %10, 1, !dbg !4856
  br i1 %cmp, label %if.then, label %if.end17, !dbg !4857

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4858

do.body:                                          ; preds = %if.then
  %11 = load i32, i32* @debug, align 4, !dbg !4860
  %tobool = icmp ne i32 %11, 0, !dbg !4860
  br i1 %tobool, label %if.then14, label %if.end, !dbg !4863

if.then14:                                        ; preds = %do.body
  %12 = load i16, i16* %reg.addr, align 2, !dbg !4860
  %conv15 = zext i16 %12 to i32, !dbg !4860
  %13 = load i32, i32* %ret, align 4, !dbg !4860
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.atbm8830_read_reg, i64 0, i64 0), i32 %conv15, i32 %13) #8, !dbg !4860
  br label %if.end, !dbg !4860

if.end:                                           ; preds = %if.then14, %do.body
  br label %do.end, !dbg !4863

do.end:                                           ; preds = %if.end
  store i32 -5, i32* %retval, align 4, !dbg !4864
  br label %return, !dbg !4864

if.end17:                                         ; preds = %entry
  %14 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !4865
  %i2c18 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %14, i32 0, i32 0, !dbg !4866
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c18, align 8, !dbg !4866
  %call19 = call i32 @i2c_transfer(%struct.i2c_adapter* %15, %struct.i2c_msg* %msg2, i32 1) #9, !dbg !4867
  store i32 %call19, i32* %ret, align 4, !dbg !4868
  %16 = load i32, i32* %ret, align 4, !dbg !4869
  %cmp20 = icmp ne i32 %16, 1, !dbg !4871
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !4872

if.then22:                                        ; preds = %if.end17
  store i32 -5, i32* %retval, align 4, !dbg !4873
  br label %return, !dbg !4873

if.end23:                                         ; preds = %if.end17
  %arrayidx = getelementptr [1 x i8], [1 x i8]* %buf2, i64 0, i64 0, !dbg !4874
  %17 = load i8, i8* %arrayidx, align 1, !dbg !4874
  %18 = load i8*, i8** %p_data.addr, align 8, !dbg !4875
  store i8 %17, i8* %18, align 1, !dbg !4876
  %19 = load i32, i32* @debug, align 4, !dbg !4877
  %cmp24 = icmp sge i32 %19, 2, !dbg !4879
  br i1 %cmp24, label %if.then26, label %if.end36, !dbg !4880

if.then26:                                        ; preds = %if.end23
  br label %do.body27, !dbg !4881

do.body27:                                        ; preds = %if.then26
  %20 = load i32, i32* @debug, align 4, !dbg !4882
  %tobool28 = icmp ne i32 %20, 0, !dbg !4882
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !4885

if.then29:                                        ; preds = %do.body27
  %21 = load i16, i16* %reg.addr, align 2, !dbg !4882
  %conv30 = zext i16 %21 to i32, !dbg !4882
  %arrayidx31 = getelementptr [1 x i8], [1 x i8]* %buf2, i64 0, i64 0, !dbg !4882
  %22 = load i8, i8* %arrayidx31, align 1, !dbg !4882
  %conv32 = zext i8 %22 to i32, !dbg !4882
  %call33 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.atbm8830_read_reg, i64 0, i64 0), i32 %conv30, i32 %conv32) #8, !dbg !4882
  br label %if.end34, !dbg !4882

if.end34:                                         ; preds = %if.then29, %do.body27
  br label %do.end35, !dbg !4885

do.end35:                                         ; preds = %if.end34
  br label %if.end36, !dbg !4885

if.end36:                                         ; preds = %do.end35, %if.end23
  store i32 0, i32* %retval, align 4, !dbg !4886
  br label %return, !dbg !4886

return:                                           ; preds = %if.end36, %if.then22, %do.end
  %23 = load i32, i32* %retval, align 4, !dbg !4887
  ret i32 %23, !dbg !4887
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_init(%struct.dvb_frontend* %fe) #0 !dbg !4888 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %cfg = alloca %struct.atbm8830_config*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4889, metadata !DIExpression()), !dbg !4890
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !4891, metadata !DIExpression()), !dbg !4892
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4893
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4894
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4894
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !4893
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !4892
  call void @llvm.dbg.declare(metadata %struct.atbm8830_config** %cfg, metadata !4895, metadata !DIExpression()), !dbg !4896
  %3 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4897
  %config = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %3, i32 0, i32 1, !dbg !4898
  %4 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config, align 8, !dbg !4898
  store %struct.atbm8830_config* %4, %struct.atbm8830_config** %cfg, align 8, !dbg !4896
  %5 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4899
  %6 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !4900
  %osc_clk_freq = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %6, i32 0, i32 5, !dbg !4901
  %7 = load i32, i32* %osc_clk_freq, align 4, !dbg !4901
  %call = call i32 @set_osc_freq(%struct.atbm_state* %5, i32 %7) #9, !dbg !4902
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4903
  %9 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !4904
  %if_freq = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %9, i32 0, i32 6, !dbg !4905
  %10 = load i32, i32* %if_freq, align 4, !dbg !4905
  %call1 = call i32 @set_if_freq(%struct.atbm_state* %8, i32 %10) #9, !dbg !4906
  %11 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4907
  %12 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !4908
  %agc_min = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %12, i32 0, i32 8, !dbg !4909
  %13 = load i8, i8* %agc_min, align 1, !dbg !4909
  %14 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !4910
  %agc_max = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %14, i32 0, i32 9, !dbg !4911
  %15 = load i8, i8* %agc_max, align 2, !dbg !4911
  %16 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !4912
  %agc_hold_loop = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %16, i32 0, i32 10, !dbg !4913
  %17 = load i8, i8* %agc_hold_loop, align 1, !dbg !4913
  %call2 = call i32 @set_agc_config(%struct.atbm_state* %11, i8 zeroext %13, i8 zeroext %15, i8 zeroext %17) #9, !dbg !4914
  %18 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4915
  %call3 = call i32 @set_static_channel_mode(%struct.atbm_state* %18) #9, !dbg !4916
  %19 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4917
  %call4 = call i32 @set_ts_config(%struct.atbm_state* %19) #9, !dbg !4918
  %20 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4919
  %call5 = call i32 @atbm8830_write_reg(%struct.atbm_state* %20, i16 zeroext 10, i8 zeroext 0) #9, !dbg !4920
  %21 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4921
  %call6 = call i32 @atbm8830_write_reg(%struct.atbm_state* %21, i16 zeroext 524, i8 zeroext 11) #9, !dbg !4922
  %22 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4923
  %call7 = call i32 @atbm8830_write_reg(%struct.atbm_state* %22, i16 zeroext 4, i8 zeroext 1) #9, !dbg !4924
  ret i32 0, !dbg !4925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_i2c_gate_ctrl(%struct.dvb_frontend* %fe, i32 %enable) #0 !dbg !4926 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %enable.addr = alloca i32, align 4
  %priv = alloca %struct.atbm_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4927, metadata !DIExpression()), !dbg !4928
  store i32 %enable, i32* %enable.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %enable.addr, metadata !4929, metadata !DIExpression()), !dbg !4930
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !4931, metadata !DIExpression()), !dbg !4932
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4933
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !4934
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !4934
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !4933
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !4932
  %3 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !4935
  %4 = load i32, i32* %enable.addr, align 4, !dbg !4936
  %tobool = icmp ne i32 %4, 0, !dbg !4936
  %5 = zext i1 %tobool to i64, !dbg !4936
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4936
  %conv = trunc i32 %cond to i8, !dbg !4936
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %3, i16 zeroext 259, i8 zeroext %conv) #9, !dbg !4937
  ret i32 %call, !dbg !4938
}

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
define internal i32 @get_order(i64 %size) #7 !dbg !4939 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4943, metadata !DIExpression()), !dbg !4948
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4950, metadata !DIExpression()), !dbg !4951
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load i64, i64* %size.addr, align 8, !dbg !4954
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4956
  br i1 %1, label %if.then, label %if.end447, !dbg !4957

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4958
  %tobool = icmp ne i64 %2, 0, !dbg !4958
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4961

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4962
  br label %return, !dbg !4962

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4963
  %cmp = icmp ult i64 %3, 4096, !dbg !4965
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4966

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub = sub i64 %4, 1, !dbg !4968
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4968
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4968

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub4 = sub i64 %6, 1, !dbg !4968
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4968
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4968

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub6 = sub i64 %8, 1, !dbg !4968
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4968
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4968

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4968

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub9 = sub i64 %9, 1, !dbg !4968
  %and = and i64 %sub9, -9223372036854775808, !dbg !4968
  %tobool10 = icmp ne i64 %and, 0, !dbg !4968
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4968

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4968

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub13 = sub i64 %10, 1, !dbg !4968
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4968
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4968
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4968

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4968

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub18 = sub i64 %11, 1, !dbg !4968
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4968
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4968
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4968

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4968

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub23 = sub i64 %12, 1, !dbg !4968
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4968
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4968
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4968

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4968

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub28 = sub i64 %13, 1, !dbg !4968
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4968
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4968
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4968

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4968

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub33 = sub i64 %14, 1, !dbg !4968
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4968
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4968
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4968

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4968

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub38 = sub i64 %15, 1, !dbg !4968
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4968
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4968
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4968

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4968

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub43 = sub i64 %16, 1, !dbg !4968
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4968
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4968
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4968

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4968

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub48 = sub i64 %17, 1, !dbg !4968
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4968
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4968
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4968

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4968

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub53 = sub i64 %18, 1, !dbg !4968
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4968
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4968
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4968

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4968

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub58 = sub i64 %19, 1, !dbg !4968
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4968
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4968
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4968

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4968

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub63 = sub i64 %20, 1, !dbg !4968
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4968
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4968
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4968

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4968

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub68 = sub i64 %21, 1, !dbg !4968
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4968
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4968
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4968

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4968

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub73 = sub i64 %22, 1, !dbg !4968
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4968
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4968
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4968

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4968

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub78 = sub i64 %23, 1, !dbg !4968
  %and79 = and i64 %sub78, 562949953421312, !dbg !4968
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4968
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4968

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4968

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub83 = sub i64 %24, 1, !dbg !4968
  %and84 = and i64 %sub83, 281474976710656, !dbg !4968
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4968
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4968

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4968

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub88 = sub i64 %25, 1, !dbg !4968
  %and89 = and i64 %sub88, 140737488355328, !dbg !4968
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4968
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4968

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4968

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub93 = sub i64 %26, 1, !dbg !4968
  %and94 = and i64 %sub93, 70368744177664, !dbg !4968
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4968
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4968

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4968

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub98 = sub i64 %27, 1, !dbg !4968
  %and99 = and i64 %sub98, 35184372088832, !dbg !4968
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4968
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4968

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4968

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub103 = sub i64 %28, 1, !dbg !4968
  %and104 = and i64 %sub103, 17592186044416, !dbg !4968
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4968
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4968

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4968

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub108 = sub i64 %29, 1, !dbg !4968
  %and109 = and i64 %sub108, 8796093022208, !dbg !4968
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4968
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4968

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4968

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub113 = sub i64 %30, 1, !dbg !4968
  %and114 = and i64 %sub113, 4398046511104, !dbg !4968
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4968
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4968

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4968

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub118 = sub i64 %31, 1, !dbg !4968
  %and119 = and i64 %sub118, 2199023255552, !dbg !4968
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4968
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4968

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4968

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub123 = sub i64 %32, 1, !dbg !4968
  %and124 = and i64 %sub123, 1099511627776, !dbg !4968
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4968
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4968

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4968

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub128 = sub i64 %33, 1, !dbg !4968
  %and129 = and i64 %sub128, 549755813888, !dbg !4968
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4968
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4968

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4968

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub133 = sub i64 %34, 1, !dbg !4968
  %and134 = and i64 %sub133, 274877906944, !dbg !4968
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4968
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4968

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4968

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub138 = sub i64 %35, 1, !dbg !4968
  %and139 = and i64 %sub138, 137438953472, !dbg !4968
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4968
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4968

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4968

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub143 = sub i64 %36, 1, !dbg !4968
  %and144 = and i64 %sub143, 68719476736, !dbg !4968
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4968
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4968

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4968

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub148 = sub i64 %37, 1, !dbg !4968
  %and149 = and i64 %sub148, 34359738368, !dbg !4968
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4968
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4968

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4968

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub153 = sub i64 %38, 1, !dbg !4968
  %and154 = and i64 %sub153, 17179869184, !dbg !4968
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4968
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4968

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4968

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub158 = sub i64 %39, 1, !dbg !4968
  %and159 = and i64 %sub158, 8589934592, !dbg !4968
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4968
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4968

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4968

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub163 = sub i64 %40, 1, !dbg !4968
  %and164 = and i64 %sub163, 4294967296, !dbg !4968
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4968
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4968

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4968

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub168 = sub i64 %41, 1, !dbg !4968
  %and169 = and i64 %sub168, 2147483648, !dbg !4968
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4968
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4968

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4968

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub173 = sub i64 %42, 1, !dbg !4968
  %and174 = and i64 %sub173, 1073741824, !dbg !4968
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4968
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4968

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4968

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub178 = sub i64 %43, 1, !dbg !4968
  %and179 = and i64 %sub178, 536870912, !dbg !4968
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4968
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4968

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4968

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub183 = sub i64 %44, 1, !dbg !4968
  %and184 = and i64 %sub183, 268435456, !dbg !4968
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4968
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4968

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4968

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub188 = sub i64 %45, 1, !dbg !4968
  %and189 = and i64 %sub188, 134217728, !dbg !4968
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4968
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4968

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4968

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub193 = sub i64 %46, 1, !dbg !4968
  %and194 = and i64 %sub193, 67108864, !dbg !4968
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4968
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4968

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4968

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub198 = sub i64 %47, 1, !dbg !4968
  %and199 = and i64 %sub198, 33554432, !dbg !4968
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4968
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4968

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4968

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub203 = sub i64 %48, 1, !dbg !4968
  %and204 = and i64 %sub203, 16777216, !dbg !4968
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4968
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4968

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4968

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub208 = sub i64 %49, 1, !dbg !4968
  %and209 = and i64 %sub208, 8388608, !dbg !4968
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4968
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4968

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4968

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub213 = sub i64 %50, 1, !dbg !4968
  %and214 = and i64 %sub213, 4194304, !dbg !4968
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4968
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4968

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4968

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub218 = sub i64 %51, 1, !dbg !4968
  %and219 = and i64 %sub218, 2097152, !dbg !4968
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4968
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4968

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4968

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub223 = sub i64 %52, 1, !dbg !4968
  %and224 = and i64 %sub223, 1048576, !dbg !4968
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4968
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4968

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4968

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub228 = sub i64 %53, 1, !dbg !4968
  %and229 = and i64 %sub228, 524288, !dbg !4968
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4968
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4968

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4968

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub233 = sub i64 %54, 1, !dbg !4968
  %and234 = and i64 %sub233, 262144, !dbg !4968
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4968
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4968

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4968

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub238 = sub i64 %55, 1, !dbg !4968
  %and239 = and i64 %sub238, 131072, !dbg !4968
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4968
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4968

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4968

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub243 = sub i64 %56, 1, !dbg !4968
  %and244 = and i64 %sub243, 65536, !dbg !4968
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4968
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4968

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4968

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub248 = sub i64 %57, 1, !dbg !4968
  %and249 = and i64 %sub248, 32768, !dbg !4968
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4968
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4968

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4968

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub253 = sub i64 %58, 1, !dbg !4968
  %and254 = and i64 %sub253, 16384, !dbg !4968
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4968
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4968

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4968

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub258 = sub i64 %59, 1, !dbg !4968
  %and259 = and i64 %sub258, 8192, !dbg !4968
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4968
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4968

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4968

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub263 = sub i64 %60, 1, !dbg !4968
  %and264 = and i64 %sub263, 4096, !dbg !4968
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4968
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4968

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4968

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub268 = sub i64 %61, 1, !dbg !4968
  %and269 = and i64 %sub268, 2048, !dbg !4968
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4968
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4968

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4968

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub273 = sub i64 %62, 1, !dbg !4968
  %and274 = and i64 %sub273, 1024, !dbg !4968
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4968
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4968

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4968

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub278 = sub i64 %63, 1, !dbg !4968
  %and279 = and i64 %sub278, 512, !dbg !4968
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4968
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4968

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4968

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub283 = sub i64 %64, 1, !dbg !4968
  %and284 = and i64 %sub283, 256, !dbg !4968
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4968
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4968

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4968

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub288 = sub i64 %65, 1, !dbg !4968
  %and289 = and i64 %sub288, 128, !dbg !4968
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4968
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4968

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4968

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub293 = sub i64 %66, 1, !dbg !4968
  %and294 = and i64 %sub293, 64, !dbg !4968
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4968
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4968

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4968

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub298 = sub i64 %67, 1, !dbg !4968
  %and299 = and i64 %sub298, 32, !dbg !4968
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4968
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4968

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4968

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub303 = sub i64 %68, 1, !dbg !4968
  %and304 = and i64 %sub303, 16, !dbg !4968
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4968
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4968

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4968

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub308 = sub i64 %69, 1, !dbg !4968
  %and309 = and i64 %sub308, 8, !dbg !4968
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4968
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4968

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4968

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub313 = sub i64 %70, 1, !dbg !4968
  %and314 = and i64 %sub313, 4, !dbg !4968
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4968
  %71 = zext i1 %tobool315 to i64, !dbg !4968
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4968
  br label %cond.end, !dbg !4968

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4968
  br label %cond.end317, !dbg !4968

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4968
  br label %cond.end319, !dbg !4968

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4968
  br label %cond.end321, !dbg !4968

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4968
  br label %cond.end323, !dbg !4968

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4968
  br label %cond.end325, !dbg !4968

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4968
  br label %cond.end327, !dbg !4968

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4968
  br label %cond.end329, !dbg !4968

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4968
  br label %cond.end331, !dbg !4968

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4968
  br label %cond.end333, !dbg !4968

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4968
  br label %cond.end335, !dbg !4968

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4968
  br label %cond.end337, !dbg !4968

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4968
  br label %cond.end339, !dbg !4968

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4968
  br label %cond.end341, !dbg !4968

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4968
  br label %cond.end343, !dbg !4968

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4968
  br label %cond.end345, !dbg !4968

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4968
  br label %cond.end347, !dbg !4968

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4968
  br label %cond.end349, !dbg !4968

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4968
  br label %cond.end351, !dbg !4968

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4968
  br label %cond.end353, !dbg !4968

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4968
  br label %cond.end355, !dbg !4968

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4968
  br label %cond.end357, !dbg !4968

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4968
  br label %cond.end359, !dbg !4968

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4968
  br label %cond.end361, !dbg !4968

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4968
  br label %cond.end363, !dbg !4968

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4968
  br label %cond.end365, !dbg !4968

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4968
  br label %cond.end367, !dbg !4968

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4968
  br label %cond.end369, !dbg !4968

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4968
  br label %cond.end371, !dbg !4968

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4968
  br label %cond.end373, !dbg !4968

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4968
  br label %cond.end375, !dbg !4968

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4968
  br label %cond.end377, !dbg !4968

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4968
  br label %cond.end379, !dbg !4968

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4968
  br label %cond.end381, !dbg !4968

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4968
  br label %cond.end383, !dbg !4968

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4968
  br label %cond.end385, !dbg !4968

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4968
  br label %cond.end387, !dbg !4968

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4968
  br label %cond.end389, !dbg !4968

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4968
  br label %cond.end391, !dbg !4968

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4968
  br label %cond.end393, !dbg !4968

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4968
  br label %cond.end395, !dbg !4968

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4968
  br label %cond.end397, !dbg !4968

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4968
  br label %cond.end399, !dbg !4968

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4968
  br label %cond.end401, !dbg !4968

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4968
  br label %cond.end403, !dbg !4968

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4968
  br label %cond.end405, !dbg !4968

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4968
  br label %cond.end407, !dbg !4968

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4968
  br label %cond.end409, !dbg !4968

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4968
  br label %cond.end411, !dbg !4968

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4968
  br label %cond.end413, !dbg !4968

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4968
  br label %cond.end415, !dbg !4968

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4968
  br label %cond.end417, !dbg !4968

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4968
  br label %cond.end419, !dbg !4968

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4968
  br label %cond.end421, !dbg !4968

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4968
  br label %cond.end423, !dbg !4968

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4968
  br label %cond.end425, !dbg !4968

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4968
  br label %cond.end427, !dbg !4968

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4968
  br label %cond.end429, !dbg !4968

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4968
  br label %cond.end431, !dbg !4968

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4968
  br label %cond.end433, !dbg !4968

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4968
  br label %cond.end435, !dbg !4968

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4968
  br label %cond.end437, !dbg !4968

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4968
  br label %cond.end440, !dbg !4968

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4968

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4968
  br label %cond.end444, !dbg !4968

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4968
  %sub443 = sub i64 %72, 1, !dbg !4968
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4968
  br label %cond.end444, !dbg !4968

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4968
  %sub446 = sub i32 %cond445, 12, !dbg !4969
  %add = add i32 %sub446, 1, !dbg !4970
  store i32 %add, i32* %retval, align 4, !dbg !4971
  br label %return, !dbg !4971

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4972
  %dec = add i64 %73, -1, !dbg !4972
  store i64 %dec, i64* %size.addr, align 8, !dbg !4972
  %74 = load i64, i64* %size.addr, align 8, !dbg !4973
  %shr = lshr i64 %74, 12, !dbg !4973
  store i64 %shr, i64* %size.addr, align 8, !dbg !4973
  %75 = load i64, i64* %size.addr, align 8, !dbg !4974
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4951
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4975
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4976
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4975, !srcloc !4977
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4975
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4978
  %add.i = add i32 %79, 1, !dbg !4979
  store i32 %add.i, i32* %retval, align 4, !dbg !4980
  br label %return, !dbg !4980

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4981
  ret i32 %80, !dbg !4981
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4982 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4943, metadata !DIExpression()), !dbg !4986
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4950, metadata !DIExpression()), !dbg !4988
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4989, metadata !DIExpression()), !dbg !4990
  %0 = load i64, i64* %n.addr, align 8, !dbg !4991
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4988
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4992
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4993
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4992, !srcloc !4977
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4992
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4994
  %add.i = add i32 %4, 1, !dbg !4995
  %sub = sub i32 %add.i, 1, !dbg !4996
  ret i32 %sub, !dbg !4997
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4998 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5002, metadata !DIExpression()), !dbg !5003
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5004, metadata !DIExpression()), !dbg !5005
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5010
  ret i8* %0, !dbg !5011
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @atbm8830_release(%struct.dvb_frontend* %fe) #0 !dbg !5012 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %state = alloca %struct.atbm_state*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5013, metadata !DIExpression()), !dbg !5014
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %state, metadata !5015, metadata !DIExpression()), !dbg !5016
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5017
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5018
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5018
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !5017
  store %struct.atbm_state* %2, %struct.atbm_state** %state, align 8, !dbg !5016
  br label %do.body, !dbg !5019

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5020
  %tobool = icmp ne i32 %3, 0, !dbg !5020
  br i1 %tobool, label %if.then, label %if.end, !dbg !5023

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.atbm8830_release, i64 0, i64 0)) #8, !dbg !5020
  br label %if.end, !dbg !5020

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5023

do.end:                                           ; preds = %if.end
  %4 = load %struct.atbm_state*, %struct.atbm_state** %state, align 8, !dbg !5024
  %5 = bitcast %struct.atbm_state* %4 to i8*, !dbg !5024
  call void @kfree(i8* %5) #9, !dbg !5025
  ret void, !dbg !5026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_set_fe(%struct.dvb_frontend* %fe) #0 !dbg !5027 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %i = alloca i32, align 4
  %locked = alloca i8, align 1
  %__ms = alloca i64, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !5030, metadata !DIExpression()), !dbg !5031
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5032
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5033
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5033
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !5032
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !5031
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5034, metadata !DIExpression()), !dbg !5035
  call void @llvm.dbg.declare(metadata i8* %locked, metadata !5036, metadata !DIExpression()), !dbg !5037
  store i8 0, i8* %locked, align 1, !dbg !5037
  br label %do.body, !dbg !5038

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5039
  %tobool = icmp ne i32 %3, 0, !dbg !5039
  br i1 %tobool, label %if.then, label %if.end, !dbg !5042

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.atbm8830_set_fe, i64 0, i64 0)) #8, !dbg !5039
  br label %if.end, !dbg !5039

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5042

do.end:                                           ; preds = %if.end
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5043
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 1, !dbg !5045
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5046
  %set_params = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 6, !dbg !5047
  %5 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params, align 8, !dbg !5047
  %tobool1 = icmp ne i32 (%struct.dvb_frontend*)* %5, null, !dbg !5043
  br i1 %tobool1, label %if.then2, label %if.end22, !dbg !5048

if.then2:                                         ; preds = %do.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5049
  %ops3 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1, !dbg !5052
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops3, i32 0, i32 26, !dbg !5053
  %7 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5053
  %tobool4 = icmp ne i32 (%struct.dvb_frontend*, i32)* %7, null, !dbg !5049
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !5054

if.then5:                                         ; preds = %if.then2
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5055
  %ops6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 1, !dbg !5056
  %i2c_gate_ctrl7 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops6, i32 0, i32 26, !dbg !5057
  %9 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl7, align 8, !dbg !5057
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5058
  %call8 = call i32 %9(%struct.dvb_frontend* %10, i32 1) #9, !dbg !5055
  br label %if.end9, !dbg !5055

if.end9:                                          ; preds = %if.then5, %if.then2
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5059
  %ops10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5060
  %tuner_ops11 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops10, i32 0, i32 30, !dbg !5061
  %set_params12 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops11, i32 0, i32 6, !dbg !5062
  %12 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %set_params12, align 8, !dbg !5062
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5063
  %call13 = call i32 %12(%struct.dvb_frontend* %13) #9, !dbg !5059
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5064
  %ops14 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1, !dbg !5066
  %i2c_gate_ctrl15 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops14, i32 0, i32 26, !dbg !5067
  %15 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl15, align 8, !dbg !5067
  %tobool16 = icmp ne i32 (%struct.dvb_frontend*, i32)* %15, null, !dbg !5064
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !5068

if.then17:                                        ; preds = %if.end9
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5069
  %ops18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 1, !dbg !5070
  %i2c_gate_ctrl19 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops18, i32 0, i32 26, !dbg !5071
  %17 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl19, align 8, !dbg !5071
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5072
  %call20 = call i32 %17(%struct.dvb_frontend* %18, i32 0) #9, !dbg !5069
  br label %if.end21, !dbg !5069

if.end21:                                         ; preds = %if.then17, %if.end9
  br label %if.end22, !dbg !5073

if.end22:                                         ; preds = %if.end21, %do.end
  store i32 0, i32* %i, align 4, !dbg !5074
  br label %for.cond, !dbg !5076

for.cond:                                         ; preds = %for.inc, %if.end22
  %19 = load i32, i32* %i, align 4, !dbg !5077
  %cmp = icmp slt i32 %19, 10, !dbg !5079
  br i1 %cmp, label %for.body, label %for.end, !dbg !5080

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %__ms, metadata !5081, metadata !DIExpression()), !dbg !5084
  store i64 100, i64* %__ms, align 8, !dbg !5084
  br label %while.cond, !dbg !5084

while.cond:                                       ; preds = %while.body, %for.body
  %20 = load i64, i64* %__ms, align 8, !dbg !5084
  %dec = add i64 %20, -1, !dbg !5084
  store i64 %dec, i64* %__ms, align 8, !dbg !5084
  %tobool23 = icmp ne i64 %20, 0, !dbg !5084
  br i1 %tobool23, label %while.body, label %while.end, !dbg !5084

while.body:                                       ; preds = %while.cond
  call void @__const_udelay(i64 4295000) #9, !dbg !5085
  br label %while.cond, !dbg !5084, !llvm.loop !5090

while.end:                                        ; preds = %while.cond
  br label %do.body24, !dbg !5091

do.body24:                                        ; preds = %while.end
  %21 = load i32, i32* @debug, align 4, !dbg !5092
  %tobool25 = icmp ne i32 %21, 0, !dbg !5092
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !5095

if.then26:                                        ; preds = %do.body24
  %22 = load i32, i32* %i, align 4, !dbg !5092
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %22) #8, !dbg !5092
  br label %if.end28, !dbg !5092

if.end28:                                         ; preds = %if.then26, %do.body24
  br label %do.end29, !dbg !5095

do.end29:                                         ; preds = %if.end28
  %23 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5096
  %call30 = call i32 @is_locked(%struct.atbm_state* %23, i8* %locked) #9, !dbg !5097
  %24 = load i8, i8* %locked, align 1, !dbg !5098
  %conv = zext i8 %24 to i32, !dbg !5098
  %cmp31 = icmp ne i32 %conv, 0, !dbg !5100
  br i1 %cmp31, label %if.then33, label %if.end40, !dbg !5101

if.then33:                                        ; preds = %do.end29
  br label %do.body34, !dbg !5102

do.body34:                                        ; preds = %if.then33
  %25 = load i32, i32* @debug, align 4, !dbg !5104
  %tobool35 = icmp ne i32 %25, 0, !dbg !5104
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !5107

if.then36:                                        ; preds = %do.body34
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !5104
  br label %if.end38, !dbg !5104

if.end38:                                         ; preds = %if.then36, %do.body34
  br label %do.end39, !dbg !5107

do.end39:                                         ; preds = %if.end38
  br label %for.end, !dbg !5108

if.end40:                                         ; preds = %do.end29
  br label %for.inc, !dbg !5109

for.inc:                                          ; preds = %if.end40
  %26 = load i32, i32* %i, align 4, !dbg !5110
  %inc = add i32 %26, 1, !dbg !5110
  store i32 %inc, i32* %i, align 4, !dbg !5110
  br label %for.cond, !dbg !5111, !llvm.loop !5112

for.end:                                          ; preds = %do.end39, %for.cond
  ret i32 0, !dbg !5114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_get_tune_settings(%struct.dvb_frontend* %fe, %struct.dvb_frontend_tune_settings* %fesettings) #0 !dbg !5115 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fesettings.addr = alloca %struct.dvb_frontend_tune_settings*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5116, metadata !DIExpression()), !dbg !5117
  store %struct.dvb_frontend_tune_settings* %fesettings, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend_tune_settings** %fesettings.addr, metadata !5118, metadata !DIExpression()), !dbg !5119
  %0 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5120
  %min_delay_ms = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %0, i32 0, i32 0, !dbg !5121
  store i32 0, i32* %min_delay_ms, align 4, !dbg !5122
  %1 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5123
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %1, i32 0, i32 1, !dbg !5124
  store i32 0, i32* %step_size, align 4, !dbg !5125
  %2 = load %struct.dvb_frontend_tune_settings*, %struct.dvb_frontend_tune_settings** %fesettings.addr, align 8, !dbg !5126
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, %struct.dvb_frontend_tune_settings* %2, i32 0, i32 2, !dbg !5127
  store i32 0, i32* %max_drift, align 4, !dbg !5128
  ret i32 0, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_get_fe(%struct.dvb_frontend* %fe, %struct.dtv_frontend_properties* %c) #0 !dbg !5130 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c.addr = alloca %struct.dtv_frontend_properties*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  store %struct.dtv_frontend_properties* %c, %struct.dtv_frontend_properties** %c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  br label %do.body, !dbg !5135

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5136
  %tobool = icmp ne i32 %0, 0, !dbg !5136
  br i1 %tobool, label %if.then, label %if.end, !dbg !5139

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.atbm8830_get_fe, i64 0, i64 0)) #8, !dbg !5136
  br label %if.end, !dbg !5136

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5139

do.end:                                           ; preds = %if.end
  %1 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5140
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %1, i32 0, i32 4, !dbg !5141
  store i32 0, i32* %inversion, align 4, !dbg !5142
  %2 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5143
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %2, i32 0, i32 7, !dbg !5144
  store i32 8000000, i32* %bandwidth_hz, align 4, !dbg !5145
  %3 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5146
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %3, i32 0, i32 11, !dbg !5147
  store i32 9, i32* %code_rate_HP, align 4, !dbg !5148
  %4 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5149
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %4, i32 0, i32 12, !dbg !5150
  store i32 9, i32* %code_rate_LP, align 4, !dbg !5151
  %5 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5152
  %modulation = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %5, i32 0, i32 1, !dbg !5153
  store i32 6, i32* %modulation, align 4, !dbg !5154
  %6 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5155
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %6, i32 0, i32 6, !dbg !5156
  store i32 2, i32* %transmission_mode, align 4, !dbg !5157
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5158
  %guard_interval = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 8, !dbg !5159
  store i32 4, i32* %guard_interval, align 4, !dbg !5160
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c.addr, align 8, !dbg !5161
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 9, !dbg !5162
  store i32 0, i32* %hierarchy, align 4, !dbg !5163
  ret i32 0, !dbg !5164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_status(%struct.dvb_frontend* %fe, i32* %fe_status) #0 !dbg !5165 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %fe_status.addr = alloca i32*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %locked = alloca i8, align 1
  %agc_locked = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5166, metadata !DIExpression()), !dbg !5167
  store i32* %fe_status, i32** %fe_status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %fe_status.addr, metadata !5168, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !5170, metadata !DIExpression()), !dbg !5171
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5172
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5173
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5173
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !5172
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !5171
  call void @llvm.dbg.declare(metadata i8* %locked, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i8 0, i8* %locked, align 1, !dbg !5175
  call void @llvm.dbg.declare(metadata i8* %agc_locked, metadata !5176, metadata !DIExpression()), !dbg !5177
  store i8 0, i8* %agc_locked, align 1, !dbg !5177
  br label %do.body, !dbg !5178

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5179
  %tobool = icmp ne i32 %3, 0, !dbg !5179
  br i1 %tobool, label %if.then, label %if.end, !dbg !5182

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.atbm8830_read_status, i64 0, i64 0)) #8, !dbg !5179
  br label %if.end, !dbg !5179

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5182

do.end:                                           ; preds = %if.end
  %4 = load i32*, i32** %fe_status.addr, align 8, !dbg !5183
  store i32 0, i32* %4, align 4, !dbg !5184
  %5 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5185
  %call1 = call i32 @is_locked(%struct.atbm_state* %5, i8* %locked) #9, !dbg !5186
  %6 = load i8, i8* %locked, align 1, !dbg !5187
  %tobool2 = icmp ne i8 %6, 0, !dbg !5187
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5189

if.then3:                                         ; preds = %do.end
  %7 = load i32*, i32** %fe_status.addr, align 8, !dbg !5190
  %8 = load i32, i32* %7, align 4, !dbg !5192
  %or = or i32 %8, 31, !dbg !5192
  store i32 %or, i32* %7, align 4, !dbg !5192
  br label %if.end4, !dbg !5193

if.end4:                                          ; preds = %if.then3, %do.end
  br label %do.body5, !dbg !5194

do.body5:                                         ; preds = %if.end4
  %9 = load i32, i32* @debug, align 4, !dbg !5195
  %tobool6 = icmp ne i32 %9, 0, !dbg !5195
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5198

if.then7:                                         ; preds = %do.body5
  %10 = load i32*, i32** %fe_status.addr, align 8, !dbg !5195
  %11 = load i32, i32* %10, align 4, !dbg !5195
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.atbm8830_read_status, i64 0, i64 0), i32 %11) #8, !dbg !5195
  br label %if.end9, !dbg !5195

if.end9:                                          ; preds = %if.then7, %do.body5
  br label %do.end10, !dbg !5198

do.end10:                                         ; preds = %if.end9
  %12 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5199
  %call11 = call i32 @atbm8830_read_reg(%struct.atbm_state* %12, i16 zeroext 4135, i8* %agc_locked) #9, !dbg !5200
  br label %do.body12, !dbg !5201

do.body12:                                        ; preds = %do.end10
  %13 = load i32, i32* @debug, align 4, !dbg !5202
  %tobool13 = icmp ne i32 %13, 0, !dbg !5202
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !5205

if.then14:                                        ; preds = %do.body12
  %14 = load i8, i8* %agc_locked, align 1, !dbg !5202
  %conv = zext i8 %14 to i32, !dbg !5202
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0), i32 %conv) #8, !dbg !5202
  br label %if.end16, !dbg !5202

if.end16:                                         ; preds = %if.then14, %do.body12
  br label %do.end17, !dbg !5205

do.end17:                                         ; preds = %if.end16
  ret i32 0, !dbg !5206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_ber(%struct.dvb_frontend* %fe, i32* %ber) #0 !dbg !5207 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ber.addr = alloca i32*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %frame_err = alloca i32, align 4
  %t = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  store i32* %ber, i32** %ber.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ber.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5214
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5215
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5215
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !5214
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !5213
  call void @llvm.dbg.declare(metadata i32* %frame_err, metadata !5216, metadata !DIExpression()), !dbg !5217
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5218, metadata !DIExpression()), !dbg !5219
  br label %do.body, !dbg !5220

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5221
  %tobool = icmp ne i32 %3, 0, !dbg !5221
  br i1 %tobool, label %if.then, label %if.end, !dbg !5224

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.atbm8830_read_ber, i64 0, i64 0)) #8, !dbg !5221
  br label %if.end, !dbg !5221

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5224

do.end:                                           ; preds = %if.end
  %4 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5225
  %call1 = call i32 @atbm8830_reglatch_lock(%struct.atbm_state* %4, i32 1) #9, !dbg !5226
  %5 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5227
  %call2 = call i32 @atbm8830_read_reg(%struct.atbm_state* %5, i16 zeroext 2821, i8* %t) #9, !dbg !5228
  %6 = load i8, i8* %t, align 1, !dbg !5229
  %conv = zext i8 %6 to i32, !dbg !5229
  %and = and i32 %conv, 127, !dbg !5230
  store i32 %and, i32* %frame_err, align 4, !dbg !5231
  %7 = load i32, i32* %frame_err, align 4, !dbg !5232
  %shl = shl i32 %7, 8, !dbg !5232
  store i32 %shl, i32* %frame_err, align 4, !dbg !5232
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5233
  %call3 = call i32 @atbm8830_read_reg(%struct.atbm_state* %8, i16 zeroext 2820, i8* %t) #9, !dbg !5234
  %9 = load i8, i8* %t, align 1, !dbg !5235
  %conv4 = zext i8 %9 to i32, !dbg !5235
  %10 = load i32, i32* %frame_err, align 4, !dbg !5236
  %or = or i32 %10, %conv4, !dbg !5236
  store i32 %or, i32* %frame_err, align 4, !dbg !5236
  %11 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5237
  %call5 = call i32 @atbm8830_reglatch_lock(%struct.atbm_state* %11, i32 0) #9, !dbg !5238
  %12 = load i32, i32* %frame_err, align 4, !dbg !5239
  %mul = mul i32 %12, 100, !dbg !5240
  %div = udiv i32 %mul, 32767, !dbg !5241
  %13 = load i32*, i32** %ber.addr, align 8, !dbg !5242
  store i32 %div, i32* %13, align 4, !dbg !5243
  br label %do.body6, !dbg !5244

do.body6:                                         ; preds = %do.end
  %14 = load i32, i32* @debug, align 4, !dbg !5245
  %tobool7 = icmp ne i32 %14, 0, !dbg !5245
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5248

if.then8:                                         ; preds = %do.body6
  %15 = load i32*, i32** %ber.addr, align 8, !dbg !5245
  %16 = load i32, i32* %15, align 4, !dbg !5245
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.atbm8830_read_ber, i64 0, i64 0), i32 %16) #8, !dbg !5245
  br label %if.end10, !dbg !5245

if.end10:                                         ; preds = %if.then8, %do.body6
  br label %do.end11, !dbg !5248

do.end11:                                         ; preds = %if.end10
  ret i32 0, !dbg !5249
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_signal_strength(%struct.dvb_frontend* %fe, i16* %signal) #0 !dbg !5250 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %signal.addr = alloca i16*, align 8
  %priv = alloca %struct.atbm_state*, align 8
  %pwm = alloca i32, align 4
  %t = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  store i16* %signal, i16** %signal.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %signal.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5257
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 3, !dbg !5258
  %1 = load i8*, i8** %demodulator_priv, align 8, !dbg !5258
  %2 = bitcast i8* %1 to %struct.atbm_state*, !dbg !5257
  store %struct.atbm_state* %2, %struct.atbm_state** %priv, align 8, !dbg !5256
  call void @llvm.dbg.declare(metadata i32* %pwm, metadata !5259, metadata !DIExpression()), !dbg !5260
  call void @llvm.dbg.declare(metadata i8* %t, metadata !5261, metadata !DIExpression()), !dbg !5262
  br label %do.body, !dbg !5263

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5264
  %tobool = icmp ne i32 %3, 0, !dbg !5264
  br i1 %tobool, label %if.then, label %if.end, !dbg !5267

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.atbm8830_read_signal_strength, i64 0, i64 0)) #8, !dbg !5264
  br label %if.end, !dbg !5264

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5267

do.end:                                           ; preds = %if.end
  %4 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5268
  %call1 = call i32 @atbm8830_reglatch_lock(%struct.atbm_state* %4, i32 1) #9, !dbg !5269
  %5 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5270
  %call2 = call i32 @atbm8830_read_reg(%struct.atbm_state* %5, i16 zeroext 4137, i8* %t) #9, !dbg !5271
  %6 = load i8, i8* %t, align 1, !dbg !5272
  %conv = zext i8 %6 to i32, !dbg !5272
  %and = and i32 %conv, 3, !dbg !5273
  store i32 %and, i32* %pwm, align 4, !dbg !5274
  %7 = load i32, i32* %pwm, align 4, !dbg !5275
  %shl = shl i32 %7, 8, !dbg !5275
  store i32 %shl, i32* %pwm, align 4, !dbg !5275
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5276
  %call3 = call i32 @atbm8830_read_reg(%struct.atbm_state* %8, i16 zeroext 4136, i8* %t) #9, !dbg !5277
  %9 = load i8, i8* %t, align 1, !dbg !5278
  %conv4 = zext i8 %9 to i32, !dbg !5278
  %10 = load i32, i32* %pwm, align 4, !dbg !5279
  %or = or i32 %10, %conv4, !dbg !5279
  store i32 %or, i32* %pwm, align 4, !dbg !5279
  %11 = load %struct.atbm_state*, %struct.atbm_state** %priv, align 8, !dbg !5280
  %call5 = call i32 @atbm8830_reglatch_lock(%struct.atbm_state* %11, i32 0) #9, !dbg !5281
  br label %do.body6, !dbg !5282

do.body6:                                         ; preds = %do.end
  %12 = load i32, i32* @debug, align 4, !dbg !5283
  %tobool7 = icmp ne i32 %12, 0, !dbg !5283
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !5286

if.then8:                                         ; preds = %do.body6
  %13 = load i32, i32* %pwm, align 4, !dbg !5283
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i32 %13) #8, !dbg !5283
  br label %if.end10, !dbg !5283

if.end10:                                         ; preds = %if.then8, %do.body6
  br label %do.end11, !dbg !5286

do.end11:                                         ; preds = %if.end10
  %14 = load i32, i32* %pwm, align 4, !dbg !5287
  %sub = sub i32 1024, %14, !dbg !5288
  store i32 %sub, i32* %pwm, align 4, !dbg !5289
  %15 = load i32, i32* %pwm, align 4, !dbg !5290
  %mul = mul i32 %15, 65536, !dbg !5291
  %div = udiv i32 %mul, 1024, !dbg !5292
  %conv12 = trunc i32 %div to i16, !dbg !5290
  %16 = load i16*, i16** %signal.addr, align 8, !dbg !5293
  store i16 %conv12, i16* %16, align 2, !dbg !5294
  ret i32 0, !dbg !5295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_snr(%struct.dvb_frontend* %fe, i16* %snr) #0 !dbg !5296 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %snr.addr = alloca i16*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  store i16* %snr, i16** %snr.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %snr.addr, metadata !5299, metadata !DIExpression()), !dbg !5300
  br label %do.body, !dbg !5301

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5302
  %tobool = icmp ne i32 %0, 0, !dbg !5302
  br i1 %tobool, label %if.then, label %if.end, !dbg !5305

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.atbm8830_read_snr, i64 0, i64 0)) #8, !dbg !5302
  br label %if.end, !dbg !5302

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5305

do.end:                                           ; preds = %if.end
  %1 = load i16*, i16** %snr.addr, align 8, !dbg !5306
  store i16 0, i16* %1, align 2, !dbg !5307
  ret i32 0, !dbg !5308
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_read_ucblocks(%struct.dvb_frontend* %fe, i32* %ucblocks) #0 !dbg !5309 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ucblocks.addr = alloca i32*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5310, metadata !DIExpression()), !dbg !5311
  store i32* %ucblocks, i32** %ucblocks.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %ucblocks.addr, metadata !5312, metadata !DIExpression()), !dbg !5313
  br label %do.body, !dbg !5314

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !5315
  %tobool = icmp ne i32 %0, 0, !dbg !5315
  br i1 %tobool, label %if.then, label %if.end, !dbg !5318

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.atbm8830_read_ucblocks, i64 0, i64 0)) #8, !dbg !5315
  br label %if.end, !dbg !5315

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5318

do.end:                                           ; preds = %if.end
  %1 = load i32*, i32** %ucblocks.addr, align 8, !dbg !5319
  store i32 0, i32* %1, align 4, !dbg !5320
  ret i32 0, !dbg !5321
}

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @is_locked(%struct.atbm_state* %priv, i8* %locked) #0 !dbg !5322 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %locked.addr = alloca i8*, align 8
  %status = alloca i8, align 1
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  store i8* %locked, i8** %locked.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %locked.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.declare(metadata i8* %status, metadata !5329, metadata !DIExpression()), !dbg !5330
  %0 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5331
  %call = call i32 @atbm8830_read_reg(%struct.atbm_state* %0, i16 zeroext 781, i8* %status) #9, !dbg !5332
  %1 = load i8*, i8** %locked.addr, align 8, !dbg !5333
  %cmp = icmp ne i8* %1, null, !dbg !5335
  br i1 %cmp, label %if.then, label %if.end, !dbg !5336

if.then:                                          ; preds = %entry
  %2 = load i8, i8* %status, align 1, !dbg !5337
  %conv = zext i8 %2 to i32, !dbg !5337
  %cmp1 = icmp eq i32 %conv, 1, !dbg !5338
  %conv2 = zext i1 %cmp1 to i32, !dbg !5338
  %conv3 = trunc i32 %conv2 to i8, !dbg !5339
  %3 = load i8*, i8** %locked.addr, align 8, !dbg !5340
  store i8 %conv3, i8* %3, align 1, !dbg !5341
  br label %if.end, !dbg !5342

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5343
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_reglatch_lock(%struct.atbm_state* %priv, i32 %lock) #0 !dbg !5344 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %lock.addr = alloca i32, align 4
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5347, metadata !DIExpression()), !dbg !5348
  store i32 %lock, i32* %lock.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %lock.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  %0 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5351
  %1 = load i32, i32* %lock.addr, align 4, !dbg !5352
  %tobool = icmp ne i32 %1, 0, !dbg !5352
  %2 = zext i1 %tobool to i64, !dbg !5352
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5352
  %conv = trunc i32 %cond to i8, !dbg !5352
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %0, i16 zeroext 2125, i8 zeroext %conv) #9, !dbg !5353
  ret i32 %call, !dbg !5354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @atbm8830_write_reg(%struct.atbm_state* %priv, i16 zeroext %reg, i8 zeroext %data) #0 !dbg !5355 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.atbm_state*, align 8
  %reg.addr = alloca i16, align 2
  %data.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  %dev_addr = alloca i8, align 1
  %buf1 = alloca [2 x i8], align 1
  %buf2 = alloca [1 x i8], align 1
  %msg1 = alloca %struct.i2c_msg, align 8
  %msg2 = alloca %struct.i2c_msg, align 8
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5358, metadata !DIExpression()), !dbg !5359
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !5360, metadata !DIExpression()), !dbg !5361
  store i8 %data, i8* %data.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %data.addr, metadata !5362, metadata !DIExpression()), !dbg !5363
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5364, metadata !DIExpression()), !dbg !5365
  store i32 0, i32* %ret, align 4, !dbg !5365
  call void @llvm.dbg.declare(metadata i8* %dev_addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf1, metadata !5368, metadata !DIExpression()), !dbg !5369
  %arrayinit.begin = getelementptr inbounds [2 x i8], [2 x i8]* %buf1, i64 0, i64 0, !dbg !5370
  %0 = load i16, i16* %reg.addr, align 2, !dbg !5371
  %conv = zext i16 %0 to i32, !dbg !5371
  %shr = ashr i32 %conv, 8, !dbg !5372
  %conv1 = trunc i32 %shr to i8, !dbg !5371
  store i8 %conv1, i8* %arrayinit.begin, align 1, !dbg !5370
  %arrayinit.element = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !5370
  %1 = load i16, i16* %reg.addr, align 2, !dbg !5373
  %conv2 = zext i16 %1 to i32, !dbg !5373
  %and = and i32 %conv2, 255, !dbg !5374
  %conv3 = trunc i32 %and to i8, !dbg !5373
  store i8 %conv3, i8* %arrayinit.element, align 1, !dbg !5370
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf2, metadata !5375, metadata !DIExpression()), !dbg !5376
  %arrayinit.begin4 = getelementptr inbounds [1 x i8], [1 x i8]* %buf2, i64 0, i64 0, !dbg !5377
  %2 = load i8, i8* %data.addr, align 1, !dbg !5378
  store i8 %2, i8* %arrayinit.begin4, align 1, !dbg !5377
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg1, metadata !5379, metadata !DIExpression()), !dbg !5380
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 0, !dbg !5381
  store i16 0, i16* %addr, align 8, !dbg !5381
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 1, !dbg !5381
  store i16 0, i16* %flags, align 2, !dbg !5381
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 2, !dbg !5381
  store i16 2, i16* %len, align 4, !dbg !5381
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 3, !dbg !5381
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf1, i64 0, i64 0, !dbg !5382
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5381
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg2, metadata !5383, metadata !DIExpression()), !dbg !5384
  %addr5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 0, !dbg !5385
  store i16 0, i16* %addr5, align 8, !dbg !5385
  %flags6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 1, !dbg !5385
  store i16 0, i16* %flags6, align 2, !dbg !5385
  %len7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 2, !dbg !5385
  store i16 1, i16* %len7, align 4, !dbg !5385
  %buf8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 3, !dbg !5385
  %arraydecay9 = getelementptr inbounds [1 x i8], [1 x i8]* %buf2, i64 0, i64 0, !dbg !5386
  store i8* %arraydecay9, i8** %buf8, align 8, !dbg !5385
  %3 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5387
  %config = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %3, i32 0, i32 1, !dbg !5388
  %4 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config, align 8, !dbg !5388
  %demod_address = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %4, i32 0, i32 1, !dbg !5389
  %5 = load i8, i8* %demod_address, align 1, !dbg !5389
  store i8 %5, i8* %dev_addr, align 1, !dbg !5390
  %6 = load i8, i8* %dev_addr, align 1, !dbg !5391
  %conv10 = zext i8 %6 to i16, !dbg !5391
  %addr11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg1, i32 0, i32 0, !dbg !5392
  store i16 %conv10, i16* %addr11, align 8, !dbg !5393
  %7 = load i8, i8* %dev_addr, align 1, !dbg !5394
  %conv12 = zext i8 %7 to i16, !dbg !5394
  %addr13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg2, i32 0, i32 0, !dbg !5395
  store i16 %conv12, i16* %addr13, align 8, !dbg !5396
  %8 = load i32, i32* @debug, align 4, !dbg !5397
  %cmp = icmp sge i32 %8, 2, !dbg !5399
  br i1 %cmp, label %if.then, label %if.end18, !dbg !5400

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5401

do.body:                                          ; preds = %if.then
  %9 = load i32, i32* @debug, align 4, !dbg !5402
  %tobool = icmp ne i32 %9, 0, !dbg !5402
  br i1 %tobool, label %if.then15, label %if.end, !dbg !5405

if.then15:                                        ; preds = %do.body
  %10 = load i16, i16* %reg.addr, align 2, !dbg !5402
  %conv16 = zext i16 %10 to i32, !dbg !5402
  %11 = load i8, i8* %data.addr, align 1, !dbg !5402
  %conv17 = zext i8 %11 to i32, !dbg !5402
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.atbm8830_write_reg, i64 0, i64 0), i32 %conv16, i32 %conv17) #8, !dbg !5402
  br label %if.end, !dbg !5402

if.end:                                           ; preds = %if.then15, %do.body
  br label %do.end, !dbg !5405

do.end:                                           ; preds = %if.end
  br label %if.end18, !dbg !5405

if.end18:                                         ; preds = %do.end, %entry
  %12 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5406
  %i2c = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %12, i32 0, i32 0, !dbg !5407
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !5407
  %call19 = call i32 @i2c_transfer(%struct.i2c_adapter* %13, %struct.i2c_msg* %msg1, i32 1) #9, !dbg !5408
  store i32 %call19, i32* %ret, align 4, !dbg !5409
  %14 = load i32, i32* %ret, align 4, !dbg !5410
  %cmp20 = icmp ne i32 %14, 1, !dbg !5412
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !5413

if.then22:                                        ; preds = %if.end18
  store i32 -5, i32* %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end23:                                         ; preds = %if.end18
  %15 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5415
  %i2c24 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %15, i32 0, i32 0, !dbg !5416
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c24, align 8, !dbg !5416
  %call25 = call i32 @i2c_transfer(%struct.i2c_adapter* %16, %struct.i2c_msg* %msg2, i32 1) #9, !dbg !5417
  store i32 %call25, i32* %ret, align 4, !dbg !5418
  %17 = load i32, i32* %ret, align 4, !dbg !5419
  %cmp26 = icmp ne i32 %17, 1, !dbg !5420
  %18 = zext i1 %cmp26 to i64, !dbg !5421
  %cond = select i1 %cmp26, i32 -5, i32 0, !dbg !5421
  store i32 %cond, i32* %retval, align 4, !dbg !5422
  br label %return, !dbg !5422

return:                                           ; preds = %if.end23, %if.then22
  %19 = load i32, i32* %retval, align 4, !dbg !5423
  ret i32 %19, !dbg !5423
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_osc_freq(%struct.atbm_state* %priv, i32 %freq) #0 !dbg !5424 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %freq.addr = alloca i32, align 4
  %val = alloca i32, align 4
  %t = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5431, metadata !DIExpression()), !dbg !5432
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load i32, i32* %freq.addr, align 4, !dbg !5435
  %conv = zext i32 %0 to i64, !dbg !5435
  %mul = mul i64 1048576, %conv, !dbg !5436
  store i64 %mul, i64* %t, align 8, !dbg !5437
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5438, metadata !DIExpression()), !dbg !5440
  store i32 30400, i32* %__base, align 4, !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5441, metadata !DIExpression()), !dbg !5440
  %1 = load i64, i64* %t, align 8, !dbg !5440
  %2 = load i32, i32* %__base, align 4, !dbg !5440
  %conv1 = zext i32 %2 to i64, !dbg !5440
  %rem = urem i64 %1, %conv1, !dbg !5440
  %conv2 = trunc i64 %rem to i32, !dbg !5440
  store i32 %conv2, i32* %__rem, align 4, !dbg !5440
  %3 = load i64, i64* %t, align 8, !dbg !5440
  %4 = load i32, i32* %__base, align 4, !dbg !5440
  %conv3 = zext i32 %4 to i64, !dbg !5440
  %div = udiv i64 %3, %conv3, !dbg !5440
  store i64 %div, i64* %t, align 8, !dbg !5440
  %5 = load i32, i32* %__rem, align 4, !dbg !5440
  store i32 %5, i32* %tmp, align 4, !dbg !5440
  %6 = load i32, i32* %tmp, align 4, !dbg !5440
  %7 = load i64, i64* %t, align 8, !dbg !5442
  %conv4 = trunc i64 %7 to i32, !dbg !5442
  store i32 %conv4, i32* %val, align 4, !dbg !5443
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5444
  %9 = load i32, i32* %val, align 4, !dbg !5445
  %conv5 = trunc i32 %9 to i8, !dbg !5445
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %8, i16 zeroext 2563, i8 zeroext %conv5) #9, !dbg !5446
  %10 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5447
  %11 = load i32, i32* %val, align 4, !dbg !5448
  %shr = lshr i32 %11, 8, !dbg !5449
  %conv6 = trunc i32 %shr to i8, !dbg !5448
  %call7 = call i32 @atbm8830_write_reg(%struct.atbm_state* %10, i16 zeroext 2564, i8 zeroext %conv6) #9, !dbg !5450
  %12 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5451
  %13 = load i32, i32* %val, align 4, !dbg !5452
  %shr8 = lshr i32 %13, 16, !dbg !5453
  %conv9 = trunc i32 %shr8 to i8, !dbg !5452
  %call10 = call i32 @atbm8830_write_reg(%struct.atbm_state* %12, i16 zeroext 2565, i8 zeroext %conv9) #9, !dbg !5454
  ret i32 0, !dbg !5455
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_if_freq(%struct.atbm_state* %priv, i32 %freq) #0 !dbg !5456 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %freq.addr = alloca i32, align 4
  %fs = alloca i32, align 4
  %t = alloca i64, align 8
  %val = alloca i32, align 4
  %dat = alloca i8, align 1
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__base4 = alloca i32, align 4
  %__rem5 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5457, metadata !DIExpression()), !dbg !5458
  store i32 %freq, i32* %freq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %freq.addr, metadata !5459, metadata !DIExpression()), !dbg !5460
  call void @llvm.dbg.declare(metadata i32* %fs, metadata !5461, metadata !DIExpression()), !dbg !5462
  %0 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5463
  %config = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %0, i32 0, i32 1, !dbg !5464
  %1 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config, align 8, !dbg !5464
  %osc_clk_freq = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %1, i32 0, i32 5, !dbg !5465
  %2 = load i32, i32* %osc_clk_freq, align 4, !dbg !5465
  store i32 %2, i32* %fs, align 4, !dbg !5462
  call void @llvm.dbg.declare(metadata i64* %t, metadata !5466, metadata !DIExpression()), !dbg !5467
  call void @llvm.dbg.declare(metadata i32* %val, metadata !5468, metadata !DIExpression()), !dbg !5469
  call void @llvm.dbg.declare(metadata i8* %dat, metadata !5470, metadata !DIExpression()), !dbg !5471
  %3 = load i32, i32* %freq.addr, align 4, !dbg !5472
  %cmp = icmp ne i32 %3, 0, !dbg !5474
  br i1 %cmp, label %if.then, label %if.else, !dbg !5475

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %freq.addr, align 4, !dbg !5476
  %5 = load i32, i32* %fs, align 4, !dbg !5478
  %sub = sub i32 %4, %5, !dbg !5479
  %conv = zext i32 %sub to i64, !dbg !5480
  %mul = mul i64 62832, %conv, !dbg !5481
  store i64 %mul, i64* %t, align 8, !dbg !5482
  %6 = load i64, i64* %t, align 8, !dbg !5483
  %shl = shl i64 %6, 22, !dbg !5483
  store i64 %shl, i64* %t, align 8, !dbg !5483
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !5484, metadata !DIExpression()), !dbg !5486
  %7 = load i32, i32* %fs, align 4, !dbg !5486
  store i32 %7, i32* %__base, align 4, !dbg !5486
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !5487, metadata !DIExpression()), !dbg !5486
  %8 = load i64, i64* %t, align 8, !dbg !5486
  %9 = load i32, i32* %__base, align 4, !dbg !5486
  %conv1 = zext i32 %9 to i64, !dbg !5486
  %rem = urem i64 %8, %conv1, !dbg !5486
  %conv2 = trunc i64 %rem to i32, !dbg !5486
  store i32 %conv2, i32* %__rem, align 4, !dbg !5486
  %10 = load i64, i64* %t, align 8, !dbg !5486
  %11 = load i32, i32* %__base, align 4, !dbg !5486
  %conv3 = zext i32 %11 to i64, !dbg !5486
  %div = udiv i64 %10, %conv3, !dbg !5486
  store i64 %div, i64* %t, align 8, !dbg !5486
  %12 = load i32, i32* %__rem, align 4, !dbg !5486
  store i32 %12, i32* %tmp, align 4, !dbg !5486
  %13 = load i32, i32* %tmp, align 4, !dbg !5486
  call void @llvm.dbg.declare(metadata i32* %__base4, metadata !5488, metadata !DIExpression()), !dbg !5490
  store i32 1000, i32* %__base4, align 4, !dbg !5490
  call void @llvm.dbg.declare(metadata i32* %__rem5, metadata !5491, metadata !DIExpression()), !dbg !5490
  %14 = load i64, i64* %t, align 8, !dbg !5490
  %15 = load i32, i32* %__base4, align 4, !dbg !5490
  %conv6 = zext i32 %15 to i64, !dbg !5490
  %rem7 = urem i64 %14, %conv6, !dbg !5490
  %conv8 = trunc i64 %rem7 to i32, !dbg !5490
  store i32 %conv8, i32* %__rem5, align 4, !dbg !5490
  %16 = load i64, i64* %t, align 8, !dbg !5490
  %17 = load i32, i32* %__base4, align 4, !dbg !5490
  %conv9 = zext i32 %17 to i64, !dbg !5490
  %div10 = udiv i64 %16, %conv9, !dbg !5490
  store i64 %div10, i64* %t, align 8, !dbg !5490
  %18 = load i32, i32* %__rem5, align 4, !dbg !5490
  store i32 %18, i32* %tmp11, align 4, !dbg !5490
  %19 = load i32, i32* %tmp11, align 4, !dbg !5490
  %20 = load i64, i64* %t, align 8, !dbg !5492
  %conv12 = trunc i64 %20 to i32, !dbg !5492
  store i32 %conv12, i32* %val, align 4, !dbg !5493
  %21 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5494
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %21, i16 zeroext 1, i8 zeroext 1) #9, !dbg !5495
  %22 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5496
  %23 = load i32, i32* %val, align 4, !dbg !5497
  %conv13 = trunc i32 %23 to i8, !dbg !5497
  %call14 = call i32 @atbm8830_write_reg(%struct.atbm_state* %22, i16 zeroext 2560, i8 zeroext %conv13) #9, !dbg !5498
  %24 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5499
  %25 = load i32, i32* %val, align 4, !dbg !5500
  %shr = lshr i32 %25, 8, !dbg !5501
  %conv15 = trunc i32 %shr to i8, !dbg !5500
  %call16 = call i32 @atbm8830_write_reg(%struct.atbm_state* %24, i16 zeroext 2561, i8 zeroext %conv15) #9, !dbg !5502
  %26 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5503
  %27 = load i32, i32* %val, align 4, !dbg !5504
  %shr17 = lshr i32 %27, 16, !dbg !5505
  %conv18 = trunc i32 %shr17 to i8, !dbg !5504
  %call19 = call i32 @atbm8830_write_reg(%struct.atbm_state* %26, i16 zeroext 2562, i8 zeroext %conv18) #9, !dbg !5506
  %28 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5507
  %call20 = call i32 @atbm8830_read_reg(%struct.atbm_state* %28, i16 zeroext 1538, i8* %dat) #9, !dbg !5508
  %29 = load i8, i8* %dat, align 1, !dbg !5509
  %conv21 = zext i8 %29 to i32, !dbg !5509
  %and = and i32 %conv21, 252, !dbg !5509
  %conv22 = trunc i32 %and to i8, !dbg !5509
  store i8 %conv22, i8* %dat, align 1, !dbg !5509
  %30 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5510
  %31 = load i8, i8* %dat, align 1, !dbg !5511
  %call23 = call i32 @atbm8830_write_reg(%struct.atbm_state* %30, i16 zeroext 1538, i8 zeroext %31) #9, !dbg !5512
  br label %if.end37, !dbg !5513

if.else:                                          ; preds = %entry
  %32 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5514
  %call24 = call i32 @atbm8830_write_reg(%struct.atbm_state* %32, i16 zeroext 1, i8 zeroext 0) #9, !dbg !5516
  %33 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5517
  %call25 = call i32 @atbm8830_read_reg(%struct.atbm_state* %33, i16 zeroext 1538, i8* %dat) #9, !dbg !5518
  %34 = load i8, i8* %dat, align 1, !dbg !5519
  %conv26 = zext i8 %34 to i32, !dbg !5519
  %and27 = and i32 %conv26, 252, !dbg !5519
  %conv28 = trunc i32 %and27 to i8, !dbg !5519
  store i8 %conv28, i8* %dat, align 1, !dbg !5519
  %35 = load i8, i8* %dat, align 1, !dbg !5520
  %conv29 = zext i8 %35 to i32, !dbg !5520
  %or = or i32 %conv29, 2, !dbg !5520
  %conv30 = trunc i32 %or to i8, !dbg !5520
  store i8 %conv30, i8* %dat, align 1, !dbg !5520
  %36 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5521
  %37 = load i8, i8* %dat, align 1, !dbg !5522
  %call31 = call i32 @atbm8830_write_reg(%struct.atbm_state* %36, i16 zeroext 1538, i8 zeroext %37) #9, !dbg !5523
  %38 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5524
  %config32 = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %38, i32 0, i32 1, !dbg !5526
  %39 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config32, align 8, !dbg !5526
  %zif_swap_iq = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %39, i32 0, i32 7, !dbg !5527
  %40 = load i8, i8* %zif_swap_iq, align 4, !dbg !5527
  %tobool = icmp ne i8 %40, 0, !dbg !5524
  br i1 %tobool, label %if.then33, label %if.else35, !dbg !5528

if.then33:                                        ; preds = %if.else
  %41 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5529
  %call34 = call i32 @atbm8830_write_reg(%struct.atbm_state* %41, i16 zeroext 3073, i8 zeroext 3) #9, !dbg !5530
  br label %if.end, !dbg !5530

if.else35:                                        ; preds = %if.else
  %42 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5531
  %call36 = call i32 @atbm8830_write_reg(%struct.atbm_state* %42, i16 zeroext 3073, i8 zeroext 1) #9, !dbg !5532
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then
  ret i32 0, !dbg !5533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_agc_config(%struct.atbm_state* %priv, i8 zeroext %min, i8 zeroext %max, i8 zeroext %hold_loop) #0 !dbg !5534 {
entry:
  %retval = alloca i32, align 4
  %priv.addr = alloca %struct.atbm_state*, align 8
  %min.addr = alloca i8, align 1
  %max.addr = alloca i8, align 1
  %hold_loop.addr = alloca i8, align 1
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  store i8 %min, i8* %min.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %min.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  store i8 %max, i8* %max.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %max.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  store i8 %hold_loop, i8* %hold_loop.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %hold_loop.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  %0 = load i8, i8* %min.addr, align 1, !dbg !5545
  %tobool = icmp ne i8 %0, 0, !dbg !5545
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5547

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %max.addr, align 1, !dbg !5548
  %tobool1 = icmp ne i8 %1, 0, !dbg !5548
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5549

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !5550
  br label %return, !dbg !5550

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5551
  %3 = load i8, i8* %min.addr, align 1, !dbg !5552
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %2, i16 zeroext 4128, i8 zeroext %3) #9, !dbg !5553
  %4 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5554
  %5 = load i8, i8* %max.addr, align 1, !dbg !5555
  %call2 = call i32 @atbm8830_write_reg(%struct.atbm_state* %4, i16 zeroext 4131, i8 zeroext %5) #9, !dbg !5556
  %6 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5557
  %7 = load i8, i8* %hold_loop.addr, align 1, !dbg !5558
  %call3 = call i32 @atbm8830_write_reg(%struct.atbm_state* %6, i16 zeroext 4145, i8 zeroext %7) #9, !dbg !5559
  store i32 0, i32* %retval, align 4, !dbg !5560
  br label %return, !dbg !5560

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !5561
  ret i32 %8, !dbg !5561
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_static_channel_mode(%struct.atbm_state* %priv) #0 !dbg !5562 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %i = alloca i32, align 4
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5567, metadata !DIExpression()), !dbg !5568
  store i32 0, i32* %i, align 4, !dbg !5569
  br label %for.cond, !dbg !5571

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5572
  %cmp = icmp slt i32 %0, 5, !dbg !5574
  br i1 %cmp, label %for.body, label %for.end, !dbg !5575

for.body:                                         ; preds = %for.cond
  %1 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5576
  %2 = load i32, i32* %i, align 4, !dbg !5577
  %add = add i32 2459, %2, !dbg !5578
  %conv = trunc i32 %add to i16, !dbg !5579
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %1, i16 zeroext %conv, i8 zeroext 8) #9, !dbg !5580
  br label %for.inc, !dbg !5580

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4, !dbg !5581
  %inc = add i32 %3, 1, !dbg !5581
  store i32 %inc, i32* %i, align 4, !dbg !5581
  br label %for.cond, !dbg !5582, !llvm.loop !5583

for.end:                                          ; preds = %for.cond
  %4 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5585
  %call1 = call i32 @atbm8830_write_reg(%struct.atbm_state* %4, i16 zeroext 2395, i8 zeroext 127) #9, !dbg !5586
  %5 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5587
  %call2 = call i32 @atbm8830_write_reg(%struct.atbm_state* %5, i16 zeroext 2507, i8 zeroext 1) #9, !dbg !5588
  %6 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5589
  %call3 = call i32 @atbm8830_write_reg(%struct.atbm_state* %6, i16 zeroext 2508, i8 zeroext 127) #9, !dbg !5590
  %7 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5591
  %call4 = call i32 @atbm8830_write_reg(%struct.atbm_state* %7, i16 zeroext 2509, i8 zeroext 127) #9, !dbg !5592
  %8 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5593
  %call5 = call i32 @atbm8830_write_reg(%struct.atbm_state* %8, i16 zeroext 3585, i8 zeroext 32) #9, !dbg !5594
  %9 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5595
  %call6 = call i32 @atbm8830_write_reg(%struct.atbm_state* %9, i16 zeroext 2819, i8 zeroext 10) #9, !dbg !5596
  %10 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5597
  %call7 = call i32 @atbm8830_write_reg(%struct.atbm_state* %10, i16 zeroext 2357, i8 zeroext 16) #9, !dbg !5598
  %11 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5599
  %call8 = call i32 @atbm8830_write_reg(%struct.atbm_state* %11, i16 zeroext 2358, i8 zeroext 8) #9, !dbg !5600
  %12 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5601
  %call9 = call i32 @atbm8830_write_reg(%struct.atbm_state* %12, i16 zeroext 2366, i8 zeroext 8) #9, !dbg !5602
  %13 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5603
  %call10 = call i32 @atbm8830_write_reg(%struct.atbm_state* %13, i16 zeroext 2414, i8 zeroext 6) #9, !dbg !5604
  %14 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5605
  %call11 = call i32 @atbm8830_write_reg(%struct.atbm_state* %14, i16 zeroext 2825, i8 zeroext 0) #9, !dbg !5606
  %15 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5607
  %call12 = call i32 @atbm8830_write_reg(%struct.atbm_state* %15, i16 zeroext 2826, i8 zeroext 8) #9, !dbg !5608
  ret i32 0, !dbg !5609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_ts_config(%struct.atbm_state* %priv) #0 !dbg !5610 {
entry:
  %priv.addr = alloca %struct.atbm_state*, align 8
  %cfg = alloca %struct.atbm8830_config*, align 8
  store %struct.atbm_state* %priv, %struct.atbm_state** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.atbm_state** %priv.addr, metadata !5611, metadata !DIExpression()), !dbg !5612
  call void @llvm.dbg.declare(metadata %struct.atbm8830_config** %cfg, metadata !5613, metadata !DIExpression()), !dbg !5614
  %0 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5615
  %config = getelementptr inbounds %struct.atbm_state, %struct.atbm_state* %0, i32 0, i32 1, !dbg !5616
  %1 = load %struct.atbm8830_config*, %struct.atbm8830_config** %config, align 8, !dbg !5616
  store %struct.atbm8830_config* %1, %struct.atbm8830_config** %cfg, align 8, !dbg !5614
  %2 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5617
  %3 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !5618
  %serial_ts = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %3, i32 0, i32 2, !dbg !5619
  %4 = load i8, i8* %serial_ts, align 2, !dbg !5619
  %conv = zext i8 %4 to i32, !dbg !5618
  %tobool = icmp ne i32 %conv, 0, !dbg !5618
  %5 = zext i1 %tobool to i64, !dbg !5618
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !5618
  %conv1 = trunc i32 %cond to i8, !dbg !5618
  %call = call i32 @atbm8830_write_reg(%struct.atbm_state* %2, i16 zeroext 773, i8 zeroext %conv1) #9, !dbg !5620
  %6 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5621
  %7 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !5622
  %serial_ts2 = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %7, i32 0, i32 2, !dbg !5623
  %8 = load i8, i8* %serial_ts2, align 2, !dbg !5623
  %conv3 = zext i8 %8 to i32, !dbg !5622
  %tobool4 = icmp ne i32 %conv3, 0, !dbg !5622
  %9 = zext i1 %tobool4 to i64, !dbg !5622
  %cond5 = select i1 %tobool4, i32 1, i32 0, !dbg !5622
  %conv6 = trunc i32 %cond5 to i8, !dbg !5622
  %call7 = call i32 @atbm8830_write_reg(%struct.atbm_state* %6, i16 zeroext 779, i8 zeroext %conv6) #9, !dbg !5624
  %10 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5625
  %11 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !5626
  %ts_sampling_edge = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %11, i32 0, i32 4, !dbg !5627
  %12 = load i8, i8* %ts_sampling_edge, align 4, !dbg !5627
  %conv8 = zext i8 %12 to i32, !dbg !5626
  %tobool9 = icmp ne i32 %conv8, 0, !dbg !5626
  %13 = zext i1 %tobool9 to i64, !dbg !5626
  %cond10 = select i1 %tobool9, i32 1, i32 0, !dbg !5626
  %conv11 = trunc i32 %cond10 to i8, !dbg !5626
  %call12 = call i32 @atbm8830_write_reg(%struct.atbm_state* %10, i16 zeroext 769, i8 zeroext %conv11) #9, !dbg !5628
  %14 = load %struct.atbm_state*, %struct.atbm_state** %priv.addr, align 8, !dbg !5629
  %15 = load %struct.atbm8830_config*, %struct.atbm8830_config** %cfg, align 8, !dbg !5630
  %ts_clk_gated = getelementptr inbounds %struct.atbm8830_config, %struct.atbm8830_config* %15, i32 0, i32 3, !dbg !5631
  %16 = load i8, i8* %ts_clk_gated, align 1, !dbg !5631
  %conv13 = zext i8 %16 to i32, !dbg !5630
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !5630
  %17 = zext i1 %tobool14 to i64, !dbg !5630
  %cond15 = select i1 %tobool14, i32 0, i32 1, !dbg !5630
  %conv16 = trunc i32 %cond15 to i8, !dbg !5630
  %call17 = call i32 @atbm8830_write_reg(%struct.atbm_state* %14, i16 zeroext 774, i8 zeroext %conv16) #9, !dbg !5632
  ret i32 0, !dbg !5633
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4301, !4302, !4303, !4304}
!llvm.ident = !{!4305}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 23, type: !4298, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !290, globals: !300, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/atbm8830.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_caps", file: !6, line: 72, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/uapi/linux/dvb/frontend.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39}
!9 = !DIEnumerator(name: "FE_IS_STUPID", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "FE_CAN_INVERSION_AUTO", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "FE_CAN_FEC_1_2", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "FE_CAN_FEC_2_3", value: 4, isUnsigned: true)
!13 = !DIEnumerator(name: "FE_CAN_FEC_3_4", value: 8, isUnsigned: true)
!14 = !DIEnumerator(name: "FE_CAN_FEC_4_5", value: 16, isUnsigned: true)
!15 = !DIEnumerator(name: "FE_CAN_FEC_5_6", value: 32, isUnsigned: true)
!16 = !DIEnumerator(name: "FE_CAN_FEC_6_7", value: 64, isUnsigned: true)
!17 = !DIEnumerator(name: "FE_CAN_FEC_7_8", value: 128, isUnsigned: true)
!18 = !DIEnumerator(name: "FE_CAN_FEC_8_9", value: 256, isUnsigned: true)
!19 = !DIEnumerator(name: "FE_CAN_FEC_AUTO", value: 512, isUnsigned: true)
!20 = !DIEnumerator(name: "FE_CAN_QPSK", value: 1024, isUnsigned: true)
!21 = !DIEnumerator(name: "FE_CAN_QAM_16", value: 2048, isUnsigned: true)
!22 = !DIEnumerator(name: "FE_CAN_QAM_32", value: 4096, isUnsigned: true)
!23 = !DIEnumerator(name: "FE_CAN_QAM_64", value: 8192, isUnsigned: true)
!24 = !DIEnumerator(name: "FE_CAN_QAM_128", value: 16384, isUnsigned: true)
!25 = !DIEnumerator(name: "FE_CAN_QAM_256", value: 32768, isUnsigned: true)
!26 = !DIEnumerator(name: "FE_CAN_QAM_AUTO", value: 65536, isUnsigned: true)
!27 = !DIEnumerator(name: "FE_CAN_TRANSMISSION_MODE_AUTO", value: 131072, isUnsigned: true)
!28 = !DIEnumerator(name: "FE_CAN_BANDWIDTH_AUTO", value: 262144, isUnsigned: true)
!29 = !DIEnumerator(name: "FE_CAN_GUARD_INTERVAL_AUTO", value: 524288, isUnsigned: true)
!30 = !DIEnumerator(name: "FE_CAN_HIERARCHY_AUTO", value: 1048576, isUnsigned: true)
!31 = !DIEnumerator(name: "FE_CAN_8VSB", value: 2097152, isUnsigned: true)
!32 = !DIEnumerator(name: "FE_CAN_16VSB", value: 4194304, isUnsigned: true)
!33 = !DIEnumerator(name: "FE_HAS_EXTENDED_CAPS", value: 8388608, isUnsigned: true)
!34 = !DIEnumerator(name: "FE_CAN_MULTISTREAM", value: 67108864, isUnsigned: true)
!35 = !DIEnumerator(name: "FE_CAN_TURBO_FEC", value: 134217728, isUnsigned: true)
!36 = !DIEnumerator(name: "FE_CAN_2G_MODULATION", value: 268435456, isUnsigned: true)
!37 = !DIEnumerator(name: "FE_NEEDS_BENDING", value: 536870912, isUnsigned: true)
!38 = !DIEnumerator(name: "FE_CAN_RECOVER", value: 1073741824, isUnsigned: true)
!39 = !DIEnumerator(name: "FE_CAN_MUTE_TS", value: 2147483648, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_status", file: !6, line: 252, baseType: !7, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49}
!42 = !DIEnumerator(name: "FE_NONE", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "FE_HAS_SIGNAL", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "FE_HAS_CARRIER", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "FE_HAS_VITERBI", value: 4, isUnsigned: true)
!46 = !DIEnumerator(name: "FE_HAS_SYNC", value: 8, isUnsigned: true)
!47 = !DIEnumerator(name: "FE_HAS_LOCK", value: 16, isUnsigned: true)
!48 = !DIEnumerator(name: "FE_TIMEDOUT", value: 32, isUnsigned: true)
!49 = !DIEnumerator(name: "FE_REINIT", value: 64, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_algo", file: !51, line: 144, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/media/dvb_frontend.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "DVBFE_ALGO_HW", value: 1, isUnsigned: true)
!54 = !DIEnumerator(name: "DVBFE_ALGO_SW", value: 2, isUnsigned: true)
!55 = !DIEnumerator(name: "DVBFE_ALGO_CUSTOM", value: 4, isUnsigned: true)
!56 = !DIEnumerator(name: "DVBFE_ALGO_RECOVERY", value: 2147483648, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_modulation", file: !6, line: 338, baseType: !7, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!59 = !DIEnumerator(name: "QPSK", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "QAM_16", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "QAM_32", value: 2, isUnsigned: true)
!62 = !DIEnumerator(name: "QAM_64", value: 3, isUnsigned: true)
!63 = !DIEnumerator(name: "QAM_128", value: 4, isUnsigned: true)
!64 = !DIEnumerator(name: "QAM_256", value: 5, isUnsigned: true)
!65 = !DIEnumerator(name: "QAM_AUTO", value: 6, isUnsigned: true)
!66 = !DIEnumerator(name: "VSB_8", value: 7, isUnsigned: true)
!67 = !DIEnumerator(name: "VSB_16", value: 8, isUnsigned: true)
!68 = !DIEnumerator(name: "PSK_8", value: 9, isUnsigned: true)
!69 = !DIEnumerator(name: "APSK_16", value: 10, isUnsigned: true)
!70 = !DIEnumerator(name: "APSK_32", value: 11, isUnsigned: true)
!71 = !DIEnumerator(name: "DQPSK", value: 12, isUnsigned: true)
!72 = !DIEnumerator(name: "QAM_4_NR", value: 13, isUnsigned: true)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_voltage", file: !6, line: 208, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "SEC_VOLTAGE_13", value: 0, isUnsigned: true)
!76 = !DIEnumerator(name: "SEC_VOLTAGE_18", value: 1, isUnsigned: true)
!77 = !DIEnumerator(name: "SEC_VOLTAGE_OFF", value: 2, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_tone_mode", file: !6, line: 220, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81}
!80 = !DIEnumerator(name: "SEC_TONE_ON", value: 0, isUnsigned: true)
!81 = !DIEnumerator(name: "SEC_TONE_OFF", value: 1, isUnsigned: true)
!82 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_spectral_inversion", file: !6, line: 276, baseType: !7, size: 32, elements: !83)
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "INVERSION_OFF", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "INVERSION_ON", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "INVERSION_AUTO", value: 2, isUnsigned: true)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_code_rate", file: !6, line: 302, baseType: !7, size: 32, elements: !88)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!89 = !DIEnumerator(name: "FEC_NONE", value: 0, isUnsigned: true)
!90 = !DIEnumerator(name: "FEC_1_2", value: 1, isUnsigned: true)
!91 = !DIEnumerator(name: "FEC_2_3", value: 2, isUnsigned: true)
!92 = !DIEnumerator(name: "FEC_3_4", value: 3, isUnsigned: true)
!93 = !DIEnumerator(name: "FEC_4_5", value: 4, isUnsigned: true)
!94 = !DIEnumerator(name: "FEC_5_6", value: 5, isUnsigned: true)
!95 = !DIEnumerator(name: "FEC_6_7", value: 6, isUnsigned: true)
!96 = !DIEnumerator(name: "FEC_7_8", value: 7, isUnsigned: true)
!97 = !DIEnumerator(name: "FEC_8_9", value: 8, isUnsigned: true)
!98 = !DIEnumerator(name: "FEC_AUTO", value: 9, isUnsigned: true)
!99 = !DIEnumerator(name: "FEC_3_5", value: 10, isUnsigned: true)
!100 = !DIEnumerator(name: "FEC_9_10", value: 11, isUnsigned: true)
!101 = !DIEnumerator(name: "FEC_2_5", value: 12, isUnsigned: true)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_transmit_mode", file: !6, line: 381, baseType: !7, size: 32, elements: !103)
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112}
!104 = !DIEnumerator(name: "TRANSMISSION_MODE_2K", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "TRANSMISSION_MODE_8K", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "TRANSMISSION_MODE_AUTO", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "TRANSMISSION_MODE_4K", value: 3, isUnsigned: true)
!108 = !DIEnumerator(name: "TRANSMISSION_MODE_1K", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "TRANSMISSION_MODE_16K", value: 5, isUnsigned: true)
!110 = !DIEnumerator(name: "TRANSMISSION_MODE_32K", value: 6, isUnsigned: true)
!111 = !DIEnumerator(name: "TRANSMISSION_MODE_C1", value: 7, isUnsigned: true)
!112 = !DIEnumerator(name: "TRANSMISSION_MODE_C3780", value: 8, isUnsigned: true)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_guard_interval", file: !6, line: 410, baseType: !7, size: 32, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125}
!115 = !DIEnumerator(name: "GUARD_INTERVAL_1_32", value: 0, isUnsigned: true)
!116 = !DIEnumerator(name: "GUARD_INTERVAL_1_16", value: 1, isUnsigned: true)
!117 = !DIEnumerator(name: "GUARD_INTERVAL_1_8", value: 2, isUnsigned: true)
!118 = !DIEnumerator(name: "GUARD_INTERVAL_1_4", value: 3, isUnsigned: true)
!119 = !DIEnumerator(name: "GUARD_INTERVAL_AUTO", value: 4, isUnsigned: true)
!120 = !DIEnumerator(name: "GUARD_INTERVAL_1_128", value: 5, isUnsigned: true)
!121 = !DIEnumerator(name: "GUARD_INTERVAL_19_128", value: 6, isUnsigned: true)
!122 = !DIEnumerator(name: "GUARD_INTERVAL_19_256", value: 7, isUnsigned: true)
!123 = !DIEnumerator(name: "GUARD_INTERVAL_PN420", value: 8, isUnsigned: true)
!124 = !DIEnumerator(name: "GUARD_INTERVAL_PN595", value: 9, isUnsigned: true)
!125 = !DIEnumerator(name: "GUARD_INTERVAL_PN945", value: 10, isUnsigned: true)
!126 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_hierarchy", file: !6, line: 434, baseType: !7, size: 32, elements: !127)
!127 = !{!128, !129, !130, !131, !132}
!128 = !DIEnumerator(name: "HIERARCHY_NONE", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "HIERARCHY_1", value: 1, isUnsigned: true)
!130 = !DIEnumerator(name: "HIERARCHY_2", value: 2, isUnsigned: true)
!131 = !DIEnumerator(name: "HIERARCHY_4", value: 3, isUnsigned: true)
!132 = !DIEnumerator(name: "HIERARCHY_AUTO", value: 4, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_pilot", file: !6, line: 562, baseType: !7, size: 32, elements: !134)
!134 = !{!135, !136, !137}
!135 = !DIEnumerator(name: "PILOT_ON", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "PILOT_OFF", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "PILOT_AUTO", value: 2, isUnsigned: true)
!138 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_rolloff", file: !6, line: 579, baseType: !7, size: 32, elements: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DIEnumerator(name: "ROLLOFF_35", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "ROLLOFF_20", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "ROLLOFF_25", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "ROLLOFF_AUTO", value: 3, isUnsigned: true)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_delivery_system", file: !6, line: 628, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164}
!146 = !DIEnumerator(name: "SYS_UNDEFINED", value: 0, isUnsigned: true)
!147 = !DIEnumerator(name: "SYS_DVBC_ANNEX_A", value: 1, isUnsigned: true)
!148 = !DIEnumerator(name: "SYS_DVBC_ANNEX_B", value: 2, isUnsigned: true)
!149 = !DIEnumerator(name: "SYS_DVBT", value: 3, isUnsigned: true)
!150 = !DIEnumerator(name: "SYS_DSS", value: 4, isUnsigned: true)
!151 = !DIEnumerator(name: "SYS_DVBS", value: 5, isUnsigned: true)
!152 = !DIEnumerator(name: "SYS_DVBS2", value: 6, isUnsigned: true)
!153 = !DIEnumerator(name: "SYS_DVBH", value: 7, isUnsigned: true)
!154 = !DIEnumerator(name: "SYS_ISDBT", value: 8, isUnsigned: true)
!155 = !DIEnumerator(name: "SYS_ISDBS", value: 9, isUnsigned: true)
!156 = !DIEnumerator(name: "SYS_ISDBC", value: 10, isUnsigned: true)
!157 = !DIEnumerator(name: "SYS_ATSC", value: 11, isUnsigned: true)
!158 = !DIEnumerator(name: "SYS_ATSCMH", value: 12, isUnsigned: true)
!159 = !DIEnumerator(name: "SYS_DTMB", value: 13, isUnsigned: true)
!160 = !DIEnumerator(name: "SYS_CMMB", value: 14, isUnsigned: true)
!161 = !DIEnumerator(name: "SYS_DAB", value: 15, isUnsigned: true)
!162 = !DIEnumerator(name: "SYS_DVBT2", value: 16, isUnsigned: true)
!163 = !DIEnumerator(name: "SYS_TURBO", value: 17, isUnsigned: true)
!164 = !DIEnumerator(name: "SYS_DVBC_ANNEX_C", value: 18, isUnsigned: true)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_interleaving", file: !6, line: 451, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169, !170}
!167 = !DIEnumerator(name: "INTERLEAVING_NONE", value: 0, isUnsigned: true)
!168 = !DIEnumerator(name: "INTERLEAVING_AUTO", value: 1, isUnsigned: true)
!169 = !DIEnumerator(name: "INTERLEAVING_240", value: 2, isUnsigned: true)
!170 = !DIEnumerator(name: "INTERLEAVING_720", value: 3, isUnsigned: true)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fe_sec_mini_cmd", file: !6, line: 233, baseType: !7, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "SEC_MINI_A", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "SEC_MINI_B", value: 1, isUnsigned: true)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvbfe_search", file: !51, line: 173, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178, !179, !180, !181, !182}
!177 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_SUCCESS", value: 1, isUnsigned: true)
!178 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ASLEEP", value: 2, isUnsigned: true)
!179 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_FAILED", value: 4, isUnsigned: true)
!180 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_INVALID", value: 8, isUnsigned: true)
!181 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_AGAIN", value: 16, isUnsigned: true)
!182 = !DIEnumerator(name: "DVBFE_ALGO_SEARCH_ERROR", value: 2147483648, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !184, line: 15, baseType: !7, size: 32, elements: !185)
!184 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189}
!186 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!187 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!188 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!189 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !191, line: 65, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194}
!193 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!195 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !196, line: 16, baseType: !7, size: 32, elements: !197)
!196 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!197 = !{!198, !199, !200}
!198 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !202, line: 54, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !208, line: 296, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !211, !212, !213, !214, !215}
!210 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!211 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!212 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!213 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!214 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!215 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !217, line: 9, baseType: !7, size: 32, elements: !218)
!217 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!218 = !{!219, !220, !221, !222, !223}
!219 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!220 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!221 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!222 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!223 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!224 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !225, line: 26, baseType: !7, size: 32, elements: !226)
!225 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !229}
!227 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!228 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!229 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !231, line: 44, baseType: !7, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!232 = !{!233, !234, !235}
!233 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!234 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!235 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!236 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !237, line: 343, baseType: !7, size: 32, elements: !238)
!237 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!238 = !{!239, !240, !241, !242}
!239 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!240 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!241 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!242 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !244, line: 524, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !248, !249, !250}
!246 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!247 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!248 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!249 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!250 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!251 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !244, line: 502, baseType: !7, size: 32, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!254 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!255 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!256 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !258, line: 76, baseType: !7, size: 32, elements: !259)
!258 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!260 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!261 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!262 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!263 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!264 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!265 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!266 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!267 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!268 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!269 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!270 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
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
!290 = !{!291, !292, !294, !299}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !293, line: 148, baseType: !7)
!293 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !295, line: 23, baseType: !296)
!295 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !297, line: 31, baseType: !298)
!297 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!298 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !293, line: 107, baseType: !294)
!300 = !{!301, !371, !376, !381, !386, !391, !396, !401, !0, !403}
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 23, type: !303, isLocal: true, isDefinition: true, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !305, line: 69, size: 320, elements: !306)
!305 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!306 = !{!307, !311, !315, !336, !341, !345, !349}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 70, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !304, file: !305, line: 71, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !314, line: 76, flags: DIFlagFwdDecl)
!314 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !304, file: !305, line: 72, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !305, line: 47, size: 256, elements: !319)
!319 = !{!320, !321, !327, !332}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !305, line: 49, baseType: !7, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !318, file: !305, line: 51, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!325, !308, !326}
!325 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !305, line: 53, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!325, !331, !326}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !318, file: !305, line: 55, baseType: !333, size: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !291}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !304, file: !305, line: 73, baseType: !337, size: 16, offset: 192)
!337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !295, line: 19, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !297, line: 24, baseType: !340)
!340 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !304, file: !305, line: 74, baseType: !342, size: 8, offset: 208)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !295, line: 16, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !297, line: 20, baseType: !344)
!344 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 75, baseType: !346, size: 8, offset: 216)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !295, line: 17, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !297, line: 21, baseType: !348)
!348 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !304, file: !305, line: 76, baseType: !350, size: 64, offset: 256)
!350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !304, file: !305, line: 76, size: 64, elements: !351)
!351 = !{!352, !353, !360}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !350, file: !305, line: 77, baseType: !291, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !350, file: !305, line: 78, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !305, line: 86, size: 128, elements: !357)
!357 = !{!358, !359}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !356, file: !305, line: 87, baseType: !7, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !356, file: !305, line: 88, baseType: !331, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !350, file: !305, line: 79, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !305, line: 92, size: 256, elements: !364)
!364 = !{!365, !366, !367, !369, !370}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !363, file: !305, line: 94, baseType: !7, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !363, file: !305, line: 95, baseType: !7, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !363, file: !305, line: 96, baseType: !368, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !363, file: !305, line: 97, baseType: !316, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !363, file: !305, line: 98, baseType: !291, size: 64, offset: 192)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 23, type: !373, isLocal: true, isDefinition: true, align: 8)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 224, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 28)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 24, type: !378, isLocal: true, isDefinition: true, align: 8)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 528, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 66)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 494, type: !383, isLocal: true, isDefinition: true, align: 8)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 568, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 71)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 495, type: !388, isLocal: true, isDefinition: true, align: 8)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 456, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 57)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 496, type: !393, isLocal: true, isDefinition: true, align: 8)
!393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 408, elements: !394)
!394 = !{!395}
!395 = !DISubrange(count: 51)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 496, type: !398, isLocal: true, isDefinition: true, align: 8)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 168, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 21)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 21, type: !325, isLocal: true, isDefinition: true)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(name: "atbm8830_ops", scope: !2, file: !3, line: 418, type: !405, isLocal: true, isDefinition: true)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !407)
!407 = !{!408, !425, !429, !4121, !4122, !4123, !4127, !4128, !4134, !4139, !4143, !4144, !4154, !4159, !4163, !4167, !4172, !4173, !4174, !4175, !4185, !4196, !4200, !4204, !4208, !4212, !4216, !4220, !4221, !4222, !4226, !4280}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !406, file: !51, line: 436, baseType: !409, size: 1280)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !410)
!410 = !{!411, !415, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !51, line: 339, baseType: !412, size: 1024)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 1024, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !409, file: !51, line: 340, baseType: !416, size: 32, offset: 1024)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !295, line: 21, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !297, line: 27, baseType: !7)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !409, file: !51, line: 341, baseType: !416, size: 32, offset: 1056)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !409, file: !51, line: 342, baseType: !416, size: 32, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !409, file: !51, line: 343, baseType: !416, size: 32, offset: 1120)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !409, file: !51, line: 344, baseType: !416, size: 32, offset: 1152)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !409, file: !51, line: 345, baseType: !416, size: 32, offset: 1184)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !409, file: !51, line: 346, baseType: !416, size: 32, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !409, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !406, file: !51, line: 438, baseType: !426, size: 64, offset: 1280)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 64, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !406, file: !51, line: 440, baseType: !430, size: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !435)
!435 = !{!436, !450, !451, !4037, !4038, !4039, !4040, !4041, !4042, !4115, !4119, !4120}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !434, file: !51, line: 687, baseType: !437, size: 32)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !438, line: 19, size: 32, elements: !439)
!438 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !437, file: !438, line: 20, baseType: !441, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !442, line: 113, baseType: !443)
!442 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !442, line: 111, size: 32, elements: !444)
!444 = !{!445}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !443, file: !442, line: 112, baseType: !446, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !293, line: 168, baseType: !447)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 166, size: 32, elements: !448)
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !447, file: !293, line: 167, baseType: !325, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !434, file: !51, line: 688, baseType: !406, size: 6016, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !434, file: !51, line: 689, baseType: !452, size: 64, offset: 6080)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !454)
!454 = !{!455, !456, !462, !463, !464, !468, !469, !4015, !4016, !4017, !4036}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !453, file: !272, line: 102, baseType: !325, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !453, file: !272, line: 103, baseType: !457, size: 128, offset: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !293, line: 178, size: 128, elements: !458)
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !457, file: !293, line: 179, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !457, file: !293, line: 179, baseType: !460, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !453, file: !272, line: 104, baseType: !457, size: 128, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !272, line: 105, baseType: !308, size: 64, offset: 320)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !453, file: !272, line: 106, baseType: !465, size: 48, offset: 384)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 48, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 6)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !453, file: !272, line: 107, baseType: !291, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !453, file: !272, line: 109, baseType: !470, size: 64, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !472)
!472 = !{!473, !3472, !3473, !3476, !3477, !3528, !3616, !3617, !3618, !3619, !3620, !3629, !3734, !3747, !3942, !3943, !3947, !3949, !3950, !3951, !3955, !3961, !3962, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !4003, !4004, !4005, !4008, !4011, !4012, !4013, !4014}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !471, file: !237, line: 462, baseType: !474, size: 512)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !475, line: 64, size: 512, elements: !476)
!475 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !478, !479, !481, !540, !3327, !3466, !3467, !3468, !3469, !3470, !3471}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !475, line: 65, baseType: !308, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !474, file: !475, line: 66, baseType: !457, size: 128, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !474, file: !475, line: 67, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !474, file: !475, line: 68, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !475, line: 192, size: 704, elements: !484)
!484 = !{!485, !486, !502, !503}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !483, file: !475, line: 193, baseType: !457, size: 128)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !483, file: !475, line: 194, baseType: !487, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !488, line: 83, baseType: !489)
!488 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !488, line: 71, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, scope: !489, file: !488, line: 72, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !489, file: !488, line: 72, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !492, file: !488, line: 73, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !488, line: 20, elements: !496)
!496 = !{!497}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !495, file: !488, line: 21, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !499, line: 25, baseType: !500)
!499 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 25, elements: !501)
!501 = !{}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !483, file: !475, line: 195, baseType: !474, size: 512, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !483, file: !475, line: 196, baseType: !504, size: 64, offset: 640)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !475, line: 156, size: 192, elements: !507)
!507 = !{!508, !513, !518}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !506, file: !475, line: 157, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!325, !482, !480}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !506, file: !475, line: 158, baseType: !514, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!308, !482, !480}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !506, file: !475, line: 159, baseType: !519, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!325, !482, !480, !523}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !475, line: 148, size: 20736, elements: !525)
!525 = !{!526, !530, !534, !535, !539}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !524, file: !475, line: 149, baseType: !527, size: 192)
!527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 192, elements: !528)
!528 = !{!529}
!529 = !DISubrange(count: 3)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !524, file: !475, line: 150, baseType: !531, size: 4096, offset: 192)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 4096, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !524, file: !475, line: 151, baseType: !325, size: 32, offset: 4288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !524, file: !475, line: 152, baseType: !536, size: 16384, offset: 4320)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 16384, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: 2048)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !524, file: !475, line: 153, baseType: !325, size: 32, offset: 20704)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !474, file: !475, line: 69, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !475, line: 138, size: 448, elements: !543)
!543 = !{!544, !548, !577, !579, !3289, !3317, !3321}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !542, file: !475, line: 139, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !480}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !542, file: !475, line: 140, baseType: !549, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !551)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !552, line: 230, size: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !569}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !551, file: !552, line: 231, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!558, !480, !563, !331}
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !293, line: 60, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !560, line: 73, baseType: !561)
!560 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !560, line: 15, baseType: !562)
!562 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !552, line: 30, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !564, file: !552, line: 31, baseType: !308, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !564, file: !552, line: 32, baseType: !568, size: 16, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !293, line: 19, baseType: !340)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !551, file: !552, line: 232, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!558, !480, !563, !308, !573}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !293, line: 55, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !560, line: 72, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !560, line: 16, baseType: !576)
!576 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !542, file: !475, line: 141, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !542, file: !475, line: 142, baseType: !580, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !552, line: 84, size: 320, elements: !584)
!584 = !{!585, !586, !590, !3286, !3287}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !552, line: 85, baseType: !308, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !583, file: !552, line: 86, baseType: !587, size: 64, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!568, !480, !563, !325}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !583, file: !552, line: 88, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!568, !480, !594, !325}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !552, line: 168, size: 448, elements: !596)
!596 = !{!597, !598, !599, !600, !3281, !3282}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !595, file: !552, line: 169, baseType: !564, size: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !552, line: 170, baseType: !573, size: 64, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !595, file: !552, line: 171, baseType: !291, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !595, file: !552, line: 172, baseType: !601, size: 64, offset: 256)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!558, !604, !480, !594, !331, !772, !573}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !606)
!606 = !{!607, !625, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3264, !3265, !3274, !3275, !3276, !3277, !3278, !3279, !3280}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !605, file: !208, line: 920, baseType: !608, size: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !605, file: !208, line: 917, size: 128, elements: !609)
!609 = !{!610, !616}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !608, file: !208, line: 918, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !612, line: 58, size: 64, elements: !613)
!612 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !611, file: !612, line: 59, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !608, file: !208, line: 919, baseType: !617, size: 128, align: 64)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !293, line: 216, size: 128, align: 64, elements: !618)
!618 = !{!619, !621}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !617, file: !293, line: 217, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !617, file: !293, line: 218, baseType: !622, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DISubroutineType(types: !624)
!624 = !{null, !620}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !605, file: !208, line: 921, baseType: !626, size: 128, offset: 128)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !627, line: 8, size: 128, elements: !628)
!627 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629, !633}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !626, file: !627, line: 9, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !632, line: 18, flags: DIFlagFwdDecl)
!632 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !626, file: !627, line: 10, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !632, line: 89, size: 1536, elements: !636)
!636 = !{!637, !638, !648, !656, !657, !672, !3215, !3217, !3229, !3230, !3231, !3232, !3233, !3238, !3239, !3240}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !635, file: !632, line: 91, baseType: !7, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !635, file: !632, line: 92, baseType: !639, size: 32, offset: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !640, line: 277, baseType: !641)
!640 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !640, line: 277, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !641, file: !640, line: 277, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !640, line: 70, baseType: !645)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !640, line: 65, size: 32, elements: !646)
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !645, file: !640, line: 66, baseType: !7, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !635, file: !632, line: 93, baseType: !649, size: 128, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !650, line: 38, size: 128, elements: !651)
!650 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!651 = !{!652, !654}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !649, file: !650, line: 39, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !649, file: !650, line: 39, baseType: !655, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !635, file: !632, line: 94, baseType: !634, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !635, file: !632, line: 95, baseType: !658, size: 128, offset: 256)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !632, line: 47, size: 128, elements: !659)
!659 = !{!660, !669}
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !658, file: !632, line: 48, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !658, file: !632, line: 48, size: 64, elements: !662)
!662 = !{!663, !668}
!663 = !DIDerivedType(tag: DW_TAG_member, scope: !661, file: !632, line: 49, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !632, line: 49, size: 64, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !664, file: !632, line: 50, baseType: !416, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !664, file: !632, line: 50, baseType: !416, size: 32, offset: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !661, file: !632, line: 52, baseType: !294, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !658, file: !632, line: 54, baseType: !670, size: 64, offset: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !348)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !635, file: !632, line: 96, baseType: !673, size: 64, offset: 384)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !675)
!675 = !{!676, !677, !678, !686, !693, !694, !839, !2909, !2910, !2911, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !3183, !3191, !3192, !3193, !3211, !3212, !3213, !3214}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !674, file: !208, line: 611, baseType: !568, size: 16)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !674, file: !208, line: 612, baseType: !340, size: 16, offset: 16)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !674, file: !208, line: 613, baseType: !679, size: 32, offset: 32)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !680, line: 23, baseType: !681)
!680 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 21, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !680, line: 22, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !293, line: 32, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !560, line: 49, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !674, file: !208, line: 614, baseType: !687, size: 32, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !680, line: 28, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !680, line: 26, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !680, line: 27, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !293, line: 33, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !560, line: 50, baseType: !7)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !674, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !674, file: !208, line: 622, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !698)
!698 = !{!699, !703, !713, !717, !723, !727, !733, !737, !741, !745, !749, !750, !756, !760, !786, !815, !819, !825, !830, !834, !835}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !697, file: !208, line: 1865, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!634, !673, !634, !7}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !697, file: !208, line: 1866, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!308, !634, !673, !707}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !709, line: 10, size: 128, elements: !710)
!709 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !708, file: !709, line: 11, baseType: !333, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !708, file: !709, line: 12, baseType: !291, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !697, file: !208, line: 1867, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!325, !673, !325}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !697, file: !208, line: 1868, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!721, !673, !325}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !697, file: !208, line: 1870, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!325, !634, !331, !325}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !697, file: !208, line: 1872, baseType: !728, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DISubroutineType(types: !730)
!730 = !{!325, !673, !634, !568, !731}
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !293, line: 30, baseType: !732)
!732 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !697, file: !208, line: 1873, baseType: !734, size: 64, offset: 384)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!325, !634, !673, !634}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !697, file: !208, line: 1874, baseType: !738, size: 64, offset: 448)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!325, !673, !634}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !697, file: !208, line: 1875, baseType: !742, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!325, !673, !634, !308}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !697, file: !208, line: 1876, baseType: !746, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!325, !673, !634, !568}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !697, file: !208, line: 1877, baseType: !738, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !697, file: !208, line: 1878, baseType: !751, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!325, !673, !634, !568, !754}
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !293, line: 16, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !293, line: 13, baseType: !416)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !697, file: !208, line: 1879, baseType: !757, size: 64, offset: 768)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!325, !673, !634, !673, !634, !7}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !697, file: !208, line: 1881, baseType: !761, size: 64, offset: 832)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{!325, !634, !764}
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !766)
!766 = !{!767, !768, !769, !770, !771, !775, !783, !784, !785}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !765, file: !208, line: 220, baseType: !7, size: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !765, file: !208, line: 221, baseType: !568, size: 16, offset: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !765, file: !208, line: 222, baseType: !679, size: 32, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !765, file: !208, line: 223, baseType: !687, size: 32, offset: 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !765, file: !208, line: 224, baseType: !772, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !293, line: 46, baseType: !773)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !560, line: 88, baseType: !774)
!774 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !765, file: !208, line: 225, baseType: !776, size: 128, offset: 192)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !777, line: 13, size: 128, elements: !778)
!777 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!778 = !{!779, !782}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !776, file: !777, line: 14, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !777, line: 8, baseType: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !297, line: 30, baseType: !774)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !776, file: !777, line: 15, baseType: !562, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !765, file: !208, line: 226, baseType: !776, size: 128, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !765, file: !208, line: 227, baseType: !776, size: 128, offset: 448)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !765, file: !208, line: 234, baseType: !604, size: 64, offset: 576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !697, file: !208, line: 1882, baseType: !787, size: 64, offset: 896)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!325, !790, !792, !416, !7}
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !794, line: 22, size: 1152, elements: !795)
!794 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!795 = !{!796, !797, !798, !799, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !793, file: !794, line: 23, baseType: !416, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !793, file: !794, line: 24, baseType: !568, size: 16, offset: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !793, file: !794, line: 25, baseType: !7, size: 32, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !793, file: !794, line: 26, baseType: !800, size: 32, offset: 96)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !293, line: 104, baseType: !416)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !793, file: !794, line: 27, baseType: !294, size: 64, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !793, file: !794, line: 28, baseType: !294, size: 64, offset: 192)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !793, file: !794, line: 37, baseType: !294, size: 64, offset: 256)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !793, file: !794, line: 38, baseType: !754, size: 32, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !793, file: !794, line: 39, baseType: !754, size: 32, offset: 352)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !793, file: !794, line: 40, baseType: !679, size: 32, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !793, file: !794, line: 41, baseType: !687, size: 32, offset: 416)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !793, file: !794, line: 42, baseType: !772, size: 64, offset: 448)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !793, file: !794, line: 43, baseType: !776, size: 128, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !793, file: !794, line: 44, baseType: !776, size: 128, offset: 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !793, file: !794, line: 45, baseType: !776, size: 128, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !793, file: !794, line: 46, baseType: !776, size: 128, offset: 896)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !793, file: !794, line: 47, baseType: !294, size: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !793, file: !794, line: 48, baseType: !294, size: 64, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !697, file: !208, line: 1883, baseType: !816, size: 64, offset: 960)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!558, !634, !331, !573}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !697, file: !208, line: 1884, baseType: !820, size: 64, offset: 1024)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!325, !673, !823, !294, !294}
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !697, file: !208, line: 1886, baseType: !826, size: 64, offset: 1088)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!325, !673, !829, !325}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !697, file: !208, line: 1887, baseType: !831, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!325, !673, !634, !604, !7, !568}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !697, file: !208, line: 1890, baseType: !746, size: 64, offset: 1216)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !697, file: !208, line: 1891, baseType: !836, size: 64, offset: 1280)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!325, !673, !721, !325}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !674, file: !208, line: 623, baseType: !840, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !842)
!842 = !{!843, !844, !845, !846, !847, !848, !895, !2517, !2599, !2682, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2698, !2702, !2703, !2706, !2707, !2710, !2711, !2712, !2753, !2779, !2780, !2781, !2782, !2783, !2784, !2787, !2789, !2796, !2797, !2799, !2800, !2801, !2860, !2861, !2876, !2877, !2878, !2879, !2880, !2883, !2884, !2885, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !841, file: !208, line: 1417, baseType: !457, size: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !841, file: !208, line: 1418, baseType: !754, size: 32, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !841, file: !208, line: 1419, baseType: !348, size: 8, offset: 160)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !841, file: !208, line: 1420, baseType: !576, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !841, file: !208, line: 1421, baseType: !772, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !841, file: !208, line: 1422, baseType: !849, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !851)
!851 = !{!852, !853, !854, !861, !865, !869, !873, !874, !875, !885, !888, !889, !890, !892, !893, !894}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !850, file: !208, line: 2229, baseType: !308, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !850, file: !208, line: 2230, baseType: !325, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !850, file: !208, line: 2238, baseType: !855, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!325, !858}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !860, line: 28, flags: DIFlagFwdDecl)
!860 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!861 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !850, file: !208, line: 2239, baseType: !862, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !850, file: !208, line: 2240, baseType: !866, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!634, !849, !325, !308, !291}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !850, file: !208, line: 2242, baseType: !870, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{null, !840}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !850, file: !208, line: 2243, baseType: !312, size: 64, offset: 384)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !208, line: 2244, baseType: !849, size: 64, offset: 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !850, file: !208, line: 2245, baseType: !876, size: 64, offset: 512)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !293, line: 182, size: 64, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !876, file: !293, line: 183, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !293, line: 186, size: 128, elements: !881)
!881 = !{!882, !883}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !880, file: !293, line: 187, baseType: !879, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !880, file: !293, line: 187, baseType: !884, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !850, file: !208, line: 2247, baseType: !886, offset: 576)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !887, line: 187, elements: !501)
!887 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!888 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !850, file: !208, line: 2248, baseType: !886, offset: 576)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !850, file: !208, line: 2249, baseType: !886, offset: 576)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !850, file: !208, line: 2250, baseType: !891, offset: 576)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !886, elements: !528)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !850, file: !208, line: 2252, baseType: !886, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !850, file: !208, line: 2253, baseType: !886, offset: 576)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !850, file: !208, line: 2254, baseType: !886, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !841, file: !208, line: 1423, baseType: !896, size: 64, offset: 384)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !899)
!899 = !{!900, !904, !908, !909, !913, !919, !923, !924, !925, !929, !933, !934, !935, !936, !942, !947, !948, !955, !956, !957, !958, !2501, !2516}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !898, file: !208, line: 1936, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!673, !840}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !898, file: !208, line: 1937, baseType: !905, size: 64, offset: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !673}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !898, file: !208, line: 1938, baseType: !905, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !898, file: !208, line: 1940, baseType: !910, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !673, !325}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !898, file: !208, line: 1941, baseType: !914, size: 64, offset: 256)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!325, !673, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !898, file: !208, line: 1942, baseType: !920, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!325, !673}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !898, file: !208, line: 1943, baseType: !905, size: 64, offset: 384)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !898, file: !208, line: 1944, baseType: !870, size: 64, offset: 448)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !898, file: !208, line: 1945, baseType: !926, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!325, !840, !325}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !898, file: !208, line: 1946, baseType: !930, size: 64, offset: 576)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!325, !840}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !898, file: !208, line: 1947, baseType: !930, size: 64, offset: 640)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !898, file: !208, line: 1948, baseType: !930, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !898, file: !208, line: 1949, baseType: !930, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !898, file: !208, line: 1950, baseType: !937, size: 64, offset: 832)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!325, !634, !940}
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !898, file: !208, line: 1951, baseType: !943, size: 64, offset: 896)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!325, !840, !946, !331}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !898, file: !208, line: 1952, baseType: !870, size: 64, offset: 960)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !898, file: !208, line: 1954, baseType: !949, size: 64, offset: 1024)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!325, !952, !634}
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !954, line: 539, flags: DIFlagFwdDecl)
!954 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!955 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !898, file: !208, line: 1955, baseType: !949, size: 64, offset: 1088)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !898, file: !208, line: 1956, baseType: !949, size: 64, offset: 1152)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !898, file: !208, line: 1957, baseType: !949, size: 64, offset: 1216)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !898, file: !208, line: 1963, baseType: !959, size: 64, offset: 1280)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DISubroutineType(types: !961)
!961 = !{!325, !840, !962, !292}
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !964, line: 68, size: 512, align: 128, elements: !965)
!964 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!965 = !{!966, !967, !2493, !2500}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !963, file: !964, line: 69, baseType: !576, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !964, line: 77, baseType: !968, size: 320, offset: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !964, line: 77, size: 320, elements: !969)
!969 = !{!970, !1151, !1156, !1184, !1192, !1198, !2485, !2492}
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 78, baseType: !971, size: 320)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 78, size: 320, elements: !972)
!972 = !{!973, !974, !1149, !1150}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !971, file: !964, line: 84, baseType: !457, size: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !971, file: !964, line: 86, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !977)
!977 = !{!978, !979, !986, !987, !988, !1003, !1019, !1020, !1021, !1022, !1142, !1143, !1146, !1147, !1148}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !976, file: !208, line: 452, baseType: !673, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !976, file: !208, line: 453, baseType: !980, size: 128, offset: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !981, line: 292, size: 128, elements: !982)
!981 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !980, file: !981, line: 293, baseType: !487)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !980, file: !981, line: 295, baseType: !292, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !980, file: !981, line: 296, baseType: !291, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !976, file: !208, line: 454, baseType: !292, size: 32, offset: 192)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !976, file: !208, line: 455, baseType: !446, size: 32, offset: 224)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !976, file: !208, line: 460, baseType: !989, size: 128, offset: 256)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !990, line: 125, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!991 = !{!992, !1002}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !989, file: !990, line: 126, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !990, line: 31, size: 64, elements: !994)
!994 = !{!995}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !993, file: !990, line: 32, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !990, line: 24, size: 192, align: 64, elements: !998)
!998 = !{!999, !1000, !1001}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !997, file: !990, line: 25, baseType: !576, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !997, file: !990, line: 26, baseType: !996, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !997, file: !990, line: 27, baseType: !996, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !989, file: !990, line: 127, baseType: !996, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !976, file: !208, line: 461, baseType: !1004, size: 256, offset: 384)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1005, line: 35, size: 256, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !{!1007, !1015, !1016, !1018}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1004, file: !1005, line: 36, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1009, line: 13, baseType: !1010)
!1009 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !293, line: 175, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !293, line: 173, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1011, file: !293, line: 174, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !295, line: 22, baseType: !781)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1004, file: !1005, line: 42, baseType: !1008, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1004, file: !1005, line: 46, baseType: !1017, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !488, line: 29, baseType: !495)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1004, file: !1005, line: 47, baseType: !457, size: 128, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !976, file: !208, line: 462, baseType: !576, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !976, file: !208, line: 463, baseType: !576, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !976, file: !208, line: 464, baseType: !576, size: 64, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !976, file: !208, line: 465, baseType: !1023, size: 64, offset: 832)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1025)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1026)
!1026 = !{!1027, !1031, !1035, !1039, !1043, !1047, !1053, !1059, !1063, !1068, !1072, !1076, !1080, !1106, !1110, !1116, !1117, !1118, !1122, !1127, !1131, !1138}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1025, file: !208, line: 368, baseType: !1028, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!325, !962, !917}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1025, file: !208, line: 369, baseType: !1032, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!325, !604, !962}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1025, file: !208, line: 372, baseType: !1036, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!325, !975, !917}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1025, file: !208, line: 375, baseType: !1040, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!325, !962}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1025, file: !208, line: 381, baseType: !1044, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!325, !604, !975, !460, !7}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1025, file: !208, line: 383, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{null, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1025, file: !208, line: 385, baseType: !1054, size: 64, offset: 384)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!325, !604, !975, !772, !7, !7, !1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1025, file: !208, line: 388, baseType: !1060, size: 64, offset: 448)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!325, !604, !975, !772, !7, !7, !962, !291}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1025, file: !208, line: 393, baseType: !1064, size: 64, offset: 512)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!1067, !975, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !293, line: 125, baseType: !294)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1025, file: !208, line: 394, baseType: !1069, size: 64, offset: 576)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !962, !7, !7}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1025, file: !208, line: 395, baseType: !1073, size: 64, offset: 640)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!325, !962, !292}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1025, file: !208, line: 396, baseType: !1077, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{null, !962}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1025, file: !208, line: 397, baseType: !1081, size: 64, offset: 768)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!558, !1084, !1104}
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1093, !1094, !1095, !1096, !1097}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1085, file: !208, line: 321, baseType: !604, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1085, file: !208, line: 326, baseType: !772, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1085, file: !208, line: 327, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DISubroutineType(types: !1092)
!1092 = !{null, !1084, !562, !562}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1085, file: !208, line: 328, baseType: !291, size: 64, offset: 192)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1085, file: !208, line: 329, baseType: !325, size: 32, offset: 256)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1085, file: !208, line: 330, baseType: !338, size: 16, offset: 288)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1085, file: !208, line: 331, baseType: !338, size: 16, offset: 304)
!1097 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !208, line: 332, baseType: !1098, size: 64, offset: 320)
!1098 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !208, line: 332, size: 64, elements: !1099)
!1099 = !{!1100, !1101}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1098, file: !208, line: 333, baseType: !7, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1098, file: !208, line: 334, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1025, file: !208, line: 402, baseType: !1107, size: 64, offset: 832)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!325, !975, !962, !962, !183}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1025, file: !208, line: 404, baseType: !1111, size: 64, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!731, !962, !1114}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1115, line: 305, baseType: !7)
!1115 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1025, file: !208, line: 405, baseType: !1077, size: 64, offset: 960)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1025, file: !208, line: 406, baseType: !1040, size: 64, offset: 1024)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1025, file: !208, line: 407, baseType: !1119, size: 64, offset: 1088)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!325, !962, !576, !576}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1025, file: !208, line: 409, baseType: !1123, size: 64, offset: 1152)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{null, !962, !1126, !1126}
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1025, file: !208, line: 410, baseType: !1128, size: 64, offset: 1216)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!325, !975, !962}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1025, file: !208, line: 413, baseType: !1132, size: 64, offset: 1280)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!325, !1135, !604, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1025, file: !208, line: 415, baseType: !1139, size: 64, offset: 1344)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !604}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !976, file: !208, line: 466, baseType: !576, size: 64, offset: 896)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !976, file: !208, line: 467, baseType: !1144, size: 32, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1145, line: 8, baseType: !416)
!1145 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !976, file: !208, line: 468, baseType: !487, offset: 992)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !976, file: !208, line: 469, baseType: !457, size: 128, offset: 1024)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !976, file: !208, line: 470, baseType: !291, size: 64, offset: 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !971, file: !964, line: 87, baseType: !576, size: 64, offset: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !971, file: !964, line: 94, baseType: !576, size: 64, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 96, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 96, size: 64, elements: !1153)
!1153 = !{!1154}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1152, file: !964, line: 101, baseType: !1155, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !293, line: 143, baseType: !294)
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 103, baseType: !1157, size: 320)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 103, size: 320, elements: !1158)
!1158 = !{!1159, !1169, !1172, !1173}
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !964, line: 104, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !964, line: 104, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1160, file: !964, line: 105, baseType: !457, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1160, file: !964, line: 106, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1160, file: !964, line: 106, size: 128, elements: !1165)
!1165 = !{!1166, !1167, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !964, line: 107, baseType: !962, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1164, file: !964, line: 109, baseType: !325, size: 32, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1164, file: !964, line: 110, baseType: !325, size: 32, offset: 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1157, file: !964, line: 117, baseType: !1170, size: 64, offset: 128)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !964, line: 117, flags: DIFlagFwdDecl)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1157, file: !964, line: 119, baseType: !291, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1157, file: !964, line: 120, baseType: !1174, size: 64, offset: 256)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1157, file: !964, line: 120, size: 64, elements: !1175)
!1175 = !{!1176, !1177, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1174, file: !964, line: 121, baseType: !291, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1174, file: !964, line: 122, baseType: !576, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !964, line: 123, baseType: !1179, size: 32)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !964, line: 123, size: 32, elements: !1180)
!1180 = !{!1181, !1182, !1183}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1179, file: !964, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1179, file: !964, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1179, file: !964, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 130, baseType: !1185, size: 192)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 130, size: 192, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1185, file: !964, line: 131, baseType: !576, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1185, file: !964, line: 134, baseType: !348, size: 8, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1185, file: !964, line: 135, baseType: !348, size: 8, offset: 72)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1185, file: !964, line: 136, baseType: !446, size: 32, offset: 96)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1185, file: !964, line: 137, baseType: !7, size: 32, offset: 128)
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 139, baseType: !1193, size: 256)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 139, size: 256, elements: !1194)
!1194 = !{!1195, !1196, !1197}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1193, file: !964, line: 140, baseType: !576, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1193, file: !964, line: 141, baseType: !446, size: 32, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1193, file: !964, line: 143, baseType: !457, size: 128, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 145, baseType: !1199, size: 256)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 145, size: 256, elements: !1200)
!1200 = !{!1201, !1202, !1204, !1205, !2484}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1199, file: !964, line: 146, baseType: !576, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1199, file: !964, line: 147, baseType: !1203, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !954, line: 509, baseType: !962)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1199, file: !964, line: 148, baseType: !576, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !964, line: 149, baseType: !1206, size: 64, offset: 192)
!1206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !964, line: 149, size: 64, elements: !1207)
!1207 = !{!1208, !2483}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1206, file: !964, line: 150, baseType: !1209, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !964, line: 388, size: 7296, elements: !1211)
!1211 = !{!1212, !2479}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !964, line: 389, baseType: !1213, size: 7296)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !964, line: 389, size: 7296, elements: !1214)
!1214 = !{!1215, !1253, !1254, !1255, !1259, !1260, !1261, !1262, !1263, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1304, !1312, !1315, !1361, !1362, !2463, !2464, !2467, !2468, !2469, !2472, !2473, !2474, !2477, !2478}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1213, file: !964, line: 390, baseType: !1216, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !964, line: 305, size: 1472, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1233, !1234, !1239, !1240, !1243, !1247, !1248, !1249, !1250, !1251}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1217, file: !964, line: 308, baseType: !576, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1217, file: !964, line: 309, baseType: !576, size: 64, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1217, file: !964, line: 313, baseType: !1216, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1217, file: !964, line: 313, baseType: !1216, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1217, file: !964, line: 315, baseType: !997, size: 192, align: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1217, file: !964, line: 323, baseType: !576, size: 64, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1217, file: !964, line: 327, baseType: !1209, size: 64, offset: 512)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1217, file: !964, line: 333, baseType: !1227, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !954, line: 284, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !954, line: 284, size: 64, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1228, file: !954, line: 284, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1232, line: 19, baseType: !576)
!1232 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1217, file: !964, line: 334, baseType: !576, size: 64, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1217, file: !964, line: 343, baseType: !1235, size: 256, offset: 704)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1217, file: !964, line: 340, size: 256, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1235, file: !964, line: 341, baseType: !997, size: 192, align: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1235, file: !964, line: 342, baseType: !576, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1217, file: !964, line: 351, baseType: !457, size: 128, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1217, file: !964, line: 353, baseType: !1241, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !964, line: 353, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1217, file: !964, line: 356, baseType: !1244, size: 64, offset: 1152)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1246)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !964, line: 356, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1217, file: !964, line: 359, baseType: !576, size: 64, offset: 1216)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1217, file: !964, line: 361, baseType: !604, size: 64, offset: 1280)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1217, file: !964, line: 362, baseType: !291, size: 64, offset: 1344)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1217, file: !964, line: 365, baseType: !1008, size: 64, offset: 1408)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1217, file: !964, line: 373, baseType: !1252, offset: 1472)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !964, line: 296, elements: !501)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1213, file: !964, line: 391, baseType: !993, size: 64, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1213, file: !964, line: 392, baseType: !294, size: 64, offset: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1213, file: !964, line: 394, baseType: !1256, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DISubroutineType(types: !1258)
!1258 = !{!576, !604, !576, !576, !576, !576}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1213, file: !964, line: 398, baseType: !576, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1213, file: !964, line: 399, baseType: !576, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1213, file: !964, line: 405, baseType: !576, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1213, file: !964, line: 406, baseType: !576, size: 64, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1213, file: !964, line: 407, baseType: !1264, size: 64, offset: 512)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !954, line: 286, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !954, line: 286, size: 64, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1266, file: !954, line: 286, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1232, line: 18, baseType: !576)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1213, file: !964, line: 416, baseType: !446, size: 32, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1213, file: !964, line: 428, baseType: !446, size: 32, offset: 608)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1213, file: !964, line: 437, baseType: !446, size: 32, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1213, file: !964, line: 447, baseType: !446, size: 32, offset: 672)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1213, file: !964, line: 450, baseType: !1008, size: 64, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1213, file: !964, line: 452, baseType: !325, size: 32, offset: 768)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1213, file: !964, line: 454, baseType: !487, offset: 800)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1213, file: !964, line: 457, baseType: !1004, size: 256, offset: 832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1213, file: !964, line: 459, baseType: !457, size: 128, offset: 1088)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1213, file: !964, line: 466, baseType: !576, size: 64, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1213, file: !964, line: 467, baseType: !576, size: 64, offset: 1280)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1213, file: !964, line: 469, baseType: !576, size: 64, offset: 1344)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1213, file: !964, line: 470, baseType: !576, size: 64, offset: 1408)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1213, file: !964, line: 471, baseType: !1010, size: 64, offset: 1472)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1213, file: !964, line: 472, baseType: !576, size: 64, offset: 1536)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1213, file: !964, line: 473, baseType: !576, size: 64, offset: 1600)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1213, file: !964, line: 474, baseType: !576, size: 64, offset: 1664)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1213, file: !964, line: 475, baseType: !576, size: 64, offset: 1728)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1213, file: !964, line: 477, baseType: !487, offset: 1792)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1213, file: !964, line: 478, baseType: !576, size: 64, offset: 1792)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1213, file: !964, line: 478, baseType: !576, size: 64, offset: 1856)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1213, file: !964, line: 478, baseType: !576, size: 64, offset: 1920)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1213, file: !964, line: 478, baseType: !576, size: 64, offset: 1984)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1213, file: !964, line: 479, baseType: !576, size: 64, offset: 2048)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1213, file: !964, line: 479, baseType: !576, size: 64, offset: 2112)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1213, file: !964, line: 479, baseType: !576, size: 64, offset: 2176)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1213, file: !964, line: 480, baseType: !576, size: 64, offset: 2240)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1213, file: !964, line: 480, baseType: !576, size: 64, offset: 2304)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1213, file: !964, line: 480, baseType: !576, size: 64, offset: 2368)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1213, file: !964, line: 480, baseType: !576, size: 64, offset: 2432)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1213, file: !964, line: 482, baseType: !1301, size: 2816, offset: 2496)
!1301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 2816, elements: !1302)
!1302 = !{!1303}
!1303 = !DISubrange(count: 44)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1213, file: !964, line: 488, baseType: !1305, size: 256, offset: 5312)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1306, line: 60, size: 256, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1305, file: !1306, line: 61, baseType: !1309, size: 256)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1008, size: 256, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 4)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1213, file: !964, line: 490, baseType: !1313, size: 64, offset: 5568)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !964, line: 490, flags: DIFlagFwdDecl)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1213, file: !964, line: 493, baseType: !1316, size: 896, offset: 5632)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1317, line: 53, baseType: !1318)
!1317 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1317, line: 13, size: 896, elements: !1319)
!1319 = !{!1320, !1321, !1322, !1323, !1326, !1327, !1334, !1335, !1355, !1356, !1357}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1318, file: !1317, line: 18, baseType: !294, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1318, file: !1317, line: 28, baseType: !1010, size: 64, offset: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1318, file: !1317, line: 31, baseType: !1004, size: 256, offset: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1318, file: !1317, line: 32, baseType: !1324, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1317, line: 32, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1318, file: !1317, line: 37, baseType: !340, size: 16, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1318, file: !1317, line: 40, baseType: !1328, size: 192, offset: 512)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1329, line: 53, size: 192, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1328, file: !1329, line: 54, baseType: !1008, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1328, file: !1329, line: 55, baseType: !487, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1328, file: !1329, line: 59, baseType: !457, size: 128, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1318, file: !1317, line: 41, baseType: !291, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1318, file: !1317, line: 42, baseType: !1336, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1339, line: 13, size: 896, elements: !1340)
!1339 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1338, file: !1339, line: 14, baseType: !291, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1338, file: !1339, line: 15, baseType: !576, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1338, file: !1339, line: 17, baseType: !576, size: 64, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1338, file: !1339, line: 17, baseType: !576, size: 64, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1338, file: !1339, line: 19, baseType: !562, size: 64, offset: 256)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1338, file: !1339, line: 21, baseType: !562, size: 64, offset: 320)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1338, file: !1339, line: 22, baseType: !562, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1338, file: !1339, line: 23, baseType: !562, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1338, file: !1339, line: 24, baseType: !562, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1338, file: !1339, line: 25, baseType: !562, size: 64, offset: 576)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1338, file: !1339, line: 26, baseType: !562, size: 64, offset: 640)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1338, file: !1339, line: 27, baseType: !562, size: 64, offset: 704)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1338, file: !1339, line: 28, baseType: !562, size: 64, offset: 768)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1338, file: !1339, line: 29, baseType: !562, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1318, file: !1317, line: 44, baseType: !446, size: 32, offset: 832)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1318, file: !1317, line: 50, baseType: !338, size: 16, offset: 864)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1318, file: !1317, line: 51, baseType: !1358, size: 16, offset: 880)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !295, line: 18, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !297, line: 23, baseType: !1360)
!1360 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1213, file: !964, line: 495, baseType: !576, size: 64, offset: 6528)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1213, file: !964, line: 497, baseType: !1363, size: 64, offset: 6592)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !964, line: 381, size: 384, elements: !1365)
!1365 = !{!1366, !1367, !2462}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1364, file: !964, line: 382, baseType: !446, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1364, file: !964, line: 383, baseType: !1368, size: 128, offset: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !964, line: 376, size: 128, elements: !1369)
!1369 = !{!1370, !2460}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1368, file: !964, line: 377, baseType: !1371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1373, line: 640, size: 48640, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375, !1381, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1396, !1414, !1425, !1506, !1507, !1508, !1519, !1520, !1522, !1523, !1524, !1525, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1609, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1647, !1649, !1650, !1651, !1663, !1664, !1665, !1666, !1667, !1668, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1692, !1697, !1879, !1880, !1881, !1882, !1886, !1889, !1892, !1895, !1898, !1901, !2002, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2048, !2049, !2050, !2051, !2052, !2057, !2058, !2059, !2062, !2063, !2066, !2069, !2072, !2075, !2118, !2121, !2122, !2201, !2202, !2205, !2206, !2209, !2210, !2211, !2215, !2216, !2217, !2230, !2231, !2232, !2242, !2247, !2250, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1372, file: !1373, line: 646, baseType: !1376, size: 128)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1377, line: 56, size: 128, elements: !1378)
!1377 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1376, file: !1377, line: 57, baseType: !576, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1376, file: !1377, line: 58, baseType: !416, size: 32, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1372, file: !1373, line: 649, baseType: !1382, size: 64, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !562)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1372, file: !1373, line: 657, baseType: !291, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1372, file: !1373, line: 658, baseType: !441, size: 32, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1372, file: !1373, line: 660, baseType: !7, size: 32, offset: 288)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1372, file: !1373, line: 661, baseType: !7, size: 32, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1372, file: !1373, line: 684, baseType: !325, size: 32, offset: 352)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1372, file: !1373, line: 686, baseType: !325, size: 32, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1372, file: !1373, line: 687, baseType: !325, size: 32, offset: 416)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1372, file: !1373, line: 688, baseType: !325, size: 32, offset: 448)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1372, file: !1373, line: 689, baseType: !7, size: 32, offset: 480)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1372, file: !1373, line: 691, baseType: !1393, size: 64, offset: 512)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1373, line: 691, flags: DIFlagFwdDecl)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1372, file: !1373, line: 692, baseType: !1397, size: 832, offset: 576)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1373, line: 451, size: 832, elements: !1398)
!1398 = !{!1399, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1397, file: !1373, line: 453, baseType: !1400, size: 128)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1373, line: 325, size: 128, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1400, file: !1373, line: 326, baseType: !576, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1400, file: !1373, line: 327, baseType: !416, size: 32, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1397, file: !1373, line: 454, baseType: !997, size: 192, align: 64, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1397, file: !1373, line: 455, baseType: !457, size: 128, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1397, file: !1373, line: 456, baseType: !7, size: 32, offset: 448)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1397, file: !1373, line: 458, baseType: !294, size: 64, offset: 512)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1397, file: !1373, line: 459, baseType: !294, size: 64, offset: 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1397, file: !1373, line: 460, baseType: !294, size: 64, offset: 640)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1397, file: !1373, line: 461, baseType: !294, size: 64, offset: 704)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1397, file: !1373, line: 463, baseType: !294, size: 64, offset: 768)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1397, file: !1373, line: 465, baseType: !1413, offset: 832)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1373, line: 415, elements: !501)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1372, file: !1373, line: 693, baseType: !1415, size: 384, offset: 1408)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1373, line: 489, size: 384, elements: !1416)
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1415, file: !1373, line: 490, baseType: !457, size: 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1415, file: !1373, line: 491, baseType: !576, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1415, file: !1373, line: 492, baseType: !576, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1415, file: !1373, line: 493, baseType: !7, size: 32, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1415, file: !1373, line: 494, baseType: !340, size: 16, offset: 288)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1415, file: !1373, line: 495, baseType: !340, size: 16, offset: 304)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1415, file: !1373, line: 497, baseType: !1424, size: 64, offset: 320)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1372, file: !1373, line: 697, baseType: !1426, size: 1792, offset: 1792)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1373, line: 507, size: 1792, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1503, !1504}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1426, file: !1373, line: 508, baseType: !997, size: 192, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1426, file: !1373, line: 515, baseType: !294, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1426, file: !1373, line: 516, baseType: !294, size: 64, offset: 256)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1426, file: !1373, line: 517, baseType: !294, size: 64, offset: 320)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1426, file: !1373, line: 518, baseType: !294, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1426, file: !1373, line: 519, baseType: !294, size: 64, offset: 448)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1426, file: !1373, line: 526, baseType: !1014, size: 64, offset: 512)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1426, file: !1373, line: 527, baseType: !294, size: 64, offset: 576)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1426, file: !1373, line: 528, baseType: !7, size: 32, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1426, file: !1373, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1426, file: !1373, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1426, file: !1373, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1426, file: !1373, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1426, file: !1373, line: 563, baseType: !1442, size: 512, offset: 704)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1443)
!1443 = !{!1444, !1452, !1453, !1458, !1499, !1500, !1501, !1502}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1442, file: !191, line: 119, baseType: !1445, size: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1446, line: 9, size: 256, elements: !1447)
!1446 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1447 = !{!1448, !1449}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1445, file: !1446, line: 10, baseType: !997, size: 192, align: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1445, file: !1446, line: 11, baseType: !1450, size: 64, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1451, line: 29, baseType: !1014)
!1451 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1442, file: !191, line: 120, baseType: !1450, size: 64, offset: 256)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1442, file: !191, line: 121, baseType: !1454, size: 64, offset: 320)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!190, !1457}
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1442, file: !191, line: 122, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1461)
!1461 = !{!1462, !1480, !1481, !1484, !1489, !1490, !1494, !1498}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1460, file: !191, line: 160, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1464, file: !191, line: 215, baseType: !1017)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1464, file: !191, line: 216, baseType: !7, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1464, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1464, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1464, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1464, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1464, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1464, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1464, file: !191, line: 233, baseType: !1450, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1464, file: !191, line: 234, baseType: !1457, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1464, file: !191, line: 235, baseType: !1450, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1464, file: !191, line: 236, baseType: !1457, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1464, file: !191, line: 237, baseType: !1479, size: 4096, offset: 512)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1460, size: 4096, elements: !427)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1460, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1460, file: !191, line: 162, baseType: !1482, size: 32, offset: 96)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !293, line: 27, baseType: !1483)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !560, line: 96, baseType: !325)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1460, file: !191, line: 163, baseType: !1485, size: 32, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !640, line: 276, baseType: !1486)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !640, line: 276, size: 32, elements: !1487)
!1487 = !{!1488}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1486, file: !640, line: 276, baseType: !644, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1460, file: !191, line: 164, baseType: !1457, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1460, file: !191, line: 165, baseType: !1491, size: 128, offset: 256)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1446, line: 14, size: 128, elements: !1492)
!1492 = !{!1493}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1491, file: !1446, line: 15, baseType: !989, size: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1460, file: !191, line: 166, baseType: !1495, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{!1450}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1460, file: !191, line: 167, baseType: !1450, size: 64, offset: 448)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1442, file: !191, line: 123, baseType: !346, size: 8, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1442, file: !191, line: 124, baseType: !346, size: 8, offset: 456)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1442, file: !191, line: 125, baseType: !346, size: 8, offset: 464)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1442, file: !191, line: 126, baseType: !346, size: 8, offset: 472)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1426, file: !1373, line: 572, baseType: !1442, size: 512, offset: 1216)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1426, file: !1373, line: 580, baseType: !1505, size: 64, offset: 1728)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1372, file: !1373, line: 721, baseType: !7, size: 32, offset: 3584)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1372, file: !1373, line: 722, baseType: !325, size: 32, offset: 3616)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1372, file: !1373, line: 723, baseType: !1509, size: 64, offset: 3648)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1512, line: 17, baseType: !1513)
!1512 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1512, line: 17, size: 64, elements: !1514)
!1514 = !{!1515}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1513, file: !1512, line: 17, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DISubrange(count: 1)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1372, file: !1373, line: 724, baseType: !1511, size: 64, offset: 3712)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1372, file: !1373, line: 749, baseType: !1521, offset: 3776)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1373, line: 290, elements: !501)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1372, file: !1373, line: 751, baseType: !457, size: 128, offset: 3776)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1372, file: !1373, line: 757, baseType: !1209, size: 64, offset: 3904)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1372, file: !1373, line: 758, baseType: !1209, size: 64, offset: 3968)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1372, file: !1373, line: 761, baseType: !1526, size: 320, offset: 4032)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1306, line: 34, size: 320, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1526, file: !1306, line: 35, baseType: !294, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1526, file: !1306, line: 36, baseType: !1530, size: 256, offset: 64)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1216, size: 256, elements: !1310)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1372, file: !1373, line: 766, baseType: !325, size: 32, offset: 4352)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1372, file: !1373, line: 767, baseType: !325, size: 32, offset: 4384)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1372, file: !1373, line: 768, baseType: !325, size: 32, offset: 4416)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1372, file: !1373, line: 770, baseType: !325, size: 32, offset: 4448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1372, file: !1373, line: 772, baseType: !576, size: 64, offset: 4480)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1372, file: !1373, line: 775, baseType: !7, size: 32, offset: 4544)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1372, file: !1373, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1372, file: !1373, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1372, file: !1373, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1372, file: !1373, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1372, file: !1373, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1372, file: !1373, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1372, file: !1373, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1372, file: !1373, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1372, file: !1373, line: 831, baseType: !576, size: 64, offset: 4672)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1372, file: !1373, line: 833, baseType: !1547, size: 384, offset: 4736)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1548)
!1548 = !{!1549, !1554}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1547, file: !196, line: 26, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!562, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !196, line: 27, baseType: !1555, size: 320, offset: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !196, line: 27, size: 320, elements: !1556)
!1556 = !{!1557, !1567, !1594}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1555, file: !196, line: 36, baseType: !1558, size: 320)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !196, line: 29, size: 320, elements: !1559)
!1559 = !{!1560, !1562, !1563, !1564, !1565, !1566}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1558, file: !196, line: 30, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1558, file: !196, line: 31, baseType: !416, size: 32, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1558, file: !196, line: 32, baseType: !416, size: 32, offset: 96)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1558, file: !196, line: 33, baseType: !416, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1558, file: !196, line: 34, baseType: !294, size: 64, offset: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1558, file: !196, line: 35, baseType: !1561, size: 64, offset: 256)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1555, file: !196, line: 46, baseType: !1568, size: 192)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !196, line: 38, size: 192, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1593}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1568, file: !196, line: 39, baseType: !1482, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1568, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, scope: !1568, file: !196, line: 41, baseType: !1573, size: 64, offset: 64)
!1573 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1568, file: !196, line: 41, size: 64, elements: !1574)
!1574 = !{!1575, !1583}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1573, file: !196, line: 42, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1578, line: 7, size: 128, elements: !1579)
!1578 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1577, file: !1578, line: 8, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !560, line: 93, baseType: !774)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1577, file: !1578, line: 9, baseType: !774, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1573, file: !196, line: 43, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1586, line: 7, size: 64, elements: !1587)
!1586 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1587 = !{!1588, !1592}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1585, file: !1586, line: 8, baseType: !1589, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1586, line: 5, baseType: !1590)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !295, line: 20, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !297, line: 26, baseType: !325)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1585, file: !1586, line: 9, baseType: !1590, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1568, file: !196, line: 45, baseType: !294, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1555, file: !196, line: 54, baseType: !1595, size: 256)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !196, line: 48, size: 256, elements: !1596)
!1596 = !{!1597, !1605, !1606, !1607, !1608}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1595, file: !196, line: 49, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1600, line: 36, size: 64, elements: !1601)
!1600 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1601 = !{!1602, !1603, !1604}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1599, file: !1600, line: 37, baseType: !325, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1599, file: !1600, line: 38, baseType: !1360, size: 16, offset: 32)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1599, file: !1600, line: 39, baseType: !1360, size: 16, offset: 48)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1595, file: !196, line: 50, baseType: !325, size: 32, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1595, file: !196, line: 51, baseType: !325, size: 32, offset: 96)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1595, file: !196, line: 52, baseType: !576, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1595, file: !196, line: 53, baseType: !576, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1372, file: !1373, line: 835, baseType: !1610, size: 32, offset: 5120)
!1610 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !293, line: 22, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !560, line: 28, baseType: !325)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1372, file: !1373, line: 836, baseType: !1610, size: 32, offset: 5152)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1372, file: !1373, line: 840, baseType: !576, size: 64, offset: 5184)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1372, file: !1373, line: 849, baseType: !1371, size: 64, offset: 5248)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1372, file: !1373, line: 852, baseType: !1371, size: 64, offset: 5312)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1372, file: !1373, line: 857, baseType: !457, size: 128, offset: 5376)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1372, file: !1373, line: 858, baseType: !457, size: 128, offset: 5504)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1372, file: !1373, line: 859, baseType: !1371, size: 64, offset: 5632)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1372, file: !1373, line: 867, baseType: !457, size: 128, offset: 5696)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1372, file: !1373, line: 868, baseType: !457, size: 128, offset: 5824)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1372, file: !1373, line: 871, baseType: !1622, size: 64, offset: 5952)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628, !1630, !1631, !1638, !1639}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1623, file: !217, line: 61, baseType: !441, size: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1623, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1623, file: !217, line: 63, baseType: !487, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1623, file: !217, line: 65, baseType: !1629, size: 256, offset: 64)
!1629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 256, elements: !1310)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1623, file: !217, line: 66, baseType: !876, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1623, file: !217, line: 68, baseType: !1632, size: 128, offset: 384)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1633, line: 40, baseType: !1634)
!1633 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1633, line: 36, size: 128, elements: !1635)
!1635 = !{!1636, !1637}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1634, file: !1633, line: 37, baseType: !487)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1634, file: !1633, line: 38, baseType: !457, size: 128)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1623, file: !217, line: 69, baseType: !617, size: 128, align: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1623, file: !217, line: 70, baseType: !1640, size: 128, offset: 640)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 128, elements: !1517)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1641, file: !217, line: 55, baseType: !325, size: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1641, file: !217, line: 56, baseType: !1645, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1372, file: !1373, line: 872, baseType: !1648, size: 512, offset: 6016)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !880, size: 512, elements: !1310)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1372, file: !1373, line: 873, baseType: !457, size: 128, offset: 6528)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1372, file: !1373, line: 874, baseType: !457, size: 128, offset: 6656)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1372, file: !1373, line: 876, baseType: !1652, size: 64, offset: 6784)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1654, line: 26, size: 192, elements: !1655)
!1654 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1653, file: !1654, line: 27, baseType: !7, size: 32)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1653, file: !1654, line: 28, baseType: !1658, size: 128, offset: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1659, line: 43, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1658, file: !1659, line: 44, baseType: !1017)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1658, file: !1659, line: 45, baseType: !457, size: 128)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1372, file: !1373, line: 879, baseType: !946, size: 64, offset: 6848)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1372, file: !1373, line: 882, baseType: !946, size: 64, offset: 6912)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1372, file: !1373, line: 884, baseType: !294, size: 64, offset: 6976)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1372, file: !1373, line: 885, baseType: !294, size: 64, offset: 7040)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1372, file: !1373, line: 890, baseType: !294, size: 64, offset: 7104)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1372, file: !1373, line: 891, baseType: !1669, size: 128, offset: 7168)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1373, line: 242, size: 128, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1669, file: !1373, line: 244, baseType: !294, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1669, file: !1373, line: 245, baseType: !294, size: 64, offset: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1669, file: !1373, line: 246, baseType: !1017, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1372, file: !1373, line: 900, baseType: !576, size: 64, offset: 7296)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1372, file: !1373, line: 901, baseType: !576, size: 64, offset: 7360)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1372, file: !1373, line: 904, baseType: !294, size: 64, offset: 7424)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1372, file: !1373, line: 907, baseType: !294, size: 64, offset: 7488)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1372, file: !1373, line: 910, baseType: !576, size: 64, offset: 7552)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1372, file: !1373, line: 911, baseType: !576, size: 64, offset: 7616)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1372, file: !1373, line: 914, baseType: !1681, size: 640, offset: 7680)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1682, line: 123, size: 640, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !{!1684, !1690, !1691}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1681, file: !1682, line: 124, baseType: !1685, size: 576)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1686, size: 576, elements: !528)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1682, line: 108, size: 192, elements: !1687)
!1687 = !{!1688, !1689}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1686, file: !1682, line: 109, baseType: !294, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1686, file: !1682, line: 110, baseType: !1491, size: 128, offset: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1681, file: !1682, line: 125, baseType: !7, size: 32, offset: 576)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1681, file: !1682, line: 126, baseType: !7, size: 32, offset: 608)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1372, file: !1373, line: 917, baseType: !1693, size: 192, offset: 8320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1682, line: 134, size: 192, elements: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1693, file: !1682, line: 135, baseType: !617, size: 128, align: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1693, file: !1682, line: 136, baseType: !7, size: 32, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1372, file: !1373, line: 923, baseType: !1698, size: 64, offset: 8512)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1700)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1701, line: 111, size: 1280, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1722, !1723, !1724, !1725, !1726, !1727, !1832, !1833, !1834, !1835, !1861, !1864, !1874}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1700, file: !1701, line: 112, baseType: !446, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1700, file: !1701, line: 120, baseType: !679, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1700, file: !1701, line: 121, baseType: !687, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1700, file: !1701, line: 122, baseType: !679, size: 32, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1700, file: !1701, line: 123, baseType: !687, size: 32, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1700, file: !1701, line: 124, baseType: !679, size: 32, offset: 160)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1700, file: !1701, line: 125, baseType: !687, size: 32, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1700, file: !1701, line: 126, baseType: !679, size: 32, offset: 224)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1700, file: !1701, line: 127, baseType: !687, size: 32, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1700, file: !1701, line: 128, baseType: !7, size: 32, offset: 288)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1700, file: !1701, line: 129, baseType: !1714, size: 64, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1715, line: 26, baseType: !1716)
!1715 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1715, line: 24, size: 64, elements: !1717)
!1717 = !{!1718}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1716, file: !1715, line: 25, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 64, elements: !1720)
!1720 = !{!1721}
!1721 = !DISubrange(count: 2)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1700, file: !1701, line: 130, baseType: !1714, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1700, file: !1701, line: 131, baseType: !1714, size: 64, offset: 448)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1700, file: !1701, line: 132, baseType: !1714, size: 64, offset: 512)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1700, file: !1701, line: 133, baseType: !1714, size: 64, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1700, file: !1701, line: 135, baseType: !348, size: 8, offset: 640)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1700, file: !1701, line: 137, baseType: !1728, size: 64, offset: 704)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1730, line: 189, size: 1664, elements: !1731)
!1730 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1731 = !{!1732, !1733, !1736, !1741, !1742, !1745, !1746, !1751, !1752, !1753, !1754, !1756, !1757, !1758, !1759, !1760, !1796, !1817}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1729, file: !1730, line: 190, baseType: !441, size: 32)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1729, file: !1730, line: 191, baseType: !1734, size: 32, offset: 32)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1730, line: 28, baseType: !1735)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !293, line: 98, baseType: !1590)
!1736 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 192, baseType: !1737, size: 192, offset: 64)
!1737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 192, size: 192, elements: !1738)
!1738 = !{!1739, !1740}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1737, file: !1730, line: 193, baseType: !457, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1737, file: !1730, line: 194, baseType: !997, size: 192, align: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1729, file: !1730, line: 199, baseType: !1004, size: 256, offset: 256)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1729, file: !1730, line: 200, baseType: !1743, size: 64, offset: 512)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1730, line: 200, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1729, file: !1730, line: 201, baseType: !291, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 202, baseType: !1747, size: 64, offset: 640)
!1747 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 202, size: 64, elements: !1748)
!1748 = !{!1749, !1750}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1747, file: !1730, line: 203, baseType: !780, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1747, file: !1730, line: 204, baseType: !780, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1729, file: !1730, line: 206, baseType: !780, size: 64, offset: 704)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1729, file: !1730, line: 207, baseType: !679, size: 32, offset: 768)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1729, file: !1730, line: 208, baseType: !687, size: 32, offset: 800)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1729, file: !1730, line: 209, baseType: !1755, size: 32, offset: 832)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1730, line: 31, baseType: !800)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1729, file: !1730, line: 210, baseType: !340, size: 16, offset: 864)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1729, file: !1730, line: 211, baseType: !340, size: 16, offset: 880)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1729, file: !1730, line: 215, baseType: !1360, size: 16, offset: 896)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1729, file: !1730, line: 222, baseType: !576, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 239, baseType: !1761, size: 320, offset: 1024)
!1761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 239, size: 320, elements: !1762)
!1762 = !{!1763, !1788}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1761, file: !1730, line: 240, baseType: !1764, size: 320)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1730, line: 108, size: 320, elements: !1765)
!1765 = !{!1766, !1767, !1777, !1780, !1787}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1764, file: !1730, line: 110, baseType: !576, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !1730, line: 111, baseType: !1768, size: 64, offset: 64)
!1768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1764, file: !1730, line: 111, size: 64, elements: !1769)
!1769 = !{!1770, !1776}
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1768, file: !1730, line: 112, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1768, file: !1730, line: 112, size: 64, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1771, file: !1730, line: 114, baseType: !338, size: 16)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1771, file: !1730, line: 115, baseType: !1775, size: 48, offset: 16)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 48, elements: !466)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1768, file: !1730, line: 121, baseType: !576, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1764, file: !1730, line: 123, baseType: !1778, size: 64, offset: 128)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1730, line: 96, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1764, file: !1730, line: 124, baseType: !1781, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1730, line: 102, size: 192, elements: !1783)
!1783 = !{!1784, !1785, !1786}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1782, file: !1730, line: 103, baseType: !617, size: 128, align: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1782, file: !1730, line: 104, baseType: !441, size: 32, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1782, file: !1730, line: 105, baseType: !731, size: 8, offset: 160)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1764, file: !1730, line: 125, baseType: !308, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !1730, line: 241, baseType: !1789, size: 320)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1761, file: !1730, line: 241, size: 320, elements: !1790)
!1790 = !{!1791, !1792, !1793, !1794, !1795}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1789, file: !1730, line: 242, baseType: !576, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1789, file: !1730, line: 243, baseType: !576, size: 64, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1789, file: !1730, line: 244, baseType: !1778, size: 64, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1789, file: !1730, line: 245, baseType: !1781, size: 64, offset: 192)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1789, file: !1730, line: 246, baseType: !331, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_member, scope: !1729, file: !1730, line: 254, baseType: !1797, size: 256, offset: 1344)
!1797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1729, file: !1730, line: 254, size: 256, elements: !1798)
!1798 = !{!1799, !1805}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1797, file: !1730, line: 255, baseType: !1800, size: 256)
!1800 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1730, line: 128, size: 256, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1800, file: !1730, line: 129, baseType: !291, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1800, file: !1730, line: 130, baseType: !1804, size: 256)
!1804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !1310)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1797, file: !1730, line: 256, baseType: !1806, size: 256)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1797, file: !1730, line: 256, size: 256, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1806, file: !1730, line: 258, baseType: !457, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1806, file: !1730, line: 259, baseType: !1810, size: 128, offset: 128)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1811, line: 22, size: 128, elements: !1812)
!1811 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1812 = !{!1813, !1816}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1810, file: !1811, line: 23, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1811, line: 23, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1810, file: !1811, line: 24, baseType: !576, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1729, file: !1730, line: 274, baseType: !1818, size: 64, offset: 1600)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1730, line: 170, size: 192, elements: !1820)
!1820 = !{!1821, !1830, !1831}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1819, file: !1730, line: 171, baseType: !1822, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1730, line: 165, baseType: !1823)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!325, !1728, !1826, !1828, !1728}
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1779)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1819, file: !1730, line: 172, baseType: !1728, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1819, file: !1730, line: 173, baseType: !1778, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1700, file: !1701, line: 138, baseType: !1728, size: 64, offset: 768)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1700, file: !1701, line: 139, baseType: !1728, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1700, file: !1701, line: 140, baseType: !1728, size: 64, offset: 896)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1700, file: !1701, line: 145, baseType: !1836, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1838, line: 13, size: 896, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !{!1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1837, file: !1838, line: 14, baseType: !441, size: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1837, file: !1838, line: 15, baseType: !446, size: 32, offset: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1837, file: !1838, line: 16, baseType: !446, size: 32, offset: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1837, file: !1838, line: 21, baseType: !1008, size: 64, offset: 128)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1837, file: !1838, line: 27, baseType: !576, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1837, file: !1838, line: 28, baseType: !576, size: 64, offset: 256)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1837, file: !1838, line: 29, baseType: !1008, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1837, file: !1838, line: 32, baseType: !880, size: 128, offset: 384)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1837, file: !1838, line: 33, baseType: !679, size: 32, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1837, file: !1838, line: 37, baseType: !1008, size: 64, offset: 576)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1837, file: !1838, line: 44, baseType: !1851, size: 256, offset: 640)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1852, line: 15, size: 256, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1855, !1856, !1857, !1858, !1859, !1860}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1851, file: !1852, line: 16, baseType: !1017)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1851, file: !1852, line: 18, baseType: !325, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1851, file: !1852, line: 19, baseType: !325, size: 32, offset: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1851, file: !1852, line: 20, baseType: !325, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1851, file: !1852, line: 21, baseType: !325, size: 32, offset: 96)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1851, file: !1852, line: 22, baseType: !576, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1851, file: !1852, line: 23, baseType: !576, size: 64, offset: 192)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1700, file: !1701, line: 146, baseType: !1862, size: 64, offset: 1024)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !680, line: 18, flags: DIFlagFwdDecl)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1700, file: !1701, line: 147, baseType: !1865, size: 64, offset: 1088)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1701, line: 25, size: 64, elements: !1867)
!1867 = !{!1868, !1869, !1870}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1866, file: !1701, line: 26, baseType: !446, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1866, file: !1701, line: 27, baseType: !325, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1866, file: !1701, line: 28, baseType: !1871, offset: 64)
!1871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, elements: !1872)
!1872 = !{!1873}
!1873 = !DISubrange(count: 0)
!1874 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1701, line: 149, baseType: !1875, size: 128, offset: 1152)
!1875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1701, line: 149, size: 128, elements: !1876)
!1876 = !{!1877, !1878}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1875, file: !1701, line: 150, baseType: !325, size: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1875, file: !1701, line: 151, baseType: !617, size: 128, align: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1372, file: !1373, line: 926, baseType: !1698, size: 64, offset: 8576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1372, file: !1373, line: 929, baseType: !1698, size: 64, offset: 8640)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1372, file: !1373, line: 933, baseType: !1728, size: 64, offset: 8704)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1372, file: !1373, line: 943, baseType: !1883, size: 128, offset: 8768)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 128, elements: !1884)
!1884 = !{!1885}
!1885 = !DISubrange(count: 16)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1372, file: !1373, line: 945, baseType: !1887, size: 64, offset: 8896)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1373, line: 49, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1372, file: !1373, line: 956, baseType: !1890, size: 64, offset: 8960)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1373, line: 45, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1372, file: !1373, line: 959, baseType: !1893, size: 64, offset: 9024)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1373, line: 959, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1372, file: !1373, line: 962, baseType: !1896, size: 64, offset: 9088)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1373, line: 66, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1372, file: !1373, line: 966, baseType: !1899, size: 64, offset: 9152)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1373, line: 50, flags: DIFlagFwdDecl)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1372, file: !1373, line: 969, baseType: !1902, size: 64, offset: 9216)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1904, line: 82, size: 7296, elements: !1905)
!1904 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1905 = !{!1906, !1907, !1908, !1909, !1910, !1911, !1912, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1941, !1950, !1951, !1953, !1954, !1955, !1958, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1988, !1989, !1996, !1997, !1998, !1999, !2000, !2001}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1903, file: !1904, line: 83, baseType: !441, size: 32)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1903, file: !1904, line: 84, baseType: !446, size: 32, offset: 32)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1903, file: !1904, line: 85, baseType: !325, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1903, file: !1904, line: 86, baseType: !457, size: 128, offset: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1903, file: !1904, line: 88, baseType: !1632, size: 128, offset: 256)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1903, file: !1904, line: 91, baseType: !1371, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1903, file: !1904, line: 94, baseType: !1913, size: 192, offset: 448)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1914, line: 30, size: 192, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1913, file: !1914, line: 31, baseType: !457, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1913, file: !1914, line: 32, baseType: !1918, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1919, line: 25, baseType: !1920)
!1919 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1919, line: 23, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1920, file: !1919, line: 24, baseType: !1516, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1903, file: !1904, line: 97, baseType: !876, size: 64, offset: 640)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1903, file: !1904, line: 100, baseType: !325, size: 32, offset: 704)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1903, file: !1904, line: 106, baseType: !325, size: 32, offset: 736)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1903, file: !1904, line: 107, baseType: !1371, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1903, file: !1904, line: 110, baseType: !325, size: 32, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1903, file: !1904, line: 111, baseType: !7, size: 32, offset: 864)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1903, file: !1904, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1903, file: !1904, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1903, file: !1904, line: 128, baseType: !325, size: 32, offset: 928)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1903, file: !1904, line: 129, baseType: !457, size: 128, offset: 960)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1903, file: !1904, line: 132, baseType: !1442, size: 512, offset: 1088)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1903, file: !1904, line: 133, baseType: !1450, size: 64, offset: 1600)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1903, file: !1904, line: 140, baseType: !1936, size: 256, offset: 1664)
!1936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1937, size: 256, elements: !1720)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1904, line: 38, size: 128, elements: !1938)
!1938 = !{!1939, !1940}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1937, file: !1904, line: 39, baseType: !294, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1937, file: !1904, line: 40, baseType: !294, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1903, file: !1904, line: 146, baseType: !1942, size: 192, offset: 1920)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1904, line: 66, size: 192, elements: !1943)
!1943 = !{!1944}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1942, file: !1904, line: 67, baseType: !1945, size: 192)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1904, line: 47, size: 192, elements: !1946)
!1946 = !{!1947, !1948, !1949}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1945, file: !1904, line: 48, baseType: !1010, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1945, file: !1904, line: 49, baseType: !1010, size: 64, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1945, file: !1904, line: 50, baseType: !1010, size: 64, offset: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1903, file: !1904, line: 150, baseType: !1681, size: 640, offset: 2112)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1903, file: !1904, line: 153, baseType: !1952, size: 256, offset: 2752)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1622, size: 256, elements: !1310)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1903, file: !1904, line: 159, baseType: !1622, size: 64, offset: 3008)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1903, file: !1904, line: 162, baseType: !325, size: 32, offset: 3072)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1903, file: !1904, line: 164, baseType: !1956, size: 64, offset: 3136)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1904, line: 164, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1903, file: !1904, line: 175, baseType: !1959, size: 32, offset: 3200)
!1959 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !640, line: 805, baseType: !1960)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 798, size: 32, elements: !1961)
!1961 = !{!1962, !1963}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1960, file: !640, line: 803, baseType: !639, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1960, file: !640, line: 804, baseType: !487, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1903, file: !1904, line: 176, baseType: !294, size: 64, offset: 3264)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1903, file: !1904, line: 176, baseType: !294, size: 64, offset: 3328)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1903, file: !1904, line: 176, baseType: !294, size: 64, offset: 3392)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1903, file: !1904, line: 176, baseType: !294, size: 64, offset: 3456)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1903, file: !1904, line: 177, baseType: !294, size: 64, offset: 3520)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1903, file: !1904, line: 178, baseType: !294, size: 64, offset: 3584)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1903, file: !1904, line: 179, baseType: !1669, size: 128, offset: 3648)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1903, file: !1904, line: 180, baseType: !576, size: 64, offset: 3776)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1903, file: !1904, line: 180, baseType: !576, size: 64, offset: 3840)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1903, file: !1904, line: 180, baseType: !576, size: 64, offset: 3904)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1903, file: !1904, line: 180, baseType: !576, size: 64, offset: 3968)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1903, file: !1904, line: 181, baseType: !576, size: 64, offset: 4032)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1903, file: !1904, line: 181, baseType: !576, size: 64, offset: 4096)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1903, file: !1904, line: 181, baseType: !576, size: 64, offset: 4160)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1903, file: !1904, line: 181, baseType: !576, size: 64, offset: 4224)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1903, file: !1904, line: 182, baseType: !576, size: 64, offset: 4288)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1903, file: !1904, line: 182, baseType: !576, size: 64, offset: 4352)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1903, file: !1904, line: 182, baseType: !576, size: 64, offset: 4416)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1903, file: !1904, line: 182, baseType: !576, size: 64, offset: 4480)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1903, file: !1904, line: 183, baseType: !576, size: 64, offset: 4544)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1903, file: !1904, line: 183, baseType: !576, size: 64, offset: 4608)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1903, file: !1904, line: 184, baseType: !1986, offset: 4672)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1987, line: 12, elements: !501)
!1987 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1903, file: !1904, line: 192, baseType: !298, size: 64, offset: 4672)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1903, file: !1904, line: 203, baseType: !1990, size: 2048, offset: 4736)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1991, size: 2048, elements: !1884)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1992, line: 43, size: 128, elements: !1993)
!1992 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1993 = !{!1994, !1995}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1991, file: !1992, line: 44, baseType: !575, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1991, file: !1992, line: 45, baseType: !575, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1903, file: !1904, line: 220, baseType: !731, size: 8, offset: 6784)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1903, file: !1904, line: 221, baseType: !1360, size: 16, offset: 6800)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1903, file: !1904, line: 222, baseType: !1360, size: 16, offset: 6816)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1903, file: !1904, line: 224, baseType: !1209, size: 64, offset: 6848)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1903, file: !1904, line: 227, baseType: !1328, size: 192, offset: 6912)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1903, file: !1904, line: 233, baseType: !1328, size: 192, offset: 7104)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1372, file: !1373, line: 970, baseType: !2003, size: 64, offset: 9280)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1904, line: 20, size: 16576, elements: !2005)
!2005 = !{!2006, !2007, !2008, !2009}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2004, file: !1904, line: 21, baseType: !487)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2004, file: !1904, line: 22, baseType: !441, size: 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2004, file: !1904, line: 23, baseType: !1632, size: 128, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2004, file: !1904, line: 24, baseType: !2010, size: 16384, offset: 192)
!2010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2011, size: 16384, elements: !532)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1914, line: 49, size: 256, elements: !2012)
!2012 = !{!2013}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2011, file: !1914, line: 50, baseType: !2014, size: 256)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1914, line: 35, size: 256, elements: !2015)
!2015 = !{!2016, !2023, !2024, !2030}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2014, file: !1914, line: 37, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2018, line: 19, baseType: !2019)
!2018 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2018, line: 18, baseType: !2021)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{null, !325}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2014, file: !1914, line: 38, baseType: !576, size: 64, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2014, file: !1914, line: 44, baseType: !2025, size: 64, offset: 128)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2018, line: 22, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2018, line: 21, baseType: !2028)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2014, file: !1914, line: 46, baseType: !1918, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1372, file: !1373, line: 971, baseType: !1918, size: 64, offset: 9344)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1372, file: !1373, line: 972, baseType: !1918, size: 64, offset: 9408)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1372, file: !1373, line: 974, baseType: !1918, size: 64, offset: 9472)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1372, file: !1373, line: 975, baseType: !1913, size: 192, offset: 9536)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1372, file: !1373, line: 976, baseType: !576, size: 64, offset: 9728)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1372, file: !1373, line: 977, baseType: !573, size: 64, offset: 9792)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1372, file: !1373, line: 978, baseType: !7, size: 32, offset: 9856)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1372, file: !1373, line: 980, baseType: !620, size: 64, offset: 9920)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1372, file: !1373, line: 989, baseType: !2040, size: 128, offset: 9984)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2041, line: 35, size: 128, elements: !2042)
!2041 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2042 = !{!2043, !2044, !2045}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2040, file: !2041, line: 36, baseType: !325, size: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2040, file: !2041, line: 37, baseType: !446, size: 32, offset: 32)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2040, file: !2041, line: 38, baseType: !2046, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2041, line: 23, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1372, file: !1373, line: 992, baseType: !294, size: 64, offset: 10112)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1372, file: !1373, line: 993, baseType: !294, size: 64, offset: 10176)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1372, file: !1373, line: 996, baseType: !487, offset: 10240)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1372, file: !1373, line: 999, baseType: !1017, offset: 10240)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1372, file: !1373, line: 1001, baseType: !2053, size: 64, offset: 10240)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1373, line: 636, size: 64, elements: !2054)
!2054 = !{!2055}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2053, file: !1373, line: 637, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1372, file: !1373, line: 1005, baseType: !989, size: 128, offset: 10304)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1372, file: !1373, line: 1007, baseType: !1371, size: 64, offset: 10432)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1372, file: !1373, line: 1009, baseType: !2060, size: 64, offset: 10496)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1373, line: 1009, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1372, file: !1373, line: 1043, baseType: !291, size: 64, offset: 10560)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1372, file: !1373, line: 1046, baseType: !2064, size: 64, offset: 10624)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1373, line: 41, flags: DIFlagFwdDecl)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1372, file: !1373, line: 1050, baseType: !2067, size: 64, offset: 10688)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1373, line: 42, flags: DIFlagFwdDecl)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1372, file: !1373, line: 1054, baseType: !2070, size: 64, offset: 10752)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1373, line: 55, flags: DIFlagFwdDecl)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1372, file: !1373, line: 1056, baseType: !2073, size: 64, offset: 10816)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1373, line: 40, flags: DIFlagFwdDecl)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1372, file: !1373, line: 1058, baseType: !2076, size: 64, offset: 10880)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2078, line: 99, size: 704, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2085, !2086, !2105, !2106}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2077, file: !2078, line: 100, baseType: !1008, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2077, file: !2078, line: 101, baseType: !446, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2077, file: !2078, line: 102, baseType: !446, size: 32, offset: 96)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2077, file: !2078, line: 105, baseType: !487, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2077, file: !2078, line: 107, baseType: !340, size: 16, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2077, file: !2078, line: 109, baseType: !980, size: 128, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2077, file: !2078, line: 110, baseType: !2087, size: 64, offset: 320)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2078, line: 73, size: 448, elements: !2089)
!2089 = !{!2090, !2093, !2094, !2099, !2104}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2088, file: !2078, line: 74, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2078, line: 74, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2088, file: !2078, line: 75, baseType: !2076, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2088, file: !2078, line: 83, baseType: !2095, size: 128, offset: 128)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2088, file: !2078, line: 83, size: 128, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2095, file: !2078, line: 84, baseType: !457, size: 128)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2095, file: !2078, line: 85, baseType: !1170, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, scope: !2088, file: !2078, line: 87, baseType: !2100, size: 128, offset: 256)
!2100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2088, file: !2078, line: 87, size: 128, elements: !2101)
!2101 = !{!2102, !2103}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2100, file: !2078, line: 88, baseType: !880, size: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2100, file: !2078, line: 89, baseType: !617, size: 128, align: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !2078, line: 92, baseType: !7, size: 32, offset: 384)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2077, file: !2078, line: 111, baseType: !876, size: 64, offset: 384)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2077, file: !2078, line: 113, baseType: !2107, size: 256, offset: 448)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2108, line: 102, size: 256, elements: !2109)
!2108 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2109 = !{!2110, !2111, !2112}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2107, file: !2108, line: 103, baseType: !1008, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2107, file: !2108, line: 104, baseType: !457, size: 128, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2107, file: !2108, line: 105, baseType: !2113, size: 64, offset: 192)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2108, line: 21, baseType: !2114)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !2117}
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1372, file: !1373, line: 1061, baseType: !2119, size: 64, offset: 10944)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1373, line: 43, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1372, file: !1373, line: 1064, baseType: !576, size: 64, offset: 11008)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1372, file: !1373, line: 1065, baseType: !2123, size: 64, offset: 11072)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1914, line: 14, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1914, line: 12, size: 384, elements: !2126)
!2126 = !{!2127}
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !1914, line: 13, baseType: !2128, size: 384)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !1914, line: 13, size: 384, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2128, file: !1914, line: 13, baseType: !325, size: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2128, file: !1914, line: 13, baseType: !325, size: 32, offset: 32)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2128, file: !1914, line: 13, baseType: !325, size: 32, offset: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2128, file: !1914, line: 13, baseType: !2134, size: 256, offset: 128)
!2134 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2135, line: 32, size: 256, elements: !2136)
!2135 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2136 = !{!2137, !2142, !2155, !2161, !2170, !2190, !2195}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2134, file: !2135, line: 37, baseType: !2138, size: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 34, size: 64, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2138, file: !2135, line: 35, baseType: !1611, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2138, file: !2135, line: 36, baseType: !685, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2134, file: !2135, line: 45, baseType: !2143, size: 192)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 40, size: 192, elements: !2144)
!2144 = !{!2145, !2147, !2148, !2154}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2143, file: !2135, line: 41, baseType: !2146, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !560, line: 95, baseType: !325)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2143, file: !2135, line: 42, baseType: !325, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2143, file: !2135, line: 43, baseType: !2149, size: 64, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2135, line: 11, baseType: !2150)
!2150 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2135, line: 8, size: 64, elements: !2151)
!2151 = !{!2152, !2153}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2150, file: !2135, line: 9, baseType: !325, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2150, file: !2135, line: 10, baseType: !291, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2143, file: !2135, line: 44, baseType: !325, size: 32, offset: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2134, file: !2135, line: 52, baseType: !2156, size: 128)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 48, size: 128, elements: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2156, file: !2135, line: 49, baseType: !1611, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2156, file: !2135, line: 50, baseType: !685, size: 32, offset: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2156, file: !2135, line: 51, baseType: !2149, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2134, file: !2135, line: 61, baseType: !2162, size: 256)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 55, size: 256, elements: !2163)
!2163 = !{!2164, !2165, !2166, !2167, !2169}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2162, file: !2135, line: 56, baseType: !1611, size: 32)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2162, file: !2135, line: 57, baseType: !685, size: 32, offset: 32)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2162, file: !2135, line: 58, baseType: !325, size: 32, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2162, file: !2135, line: 59, baseType: !2168, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !560, line: 94, baseType: !561)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2162, file: !2135, line: 60, baseType: !2168, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2134, file: !2135, line: 95, baseType: !2171, size: 256)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 64, size: 256, elements: !2172)
!2172 = !{!2173, !2174}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2171, file: !2135, line: 65, baseType: !291, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2171, file: !2135, line: 77, baseType: !2175, size: 192, offset: 64)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2171, file: !2135, line: 77, size: 192, elements: !2176)
!2176 = !{!2177, !2178, !2185}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2175, file: !2135, line: 82, baseType: !1360, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2175, file: !2135, line: 88, baseType: !2179, size: 192)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !2135, line: 84, size: 192, elements: !2180)
!2180 = !{!2181, !2183, !2184}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2179, file: !2135, line: 85, baseType: !2182, size: 64)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 64, elements: !427)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2179, file: !2135, line: 86, baseType: !291, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2179, file: !2135, line: 87, baseType: !291, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2175, file: !2135, line: 93, baseType: !2186, size: 96)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !2135, line: 90, size: 96, elements: !2187)
!2187 = !{!2188, !2189}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2186, file: !2135, line: 91, baseType: !2182, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2186, file: !2135, line: 92, baseType: !417, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2134, file: !2135, line: 101, baseType: !2191, size: 128)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 98, size: 128, elements: !2192)
!2192 = !{!2193, !2194}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2191, file: !2135, line: 99, baseType: !562, size: 64)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2191, file: !2135, line: 100, baseType: !325, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2134, file: !2135, line: 108, baseType: !2196, size: 128)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2134, file: !2135, line: 104, size: 128, elements: !2197)
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2196, file: !2135, line: 105, baseType: !291, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2196, file: !2135, line: 106, baseType: !325, size: 32, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2196, file: !2135, line: 107, baseType: !7, size: 32, offset: 96)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1372, file: !1373, line: 1067, baseType: !1986, offset: 11136)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1372, file: !1373, line: 1099, baseType: !2203, size: 64, offset: 11136)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1373, line: 56, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1372, file: !1373, line: 1103, baseType: !457, size: 128, offset: 11200)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1372, file: !1373, line: 1104, baseType: !2207, size: 64, offset: 11328)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1373, line: 46, flags: DIFlagFwdDecl)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1372, file: !1373, line: 1105, baseType: !1328, size: 192, offset: 11392)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1372, file: !1373, line: 1106, baseType: !7, size: 32, offset: 11584)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1372, file: !1373, line: 1109, baseType: !2212, size: 128, offset: 11648)
!2212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2213, size: 128, elements: !1720)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1373, line: 51, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1372, file: !1373, line: 1110, baseType: !1328, size: 192, offset: 11776)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1372, file: !1373, line: 1111, baseType: !457, size: 128, offset: 11968)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1372, file: !1373, line: 1173, baseType: !2218, size: 64, offset: 12096)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2220, line: 62, size: 256, align: 256, elements: !2221)
!2220 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2221 = !{!2222, !2223, !2224, !2229}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2219, file: !2220, line: 75, baseType: !417, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2219, file: !2220, line: 90, baseType: !417, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2219, file: !2220, line: 124, baseType: !2225, size: 64, offset: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2219, file: !2220, line: 109, size: 64, elements: !2226)
!2226 = !{!2227, !2228}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2225, file: !2220, line: 110, baseType: !296, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2225, file: !2220, line: 112, baseType: !296, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2219, file: !2220, line: 144, baseType: !417, size: 32, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1372, file: !1373, line: 1174, baseType: !416, size: 32, offset: 12160)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1372, file: !1373, line: 1179, baseType: !576, size: 64, offset: 12224)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1372, file: !1373, line: 1182, baseType: !2233, size: 128, offset: 12288)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1306, line: 76, size: 128, elements: !2234)
!2234 = !{!2235, !2240, !2241}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2233, file: !1306, line: 85, baseType: !2236, size: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2237, line: 7, size: 64, elements: !2238)
!2237 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2236, file: !2237, line: 12, baseType: !1513, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2233, file: !1306, line: 88, baseType: !731, size: 8, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2233, file: !1306, line: 95, baseType: !731, size: 8, offset: 72)
!2242 = !DIDerivedType(tag: DW_TAG_member, scope: !1372, file: !1373, line: 1184, baseType: !2243, size: 128, offset: 12416)
!2243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1372, file: !1373, line: 1184, size: 128, elements: !2244)
!2244 = !{!2245, !2246}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2243, file: !1373, line: 1185, baseType: !441, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2243, file: !1373, line: 1186, baseType: !617, size: 128, align: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1372, file: !1373, line: 1190, baseType: !2248, size: 64, offset: 12544)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1373, line: 53, flags: DIFlagFwdDecl)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1372, file: !1373, line: 1192, baseType: !2251, size: 128, offset: 12608)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1306, line: 64, size: 128, elements: !2252)
!2252 = !{!2253, !2254, !2255}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2251, file: !1306, line: 65, baseType: !962, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2251, file: !1306, line: 67, baseType: !417, size: 32, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2251, file: !1306, line: 68, baseType: !417, size: 32, offset: 96)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1372, file: !1373, line: 1206, baseType: !325, size: 32, offset: 12736)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1372, file: !1373, line: 1207, baseType: !325, size: 32, offset: 12768)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1372, file: !1373, line: 1209, baseType: !576, size: 64, offset: 12800)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1372, file: !1373, line: 1219, baseType: !294, size: 64, offset: 12864)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1372, file: !1373, line: 1220, baseType: !294, size: 64, offset: 12928)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1372, file: !1373, line: 1317, baseType: !325, size: 32, offset: 12992)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1372, file: !1373, line: 1319, baseType: !1371, size: 64, offset: 13056)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1372, file: !1373, line: 1322, baseType: !2264, size: 64, offset: 13120)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2266, line: 56, size: 512, elements: !2267)
!2266 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2276}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2265, file: !2266, line: 57, baseType: !2264, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2265, file: !2266, line: 58, baseType: !291, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2265, file: !2266, line: 59, baseType: !576, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2265, file: !2266, line: 60, baseType: !576, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2265, file: !2266, line: 61, baseType: !1057, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2265, file: !2266, line: 62, baseType: !7, size: 32, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2265, file: !2266, line: 63, baseType: !2275, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !293, line: 153, baseType: !294)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2265, file: !2266, line: 64, baseType: !2277, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1372, file: !1373, line: 1326, baseType: !441, size: 32, offset: 13184)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1372, file: !1373, line: 1342, baseType: !291, size: 64, offset: 13248)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1372, file: !1373, line: 1343, baseType: !296, size: 64, offset: 13312)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1372, file: !1373, line: 1344, baseType: !294, size: 64, offset: 13376)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1372, file: !1373, line: 1345, baseType: !296, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1372, file: !1373, line: 1346, baseType: !296, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1372, file: !1373, line: 1347, baseType: !296, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1372, file: !1373, line: 1348, baseType: !617, size: 128, align: 64, offset: 13504)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1372, file: !1373, line: 1358, baseType: !2288, size: 34816, offset: 13824)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2289, line: 485, size: 34816, elements: !2290)
!2289 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2290 = !{!2291, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2320, !2321, !2322, !2323, !2324, !2325, !2328, !2329, !2330}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2288, file: !2289, line: 487, baseType: !2292, size: 192)
!2292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2293, size: 192, elements: !528)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2294, line: 16, size: 64, elements: !2295)
!2294 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2293, file: !2294, line: 17, baseType: !338, size: 16)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2293, file: !2294, line: 18, baseType: !338, size: 16, offset: 16)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2293, file: !2294, line: 19, baseType: !338, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !2294, line: 19, baseType: !338, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2293, file: !2294, line: 19, baseType: !338, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2293, file: !2294, line: 19, baseType: !338, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2293, file: !2294, line: 19, baseType: !338, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2293, file: !2294, line: 20, baseType: !338, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2293, file: !2294, line: 20, baseType: !338, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2293, file: !2294, line: 20, baseType: !338, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2293, file: !2294, line: 20, baseType: !338, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2293, file: !2294, line: 20, baseType: !338, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2293, file: !2294, line: 20, baseType: !338, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2288, file: !2289, line: 491, baseType: !576, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2288, file: !2289, line: 495, baseType: !340, size: 16, offset: 256)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2288, file: !2289, line: 496, baseType: !340, size: 16, offset: 272)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2288, file: !2289, line: 497, baseType: !340, size: 16, offset: 288)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2288, file: !2289, line: 498, baseType: !340, size: 16, offset: 304)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2288, file: !2289, line: 502, baseType: !576, size: 64, offset: 320)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2288, file: !2289, line: 503, baseType: !576, size: 64, offset: 384)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2288, file: !2289, line: 514, baseType: !2317, size: 256, offset: 448)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2318, size: 256, elements: !1310)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2289, line: 483, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2288, file: !2289, line: 516, baseType: !576, size: 64, offset: 704)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2288, file: !2289, line: 518, baseType: !576, size: 64, offset: 768)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2288, file: !2289, line: 520, baseType: !576, size: 64, offset: 832)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2288, file: !2289, line: 521, baseType: !576, size: 64, offset: 896)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2288, file: !2289, line: 522, baseType: !576, size: 64, offset: 960)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2288, file: !2289, line: 528, baseType: !2326, size: 64, offset: 1024)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2289, line: 10, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2288, file: !2289, line: 535, baseType: !576, size: 64, offset: 1088)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2288, file: !2289, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2288, file: !2289, line: 540, baseType: !2331, size: 33280, offset: 1536)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2332, line: 317, size: 33280, elements: !2333)
!2332 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2331, file: !2332, line: 330, baseType: !7, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2331, file: !2332, line: 337, baseType: !576, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2331, file: !2332, line: 348, baseType: !2337, size: 32768, offset: 512)
!2337 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2332, line: 304, size: 32768, elements: !2338)
!2338 = !{!2339, !2354, !2393, !2443, !2456}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2337, file: !2332, line: 305, baseType: !2340, size: 896)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2332, line: 12, size: 896, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2353}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2340, file: !2332, line: 13, baseType: !416, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2340, file: !2332, line: 14, baseType: !416, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2340, file: !2332, line: 15, baseType: !416, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2340, file: !2332, line: 16, baseType: !416, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2340, file: !2332, line: 17, baseType: !416, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2340, file: !2332, line: 18, baseType: !416, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2340, file: !2332, line: 19, baseType: !416, size: 32, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2340, file: !2332, line: 22, baseType: !2350, size: 640, offset: 224)
!2350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 640, elements: !2351)
!2351 = !{!2352}
!2352 = !DISubrange(count: 20)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2340, file: !2332, line: 25, baseType: !416, size: 32, offset: 864)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2337, file: !2332, line: 306, baseType: !2355, size: 4096, align: 128)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2332, line: 34, size: 4096, align: 128, elements: !2356)
!2356 = !{!2357, !2358, !2359, !2360, !2361, !2376, !2377, !2378, !2382, !2384, !2388}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2355, file: !2332, line: 35, baseType: !338, size: 16)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2355, file: !2332, line: 36, baseType: !338, size: 16, offset: 16)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2355, file: !2332, line: 37, baseType: !338, size: 16, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2355, file: !2332, line: 38, baseType: !338, size: 16, offset: 48)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2355, file: !2332, line: 39, baseType: !2362, size: 128, offset: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2355, file: !2332, line: 39, size: 128, elements: !2363)
!2363 = !{!2364, !2369}
!2364 = !DIDerivedType(tag: DW_TAG_member, scope: !2362, file: !2332, line: 40, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !2332, line: 40, size: 128, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2365, file: !2332, line: 41, baseType: !294, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2365, file: !2332, line: 42, baseType: !294, size: 64, offset: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2362, file: !2332, line: 44, baseType: !2370, size: 128)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !2332, line: 44, size: 128, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2370, file: !2332, line: 45, baseType: !416, size: 32)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2370, file: !2332, line: 46, baseType: !416, size: 32, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2370, file: !2332, line: 47, baseType: !416, size: 32, offset: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2370, file: !2332, line: 48, baseType: !416, size: 32, offset: 96)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2355, file: !2332, line: 51, baseType: !416, size: 32, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2355, file: !2332, line: 52, baseType: !416, size: 32, offset: 224)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2355, file: !2332, line: 55, baseType: !2379, size: 1024, offset: 256)
!2379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 1024, elements: !2380)
!2380 = !{!2381}
!2381 = !DISubrange(count: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2355, file: !2332, line: 58, baseType: !2383, size: 2048, offset: 1280)
!2383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 2048, elements: !532)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2355, file: !2332, line: 60, baseType: !2385, size: 384, offset: 3328)
!2385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 384, elements: !2386)
!2386 = !{!2387}
!2387 = !DISubrange(count: 12)
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2355, file: !2332, line: 62, baseType: !2389, size: 384, offset: 3712)
!2389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2355, file: !2332, line: 62, size: 384, elements: !2390)
!2390 = !{!2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2389, file: !2332, line: 63, baseType: !2385, size: 384)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2389, file: !2332, line: 64, baseType: !2385, size: 384)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2337, file: !2332, line: 307, baseType: !2394, size: 1088)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2332, line: 79, size: 1088, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2442}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2394, file: !2332, line: 80, baseType: !416, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2394, file: !2332, line: 81, baseType: !416, size: 32, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2394, file: !2332, line: 82, baseType: !416, size: 32, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2394, file: !2332, line: 83, baseType: !416, size: 32, offset: 96)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2394, file: !2332, line: 84, baseType: !416, size: 32, offset: 128)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2394, file: !2332, line: 85, baseType: !416, size: 32, offset: 160)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2394, file: !2332, line: 86, baseType: !416, size: 32, offset: 192)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2394, file: !2332, line: 88, baseType: !2350, size: 640, offset: 224)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2394, file: !2332, line: 89, baseType: !346, size: 8, offset: 864)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2394, file: !2332, line: 90, baseType: !346, size: 8, offset: 872)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2394, file: !2332, line: 91, baseType: !346, size: 8, offset: 880)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2394, file: !2332, line: 92, baseType: !346, size: 8, offset: 888)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2394, file: !2332, line: 93, baseType: !346, size: 8, offset: 896)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2394, file: !2332, line: 94, baseType: !346, size: 8, offset: 904)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2394, file: !2332, line: 95, baseType: !2411, size: 64, offset: 960)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2413, line: 11, size: 128, elements: !2414)
!2413 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2414 = !{!2415, !2416}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2412, file: !2413, line: 12, baseType: !562, size: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2412, file: !2413, line: 13, baseType: !2417, size: 64, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2419, line: 56, size: 1344, elements: !2420)
!2419 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2418, file: !2419, line: 61, baseType: !576, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2418, file: !2419, line: 62, baseType: !576, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2418, file: !2419, line: 63, baseType: !576, size: 64, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2418, file: !2419, line: 64, baseType: !576, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2418, file: !2419, line: 65, baseType: !576, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2418, file: !2419, line: 66, baseType: !576, size: 64, offset: 320)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2418, file: !2419, line: 68, baseType: !576, size: 64, offset: 384)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2418, file: !2419, line: 69, baseType: !576, size: 64, offset: 448)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2418, file: !2419, line: 70, baseType: !576, size: 64, offset: 512)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2418, file: !2419, line: 71, baseType: !576, size: 64, offset: 576)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2418, file: !2419, line: 72, baseType: !576, size: 64, offset: 640)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2418, file: !2419, line: 73, baseType: !576, size: 64, offset: 704)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2418, file: !2419, line: 74, baseType: !576, size: 64, offset: 768)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2418, file: !2419, line: 75, baseType: !576, size: 64, offset: 832)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2418, file: !2419, line: 76, baseType: !576, size: 64, offset: 896)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2418, file: !2419, line: 81, baseType: !576, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2418, file: !2419, line: 83, baseType: !576, size: 64, offset: 1024)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2418, file: !2419, line: 84, baseType: !576, size: 64, offset: 1088)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2418, file: !2419, line: 85, baseType: !576, size: 64, offset: 1152)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2418, file: !2419, line: 86, baseType: !576, size: 64, offset: 1216)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2418, file: !2419, line: 87, baseType: !576, size: 64, offset: 1280)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2394, file: !2332, line: 96, baseType: !416, size: 32, offset: 1024)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2337, file: !2332, line: 308, baseType: !2444, size: 4608, align: 512)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2332, line: 289, size: 4608, align: 512, elements: !2445)
!2445 = !{!2446, !2447, !2454}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2444, file: !2332, line: 290, baseType: !2355, size: 4096, align: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2444, file: !2332, line: 291, baseType: !2448, size: 512, offset: 4096)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2332, line: 268, size: 512, elements: !2449)
!2449 = !{!2450, !2451, !2452}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2448, file: !2332, line: 269, baseType: !294, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2448, file: !2332, line: 270, baseType: !294, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2448, file: !2332, line: 271, baseType: !2453, size: 384, offset: 128)
!2453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 384, elements: !466)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2444, file: !2332, line: 292, baseType: !2455, offset: 4608)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !1872)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2337, file: !2332, line: 309, baseType: !2457, size: 32768)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 32768, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 4096)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1368, file: !964, line: 378, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1364, file: !964, line: 384, baseType: !1653, size: 192, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1213, file: !964, line: 500, baseType: !487, offset: 6656)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1213, file: !964, line: 501, baseType: !2465, size: 64, offset: 6656)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !964, line: 387, flags: DIFlagFwdDecl)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1213, file: !964, line: 516, baseType: !1862, size: 64, offset: 6720)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1213, file: !964, line: 519, baseType: !604, size: 64, offset: 6784)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1213, file: !964, line: 521, baseType: !2470, size: 64, offset: 6848)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !964, line: 521, flags: DIFlagFwdDecl)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1213, file: !964, line: 545, baseType: !446, size: 32, offset: 6912)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1213, file: !964, line: 548, baseType: !731, size: 8, offset: 6944)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1213, file: !964, line: 550, baseType: !2475, offset: 6952)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2476, line: 142, elements: !501)
!2476 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1213, file: !964, line: 554, baseType: !2107, size: 256, offset: 6976)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1213, file: !964, line: 557, baseType: !416, size: 32, offset: 7232)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1210, file: !964, line: 565, baseType: !2480, offset: 7296)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: -1)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1206, file: !964, line: 151, baseType: !446, size: 32)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1199, file: !964, line: 156, baseType: !487, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !964, line: 159, baseType: !2486, size: 128)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !968, file: !964, line: 159, size: 128, elements: !2487)
!2487 = !{!2488, !2491}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2486, file: !964, line: 161, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !964, line: 161, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2486, file: !964, line: 162, baseType: !291, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !968, file: !964, line: 176, baseType: !617, size: 128, align: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, scope: !963, file: !964, line: 179, baseType: !2494, size: 32, offset: 384)
!2494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !963, file: !964, line: 179, size: 32, elements: !2495)
!2495 = !{!2496, !2497, !2498, !2499}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2494, file: !964, line: 184, baseType: !446, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2494, file: !964, line: 192, baseType: !7, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2494, file: !964, line: 194, baseType: !7, size: 32)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2494, file: !964, line: 195, baseType: !325, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !963, file: !964, line: 199, baseType: !446, size: 32, offset: 416)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !898, file: !208, line: 1964, baseType: !2502, size: 64, offset: 1344)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!562, !840, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2507, line: 12, size: 256, elements: !2508)
!2507 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2508 = !{!2509, !2510, !2511, !2512, !2513}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2506, file: !2507, line: 13, baseType: !292, size: 32)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2506, file: !2507, line: 16, baseType: !325, size: 32, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2506, file: !2507, line: 23, baseType: !576, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2506, file: !2507, line: 30, baseType: !576, size: 64, offset: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2506, file: !2507, line: 33, baseType: !2514, size: 64, offset: 192)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !964, line: 27, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !898, file: !208, line: 1966, baseType: !2502, size: 64, offset: 1408)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !841, file: !208, line: 1424, baseType: !2518, size: 64, offset: 448)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2520)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2521)
!2521 = !{!2522, !2568, !2572, !2576, !2577, !2578, !2579, !2580, !2585, !2590, !2594}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2520, file: !202, line: 323, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!325, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2553, !2554, !2555}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2527, file: !202, line: 295, baseType: !880, size: 128)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2527, file: !202, line: 296, baseType: !457, size: 128, offset: 128)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2527, file: !202, line: 297, baseType: !457, size: 128, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2527, file: !202, line: 298, baseType: !457, size: 128, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2527, file: !202, line: 299, baseType: !1328, size: 192, offset: 512)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2527, file: !202, line: 300, baseType: !487, offset: 704)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2527, file: !202, line: 301, baseType: !446, size: 32, offset: 704)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2527, file: !202, line: 302, baseType: !840, size: 64, offset: 768)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2527, file: !202, line: 303, baseType: !2538, size: 64, offset: 832)
!2538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2539)
!2539 = !{!2540, !2552}
!2540 = !DIDerivedType(tag: DW_TAG_member, scope: !2538, file: !202, line: 69, baseType: !2541, size: 32)
!2541 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2538, file: !202, line: 69, size: 32, elements: !2542)
!2542 = !{!2543, !2544, !2545}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2541, file: !202, line: 70, baseType: !679, size: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2541, file: !202, line: 71, baseType: !687, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2541, file: !202, line: 72, baseType: !2546, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2547, line: 24, baseType: !2548)
!2547 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2547, line: 22, size: 32, elements: !2549)
!2549 = !{!2550}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2548, file: !2547, line: 23, baseType: !2551, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2547, line: 20, baseType: !685)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2538, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2527, file: !202, line: 304, baseType: !772, size: 64, offset: 896)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2527, file: !202, line: 305, baseType: !576, size: 64, offset: 960)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2527, file: !202, line: 306, baseType: !2556, size: 576, offset: 1024)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2557)
!2557 = !{!2558, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2556, file: !202, line: 206, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !774)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2556, file: !202, line: 207, baseType: !2559, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2556, file: !202, line: 208, baseType: !2559, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2556, file: !202, line: 209, baseType: !2559, size: 64, offset: 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2556, file: !202, line: 210, baseType: !2559, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2556, file: !202, line: 211, baseType: !2559, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2556, file: !202, line: 212, baseType: !2559, size: 64, offset: 384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2556, file: !202, line: 213, baseType: !780, size: 64, offset: 448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2556, file: !202, line: 214, baseType: !780, size: 64, offset: 512)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2520, file: !202, line: 324, baseType: !2569, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!2526, !840, !325}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2520, file: !202, line: 325, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !2526}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2520, file: !202, line: 326, baseType: !2523, size: 64, offset: 192)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2520, file: !202, line: 327, baseType: !2523, size: 64, offset: 256)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2520, file: !202, line: 328, baseType: !2523, size: 64, offset: 320)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2520, file: !202, line: 329, baseType: !926, size: 64, offset: 384)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2520, file: !202, line: 332, baseType: !2581, size: 64, offset: 448)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DISubroutineType(types: !2583)
!2583 = !{!2584, !673}
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2520, file: !202, line: 333, baseType: !2586, size: 64, offset: 512)
!2586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2587, size: 64)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!325, !673, !2589}
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2520, file: !202, line: 335, baseType: !2591, size: 64, offset: 576)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!325, !673, !2584}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2520, file: !202, line: 337, baseType: !2595, size: 64, offset: 640)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DISubroutineType(types: !2597)
!2597 = !{!325, !840, !2598}
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !841, file: !208, line: 1425, baseType: !2600, size: 64, offset: 512)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2602)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2603)
!2603 = !{!2604, !2608, !2609, !2613, !2614, !2615, !2630, !2653, !2657, !2658, !2681}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2602, file: !202, line: 429, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!325, !840, !325, !325, !790}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2602, file: !202, line: 430, baseType: !926, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2602, file: !202, line: 431, baseType: !2610, size: 64, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!325, !840, !7}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2602, file: !202, line: 432, baseType: !2610, size: 64, offset: 192)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2602, file: !202, line: 433, baseType: !926, size: 64, offset: 256)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2602, file: !202, line: 434, baseType: !2616, size: 64, offset: 320)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!325, !840, !325, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2621)
!2621 = !{!2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2620, file: !202, line: 416, baseType: !325, size: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2620, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2620, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2620, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2620, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2620, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2620, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2620, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2602, file: !202, line: 435, baseType: !2631, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!325, !840, !2538, !2634}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2635, file: !202, line: 344, baseType: !325, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2635, file: !202, line: 345, baseType: !294, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2635, file: !202, line: 346, baseType: !294, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2635, file: !202, line: 347, baseType: !294, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2635, file: !202, line: 348, baseType: !294, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2635, file: !202, line: 349, baseType: !294, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2635, file: !202, line: 350, baseType: !294, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2635, file: !202, line: 351, baseType: !1014, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2635, file: !202, line: 353, baseType: !1014, size: 64, offset: 512)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2635, file: !202, line: 354, baseType: !325, size: 32, offset: 576)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2635, file: !202, line: 355, baseType: !325, size: 32, offset: 608)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2635, file: !202, line: 356, baseType: !294, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2635, file: !202, line: 357, baseType: !294, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2635, file: !202, line: 358, baseType: !294, size: 64, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2635, file: !202, line: 359, baseType: !1014, size: 64, offset: 832)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2635, file: !202, line: 360, baseType: !325, size: 32, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2602, file: !202, line: 436, baseType: !2654, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!325, !840, !2598, !2634}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2602, file: !202, line: 438, baseType: !2631, size: 64, offset: 512)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2602, file: !202, line: 439, baseType: !2659, size: 64, offset: 576)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!325, !840, !2662}
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2663, file: !202, line: 410, baseType: !7, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2663, file: !202, line: 411, baseType: !2667, size: 1344, offset: 64)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2668, size: 1344, elements: !528)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2680}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2668, file: !202, line: 396, baseType: !7, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2668, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2668, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2668, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2668, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2668, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2668, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2668, file: !202, line: 404, baseType: !298, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2668, file: !202, line: 405, baseType: !2679, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !293, line: 126, baseType: !294)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2668, file: !202, line: 406, baseType: !2679, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2602, file: !202, line: 440, baseType: !2610, size: 64, offset: 640)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !841, file: !208, line: 1426, baseType: !2683, size: 64, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2685)
!2685 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !841, file: !208, line: 1427, baseType: !576, size: 64, offset: 640)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !841, file: !208, line: 1428, baseType: !576, size: 64, offset: 704)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !841, file: !208, line: 1429, baseType: !576, size: 64, offset: 768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !841, file: !208, line: 1430, baseType: !634, size: 64, offset: 832)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !841, file: !208, line: 1431, baseType: !1004, size: 256, offset: 896)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !841, file: !208, line: 1432, baseType: !325, size: 32, offset: 1152)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !841, file: !208, line: 1433, baseType: !446, size: 32, offset: 1184)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !841, file: !208, line: 1437, baseType: !2694, size: 64, offset: 1216)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2697)
!2697 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !841, file: !208, line: 1449, baseType: !2699, size: 64, offset: 1280)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !650, line: 34, size: 64, elements: !2700)
!2700 = !{!2701}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2699, file: !650, line: 35, baseType: !653, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !841, file: !208, line: 1450, baseType: !457, size: 128, offset: 1344)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !841, file: !208, line: 1451, baseType: !2704, size: 64, offset: 1472)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !841, file: !208, line: 1452, baseType: !2073, size: 64, offset: 1536)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !841, file: !208, line: 1453, baseType: !2708, size: 64, offset: 1600)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !841, file: !208, line: 1454, baseType: !880, size: 128, offset: 1664)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !841, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !841, file: !208, line: 1456, baseType: !2713, size: 2432, offset: 1856)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2719, !2751}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2713, file: !202, line: 519, baseType: !7, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2713, file: !202, line: 520, baseType: !1004, size: 256, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2713, file: !202, line: 521, baseType: !2718, size: 192, offset: 320)
!2718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !673, size: 192, elements: !528)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2713, file: !202, line: 522, baseType: !2720, size: 1728, offset: 512)
!2720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2721, size: 1728, elements: !528)
!2721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2722)
!2722 = !{!2723, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2721, file: !202, line: 223, baseType: !2724, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2726)
!2726 = !{!2727, !2728, !2741, !2742}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2725, file: !202, line: 444, baseType: !325, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2725, file: !202, line: 445, baseType: !2729, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2731, file: !202, line: 311, baseType: !926, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2731, file: !202, line: 312, baseType: !926, size: 64, offset: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2731, file: !202, line: 313, baseType: !926, size: 64, offset: 128)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2731, file: !202, line: 314, baseType: !926, size: 64, offset: 192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2731, file: !202, line: 315, baseType: !2523, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2731, file: !202, line: 316, baseType: !2523, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2731, file: !202, line: 317, baseType: !2523, size: 64, offset: 384)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2731, file: !202, line: 318, baseType: !2595, size: 64, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2725, file: !202, line: 446, baseType: !312, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2725, file: !202, line: 447, baseType: !2724, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2721, file: !202, line: 224, baseType: !325, size: 32, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2721, file: !202, line: 226, baseType: !457, size: 128, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2721, file: !202, line: 227, baseType: !576, size: 64, offset: 256)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2721, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2721, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2721, file: !202, line: 230, baseType: !2559, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2721, file: !202, line: 231, baseType: !2559, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2721, file: !202, line: 232, baseType: !291, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2713, file: !202, line: 523, baseType: !2752, size: 192, offset: 2240)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2729, size: 192, elements: !528)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !841, file: !208, line: 1458, baseType: !2754, size: 2112, offset: 4288)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2755)
!2755 = !{!2756, !2757, !2758}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2754, file: !208, line: 1411, baseType: !325, size: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2754, file: !208, line: 1412, baseType: !1632, size: 128, offset: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2754, file: !208, line: 1413, baseType: !2759, size: 1920, offset: 192)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2760, size: 1920, elements: !528)
!2760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2761, line: 12, size: 640, elements: !2762)
!2761 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2762 = !{!2763, !2771, !2772, !2777, !2778}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2760, file: !2761, line: 13, baseType: !2764, size: 320)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2765, line: 17, size: 320, elements: !2766)
!2765 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2766 = !{!2767, !2768, !2769, !2770}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2764, file: !2765, line: 18, baseType: !325, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2764, file: !2765, line: 19, baseType: !325, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2764, file: !2765, line: 20, baseType: !1632, size: 128, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2764, file: !2765, line: 22, baseType: !617, size: 128, align: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2760, file: !2761, line: 14, baseType: !368, size: 64, offset: 320)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2760, file: !2761, line: 15, baseType: !2773, size: 64, offset: 384)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2774, line: 16, size: 64, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2775 = !{!2776}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2773, file: !2774, line: 17, baseType: !1371, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2760, file: !2761, line: 16, baseType: !1632, size: 128, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2760, file: !2761, line: 17, baseType: !446, size: 32, offset: 576)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !841, file: !208, line: 1465, baseType: !291, size: 64, offset: 6400)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !841, file: !208, line: 1468, baseType: !416, size: 32, offset: 6464)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !841, file: !208, line: 1470, baseType: !780, size: 64, offset: 6528)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !841, file: !208, line: 1471, baseType: !780, size: 64, offset: 6592)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !841, file: !208, line: 1473, baseType: !417, size: 32, offset: 6656)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !841, file: !208, line: 1474, baseType: !2785, size: 64, offset: 6720)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !841, file: !208, line: 1477, baseType: !2788, size: 256, offset: 6784)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !2380)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !841, file: !208, line: 1478, baseType: !2790, size: 128, offset: 7040)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2791, line: 18, baseType: !2792)
!2791 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2792 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2791, line: 16, size: 128, elements: !2793)
!2793 = !{!2794}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2792, file: !2791, line: 17, baseType: !2795, size: 128)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 128, elements: !1884)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !841, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !841, file: !208, line: 1481, baseType: !2798, size: 32, offset: 7200)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !293, line: 150, baseType: !7)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !841, file: !208, line: 1487, baseType: !1328, size: 192, offset: 7232)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !841, file: !208, line: 1493, baseType: !308, size: 64, offset: 7424)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !841, file: !208, line: 1495, baseType: !2802, size: 64, offset: 7488)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2804)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !632, line: 135, size: 1024, align: 512, elements: !2805)
!2805 = !{!2806, !2810, !2811, !2818, !2824, !2828, !2832, !2836, !2837, !2841, !2845, !2850, !2854}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2804, file: !632, line: 136, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!325, !634, !7}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2804, file: !632, line: 137, baseType: !2807, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2804, file: !632, line: 138, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!325, !2815, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2804, file: !632, line: 139, baseType: !2819, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DISubroutineType(types: !2821)
!2821 = !{!325, !2815, !7, !308, !2822}
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2804, file: !632, line: 141, baseType: !2825, size: 64, offset: 256)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!325, !2815}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2804, file: !632, line: 142, baseType: !2829, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!325, !634}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2804, file: !632, line: 143, baseType: !2833, size: 64, offset: 384)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{null, !634}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2804, file: !632, line: 144, baseType: !2833, size: 64, offset: 448)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2804, file: !632, line: 145, baseType: !2838, size: 64, offset: 512)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{null, !634, !673}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2804, file: !632, line: 146, baseType: !2842, size: 64, offset: 576)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DISubroutineType(types: !2844)
!2844 = !{!331, !634, !331, !325}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2804, file: !632, line: 147, baseType: !2846, size: 64, offset: 640)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2847 = !DISubroutineType(types: !2848)
!2848 = !{!630, !2849}
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2804, file: !632, line: 148, baseType: !2851, size: 64, offset: 704)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!325, !790, !731}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2804, file: !632, line: 149, baseType: !2855, size: 64, offset: 768)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!634, !634, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !841, file: !208, line: 1500, baseType: !325, size: 32, offset: 7552)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !841, file: !208, line: 1502, baseType: !2862, size: 448, offset: 7616)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2507, line: 60, size: 448, elements: !2863)
!2863 = !{!2864, !2869, !2870, !2871, !2872, !2873, !2874}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2862, file: !2507, line: 61, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!576, !2868, !2505}
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2862, file: !2507, line: 63, baseType: !2865, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2862, file: !2507, line: 66, baseType: !562, size: 64, offset: 128)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2862, file: !2507, line: 67, baseType: !325, size: 32, offset: 192)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2862, file: !2507, line: 68, baseType: !7, size: 32, offset: 224)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2862, file: !2507, line: 71, baseType: !457, size: 128, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2862, file: !2507, line: 77, baseType: !2875, size: 64, offset: 384)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !841, file: !208, line: 1505, baseType: !1008, size: 64, offset: 8064)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !841, file: !208, line: 1508, baseType: !1008, size: 64, offset: 8128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !841, file: !208, line: 1511, baseType: !325, size: 32, offset: 8192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !841, file: !208, line: 1514, baseType: !1144, size: 32, offset: 8224)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !841, file: !208, line: 1517, baseType: !2881, size: 64, offset: 8256)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2108, line: 18, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !841, file: !208, line: 1518, baseType: !876, size: 64, offset: 8320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !841, file: !208, line: 1525, baseType: !1862, size: 64, offset: 8384)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !841, file: !208, line: 1532, baseType: !2886, size: 64, offset: 8448)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2887, line: 52, size: 64, elements: !2888)
!2887 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2888 = !{!2889}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2886, file: !2887, line: 53, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2887, line: 40, size: 256, elements: !2892)
!2892 = !{!2893, !2894, !2899}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2891, file: !2887, line: 42, baseType: !487)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2891, file: !2887, line: 44, baseType: !2895, size: 192)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2887, line: 28, size: 192, elements: !2896)
!2896 = !{!2897, !2898}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2895, file: !2887, line: 29, baseType: !457, size: 128)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2895, file: !2887, line: 31, baseType: !562, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2891, file: !2887, line: 49, baseType: !562, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !841, file: !208, line: 1533, baseType: !2886, size: 64, offset: 8512)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !841, file: !208, line: 1534, baseType: !617, size: 128, align: 64, offset: 8576)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !841, file: !208, line: 1535, baseType: !2107, size: 256, offset: 8704)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !841, file: !208, line: 1537, baseType: !1328, size: 192, offset: 8960)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !841, file: !208, line: 1542, baseType: !325, size: 32, offset: 9152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !841, file: !208, line: 1545, baseType: !487, offset: 9184)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !841, file: !208, line: 1546, baseType: !457, size: 128, offset: 9216)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !841, file: !208, line: 1548, baseType: !487, offset: 9344)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !841, file: !208, line: 1549, baseType: !457, size: 128, offset: 9344)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !674, file: !208, line: 624, baseType: !975, size: 64, offset: 256)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !674, file: !208, line: 631, baseType: !576, size: 64, offset: 320)
!2911 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !208, line: 639, baseType: !2912, size: 32, offset: 384)
!2912 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !208, line: 639, size: 32, elements: !2913)
!2913 = !{!2914, !2916}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2912, file: !208, line: 640, baseType: !2915, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2912, file: !208, line: 641, baseType: !7, size: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !674, file: !208, line: 643, baseType: !754, size: 32, offset: 416)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !674, file: !208, line: 644, baseType: !772, size: 64, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !674, file: !208, line: 645, baseType: !776, size: 128, offset: 512)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !674, file: !208, line: 646, baseType: !776, size: 128, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !674, file: !208, line: 647, baseType: !776, size: 128, offset: 768)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !674, file: !208, line: 648, baseType: !487, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !674, file: !208, line: 649, baseType: !340, size: 16, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !674, file: !208, line: 650, baseType: !346, size: 8, offset: 912)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !674, file: !208, line: 651, baseType: !346, size: 8, offset: 920)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !674, file: !208, line: 652, baseType: !2679, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !674, file: !208, line: 659, baseType: !576, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !674, file: !208, line: 660, baseType: !1004, size: 256, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !674, file: !208, line: 662, baseType: !576, size: 64, offset: 1344)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !674, file: !208, line: 663, baseType: !576, size: 64, offset: 1408)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !674, file: !208, line: 665, baseType: !880, size: 128, offset: 1472)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !674, file: !208, line: 666, baseType: !457, size: 128, offset: 1600)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !674, file: !208, line: 675, baseType: !457, size: 128, offset: 1728)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !674, file: !208, line: 676, baseType: !457, size: 128, offset: 1856)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !674, file: !208, line: 677, baseType: !457, size: 128, offset: 1984)
!2936 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !208, line: 678, baseType: !2937, size: 128, offset: 2112)
!2937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !208, line: 678, size: 128, elements: !2938)
!2938 = !{!2939, !2940}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2937, file: !208, line: 679, baseType: !876, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2937, file: !208, line: 680, baseType: !617, size: 128, align: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !674, file: !208, line: 682, baseType: !1010, size: 64, offset: 2240)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !674, file: !208, line: 683, baseType: !1010, size: 64, offset: 2304)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !674, file: !208, line: 684, baseType: !446, size: 32, offset: 2368)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !674, file: !208, line: 685, baseType: !446, size: 32, offset: 2400)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !674, file: !208, line: 686, baseType: !446, size: 32, offset: 2432)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !674, file: !208, line: 688, baseType: !446, size: 32, offset: 2464)
!2947 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !208, line: 690, baseType: !2948, size: 64, offset: 2496)
!2948 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !208, line: 690, size: 64, elements: !2949)
!2949 = !{!2950, !3182}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2948, file: !208, line: 691, baseType: !2951, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2953)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !2954)
!2954 = !{!2955, !2956, !2960, !2965, !2969, !2970, !2971, !2975, !2988, !2989, !3006, !3010, !3011, !3015, !3016, !3020, !3025, !3026, !3030, !3034, !3142, !3146, !3147, !3151, !3152, !3156, !3160, !3165, !3169, !3173, !3177, !3181}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2953, file: !208, line: 1823, baseType: !312, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2953, file: !208, line: 1824, baseType: !2957, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!772, !604, !772, !325}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2953, file: !208, line: 1825, baseType: !2961, size: 64, offset: 128)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!558, !604, !331, !573, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2953, file: !208, line: 1826, baseType: !2966, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!558, !604, !308, !573, !2964}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2953, file: !208, line: 1827, baseType: !1081, size: 64, offset: 256)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2953, file: !208, line: 1828, baseType: !1081, size: 64, offset: 320)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2953, file: !208, line: 1829, baseType: !2972, size: 64, offset: 384)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!325, !1084, !731}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2953, file: !208, line: 1830, baseType: !2976, size: 64, offset: 448)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!325, !604, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !2981)
!2981 = !{!2982, !2987}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2980, file: !208, line: 1777, baseType: !2983, size: 64)
!2983 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !2984)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!325, !2979, !308, !325, !772, !294, !7}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2980, file: !208, line: 1778, baseType: !772, size: 64, offset: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2953, file: !208, line: 1831, baseType: !2976, size: 64, offset: 512)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2953, file: !208, line: 1832, baseType: !2990, size: 64, offset: 576)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DISubroutineType(types: !2992)
!2992 = !{!2993, !604, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2994, line: 52, baseType: !7)
!2994 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2997, line: 43, size: 128, elements: !2998)
!2997 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!2998 = !{!2999, !3005}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2996, file: !2997, line: 44, baseType: !3000, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2997, line: 37, baseType: !3001)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{null, !604, !3004, !2995}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2996, file: !2997, line: 45, baseType: !2993, size: 32, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2953, file: !208, line: 1833, baseType: !3007, size: 64, offset: 640)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!562, !604, !7, !576}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2953, file: !208, line: 1834, baseType: !3007, size: 64, offset: 704)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2953, file: !208, line: 1835, baseType: !3012, size: 64, offset: 768)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!325, !604, !1216}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2953, file: !208, line: 1836, baseType: !576, size: 64, offset: 832)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2953, file: !208, line: 1837, baseType: !3017, size: 64, offset: 896)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!325, !673, !604}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2953, file: !208, line: 1838, baseType: !3021, size: 64, offset: 960)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!325, !604, !3024}
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !291)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2953, file: !208, line: 1839, baseType: !3017, size: 64, offset: 1024)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2953, file: !208, line: 1840, baseType: !3027, size: 64, offset: 1088)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!325, !604, !772, !772, !325}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2953, file: !208, line: 1841, baseType: !3031, size: 64, offset: 1152)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!325, !325, !604, !325}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2953, file: !208, line: 1842, baseType: !3035, size: 64, offset: 1216)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!325, !604, !325, !3038}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3040)
!3040 = !{!3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3072, !3073, !3074, !3087, !3118}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3039, file: !208, line: 1063, baseType: !3038, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3039, file: !208, line: 1064, baseType: !457, size: 128, offset: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3039, file: !208, line: 1065, baseType: !880, size: 128, offset: 192)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3039, file: !208, line: 1066, baseType: !457, size: 128, offset: 320)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3039, file: !208, line: 1069, baseType: !457, size: 128, offset: 448)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3039, file: !208, line: 1072, baseType: !3024, size: 64, offset: 576)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3039, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3039, file: !208, line: 1074, baseType: !348, size: 8, offset: 672)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3039, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3039, file: !208, line: 1076, baseType: !325, size: 32, offset: 736)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3039, file: !208, line: 1077, baseType: !1632, size: 128, offset: 768)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3039, file: !208, line: 1078, baseType: !604, size: 64, offset: 896)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3039, file: !208, line: 1079, baseType: !772, size: 64, offset: 960)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3039, file: !208, line: 1080, baseType: !772, size: 64, offset: 1024)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3039, file: !208, line: 1082, baseType: !3056, size: 64, offset: 1088)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3058)
!3058 = !{!3059, !3067, !3068, !3069, !3070, !3071}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3057, file: !208, line: 1315, baseType: !3060)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3061, line: 20, baseType: !3062)
!3061 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3061, line: 11, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3062, file: !3061, line: 12, baseType: !3065)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !499, line: 33, baseType: !3066)
!3066 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 31, elements: !501)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3057, file: !208, line: 1316, baseType: !325, size: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3057, file: !208, line: 1317, baseType: !325, size: 32, offset: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3057, file: !208, line: 1318, baseType: !3056, size: 64, offset: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3057, file: !208, line: 1319, baseType: !604, size: 64, offset: 128)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3057, file: !208, line: 1320, baseType: !617, size: 128, align: 64, offset: 192)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3039, file: !208, line: 1084, baseType: !576, size: 64, offset: 1152)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3039, file: !208, line: 1085, baseType: !576, size: 64, offset: 1216)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3039, file: !208, line: 1087, baseType: !3075, size: 64, offset: 1280)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3078)
!3078 = !{!3079, !3083}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3077, file: !208, line: 1012, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !3038, !3038}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3077, file: !208, line: 1013, baseType: !3084, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{null, !3038}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3039, file: !208, line: 1088, baseType: !3088, size: 64, offset: 1344)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3090)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3091)
!3091 = !{!3092, !3096, !3100, !3101, !3105, !3109, !3113, !3117}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3090, file: !208, line: 1017, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!3024, !3024}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3090, file: !208, line: 1018, baseType: !3097, size: 64, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !3024}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3090, file: !208, line: 1019, baseType: !3084, size: 64, offset: 128)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3090, file: !208, line: 1020, baseType: !3102, size: 64, offset: 192)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!325, !3038, !325}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3090, file: !208, line: 1021, baseType: !3106, size: 64, offset: 256)
!3106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3107, size: 64)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!731, !3038}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3090, file: !208, line: 1022, baseType: !3110, size: 64, offset: 320)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!325, !3038, !325, !460}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3090, file: !208, line: 1023, baseType: !3114, size: 64, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{null, !3038, !1058}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3090, file: !208, line: 1024, baseType: !3106, size: 64, offset: 448)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3039, file: !208, line: 1097, baseType: !3119, size: 256, offset: 1408)
!3119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3039, file: !208, line: 1089, size: 256, elements: !3120)
!3120 = !{!3121, !3130, !3136}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3119, file: !208, line: 1090, baseType: !3122, size: 256)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3123, line: 10, size: 256, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3124 = !{!3125, !3126, !3129}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3122, file: !3123, line: 11, baseType: !416, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3122, file: !3123, line: 12, baseType: !3127, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3128, size: 64)
!3128 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3123, line: 5, flags: DIFlagFwdDecl)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3122, file: !3123, line: 13, baseType: !457, size: 128, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3119, file: !208, line: 1091, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3123, line: 17, size: 64, elements: !3132)
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3131, file: !3123, line: 18, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3123, line: 16, flags: DIFlagFwdDecl)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3119, file: !208, line: 1096, baseType: !3137, size: 192)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3119, file: !208, line: 1092, size: 192, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3137, file: !208, line: 1093, baseType: !457, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3137, file: !208, line: 1094, baseType: !325, size: 32, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3137, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2953, file: !208, line: 1843, baseType: !3143, size: 64, offset: 1280)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!558, !604, !962, !325, !573, !2964, !325}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2953, file: !208, line: 1844, baseType: !1256, size: 64, offset: 1344)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2953, file: !208, line: 1845, baseType: !3148, size: 64, offset: 1408)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!325, !325}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2953, file: !208, line: 1846, baseType: !3035, size: 64, offset: 1472)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2953, file: !208, line: 1847, baseType: !3153, size: 64, offset: 1536)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!558, !2248, !604, !2964, !573, !7}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2953, file: !208, line: 1848, baseType: !3157, size: 64, offset: 1600)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!558, !604, !2964, !2248, !573, !7}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2953, file: !208, line: 1849, baseType: !3161, size: 64, offset: 1664)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!325, !604, !562, !3164, !1058}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2953, file: !208, line: 1850, baseType: !3166, size: 64, offset: 1728)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!562, !604, !325, !772, !772}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2953, file: !208, line: 1852, baseType: !3170, size: 64, offset: 1792)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DISubroutineType(types: !3172)
!3172 = !{null, !952, !604}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2953, file: !208, line: 1856, baseType: !3174, size: 64, offset: 1856)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!558, !604, !772, !604, !772, !573, !7}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2953, file: !208, line: 1858, baseType: !3178, size: 64, offset: 1920)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!772, !604, !772, !604, !772, !772, !7}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2953, file: !208, line: 1861, baseType: !3027, size: 64, offset: 1984)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2948, file: !208, line: 692, baseType: !905, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !674, file: !208, line: 694, baseType: !3184, size: 64, offset: 2560)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3186)
!3186 = !{!3187, !3188, !3189, !3190}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3185, file: !208, line: 1101, baseType: !487)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3185, file: !208, line: 1102, baseType: !457, size: 128)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3185, file: !208, line: 1103, baseType: !457, size: 128, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3185, file: !208, line: 1104, baseType: !457, size: 128, offset: 256)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !674, file: !208, line: 695, baseType: !976, size: 1216, align: 64, offset: 2624)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !674, file: !208, line: 696, baseType: !457, size: 128, offset: 3840)
!3193 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !208, line: 697, baseType: !3194, size: 64, offset: 3968)
!3194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !674, file: !208, line: 697, size: 64, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3209, !3210}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3194, file: !208, line: 698, baseType: !2248, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3194, file: !208, line: 699, baseType: !2704, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3194, file: !208, line: 700, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3201, line: 14, size: 832, elements: !3202)
!3201 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3200, file: !3201, line: 15, baseType: !474, size: 512)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3200, file: !3201, line: 16, baseType: !312, size: 64, offset: 512)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3200, file: !3201, line: 17, baseType: !2951, size: 64, offset: 576)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3200, file: !3201, line: 18, baseType: !457, size: 128, offset: 640)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3200, file: !3201, line: 19, baseType: !754, size: 32, offset: 768)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3200, file: !3201, line: 20, baseType: !7, size: 32, offset: 800)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3194, file: !208, line: 701, baseType: !331, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3194, file: !208, line: 702, baseType: !7, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !674, file: !208, line: 705, baseType: !417, size: 32, offset: 4032)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !674, file: !208, line: 708, baseType: !417, size: 32, offset: 4064)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !674, file: !208, line: 709, baseType: !2785, size: 64, offset: 4096)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !674, file: !208, line: 720, baseType: !291, size: 64, offset: 4160)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !635, file: !632, line: 98, baseType: !3216, size: 256, offset: 448)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 256, elements: !2380)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !635, file: !632, line: 101, baseType: !3218, size: 32, offset: 704)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3219, line: 25, size: 32, elements: !3220)
!3219 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3220 = !{!3221}
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3218, file: !3219, line: 26, baseType: !3222, size: 32)
!3222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3218, file: !3219, line: 26, size: 32, elements: !3223)
!3223 = !{!3224}
!3224 = !DIDerivedType(tag: DW_TAG_member, scope: !3222, file: !3219, line: 30, baseType: !3225, size: 32)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !3219, line: 30, size: 32, elements: !3226)
!3226 = !{!3227, !3228}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3225, file: !3219, line: 31, baseType: !487)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3225, file: !3219, line: 32, baseType: !325, size: 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !635, file: !632, line: 102, baseType: !2802, size: 64, offset: 768)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !635, file: !632, line: 103, baseType: !840, size: 64, offset: 832)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !635, file: !632, line: 104, baseType: !576, size: 64, offset: 896)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !635, file: !632, line: 105, baseType: !291, size: 64, offset: 960)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !632, line: 107, baseType: !3234, size: 128, offset: 1024)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 107, size: 128, elements: !3235)
!3235 = !{!3236, !3237}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3234, file: !632, line: 108, baseType: !457, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3234, file: !632, line: 109, baseType: !3004, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !635, file: !632, line: 111, baseType: !457, size: 128, offset: 1152)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !635, file: !632, line: 112, baseType: !457, size: 128, offset: 1280)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !635, file: !632, line: 120, baseType: !3241, size: 128, offset: 1408)
!3241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !632, line: 116, size: 128, elements: !3242)
!3242 = !{!3243, !3244, !3245}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3241, file: !632, line: 117, baseType: !880, size: 128)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3241, file: !632, line: 118, baseType: !649, size: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3241, file: !632, line: 119, baseType: !617, size: 128, align: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !605, file: !208, line: 922, baseType: !673, size: 64, offset: 256)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !605, file: !208, line: 923, baseType: !2951, size: 64, offset: 320)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !605, file: !208, line: 929, baseType: !487, offset: 384)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !605, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !605, file: !208, line: 931, baseType: !1008, size: 64, offset: 448)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !605, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !605, file: !208, line: 933, baseType: !2798, size: 32, offset: 544)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !605, file: !208, line: 934, baseType: !1328, size: 192, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !605, file: !208, line: 935, baseType: !772, size: 64, offset: 768)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !605, file: !208, line: 936, baseType: !3256, size: 192, offset: 832)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3257)
!3257 = !{!3258, !3259, !3260, !3261, !3262, !3263}
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3256, file: !208, line: 886, baseType: !3060)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3256, file: !208, line: 887, baseType: !1622, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3256, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3256, file: !208, line: 889, baseType: !679, size: 32, offset: 96)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3256, file: !208, line: 889, baseType: !679, size: 32, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3256, file: !208, line: 890, baseType: !325, size: 32, offset: 160)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !605, file: !208, line: 937, baseType: !1698, size: 64, offset: 1024)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !605, file: !208, line: 938, baseType: !3266, size: 256, offset: 1088)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3267)
!3267 = !{!3268, !3269, !3270, !3271, !3272, !3273}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3266, file: !208, line: 897, baseType: !576, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3266, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3266, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3266, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3266, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3266, file: !208, line: 904, baseType: !772, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !605, file: !208, line: 940, baseType: !294, size: 64, offset: 1344)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !605, file: !208, line: 945, baseType: !291, size: 64, offset: 1408)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !605, file: !208, line: 949, baseType: !457, size: 128, offset: 1472)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !605, file: !208, line: 950, baseType: !457, size: 128, offset: 1600)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !605, file: !208, line: 952, baseType: !975, size: 64, offset: 1728)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !605, file: !208, line: 953, baseType: !1144, size: 32, offset: 1792)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !605, file: !208, line: 954, baseType: !1144, size: 32, offset: 1824)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !595, file: !552, line: 174, baseType: !601, size: 64, offset: 320)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !595, file: !552, line: 176, baseType: !3283, size: 64, offset: 384)
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!325, !604, !480, !594, !1216}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !583, file: !552, line: 90, baseType: !578, size: 64, offset: 192)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !583, file: !552, line: 91, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !542, file: !475, line: 143, baseType: !3290, size: 64, offset: 256)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!3293, !480}
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3296)
!3296 = !{!3297, !3298, !3302, !3306, !3312, !3316}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3295, file: !225, line: 40, baseType: !224, size: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3295, file: !225, line: 41, baseType: !3299, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!731}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3295, file: !225, line: 42, baseType: !3303, size: 64, offset: 128)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!291}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3295, file: !225, line: 43, baseType: !3307, size: 64, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!2277, !3310}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3295, file: !225, line: 44, baseType: !3313, size: 64, offset: 256)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!2277}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3295, file: !225, line: 45, baseType: !333, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !542, file: !475, line: 144, baseType: !3318, size: 64, offset: 320)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!2277, !480}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !542, file: !475, line: 145, baseType: !3322, size: 64, offset: 384)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !480, !3325, !3326}
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !474, file: !475, line: 70, baseType: !3328, size: 64, offset: 384)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !860, line: 123, size: 1024, elements: !3330)
!3330 = !{!3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3459, !3460, !3461, !3462, !3463}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3329, file: !860, line: 124, baseType: !446, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3329, file: !860, line: 125, baseType: !446, size: 32, offset: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3329, file: !860, line: 135, baseType: !3328, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3329, file: !860, line: 136, baseType: !308, size: 64, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3329, file: !860, line: 138, baseType: !997, size: 192, align: 64, offset: 192)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3329, file: !860, line: 140, baseType: !2277, size: 64, offset: 384)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3329, file: !860, line: 141, baseType: !7, size: 32, offset: 448)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3329, file: !860, line: 142, baseType: !3339, size: 256, offset: 512)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3329, file: !860, line: 142, size: 256, elements: !3340)
!3340 = !{!3341, !3387, !3391}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3339, file: !860, line: 143, baseType: !3342, size: 192)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !860, line: 91, size: 192, elements: !3343)
!3343 = !{!3344, !3345, !3346}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3342, file: !860, line: 92, baseType: !576, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3342, file: !860, line: 94, baseType: !993, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3342, file: !860, line: 100, baseType: !3347, size: 64, offset: 128)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !860, line: 180, size: 704, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3359, !3360, !3361, !3385, !3386}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3348, file: !860, line: 182, baseType: !3328, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3348, file: !860, line: 183, baseType: !7, size: 32, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3348, file: !860, line: 186, baseType: !3353, size: 192, offset: 128)
!3353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3354, line: 19, size: 192, elements: !3355)
!3354 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3355 = !{!3356, !3357, !3358}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3353, file: !3354, line: 20, baseType: !980, size: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3353, file: !3354, line: 21, baseType: !7, size: 32, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3353, file: !3354, line: 22, baseType: !7, size: 32, offset: 160)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3348, file: !860, line: 187, baseType: !416, size: 32, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3348, file: !860, line: 188, baseType: !416, size: 32, offset: 352)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3348, file: !860, line: 189, baseType: !3362, size: 64, offset: 384)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !860, line: 168, size: 320, elements: !3364)
!3364 = !{!3365, !3369, !3373, !3377, !3381}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3363, file: !860, line: 169, baseType: !3366, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!325, !952, !3347}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3363, file: !860, line: 171, baseType: !3370, size: 64, offset: 64)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DISubroutineType(types: !3372)
!3372 = !{!325, !3328, !308, !568}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3363, file: !860, line: 173, baseType: !3374, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!325, !3328}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3363, file: !860, line: 174, baseType: !3378, size: 64, offset: 192)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!325, !3328, !3328, !308}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3363, file: !860, line: 176, baseType: !3382, size: 64, offset: 256)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!325, !952, !3328, !3347}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3348, file: !860, line: 192, baseType: !457, size: 128, offset: 448)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3348, file: !860, line: 194, baseType: !1632, size: 128, offset: 576)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3339, file: !860, line: 144, baseType: !3388, size: 64)
!3388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !860, line: 103, size: 64, elements: !3389)
!3389 = !{!3390}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3388, file: !860, line: 104, baseType: !3328, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3339, file: !860, line: 145, baseType: !3392, size: 256)
!3392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !860, line: 107, size: 256, elements: !3393)
!3393 = !{!3394, !3454, !3457, !3458}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3392, file: !860, line: 108, baseType: !3395, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !860, line: 217, size: 768, elements: !3398)
!3398 = !{!3399, !3419, !3423, !3427, !3431, !3435, !3439, !3443, !3444, !3445, !3446, !3450}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3397, file: !860, line: 222, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!325, !3403}
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !860, line: 197, size: 1088, elements: !3405)
!3405 = !{!3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3404, file: !860, line: 199, baseType: !3328, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3404, file: !860, line: 200, baseType: !604, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3404, file: !860, line: 201, baseType: !952, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3404, file: !860, line: 202, baseType: !291, size: 64, offset: 192)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3404, file: !860, line: 205, baseType: !1328, size: 192, offset: 256)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3404, file: !860, line: 206, baseType: !1328, size: 192, offset: 448)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3404, file: !860, line: 207, baseType: !325, size: 32, offset: 640)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3404, file: !860, line: 208, baseType: !457, size: 128, offset: 704)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3404, file: !860, line: 209, baseType: !331, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3404, file: !860, line: 211, baseType: !573, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3404, file: !860, line: 212, baseType: !731, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3404, file: !860, line: 213, baseType: !731, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3404, file: !860, line: 214, baseType: !1244, size: 64, offset: 1024)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3397, file: !860, line: 223, baseType: !3420, size: 64, offset: 64)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{null, !3403}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3397, file: !860, line: 236, baseType: !3424, size: 64, offset: 128)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DISubroutineType(types: !3426)
!3426 = !{!325, !952, !291}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3397, file: !860, line: 238, baseType: !3428, size: 64, offset: 192)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DISubroutineType(types: !3430)
!3430 = !{!291, !952, !2964}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3397, file: !860, line: 239, baseType: !3432, size: 64, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!291, !952, !291, !2964}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3397, file: !860, line: 240, baseType: !3436, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DISubroutineType(types: !3438)
!3438 = !{null, !952, !291}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3397, file: !860, line: 242, baseType: !3440, size: 64, offset: 384)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = !DISubroutineType(types: !3442)
!3442 = !{!558, !3403, !331, !573, !772}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3397, file: !860, line: 252, baseType: !573, size: 64, offset: 448)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3397, file: !860, line: 259, baseType: !731, size: 8, offset: 512)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3397, file: !860, line: 260, baseType: !3440, size: 64, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3397, file: !860, line: 263, baseType: !3447, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!2993, !3403, !2995}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3397, file: !860, line: 266, baseType: !3451, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!325, !3403, !1216}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3392, file: !860, line: 109, baseType: !3455, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !860, line: 31, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3392, file: !860, line: 110, baseType: !772, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3392, file: !860, line: 111, baseType: !3328, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3329, file: !860, line: 148, baseType: !291, size: 64, offset: 768)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3329, file: !860, line: 154, baseType: !294, size: 64, offset: 832)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3329, file: !860, line: 156, baseType: !340, size: 16, offset: 896)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3329, file: !860, line: 157, baseType: !568, size: 16, offset: 912)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3329, file: !860, line: 158, baseType: !3464, size: 64, offset: 960)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !860, line: 32, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !474, file: !475, line: 71, baseType: !437, size: 32, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !474, file: !475, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !474, file: !475, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !474, file: !475, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !474, file: !475, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !474, file: !475, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !471, file: !237, line: 463, baseType: !470, size: 64, offset: 512)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !471, file: !237, line: 465, baseType: !3474, size: 64, offset: 576)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !471, file: !237, line: 467, baseType: !308, size: 64, offset: 640)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !471, file: !237, line: 468, baseType: !3478, size: 64, offset: 704)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3480)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3481)
!3481 = !{!3482, !3483, !3484, !3488, !3493, !3497}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3480, file: !237, line: 88, baseType: !308, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3480, file: !237, line: 89, baseType: !580, size: 64, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3480, file: !237, line: 90, baseType: !3485, size: 64, offset: 128)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!325, !470, !523}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3480, file: !237, line: 91, baseType: !3489, size: 64, offset: 192)
!3489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3490, size: 64)
!3490 = !DISubroutineType(types: !3491)
!3491 = !{!331, !470, !3492, !3325, !3326}
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3480, file: !237, line: 93, baseType: !3494, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DISubroutineType(types: !3496)
!3496 = !{null, !470}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3480, file: !237, line: 95, baseType: !3498, size: 64, offset: 320)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3501)
!3501 = !{!3502, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3500, file: !244, line: 279, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!325, !470}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3500, file: !244, line: 280, baseType: !3494, size: 64, offset: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3500, file: !244, line: 281, baseType: !3503, size: 64, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3500, file: !244, line: 282, baseType: !3503, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3500, file: !244, line: 283, baseType: !3503, size: 64, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3500, file: !244, line: 284, baseType: !3503, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3500, file: !244, line: 285, baseType: !3503, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3500, file: !244, line: 286, baseType: !3503, size: 64, offset: 448)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3500, file: !244, line: 287, baseType: !3503, size: 64, offset: 512)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3500, file: !244, line: 288, baseType: !3503, size: 64, offset: 576)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3500, file: !244, line: 289, baseType: !3503, size: 64, offset: 640)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3500, file: !244, line: 290, baseType: !3503, size: 64, offset: 704)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3500, file: !244, line: 291, baseType: !3503, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3500, file: !244, line: 292, baseType: !3503, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3500, file: !244, line: 293, baseType: !3503, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3500, file: !244, line: 294, baseType: !3503, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3500, file: !244, line: 295, baseType: !3503, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3500, file: !244, line: 296, baseType: !3503, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3500, file: !244, line: 297, baseType: !3503, size: 64, offset: 1152)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3500, file: !244, line: 298, baseType: !3503, size: 64, offset: 1216)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3500, file: !244, line: 299, baseType: !3503, size: 64, offset: 1280)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3500, file: !244, line: 300, baseType: !3503, size: 64, offset: 1344)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3500, file: !244, line: 301, baseType: !3503, size: 64, offset: 1408)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !471, file: !237, line: 470, baseType: !3529, size: 64, offset: 768)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3531, line: 82, size: 1408, elements: !3532)
!3531 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3532 = !{!3533, !3534, !3535, !3536, !3537, !3538, !3539, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3611, !3614, !3615}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3530, file: !3531, line: 83, baseType: !308, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3530, file: !3531, line: 84, baseType: !308, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3530, file: !3531, line: 85, baseType: !470, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3530, file: !3531, line: 86, baseType: !580, size: 64, offset: 192)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3530, file: !3531, line: 87, baseType: !580, size: 64, offset: 256)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3530, file: !3531, line: 88, baseType: !580, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3530, file: !3531, line: 90, baseType: !3540, size: 64, offset: 384)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!325, !470, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3545)
!3545 = !{!3546, !3547, !3548, !3549, !3550, !3551, !3552, !3562, !3575, !3576, !3577, !3578, !3579, !3587, !3588, !3589, !3590, !3591, !3592}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3544, file: !231, line: 96, baseType: !308, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3544, file: !231, line: 97, baseType: !3529, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3544, file: !231, line: 99, baseType: !312, size: 64, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3544, file: !231, line: 100, baseType: !308, size: 64, offset: 192)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3544, file: !231, line: 102, baseType: !731, size: 8, offset: 256)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3544, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3544, file: !231, line: 105, baseType: !3553, size: 64, offset: 320)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3555)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3556, line: 262, size: 1600, elements: !3557)
!3556 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3557 = !{!3558, !3559, !3560, !3561}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3555, file: !3556, line: 263, baseType: !2788, size: 256)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3555, file: !3556, line: 264, baseType: !2788, size: 256, offset: 256)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3555, file: !3556, line: 265, baseType: !412, size: 1024, offset: 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3555, file: !3556, line: 266, baseType: !2277, size: 64, offset: 1536)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3544, file: !231, line: 106, baseType: !3563, size: 64, offset: 384)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3565)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3556, line: 210, size: 256, elements: !3566)
!3566 = !{!3567, !3571, !3573, !3574}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3565, file: !3556, line: 211, baseType: !3568, size: 72)
!3568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 72, elements: !3569)
!3569 = !{!3570}
!3570 = !DISubrange(count: 9)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3565, file: !3556, line: 212, baseType: !3572, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3556, line: 14, baseType: !576)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3565, file: !3556, line: 213, baseType: !417, size: 32, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3565, file: !3556, line: 214, baseType: !417, size: 32, offset: 224)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3544, file: !231, line: 108, baseType: !3503, size: 64, offset: 448)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3544, file: !231, line: 109, baseType: !3494, size: 64, offset: 512)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3544, file: !231, line: 110, baseType: !3503, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3544, file: !231, line: 111, baseType: !3494, size: 64, offset: 640)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3544, file: !231, line: 112, baseType: !3580, size: 64, offset: 704)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!325, !470, !3583}
!3583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3584)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3585)
!3585 = !{!3586}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3584, file: !244, line: 51, baseType: !325, size: 32)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3544, file: !231, line: 113, baseType: !3503, size: 64, offset: 768)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3544, file: !231, line: 114, baseType: !580, size: 64, offset: 832)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3544, file: !231, line: 115, baseType: !580, size: 64, offset: 896)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3544, file: !231, line: 117, baseType: !3498, size: 64, offset: 960)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3544, file: !231, line: 118, baseType: !3494, size: 64, offset: 1024)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3544, file: !231, line: 120, baseType: !3593, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3530, file: !3531, line: 91, baseType: !3485, size: 64, offset: 448)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3530, file: !3531, line: 92, baseType: !3503, size: 64, offset: 512)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3530, file: !3531, line: 93, baseType: !3494, size: 64, offset: 576)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3530, file: !3531, line: 94, baseType: !3503, size: 64, offset: 640)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3530, file: !3531, line: 95, baseType: !3494, size: 64, offset: 704)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3530, file: !3531, line: 97, baseType: !3503, size: 64, offset: 768)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3530, file: !3531, line: 98, baseType: !3503, size: 64, offset: 832)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3530, file: !3531, line: 100, baseType: !3580, size: 64, offset: 896)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3530, file: !3531, line: 101, baseType: !3503, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3530, file: !3531, line: 103, baseType: !3503, size: 64, offset: 1024)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3530, file: !3531, line: 105, baseType: !3503, size: 64, offset: 1088)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3530, file: !3531, line: 107, baseType: !3498, size: 64, offset: 1152)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3530, file: !3531, line: 109, baseType: !3608, size: 64, offset: 1216)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3610)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3531, line: 109, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3530, file: !3531, line: 111, baseType: !3612, size: 64, offset: 1280)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3531, line: 111, flags: DIFlagFwdDecl)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3530, file: !3531, line: 112, baseType: !886, offset: 1344)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3530, file: !3531, line: 114, baseType: !731, size: 8, offset: 1344)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !471, file: !237, line: 471, baseType: !3543, size: 64, offset: 832)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !471, file: !237, line: 473, baseType: !291, size: 64, offset: 896)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !471, file: !237, line: 475, baseType: !291, size: 64, offset: 960)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !471, file: !237, line: 480, baseType: !1328, size: 192, offset: 1024)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !471, file: !237, line: 484, baseType: !3621, size: 576, offset: 1216)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3622)
!3622 = !{!3623, !3624, !3625, !3626, !3627, !3628}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3621, file: !237, line: 362, baseType: !457, size: 128)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3621, file: !237, line: 363, baseType: !457, size: 128, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3621, file: !237, line: 364, baseType: !457, size: 128, offset: 256)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3621, file: !237, line: 365, baseType: !457, size: 128, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3621, file: !237, line: 366, baseType: !731, size: 8, offset: 512)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3621, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !471, file: !237, line: 485, baseType: !3630, size: 2304, offset: 1792)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3631)
!3631 = !{!3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3727, !3731}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3630, file: !244, line: 566, baseType: !3583, size: 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3630, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3630, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3630, file: !244, line: 569, baseType: !731, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3630, file: !244, line: 570, baseType: !731, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3630, file: !244, line: 571, baseType: !731, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3630, file: !244, line: 572, baseType: !731, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3630, file: !244, line: 573, baseType: !731, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3630, file: !244, line: 574, baseType: !731, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3630, file: !244, line: 575, baseType: !731, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3630, file: !244, line: 576, baseType: !731, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3630, file: !244, line: 577, baseType: !416, size: 32, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3630, file: !244, line: 578, baseType: !487, offset: 96)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3630, file: !244, line: 580, baseType: !457, size: 128, offset: 128)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3630, file: !244, line: 581, baseType: !1653, size: 192, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3630, file: !244, line: 582, baseType: !3648, size: 64, offset: 448)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3650, line: 43, size: 1472, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3659, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3649, file: !3650, line: 44, baseType: !308, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3649, file: !3650, line: 45, baseType: !325, size: 32, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3649, file: !3650, line: 46, baseType: !457, size: 128, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3649, file: !3650, line: 47, baseType: !487, offset: 256)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3649, file: !3650, line: 48, baseType: !3657, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3649, file: !3650, line: 49, baseType: !3660, size: 320, offset: 320)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3661, line: 11, size: 320, elements: !3662)
!3661 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3662 = !{!3663, !3664, !3665, !3670}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3660, file: !3661, line: 16, baseType: !880, size: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3660, file: !3661, line: 17, baseType: !576, size: 64, offset: 128)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3660, file: !3661, line: 18, baseType: !3666, size: 64, offset: 192)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{null, !3669}
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3660, file: !3661, line: 19, baseType: !416, size: 32, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3649, file: !3650, line: 50, baseType: !576, size: 64, offset: 640)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3649, file: !3650, line: 51, baseType: !1450, size: 64, offset: 704)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3649, file: !3650, line: 52, baseType: !1450, size: 64, offset: 768)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3649, file: !3650, line: 53, baseType: !1450, size: 64, offset: 832)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3649, file: !3650, line: 54, baseType: !1450, size: 64, offset: 896)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3649, file: !3650, line: 55, baseType: !1450, size: 64, offset: 960)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3649, file: !3650, line: 56, baseType: !576, size: 64, offset: 1024)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3649, file: !3650, line: 57, baseType: !576, size: 64, offset: 1088)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3649, file: !3650, line: 58, baseType: !576, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3649, file: !3650, line: 59, baseType: !576, size: 64, offset: 1216)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3649, file: !3650, line: 60, baseType: !576, size: 64, offset: 1280)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3649, file: !3650, line: 61, baseType: !470, size: 64, offset: 1344)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3649, file: !3650, line: 62, baseType: !731, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3649, file: !3650, line: 63, baseType: !731, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3630, file: !244, line: 583, baseType: !731, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3630, file: !244, line: 584, baseType: !731, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3630, file: !244, line: 585, baseType: !731, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3630, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3630, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3630, file: !244, line: 592, baseType: !1442, size: 512, offset: 576)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3630, file: !244, line: 593, baseType: !294, size: 64, offset: 1088)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3630, file: !244, line: 594, baseType: !2107, size: 256, offset: 1152)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3630, file: !244, line: 595, baseType: !1632, size: 128, offset: 1408)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3630, file: !244, line: 596, baseType: !3657, size: 64, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3630, file: !244, line: 597, baseType: !446, size: 32, offset: 1600)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3630, file: !244, line: 598, baseType: !446, size: 32, offset: 1632)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3630, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3630, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3630, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3630, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3630, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3630, file: !244, line: 604, baseType: !731, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3630, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3630, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3630, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3630, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3630, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3630, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3630, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3630, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3630, file: !244, line: 613, baseType: !325, size: 32, offset: 1792)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3630, file: !244, line: 614, baseType: !325, size: 32, offset: 1824)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3630, file: !244, line: 615, baseType: !294, size: 64, offset: 1856)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3630, file: !244, line: 616, baseType: !294, size: 64, offset: 1920)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3630, file: !244, line: 617, baseType: !294, size: 64, offset: 1984)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3630, file: !244, line: 618, baseType: !294, size: 64, offset: 2048)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3630, file: !244, line: 620, baseType: !3718, size: 64, offset: 2112)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3720)
!3720 = !{!3721, !3722, !3723, !3724}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3719, file: !244, line: 537, baseType: !487)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3719, file: !244, line: 538, baseType: !7, size: 32)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3719, file: !244, line: 540, baseType: !457, size: 128, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3719, file: !244, line: 543, baseType: !3725, size: 64, offset: 192)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3630, file: !244, line: 621, baseType: !3728, size: 64, offset: 2176)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{null, !470, !1590}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3630, file: !244, line: 622, baseType: !3732, size: 64, offset: 2240)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !471, file: !237, line: 486, baseType: !3735, size: 64, offset: 4096)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3744, !3745, !3746}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3736, file: !244, line: 643, baseType: !3500, size: 1472)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3736, file: !244, line: 644, baseType: !3503, size: 64, offset: 1472)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3736, file: !244, line: 645, baseType: !3741, size: 64, offset: 1536)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{null, !470, !731}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3736, file: !244, line: 646, baseType: !3503, size: 64, offset: 1600)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3736, file: !244, line: 647, baseType: !3494, size: 64, offset: 1664)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3736, file: !244, line: 648, baseType: !3494, size: 64, offset: 1728)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !471, file: !237, line: 493, baseType: !3748, size: 64, offset: 4160)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3750)
!3750 = !{!3751, !3752, !3753, !3926, !3927, !3928, !3929, !3930, !3931, !3934, !3935, !3936, !3937, !3938, !3939, !3940}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3749, file: !258, line: 163, baseType: !457, size: 128)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3749, file: !258, line: 164, baseType: !308, size: 64, offset: 128)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3749, file: !258, line: 165, baseType: !3754, size: 64, offset: 192)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3756)
!3756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3757)
!3757 = !{!3758, !3876, !3887, !3892, !3896, !3903, !3907, !3911, !3918, !3922}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3756, file: !258, line: 106, baseType: !3759, size: 64)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{!325, !3748, !3762, !257}
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3764, line: 51, size: 1344, elements: !3765)
!3764 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3765 = !{!3766, !3767, !3769, !3770, !3860, !3869, !3870, !3871, !3872, !3873, !3874, !3875}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3763, file: !3764, line: 52, baseType: !308, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3763, file: !3764, line: 53, baseType: !3768, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3764, line: 28, baseType: !416)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3763, file: !3764, line: 54, baseType: !308, size: 64, offset: 128)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3763, file: !3764, line: 55, baseType: !3771, size: 192, offset: 192)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3772, line: 17, size: 192, elements: !3773)
!3772 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3773 = !{!3774, !3776, !3859}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3771, file: !3772, line: 18, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3771, file: !3772, line: 19, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3772, line: 110, size: 1152, elements: !3780)
!3780 = !{!3781, !3785, !3789, !3795, !3801, !3805, !3809, !3814, !3818, !3819, !3823, !3827, !3831, !3842, !3843, !3844, !3845, !3855}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3779, file: !3772, line: 111, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3775, !3775}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3779, file: !3772, line: 112, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3775}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3779, file: !3772, line: 113, baseType: !3790, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!731, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3771)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3779, file: !3772, line: 114, baseType: !3796, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!2277, !3793, !3799}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3779, file: !3772, line: 116, baseType: !3802, size: 64, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!731, !3793, !308}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3779, file: !3772, line: 118, baseType: !3806, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!325, !3793, !308, !7, !291, !573}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3779, file: !3772, line: 123, baseType: !3810, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!325, !3793, !308, !3813, !573}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3779, file: !3772, line: 126, baseType: !3815, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!308, !3793}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3779, file: !3772, line: 127, baseType: !3815, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3779, file: !3772, line: 128, baseType: !3820, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3775, !3793}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3779, file: !3772, line: 130, baseType: !3824, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3775, !3793, !3775}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3779, file: !3772, line: 133, baseType: !3828, size: 64, offset: 704)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3775, !3793, !308}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3779, file: !3772, line: 135, baseType: !3832, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!325, !3793, !308, !308, !7, !7, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3772, line: 43, size: 640, elements: !3837)
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3772, line: 44, baseType: !3775, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3836, file: !3772, line: 45, baseType: !7, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3836, file: !3772, line: 46, baseType: !3841, size: 512, offset: 128)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 512, elements: !427)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3779, file: !3772, line: 140, baseType: !3824, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3779, file: !3772, line: 143, baseType: !3820, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3779, file: !3772, line: 145, baseType: !3782, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3779, file: !3772, line: 146, baseType: !3846, size: 64, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!325, !3793, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3772, line: 29, size: 128, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3850, file: !3772, line: 30, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3772, line: 31, baseType: !7, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3850, file: !3772, line: 32, baseType: !3793, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3779, file: !3772, line: 148, baseType: !3856, size: 64, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!325, !3793, !470}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3771, file: !3772, line: 20, baseType: !470, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3763, file: !3764, line: 57, baseType: !3861, size: 64, offset: 384)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3764, line: 31, size: 704, elements: !3863)
!3863 = !{!3864, !3865, !3866, !3867, !3868}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3862, file: !3764, line: 32, baseType: !331, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3862, file: !3764, line: 33, baseType: !325, size: 32, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3862, file: !3764, line: 34, baseType: !291, size: 64, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3862, file: !3764, line: 35, baseType: !3861, size: 64, offset: 192)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3862, file: !3764, line: 43, baseType: !595, size: 448, offset: 256)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3763, file: !3764, line: 58, baseType: !3861, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3763, file: !3764, line: 59, baseType: !3762, size: 64, offset: 512)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3763, file: !3764, line: 60, baseType: !3762, size: 64, offset: 576)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3763, file: !3764, line: 61, baseType: !3762, size: 64, offset: 640)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3763, file: !3764, line: 63, baseType: !474, size: 512, offset: 704)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3763, file: !3764, line: 65, baseType: !576, size: 64, offset: 1216)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3763, file: !3764, line: 66, baseType: !291, size: 64, offset: 1280)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3756, file: !258, line: 108, baseType: !3877, size: 64, offset: 64)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!325, !3748, !3880, !257}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !3882)
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3881, file: !258, line: 64, baseType: !3775, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3881, file: !258, line: 65, baseType: !325, size: 32, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3881, file: !258, line: 66, baseType: !3886, size: 512, offset: 96)
!3886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 512, elements: !1884)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3756, file: !258, line: 110, baseType: !3888, size: 64, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!325, !3748, !7, !3891}
!3891 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !293, line: 164, baseType: !576)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3756, file: !258, line: 111, baseType: !3893, size: 64, offset: 192)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3748, !7}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3756, file: !258, line: 112, baseType: !3897, size: 64, offset: 256)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{!325, !3748, !3762, !3900, !7, !3902, !368}
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3756, file: !258, line: 117, baseType: !3904, size: 64, offset: 320)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{!325, !3748, !7, !7, !291}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3756, file: !258, line: 119, baseType: !3908, size: 64, offset: 384)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3748, !7, !7}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3756, file: !258, line: 121, baseType: !3912, size: 64, offset: 448)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!325, !3748, !3915, !731}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3917, line: 11, flags: DIFlagFwdDecl)
!3917 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3756, file: !258, line: 122, baseType: !3919, size: 64, offset: 512)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3748, !3915}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3756, file: !258, line: 123, baseType: !3923, size: 64, offset: 576)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!325, !3748, !3880, !3902, !368}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3749, file: !258, line: 166, baseType: !291, size: 64, offset: 256)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3749, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3749, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3749, file: !258, line: 171, baseType: !3775, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3749, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3749, file: !258, line: 173, baseType: !3932, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3749, file: !258, line: 175, baseType: !3748, size: 64, offset: 576)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3749, file: !258, line: 182, baseType: !3891, size: 64, offset: 640)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3749, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3749, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3749, file: !258, line: 185, baseType: !980, size: 128, offset: 768)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3749, file: !258, line: 186, baseType: !1328, size: 192, offset: 896)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3749, file: !258, line: 187, baseType: !3941, offset: 1088)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2481)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !471, file: !237, line: 499, baseType: !457, size: 128, offset: 4224)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !471, file: !237, line: 502, baseType: !3944, size: 64, offset: 4352)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3946)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !471, file: !237, line: 504, baseType: !3948, size: 64, offset: 4416)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !471, file: !237, line: 505, baseType: !294, size: 64, offset: 4480)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !471, file: !237, line: 510, baseType: !294, size: 64, offset: 4544)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !471, file: !237, line: 511, baseType: !3952, size: 64, offset: 4608)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3954)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !471, file: !237, line: 513, baseType: !3956, size: 64, offset: 4672)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3957, file: !237, line: 293, baseType: !7, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3957, file: !237, line: 294, baseType: !576, size: 64, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !471, file: !237, line: 515, baseType: !457, size: 128, offset: 4736)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !471, file: !237, line: 526, baseType: !3963, offset: 4864)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3964, line: 5, elements: !501)
!3964 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !471, file: !237, line: 528, baseType: !3762, size: 64, offset: 4864)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !471, file: !237, line: 529, baseType: !3775, size: 64, offset: 4928)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !471, file: !237, line: 534, baseType: !754, size: 32, offset: 4992)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !471, file: !237, line: 535, baseType: !416, size: 32, offset: 5024)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !471, file: !237, line: 537, baseType: !487, offset: 5056)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !471, file: !237, line: 538, baseType: !457, size: 128, offset: 5056)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !471, file: !237, line: 540, baseType: !3972, size: 64, offset: 5184)
!3972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3973, size: 64)
!3973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3974, line: 54, size: 960, elements: !3975)
!3974 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3975 = !{!3976, !3977, !3978, !3979, !3980, !3981, !3982, !3986, !3990, !3991, !3992, !3993, !3997, !4001, !4002}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3973, file: !3974, line: 55, baseType: !308, size: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3973, file: !3974, line: 56, baseType: !312, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3973, file: !3974, line: 58, baseType: !580, size: 64, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3973, file: !3974, line: 59, baseType: !580, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3973, file: !3974, line: 60, baseType: !480, size: 64, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3973, file: !3974, line: 62, baseType: !3485, size: 64, offset: 320)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3973, file: !3974, line: 63, baseType: !3983, size: 64, offset: 384)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!331, !470, !3492}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3973, file: !3974, line: 65, baseType: !3987, size: 64, offset: 448)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !3972}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3973, file: !3974, line: 66, baseType: !3494, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3973, file: !3974, line: 68, baseType: !3503, size: 64, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3973, file: !3974, line: 70, baseType: !3293, size: 64, offset: 640)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3973, file: !3974, line: 71, baseType: !3994, size: 64, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!2277, !470}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3973, file: !3974, line: 73, baseType: !3998, size: 64, offset: 768)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{null, !470, !3325, !3326}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3973, file: !3974, line: 75, baseType: !3498, size: 64, offset: 832)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3973, file: !3974, line: 77, baseType: !3612, size: 64, offset: 896)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !471, file: !237, line: 541, baseType: !580, size: 64, offset: 5248)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !471, file: !237, line: 543, baseType: !3494, size: 64, offset: 5312)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !471, file: !237, line: 544, baseType: !4006, size: 64, offset: 5376)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !471, file: !237, line: 545, baseType: !4009, size: 64, offset: 5440)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !471, file: !237, line: 547, baseType: !731, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !471, file: !237, line: 548, baseType: !731, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !471, file: !237, line: 549, baseType: !731, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !471, file: !237, line: 550, baseType: !731, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !453, file: !272, line: 111, baseType: !312, size: 64, offset: 576)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !453, file: !272, line: 113, baseType: !325, size: 32, offset: 640)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !453, file: !272, line: 114, baseType: !4018, size: 64, offset: 704)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4020)
!4020 = !{!4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4031, !4035}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4019, file: !272, line: 158, baseType: !457, size: 128)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4019, file: !272, line: 159, baseType: !2951, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4019, file: !272, line: 160, baseType: !452, size: 64, offset: 192)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4019, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4019, file: !272, line: 162, baseType: !325, size: 32, offset: 288)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4019, file: !272, line: 163, baseType: !416, size: 32, offset: 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4019, file: !272, line: 167, baseType: !325, size: 32, offset: 352)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4019, file: !272, line: 168, baseType: !325, size: 32, offset: 384)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4019, file: !272, line: 169, baseType: !325, size: 32, offset: 416)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4019, file: !272, line: 171, baseType: !1632, size: 128, offset: 448)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4019, file: !272, line: 173, baseType: !4032, size: 64, offset: 576)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!325, !604, !7, !291}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4019, file: !272, line: 187, baseType: !291, size: 64, offset: 640)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !453, file: !272, line: 115, baseType: !1328, size: 192, offset: 768)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !434, file: !51, line: 690, baseType: !291, size: 64, offset: 6144)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !434, file: !51, line: 691, baseType: !291, size: 64, offset: 6208)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !434, file: !51, line: 692, baseType: !291, size: 64, offset: 6272)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !434, file: !51, line: 693, baseType: !291, size: 64, offset: 6336)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !434, file: !51, line: 694, baseType: !291, size: 64, offset: 6400)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !434, file: !51, line: 695, baseType: !4043, size: 3648, offset: 6464)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4108, !4109, !4110, !4111, !4112, !4113, !4114}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4043, file: !51, line: 587, baseType: !416, size: 32)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4043, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4043, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4043, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4043, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4043, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4043, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4043, file: !51, line: 595, baseType: !416, size: 32, offset: 224)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4043, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4043, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4043, file: !51, line: 598, baseType: !416, size: 32, offset: 320)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4043, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4043, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4043, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4043, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4043, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4043, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4043, file: !51, line: 610, baseType: !346, size: 8, offset: 544)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4043, file: !51, line: 611, baseType: !346, size: 8, offset: 552)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4043, file: !51, line: 612, baseType: !346, size: 8, offset: 560)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4043, file: !51, line: 613, baseType: !416, size: 32, offset: 576)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4043, file: !51, line: 614, baseType: !416, size: 32, offset: 608)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4043, file: !51, line: 615, baseType: !346, size: 8, offset: 640)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4043, file: !51, line: 621, baseType: !4069, size: 384, offset: 672)
!4069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4070, size: 384, elements: !528)
!4070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4043, file: !51, line: 616, size: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074, !4075}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4070, file: !51, line: 617, baseType: !346, size: 8)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4070, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4070, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4070, file: !51, line: 620, baseType: !346, size: 8, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4043, file: !51, line: 624, baseType: !416, size: 32, offset: 1056)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4043, file: !51, line: 627, baseType: !416, size: 32, offset: 1088)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4043, file: !51, line: 630, baseType: !346, size: 8, offset: 1120)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4043, file: !51, line: 631, baseType: !346, size: 8, offset: 1128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4043, file: !51, line: 632, baseType: !346, size: 8, offset: 1136)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4043, file: !51, line: 633, baseType: !346, size: 8, offset: 1144)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4043, file: !51, line: 634, baseType: !346, size: 8, offset: 1152)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4043, file: !51, line: 635, baseType: !346, size: 8, offset: 1160)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4043, file: !51, line: 637, baseType: !346, size: 8, offset: 1168)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4043, file: !51, line: 638, baseType: !346, size: 8, offset: 1176)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4043, file: !51, line: 639, baseType: !346, size: 8, offset: 1184)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4043, file: !51, line: 640, baseType: !346, size: 8, offset: 1192)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4043, file: !51, line: 641, baseType: !346, size: 8, offset: 1200)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4043, file: !51, line: 642, baseType: !346, size: 8, offset: 1208)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4043, file: !51, line: 643, baseType: !346, size: 8, offset: 1216)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4043, file: !51, line: 644, baseType: !346, size: 8, offset: 1224)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4043, file: !51, line: 645, baseType: !346, size: 8, offset: 1232)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4043, file: !51, line: 647, baseType: !416, size: 32, offset: 1248)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4043, file: !51, line: 650, baseType: !4095, size: 296, offset: 1280)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4096)
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4095, file: !6, line: 826, baseType: !347, size: 8)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4095, file: !6, line: 827, baseType: !4099, size: 288, offset: 8)
!4099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4100, size: 288, elements: !1310)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4101)
!4101 = !{!4102, !4103}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4100, file: !6, line: 804, baseType: !347, size: 8)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4100, file: !6, line: 805, baseType: !4104, size: 64, offset: 8)
!4104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4100, file: !6, line: 805, size: 64, elements: !4105)
!4105 = !{!4106, !4107}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4104, file: !6, line: 806, baseType: !296, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4104, file: !6, line: 807, baseType: !781, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4043, file: !51, line: 651, baseType: !4095, size: 296, offset: 1576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4043, file: !51, line: 652, baseType: !4095, size: 296, offset: 1872)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4043, file: !51, line: 653, baseType: !4095, size: 296, offset: 2168)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4043, file: !51, line: 654, baseType: !4095, size: 296, offset: 2464)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4043, file: !51, line: 655, baseType: !4095, size: 296, offset: 2760)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4043, file: !51, line: 656, baseType: !4095, size: 296, offset: 3056)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4043, file: !51, line: 657, baseType: !4095, size: 296, offset: 3352)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !434, file: !51, line: 698, baseType: !4116, size: 64, offset: 10112)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!325, !291, !325, !325, !325}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !434, file: !51, line: 699, baseType: !325, size: 32, offset: 10176)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !434, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !406, file: !51, line: 441, baseType: !430, size: 64, offset: 1408)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !406, file: !51, line: 442, baseType: !430, size: 64, offset: 1472)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !406, file: !51, line: 444, baseType: !4124, size: 64, offset: 1536)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!325, !433}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !406, file: !51, line: 445, baseType: !4124, size: 64, offset: 1600)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !406, file: !51, line: 447, baseType: !4129, size: 64, offset: 1664)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DISubroutineType(types: !4131)
!4131 = !{!325, !433, !4132, !325}
!4132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4133, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !406, file: !51, line: 450, baseType: !4135, size: 64, offset: 1728)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{!325, !433, !731, !7, !368, !4138}
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !406, file: !51, line: 457, baseType: !4140, size: 64, offset: 1792)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!50, !433}
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !406, file: !51, line: 460, baseType: !4124, size: 64, offset: 1856)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !406, file: !51, line: 461, baseType: !4145, size: 64, offset: 1920)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!325, !433, !4148}
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4150)
!4150 = !{!4151, !4152, !4153}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4149, file: !51, line: 70, baseType: !325, size: 32)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4149, file: !51, line: 71, baseType: !325, size: 32, offset: 32)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4149, file: !51, line: 72, baseType: !325, size: 32, offset: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !406, file: !51, line: 463, baseType: !4155, size: 64, offset: 1984)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DISubroutineType(types: !4157)
!4157 = !{!325, !433, !4158}
!4158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !406, file: !51, line: 466, baseType: !4160, size: 64, offset: 2048)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!325, !433, !4138}
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !406, file: !51, line: 467, baseType: !4164, size: 64, offset: 2112)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DISubroutineType(types: !4166)
!4166 = !{!325, !433, !1561}
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !406, file: !51, line: 468, baseType: !4168, size: 64, offset: 2176)
!4168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4169, size: 64)
!4169 = !DISubroutineType(types: !4170)
!4170 = !{!325, !433, !4171}
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !406, file: !51, line: 469, baseType: !4168, size: 64, offset: 2240)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !406, file: !51, line: 470, baseType: !4164, size: 64, offset: 2304)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !406, file: !51, line: 472, baseType: !4124, size: 64, offset: 2368)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !406, file: !51, line: 473, baseType: !4176, size: 64, offset: 2432)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{!325, !433, !4179}
!4179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4180, size: 64)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4181)
!4181 = !{!4182, !4184}
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4180, file: !6, line: 174, baseType: !4183, size: 48)
!4183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 48, elements: !466)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4180, file: !6, line: 175, baseType: !347, size: 8, offset: 48)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !406, file: !51, line: 474, baseType: !4186, size: 64, offset: 2496)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DISubroutineType(types: !4188)
!4188 = !{!325, !433, !4189}
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4191)
!4191 = !{!4192, !4194, !4195}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4190, file: !6, line: 196, baseType: !4193, size: 32)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32, elements: !1310)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4190, file: !6, line: 197, baseType: !347, size: 8, offset: 32)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4190, file: !6, line: 198, baseType: !325, size: 32, offset: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !406, file: !51, line: 475, baseType: !4197, size: 64, offset: 2560)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DISubroutineType(types: !4199)
!4199 = !{!325, !433, !171}
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !406, file: !51, line: 477, baseType: !4201, size: 64, offset: 2624)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{!325, !433, !78}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !406, file: !51, line: 478, baseType: !4205, size: 64, offset: 2688)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = !DISubroutineType(types: !4207)
!4207 = !{!325, !433, !73}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !406, file: !51, line: 480, baseType: !4209, size: 64, offset: 2752)
!4209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!4210 = !DISubroutineType(types: !4211)
!4211 = !{!325, !433, !562}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !406, file: !51, line: 481, baseType: !4213, size: 64, offset: 2816)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DISubroutineType(types: !4215)
!4215 = !{!325, !433, !576}
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !406, file: !51, line: 482, baseType: !4217, size: 64, offset: 2880)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!325, !433, !325}
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !406, file: !51, line: 483, baseType: !4217, size: 64, offset: 2944)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !406, file: !51, line: 484, baseType: !4124, size: 64, offset: 3008)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !406, file: !51, line: 490, baseType: !4223, size: 64, offset: 3072)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!175, !433}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !406, file: !51, line: 492, baseType: !4227, size: 2304, offset: 3136)
!4227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4228)
!4228 = !{!4229, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4256, !4260, !4261, !4262, !4263, !4264, !4265, !4270, !4275, !4279}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4227, file: !51, line: 228, baseType: !4230, size: 1216)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4231)
!4231 = !{!4232, !4233, !4234, !4235, !4236, !4237, !4238}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4230, file: !51, line: 89, baseType: !412, size: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4230, file: !51, line: 91, baseType: !416, size: 32, offset: 1024)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4230, file: !51, line: 92, baseType: !416, size: 32, offset: 1056)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4230, file: !51, line: 93, baseType: !416, size: 32, offset: 1088)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4230, file: !51, line: 95, baseType: !416, size: 32, offset: 1120)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4230, file: !51, line: 96, baseType: !416, size: 32, offset: 1152)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4230, file: !51, line: 97, baseType: !416, size: 32, offset: 1184)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4227, file: !51, line: 230, baseType: !430, size: 64, offset: 1216)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4227, file: !51, line: 231, baseType: !4124, size: 64, offset: 1280)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4227, file: !51, line: 232, baseType: !4124, size: 64, offset: 1344)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4227, file: !51, line: 233, baseType: !4124, size: 64, offset: 1408)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4227, file: !51, line: 234, baseType: !4124, size: 64, offset: 1472)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4227, file: !51, line: 237, baseType: !4124, size: 64, offset: 1536)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4227, file: !51, line: 238, baseType: !4246, size: 64, offset: 1600)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!325, !433, !4249}
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4251)
!4251 = !{!4252, !4253, !4254, !4255}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4250, file: !51, line: 115, baseType: !7, size: 32)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4250, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4250, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4250, file: !51, line: 118, baseType: !294, size: 64, offset: 128)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4227, file: !51, line: 240, baseType: !4257, size: 64, offset: 1664)
!4257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4258, size: 64)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!325, !433, !291}
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4227, file: !51, line: 242, baseType: !4164, size: 64, offset: 1728)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4227, file: !51, line: 243, baseType: !4164, size: 64, offset: 1792)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4227, file: !51, line: 244, baseType: !4164, size: 64, offset: 1856)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4227, file: !51, line: 248, baseType: !4164, size: 64, offset: 1920)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4227, file: !51, line: 249, baseType: !4168, size: 64, offset: 1984)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4227, file: !51, line: 250, baseType: !4266, size: 64, offset: 2048)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!325, !433, !4269}
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4227, file: !51, line: 258, baseType: !4271, size: 64, offset: 2112)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{!325, !433, !4274, !325}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4227, file: !51, line: 267, baseType: !4276, size: 64, offset: 2176)
!4276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4277, size: 64)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!325, !433, !416}
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4227, file: !51, line: 268, baseType: !4276, size: 64, offset: 2240)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !406, file: !51, line: 493, baseType: !4281, size: 576, offset: 5440)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4282)
!4282 = !{!4283, !4287, !4291, !4292, !4293, !4294, !4295, !4296, !4297}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4281, file: !51, line: 304, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4285)
!4285 = !{!4286}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4284, file: !51, line: 277, baseType: !331, size: 64)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4281, file: !51, line: 306, baseType: !4288, size: 64, offset: 64)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !433, !4249}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4281, file: !51, line: 308, baseType: !4168, size: 64, offset: 128)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4281, file: !51, line: 309, baseType: !4266, size: 64, offset: 192)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4281, file: !51, line: 310, baseType: !430, size: 64, offset: 256)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4281, file: !51, line: 311, baseType: !430, size: 64, offset: 320)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4281, file: !51, line: 312, baseType: !430, size: 64, offset: 384)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4281, file: !51, line: 313, baseType: !4217, size: 64, offset: 448)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4281, file: !51, line: 316, baseType: !4257, size: 64, offset: 512)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 120, elements: !4299)
!4299 = !{!4300}
!4300 = !DISubrange(count: 15)
!4301 = !{i32 7, !"Dwarf Version", i32 4}
!4302 = !{i32 2, !"Debug Info Version", i32 3}
!4303 = !{i32 1, !"wchar_size", i32 2}
!4304 = !{i32 1, !"Code Model", i32 2}
!4305 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4306 = distinct !DISubprogram(name: "atbm8830_attach", scope: !3, file: !3, line: 450, type: !4307, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{!433, !4309, !4325}
!4309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4311)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atbm8830_config", file: !4312, line: 18, size: 160, elements: !4313)
!4312 = !DIFile(filename: "drivers/media/dvb-frontends/atbm8830.h", directory: "/home/lizy2001/genbc/linux")
!4313 = !{!4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "prod", scope: !4311, file: !4312, line: 21, baseType: !346, size: 8)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "demod_address", scope: !4311, file: !4312, line: 24, baseType: !346, size: 8, offset: 8)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "serial_ts", scope: !4311, file: !4312, line: 27, baseType: !346, size: 8, offset: 16)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "ts_clk_gated", scope: !4311, file: !4312, line: 30, baseType: !346, size: 8, offset: 24)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ts_sampling_edge", scope: !4311, file: !4312, line: 33, baseType: !346, size: 8, offset: 32)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "osc_clk_freq", scope: !4311, file: !4312, line: 36, baseType: !416, size: 32, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "if_freq", scope: !4311, file: !4312, line: 39, baseType: !416, size: 32, offset: 96)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "zif_swap_iq", scope: !4311, file: !4312, line: 42, baseType: !346, size: 8, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "agc_min", scope: !4311, file: !4312, line: 45, baseType: !346, size: 8, offset: 136)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "agc_max", scope: !4311, file: !4312, line: 46, baseType: !346, size: 8, offset: 144)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "agc_hold_loop", scope: !4311, file: !4312, line: 47, baseType: !346, size: 8, offset: 152)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4327, line: 695, size: 7552, elements: !4328)
!4327 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4328 = !{!4329, !4330, !4331, !4368, !4369, !4383, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4400, !4401, !4402, !4403, !4435, !4446}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4326, file: !4327, line: 696, baseType: !312, size: 64)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4326, file: !4327, line: 697, baseType: !7, size: 32, offset: 64)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4326, file: !4327, line: 698, baseType: !4332, size: 64, offset: 128)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4334)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4327, line: 519, size: 320, elements: !4335)
!4335 = !{!4336, !4349, !4350, !4363, !4364}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4334, file: !4327, line: 529, baseType: !4337, size: 64)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!325, !4325, !4340, !325}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4342, line: 69, size: 128, elements: !4343)
!4342 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4343 = !{!4344, !4345, !4346, !4347}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4341, file: !4342, line: 70, baseType: !339, size: 16)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4341, file: !4342, line: 71, baseType: !339, size: 16, offset: 16)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4341, file: !4342, line: 84, baseType: !339, size: 16, offset: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4341, file: !4342, line: 85, baseType: !4348, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4334, file: !4327, line: 531, baseType: !4337, size: 64, offset: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4334, file: !4327, line: 533, baseType: !4351, size: 64, offset: 128)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!325, !4325, !338, !340, !310, !346, !325, !4354}
!4354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4355, size: 64)
!4355 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4342, line: 135, size: 272, elements: !4356)
!4356 = !{!4357, !4358, !4359}
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4355, file: !4342, line: 136, baseType: !347, size: 8)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4355, file: !4342, line: 137, baseType: !339, size: 16)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4355, file: !4342, line: 138, baseType: !4360, size: 272)
!4360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 272, elements: !4361)
!4361 = !{!4362}
!4362 = !DISubrange(count: 34)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4334, file: !4327, line: 536, baseType: !4351, size: 64, offset: 192)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4334, file: !4327, line: 541, baseType: !4365, size: 64, offset: 256)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!416, !4325}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4326, file: !4327, line: 699, baseType: !291, size: 64, offset: 192)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4326, file: !4327, line: 702, baseType: !4370, size: 64, offset: 256)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4372)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4327, line: 557, size: 192, elements: !4373)
!4373 = !{!4374, !4378, !4382}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4372, file: !4327, line: 558, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{null, !4325, !7}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4372, file: !4327, line: 559, baseType: !4379, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DISubroutineType(types: !4381)
!4381 = !{!325, !4325, !7}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4372, file: !4327, line: 560, baseType: !4375, size: 64, offset: 128)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4326, file: !4327, line: 703, baseType: !4384, size: 192, offset: 320)
!4384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4385, line: 30, size: 192, elements: !4386)
!4385 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4386 = !{!4387, !4388, !4389}
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4384, file: !4385, line: 31, baseType: !1017)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4384, file: !4385, line: 32, baseType: !989, size: 128)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4384, file: !4385, line: 33, baseType: !1371, size: 64, offset: 128)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4326, file: !4327, line: 704, baseType: !4384, size: 192, offset: 512)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4326, file: !4327, line: 706, baseType: !325, size: 32, offset: 704)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4326, file: !4327, line: 707, baseType: !325, size: 32, offset: 736)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4326, file: !4327, line: 708, baseType: !471, size: 5568, offset: 768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4326, file: !4327, line: 709, baseType: !576, size: 64, offset: 6336)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4326, file: !4327, line: 713, baseType: !325, size: 32, offset: 6400)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4326, file: !4327, line: 714, baseType: !4397, size: 384, offset: 6432)
!4397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 384, elements: !4398)
!4398 = !{!4399}
!4399 = !DISubrange(count: 48)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4326, file: !4327, line: 715, baseType: !1653, size: 192, offset: 6848)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4326, file: !4327, line: 717, baseType: !1328, size: 192, offset: 7040)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4326, file: !4327, line: 718, baseType: !457, size: 128, offset: 7232)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4326, file: !4327, line: 720, baseType: !4404, size: 64, offset: 7360)
!4404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4327, line: 618, size: 832, elements: !4406)
!4406 = !{!4407, !4411, !4412, !4416, !4417, !4418, !4419, !4423, !4424, !4427, !4428, !4431, !4434}
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4405, file: !4327, line: 619, baseType: !4408, size: 64)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{!325, !4325}
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4405, file: !4327, line: 621, baseType: !4408, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4405, file: !4327, line: 622, baseType: !4413, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !4325, !325}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4405, file: !4327, line: 623, baseType: !4408, size: 64, offset: 192)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4405, file: !4327, line: 624, baseType: !4413, size: 64, offset: 256)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4405, file: !4327, line: 625, baseType: !4408, size: 64, offset: 320)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4405, file: !4327, line: 627, baseType: !4420, size: 64, offset: 384)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4325}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4405, file: !4327, line: 628, baseType: !4420, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4405, file: !4327, line: 631, baseType: !4425, size: 64, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4327, line: 631, flags: DIFlagFwdDecl)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4405, file: !4327, line: 632, baseType: !4425, size: 64, offset: 576)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4405, file: !4327, line: 633, baseType: !4429, size: 64, offset: 640)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4327, line: 633, flags: DIFlagFwdDecl)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4405, file: !4327, line: 634, baseType: !4432, size: 64, offset: 704)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4327, line: 634, flags: DIFlagFwdDecl)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4405, file: !4327, line: 635, baseType: !4432, size: 64, offset: 768)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4326, file: !4327, line: 721, baseType: !4436, size: 64, offset: 7424)
!4436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4437, size: 64)
!4437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4438)
!4438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4327, line: 664, size: 192, elements: !4439)
!4439 = !{!4440, !4441, !4442, !4443, !4444, !4445}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4438, file: !4327, line: 665, baseType: !294, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4438, file: !4327, line: 666, baseType: !325, size: 32, offset: 64)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4438, file: !4327, line: 667, baseType: !338, size: 16, offset: 96)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4438, file: !4327, line: 668, baseType: !338, size: 16, offset: 112)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4438, file: !4327, line: 669, baseType: !338, size: 16, offset: 128)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4438, file: !4327, line: 670, baseType: !338, size: 16, offset: 144)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4326, file: !4327, line: 723, baseType: !3748, size: 64, offset: 7488)
!4447 = !DILocalVariable(name: "config", arg: 1, scope: !4306, file: !3, line: 450, type: !4309)
!4448 = !DILocation(line: 450, column: 68, scope: !4306)
!4449 = !DILocalVariable(name: "i2c", arg: 2, scope: !4306, file: !3, line: 451, type: !4325)
!4450 = !DILocation(line: 451, column: 22, scope: !4306)
!4451 = !DILocalVariable(name: "priv", scope: !4306, file: !3, line: 453, type: !4452)
!4452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atbm_state", file: !4454, line: 12, size: 10368, elements: !4455)
!4454 = !DIFile(filename: "drivers/media/dvb-frontends/atbm8830_priv.h", directory: "/home/lizy2001/genbc/linux")
!4455 = !{!4456, !4457, !4458}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "i2c", scope: !4453, file: !4454, line: 13, baseType: !4325, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4453, file: !4454, line: 15, baseType: !4309, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "frontend", scope: !4453, file: !4454, line: 16, baseType: !434, size: 10240, offset: 128)
!4459 = !DILocation(line: 453, column: 21, scope: !4306)
!4460 = !DILocalVariable(name: "data", scope: !4306, file: !3, line: 454, type: !346)
!4461 = !DILocation(line: 454, column: 5, scope: !4306)
!4462 = !DILocation(line: 456, column: 2, scope: !4306)
!4463 = !DILocation(line: 456, column: 2, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4465, file: !3, line: 456, column: 2)
!4465 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 456, column: 2)
!4466 = !DILocation(line: 456, column: 2, scope: !4465)
!4467 = !DILocation(line: 458, column: 6, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 458, column: 6)
!4469 = !DILocation(line: 458, column: 13, scope: !4468)
!4470 = !DILocation(line: 458, column: 21, scope: !4468)
!4471 = !DILocation(line: 458, column: 24, scope: !4468)
!4472 = !DILocation(line: 458, column: 28, scope: !4468)
!4473 = !DILocation(line: 458, column: 6, scope: !4306)
!4474 = !DILocation(line: 459, column: 3, scope: !4468)
!4475 = !DILocation(line: 461, column: 9, scope: !4306)
!4476 = !DILocation(line: 461, column: 7, scope: !4306)
!4477 = !DILocation(line: 462, column: 6, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 462, column: 6)
!4479 = !DILocation(line: 462, column: 11, scope: !4478)
!4480 = !DILocation(line: 462, column: 6, scope: !4306)
!4481 = !DILocation(line: 463, column: 3, scope: !4478)
!4482 = !DILocation(line: 465, column: 17, scope: !4306)
!4483 = !DILocation(line: 465, column: 2, scope: !4306)
!4484 = !DILocation(line: 465, column: 8, scope: !4306)
!4485 = !DILocation(line: 465, column: 15, scope: !4306)
!4486 = !DILocation(line: 466, column: 14, scope: !4306)
!4487 = !DILocation(line: 466, column: 2, scope: !4306)
!4488 = !DILocation(line: 466, column: 8, scope: !4306)
!4489 = !DILocation(line: 466, column: 12, scope: !4306)
!4490 = !DILocation(line: 469, column: 24, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 469, column: 6)
!4492 = !DILocation(line: 469, column: 6, scope: !4491)
!4493 = !DILocation(line: 469, column: 50, scope: !4491)
!4494 = !DILocation(line: 469, column: 6, scope: !4306)
!4495 = !DILocation(line: 470, column: 3, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 469, column: 56)
!4497 = !DILocation(line: 470, column: 3, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4499, file: !3, line: 470, column: 3)
!4499 = distinct !DILexicalBlock(scope: !4496, file: !3, line: 470, column: 3)
!4500 = !DILocation(line: 470, column: 3, scope: !4499)
!4501 = !DILocation(line: 472, column: 3, scope: !4496)
!4502 = !DILocation(line: 474, column: 2, scope: !4306)
!4503 = !DILocation(line: 474, column: 2, scope: !4504)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !3, line: 474, column: 2)
!4505 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 474, column: 2)
!4506 = !DILocation(line: 474, column: 2, scope: !4505)
!4507 = !DILocation(line: 476, column: 10, scope: !4306)
!4508 = !DILocation(line: 476, column: 16, scope: !4306)
!4509 = !DILocation(line: 476, column: 25, scope: !4306)
!4510 = !DILocation(line: 476, column: 2, scope: !4306)
!4511 = !DILocation(line: 478, column: 36, scope: !4306)
!4512 = !DILocation(line: 478, column: 2, scope: !4306)
!4513 = !DILocation(line: 478, column: 8, scope: !4306)
!4514 = !DILocation(line: 478, column: 17, scope: !4306)
!4515 = !DILocation(line: 478, column: 34, scope: !4306)
!4516 = !DILocation(line: 480, column: 17, scope: !4306)
!4517 = !DILocation(line: 480, column: 23, scope: !4306)
!4518 = !DILocation(line: 480, column: 2, scope: !4306)
!4519 = !DILocation(line: 482, column: 26, scope: !4306)
!4520 = !DILocation(line: 482, column: 32, scope: !4306)
!4521 = !DILocation(line: 482, column: 2, scope: !4306)
!4522 = !DILocation(line: 484, column: 10, scope: !4306)
!4523 = !DILocation(line: 484, column: 16, scope: !4306)
!4524 = !DILocation(line: 484, column: 2, scope: !4306)
!4525 = !DILabel(scope: !4306, name: "error_out", file: !3, line: 486)
!4526 = !DILocation(line: 486, column: 1, scope: !4306)
!4527 = !DILocation(line: 487, column: 2, scope: !4306)
!4528 = !DILocation(line: 487, column: 2, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4530, file: !3, line: 487, column: 2)
!4530 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 487, column: 2)
!4531 = !DILocation(line: 487, column: 2, scope: !4530)
!4532 = !DILocation(line: 488, column: 8, scope: !4306)
!4533 = !DILocation(line: 488, column: 2, scope: !4306)
!4534 = !DILocation(line: 489, column: 2, scope: !4306)
!4535 = !DILocation(line: 491, column: 1, scope: !4306)
!4536 = distinct !DISubprogram(name: "kzalloc", scope: !284, file: !284, line: 662, type: !4537, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!291, !573, !292}
!4539 = !DILocalVariable(name: "s", arg: 1, scope: !4540, file: !284, line: 445, type: !1170)
!4540 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !284, file: !284, line: 445, type: !4541, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!291, !1170, !292, !573}
!4543 = !DILocation(line: 445, column: 72, scope: !4540, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 552, column: 10, scope: !4545, inlinedAt: !4548)
!4545 = distinct !DILexicalBlock(scope: !4546, file: !284, line: 540, column: 34)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !284, line: 540, column: 6)
!4547 = distinct !DISubprogram(name: "kmalloc", scope: !284, file: !284, line: 538, type: !4537, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4548 = distinct !DILocation(line: 664, column: 9, scope: !4536)
!4549 = !DILocalVariable(name: "flags", arg: 2, scope: !4540, file: !284, line: 446, type: !292)
!4550 = !DILocation(line: 446, column: 9, scope: !4540, inlinedAt: !4544)
!4551 = !DILocalVariable(name: "size", arg: 3, scope: !4540, file: !284, line: 446, type: !573)
!4552 = !DILocation(line: 446, column: 23, scope: !4540, inlinedAt: !4544)
!4553 = !DILocalVariable(name: "ret", scope: !4540, file: !284, line: 448, type: !291)
!4554 = !DILocation(line: 448, column: 8, scope: !4540, inlinedAt: !4544)
!4555 = !DILocalVariable(name: "flags", arg: 1, scope: !4556, file: !284, line: 318, type: !292)
!4556 = distinct !DISubprogram(name: "kmalloc_type", scope: !284, file: !284, line: 318, type: !4557, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!283, !292}
!4559 = !DILocation(line: 318, column: 67, scope: !4556, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 553, column: 20, scope: !4545, inlinedAt: !4548)
!4561 = !DILocalVariable(name: "size", arg: 1, scope: !4562, file: !284, line: 346, type: !573)
!4562 = distinct !DISubprogram(name: "kmalloc_index", scope: !284, file: !284, line: 346, type: !4563, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!7, !573}
!4565 = !DILocation(line: 346, column: 58, scope: !4562, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 547, column: 11, scope: !4545, inlinedAt: !4548)
!4567 = !DILocalVariable(name: "size", arg: 1, scope: !4568, file: !284, line: 472, type: !573)
!4568 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !284, file: !284, line: 472, type: !4569, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!291, !573, !292, !7}
!4571 = !DILocation(line: 472, column: 28, scope: !4568, inlinedAt: !4572)
!4572 = distinct !DILocation(line: 481, column: 9, scope: !4573, inlinedAt: !4574)
!4573 = distinct !DISubprogram(name: "kmalloc_large", scope: !284, file: !284, line: 478, type: !4537, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4574 = distinct !DILocation(line: 545, column: 11, scope: !4575, inlinedAt: !4548)
!4575 = distinct !DILexicalBlock(scope: !4545, file: !284, line: 544, column: 7)
!4576 = !DILocalVariable(name: "flags", arg: 2, scope: !4568, file: !284, line: 472, type: !292)
!4577 = !DILocation(line: 472, column: 40, scope: !4568, inlinedAt: !4572)
!4578 = !DILocalVariable(name: "order", arg: 3, scope: !4568, file: !284, line: 472, type: !7)
!4579 = !DILocation(line: 472, column: 60, scope: !4568, inlinedAt: !4572)
!4580 = !DILocalVariable(name: "size", arg: 1, scope: !4573, file: !284, line: 478, type: !573)
!4581 = !DILocation(line: 478, column: 51, scope: !4573, inlinedAt: !4574)
!4582 = !DILocalVariable(name: "flags", arg: 2, scope: !4573, file: !284, line: 478, type: !292)
!4583 = !DILocation(line: 478, column: 63, scope: !4573, inlinedAt: !4574)
!4584 = !DILocalVariable(name: "order", scope: !4573, file: !284, line: 480, type: !7)
!4585 = !DILocation(line: 480, column: 15, scope: !4573, inlinedAt: !4574)
!4586 = !DILocalVariable(name: "size", arg: 1, scope: !4547, file: !284, line: 538, type: !573)
!4587 = !DILocation(line: 538, column: 45, scope: !4547, inlinedAt: !4548)
!4588 = !DILocalVariable(name: "flags", arg: 2, scope: !4547, file: !284, line: 538, type: !292)
!4589 = !DILocation(line: 538, column: 57, scope: !4547, inlinedAt: !4548)
!4590 = !DILocalVariable(name: "index", scope: !4545, file: !284, line: 542, type: !7)
!4591 = !DILocation(line: 542, column: 16, scope: !4545, inlinedAt: !4548)
!4592 = !DILocalVariable(name: "size", arg: 1, scope: !4536, file: !284, line: 662, type: !573)
!4593 = !DILocation(line: 662, column: 36, scope: !4536)
!4594 = !DILocalVariable(name: "flags", arg: 2, scope: !4536, file: !284, line: 662, type: !292)
!4595 = !DILocation(line: 662, column: 48, scope: !4536)
!4596 = !DILocation(line: 664, column: 17, scope: !4536)
!4597 = !DILocation(line: 664, column: 23, scope: !4536)
!4598 = !DILocation(line: 664, column: 29, scope: !4536)
!4599 = !DILocation(line: 540, column: 27, scope: !4546, inlinedAt: !4548)
!4600 = !DILocation(line: 540, column: 6, scope: !4546, inlinedAt: !4548)
!4601 = !DILocation(line: 540, column: 6, scope: !4547, inlinedAt: !4548)
!4602 = !DILocation(line: 544, column: 7, scope: !4575, inlinedAt: !4548)
!4603 = !DILocation(line: 544, column: 12, scope: !4575, inlinedAt: !4548)
!4604 = !DILocation(line: 544, column: 7, scope: !4545, inlinedAt: !4548)
!4605 = !DILocation(line: 545, column: 25, scope: !4575, inlinedAt: !4548)
!4606 = !DILocation(line: 545, column: 31, scope: !4575, inlinedAt: !4548)
!4607 = !DILocation(line: 480, column: 33, scope: !4573, inlinedAt: !4574)
!4608 = !DILocation(line: 480, column: 23, scope: !4573, inlinedAt: !4574)
!4609 = !DILocation(line: 481, column: 29, scope: !4573, inlinedAt: !4574)
!4610 = !DILocation(line: 481, column: 35, scope: !4573, inlinedAt: !4574)
!4611 = !DILocation(line: 481, column: 42, scope: !4573, inlinedAt: !4574)
!4612 = !DILocation(line: 474, column: 23, scope: !4568, inlinedAt: !4572)
!4613 = !DILocation(line: 474, column: 29, scope: !4568, inlinedAt: !4572)
!4614 = !DILocation(line: 474, column: 36, scope: !4568, inlinedAt: !4572)
!4615 = !DILocation(line: 474, column: 9, scope: !4568, inlinedAt: !4572)
!4616 = !DILocation(line: 545, column: 4, scope: !4575, inlinedAt: !4548)
!4617 = !DILocation(line: 547, column: 25, scope: !4545, inlinedAt: !4548)
!4618 = !DILocation(line: 348, column: 7, scope: !4619, inlinedAt: !4566)
!4619 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 348, column: 6)
!4620 = !DILocation(line: 348, column: 6, scope: !4562, inlinedAt: !4566)
!4621 = !DILocation(line: 349, column: 3, scope: !4619, inlinedAt: !4566)
!4622 = !DILocation(line: 351, column: 6, scope: !4623, inlinedAt: !4566)
!4623 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 351, column: 6)
!4624 = !DILocation(line: 351, column: 11, scope: !4623, inlinedAt: !4566)
!4625 = !DILocation(line: 351, column: 6, scope: !4562, inlinedAt: !4566)
!4626 = !DILocation(line: 352, column: 3, scope: !4623, inlinedAt: !4566)
!4627 = !DILocation(line: 354, column: 32, scope: !4628, inlinedAt: !4566)
!4628 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 354, column: 6)
!4629 = !DILocation(line: 354, column: 37, scope: !4628, inlinedAt: !4566)
!4630 = !DILocation(line: 354, column: 42, scope: !4628, inlinedAt: !4566)
!4631 = !DILocation(line: 354, column: 45, scope: !4628, inlinedAt: !4566)
!4632 = !DILocation(line: 354, column: 50, scope: !4628, inlinedAt: !4566)
!4633 = !DILocation(line: 354, column: 6, scope: !4562, inlinedAt: !4566)
!4634 = !DILocation(line: 355, column: 3, scope: !4628, inlinedAt: !4566)
!4635 = !DILocation(line: 356, column: 32, scope: !4636, inlinedAt: !4566)
!4636 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 356, column: 6)
!4637 = !DILocation(line: 356, column: 37, scope: !4636, inlinedAt: !4566)
!4638 = !DILocation(line: 356, column: 43, scope: !4636, inlinedAt: !4566)
!4639 = !DILocation(line: 356, column: 46, scope: !4636, inlinedAt: !4566)
!4640 = !DILocation(line: 356, column: 51, scope: !4636, inlinedAt: !4566)
!4641 = !DILocation(line: 356, column: 6, scope: !4562, inlinedAt: !4566)
!4642 = !DILocation(line: 357, column: 3, scope: !4636, inlinedAt: !4566)
!4643 = !DILocation(line: 358, column: 6, scope: !4644, inlinedAt: !4566)
!4644 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 358, column: 6)
!4645 = !DILocation(line: 358, column: 11, scope: !4644, inlinedAt: !4566)
!4646 = !DILocation(line: 358, column: 6, scope: !4562, inlinedAt: !4566)
!4647 = !DILocation(line: 358, column: 26, scope: !4644, inlinedAt: !4566)
!4648 = !DILocation(line: 359, column: 6, scope: !4649, inlinedAt: !4566)
!4649 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 359, column: 6)
!4650 = !DILocation(line: 359, column: 11, scope: !4649, inlinedAt: !4566)
!4651 = !DILocation(line: 359, column: 6, scope: !4562, inlinedAt: !4566)
!4652 = !DILocation(line: 359, column: 26, scope: !4649, inlinedAt: !4566)
!4653 = !DILocation(line: 360, column: 6, scope: !4654, inlinedAt: !4566)
!4654 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 360, column: 6)
!4655 = !DILocation(line: 360, column: 11, scope: !4654, inlinedAt: !4566)
!4656 = !DILocation(line: 360, column: 6, scope: !4562, inlinedAt: !4566)
!4657 = !DILocation(line: 360, column: 26, scope: !4654, inlinedAt: !4566)
!4658 = !DILocation(line: 361, column: 6, scope: !4659, inlinedAt: !4566)
!4659 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 361, column: 6)
!4660 = !DILocation(line: 361, column: 11, scope: !4659, inlinedAt: !4566)
!4661 = !DILocation(line: 361, column: 6, scope: !4562, inlinedAt: !4566)
!4662 = !DILocation(line: 361, column: 26, scope: !4659, inlinedAt: !4566)
!4663 = !DILocation(line: 362, column: 6, scope: !4664, inlinedAt: !4566)
!4664 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 362, column: 6)
!4665 = !DILocation(line: 362, column: 11, scope: !4664, inlinedAt: !4566)
!4666 = !DILocation(line: 362, column: 6, scope: !4562, inlinedAt: !4566)
!4667 = !DILocation(line: 362, column: 26, scope: !4664, inlinedAt: !4566)
!4668 = !DILocation(line: 363, column: 6, scope: !4669, inlinedAt: !4566)
!4669 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 363, column: 6)
!4670 = !DILocation(line: 363, column: 11, scope: !4669, inlinedAt: !4566)
!4671 = !DILocation(line: 363, column: 6, scope: !4562, inlinedAt: !4566)
!4672 = !DILocation(line: 363, column: 26, scope: !4669, inlinedAt: !4566)
!4673 = !DILocation(line: 364, column: 6, scope: !4674, inlinedAt: !4566)
!4674 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 364, column: 6)
!4675 = !DILocation(line: 364, column: 11, scope: !4674, inlinedAt: !4566)
!4676 = !DILocation(line: 364, column: 6, scope: !4562, inlinedAt: !4566)
!4677 = !DILocation(line: 364, column: 26, scope: !4674, inlinedAt: !4566)
!4678 = !DILocation(line: 365, column: 6, scope: !4679, inlinedAt: !4566)
!4679 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 365, column: 6)
!4680 = !DILocation(line: 365, column: 11, scope: !4679, inlinedAt: !4566)
!4681 = !DILocation(line: 365, column: 6, scope: !4562, inlinedAt: !4566)
!4682 = !DILocation(line: 365, column: 26, scope: !4679, inlinedAt: !4566)
!4683 = !DILocation(line: 366, column: 6, scope: !4684, inlinedAt: !4566)
!4684 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 366, column: 6)
!4685 = !DILocation(line: 366, column: 11, scope: !4684, inlinedAt: !4566)
!4686 = !DILocation(line: 366, column: 6, scope: !4562, inlinedAt: !4566)
!4687 = !DILocation(line: 366, column: 26, scope: !4684, inlinedAt: !4566)
!4688 = !DILocation(line: 367, column: 6, scope: !4689, inlinedAt: !4566)
!4689 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 367, column: 6)
!4690 = !DILocation(line: 367, column: 11, scope: !4689, inlinedAt: !4566)
!4691 = !DILocation(line: 367, column: 6, scope: !4562, inlinedAt: !4566)
!4692 = !DILocation(line: 367, column: 26, scope: !4689, inlinedAt: !4566)
!4693 = !DILocation(line: 368, column: 6, scope: !4694, inlinedAt: !4566)
!4694 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 368, column: 6)
!4695 = !DILocation(line: 368, column: 11, scope: !4694, inlinedAt: !4566)
!4696 = !DILocation(line: 368, column: 6, scope: !4562, inlinedAt: !4566)
!4697 = !DILocation(line: 368, column: 26, scope: !4694, inlinedAt: !4566)
!4698 = !DILocation(line: 369, column: 6, scope: !4699, inlinedAt: !4566)
!4699 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 369, column: 6)
!4700 = !DILocation(line: 369, column: 11, scope: !4699, inlinedAt: !4566)
!4701 = !DILocation(line: 369, column: 6, scope: !4562, inlinedAt: !4566)
!4702 = !DILocation(line: 369, column: 26, scope: !4699, inlinedAt: !4566)
!4703 = !DILocation(line: 370, column: 6, scope: !4704, inlinedAt: !4566)
!4704 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 370, column: 6)
!4705 = !DILocation(line: 370, column: 11, scope: !4704, inlinedAt: !4566)
!4706 = !DILocation(line: 370, column: 6, scope: !4562, inlinedAt: !4566)
!4707 = !DILocation(line: 370, column: 26, scope: !4704, inlinedAt: !4566)
!4708 = !DILocation(line: 371, column: 6, scope: !4709, inlinedAt: !4566)
!4709 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 371, column: 6)
!4710 = !DILocation(line: 371, column: 11, scope: !4709, inlinedAt: !4566)
!4711 = !DILocation(line: 371, column: 6, scope: !4562, inlinedAt: !4566)
!4712 = !DILocation(line: 371, column: 26, scope: !4709, inlinedAt: !4566)
!4713 = !DILocation(line: 372, column: 6, scope: !4714, inlinedAt: !4566)
!4714 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 372, column: 6)
!4715 = !DILocation(line: 372, column: 11, scope: !4714, inlinedAt: !4566)
!4716 = !DILocation(line: 372, column: 6, scope: !4562, inlinedAt: !4566)
!4717 = !DILocation(line: 372, column: 26, scope: !4714, inlinedAt: !4566)
!4718 = !DILocation(line: 373, column: 6, scope: !4719, inlinedAt: !4566)
!4719 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 373, column: 6)
!4720 = !DILocation(line: 373, column: 11, scope: !4719, inlinedAt: !4566)
!4721 = !DILocation(line: 373, column: 6, scope: !4562, inlinedAt: !4566)
!4722 = !DILocation(line: 373, column: 26, scope: !4719, inlinedAt: !4566)
!4723 = !DILocation(line: 374, column: 6, scope: !4724, inlinedAt: !4566)
!4724 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 374, column: 6)
!4725 = !DILocation(line: 374, column: 11, scope: !4724, inlinedAt: !4566)
!4726 = !DILocation(line: 374, column: 6, scope: !4562, inlinedAt: !4566)
!4727 = !DILocation(line: 374, column: 26, scope: !4724, inlinedAt: !4566)
!4728 = !DILocation(line: 375, column: 6, scope: !4729, inlinedAt: !4566)
!4729 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 375, column: 6)
!4730 = !DILocation(line: 375, column: 11, scope: !4729, inlinedAt: !4566)
!4731 = !DILocation(line: 375, column: 6, scope: !4562, inlinedAt: !4566)
!4732 = !DILocation(line: 375, column: 27, scope: !4729, inlinedAt: !4566)
!4733 = !DILocation(line: 376, column: 6, scope: !4734, inlinedAt: !4566)
!4734 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 376, column: 6)
!4735 = !DILocation(line: 376, column: 11, scope: !4734, inlinedAt: !4566)
!4736 = !DILocation(line: 376, column: 6, scope: !4562, inlinedAt: !4566)
!4737 = !DILocation(line: 376, column: 32, scope: !4734, inlinedAt: !4566)
!4738 = !DILocation(line: 377, column: 6, scope: !4739, inlinedAt: !4566)
!4739 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 377, column: 6)
!4740 = !DILocation(line: 377, column: 11, scope: !4739, inlinedAt: !4566)
!4741 = !DILocation(line: 377, column: 6, scope: !4562, inlinedAt: !4566)
!4742 = !DILocation(line: 377, column: 32, scope: !4739, inlinedAt: !4566)
!4743 = !DILocation(line: 378, column: 6, scope: !4744, inlinedAt: !4566)
!4744 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 378, column: 6)
!4745 = !DILocation(line: 378, column: 11, scope: !4744, inlinedAt: !4566)
!4746 = !DILocation(line: 378, column: 6, scope: !4562, inlinedAt: !4566)
!4747 = !DILocation(line: 378, column: 32, scope: !4744, inlinedAt: !4566)
!4748 = !DILocation(line: 379, column: 6, scope: !4749, inlinedAt: !4566)
!4749 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 379, column: 6)
!4750 = !DILocation(line: 379, column: 11, scope: !4749, inlinedAt: !4566)
!4751 = !DILocation(line: 379, column: 6, scope: !4562, inlinedAt: !4566)
!4752 = !DILocation(line: 379, column: 33, scope: !4749, inlinedAt: !4566)
!4753 = !DILocation(line: 380, column: 6, scope: !4754, inlinedAt: !4566)
!4754 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 380, column: 6)
!4755 = !DILocation(line: 380, column: 11, scope: !4754, inlinedAt: !4566)
!4756 = !DILocation(line: 380, column: 6, scope: !4562, inlinedAt: !4566)
!4757 = !DILocation(line: 380, column: 33, scope: !4754, inlinedAt: !4566)
!4758 = !DILocation(line: 381, column: 6, scope: !4759, inlinedAt: !4566)
!4759 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 381, column: 6)
!4760 = !DILocation(line: 381, column: 11, scope: !4759, inlinedAt: !4566)
!4761 = !DILocation(line: 381, column: 6, scope: !4562, inlinedAt: !4566)
!4762 = !DILocation(line: 381, column: 33, scope: !4759, inlinedAt: !4566)
!4763 = !DILocation(line: 382, column: 2, scope: !4764, inlinedAt: !4566)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !284, line: 382, column: 2)
!4765 = distinct !DILexicalBlock(scope: !4562, file: !284, line: 382, column: 2)
!4766 = !{i32 -2143663671, i32 -2143663642, i32 -2143663596, i32 -2143663538, i32 -2143663484, i32 -2143663430, i32 -2143663375, i32 -2143663344}
!4767 = !DILocation(line: 382, column: 2, scope: !4768, inlinedAt: !4566)
!4768 = distinct !DILexicalBlock(scope: !4769, file: !284, line: 382, column: 2)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !284, line: 382, column: 2)
!4770 = !{i32 -2143662901, i32 -2143662894, i32 -2143662840, i32 -2143662809, i32 -2143662779}
!4771 = !DILocation(line: 382, column: 2, scope: !4769, inlinedAt: !4566)
!4772 = !DILocation(line: 386, column: 1, scope: !4562, inlinedAt: !4566)
!4773 = !DILocation(line: 547, column: 9, scope: !4545, inlinedAt: !4548)
!4774 = !DILocation(line: 549, column: 8, scope: !4775, inlinedAt: !4548)
!4775 = distinct !DILexicalBlock(scope: !4545, file: !284, line: 549, column: 7)
!4776 = !DILocation(line: 549, column: 7, scope: !4545, inlinedAt: !4548)
!4777 = !DILocation(line: 550, column: 4, scope: !4775, inlinedAt: !4548)
!4778 = !DILocation(line: 553, column: 33, scope: !4545, inlinedAt: !4548)
!4779 = !DILocation(line: 325, column: 6, scope: !4780, inlinedAt: !4560)
!4780 = distinct !DILexicalBlock(scope: !4556, file: !284, line: 325, column: 6)
!4781 = !DILocation(line: 325, column: 6, scope: !4556, inlinedAt: !4560)
!4782 = !DILocation(line: 326, column: 3, scope: !4780, inlinedAt: !4560)
!4783 = !DILocation(line: 332, column: 9, scope: !4556, inlinedAt: !4560)
!4784 = !DILocation(line: 332, column: 15, scope: !4556, inlinedAt: !4560)
!4785 = !DILocation(line: 332, column: 2, scope: !4556, inlinedAt: !4560)
!4786 = !DILocation(line: 336, column: 1, scope: !4556, inlinedAt: !4560)
!4787 = !DILocation(line: 553, column: 5, scope: !4545, inlinedAt: !4548)
!4788 = !DILocation(line: 553, column: 41, scope: !4545, inlinedAt: !4548)
!4789 = !DILocation(line: 554, column: 5, scope: !4545, inlinedAt: !4548)
!4790 = !DILocation(line: 554, column: 12, scope: !4545, inlinedAt: !4548)
!4791 = !DILocation(line: 448, column: 31, scope: !4540, inlinedAt: !4544)
!4792 = !DILocation(line: 448, column: 34, scope: !4540, inlinedAt: !4544)
!4793 = !DILocation(line: 448, column: 14, scope: !4540, inlinedAt: !4544)
!4794 = !DILocation(line: 450, column: 22, scope: !4540, inlinedAt: !4544)
!4795 = !DILocation(line: 450, column: 25, scope: !4540, inlinedAt: !4544)
!4796 = !DILocation(line: 450, column: 30, scope: !4540, inlinedAt: !4544)
!4797 = !DILocation(line: 450, column: 36, scope: !4540, inlinedAt: !4544)
!4798 = !DILocation(line: 450, column: 8, scope: !4540, inlinedAt: !4544)
!4799 = !DILocation(line: 450, column: 6, scope: !4540, inlinedAt: !4544)
!4800 = !DILocation(line: 451, column: 9, scope: !4540, inlinedAt: !4544)
!4801 = !DILocation(line: 552, column: 3, scope: !4545, inlinedAt: !4548)
!4802 = !DILocation(line: 557, column: 19, scope: !4547, inlinedAt: !4548)
!4803 = !DILocation(line: 557, column: 25, scope: !4547, inlinedAt: !4548)
!4804 = !DILocation(line: 557, column: 9, scope: !4547, inlinedAt: !4548)
!4805 = !DILocation(line: 557, column: 2, scope: !4547, inlinedAt: !4548)
!4806 = !DILocation(line: 558, column: 1, scope: !4547, inlinedAt: !4548)
!4807 = !DILocation(line: 664, column: 2, scope: !4536)
!4808 = distinct !DISubprogram(name: "atbm8830_read_reg", scope: !3, file: !3, line: 50, type: !4809, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4809 = !DISubroutineType(types: !4810)
!4810 = !{!325, !4452, !338, !4274}
!4811 = !DILocalVariable(name: "priv", arg: 1, scope: !4808, file: !3, line: 50, type: !4452)
!4812 = !DILocation(line: 50, column: 49, scope: !4808)
!4813 = !DILocalVariable(name: "reg", arg: 2, scope: !4808, file: !3, line: 50, type: !338)
!4814 = !DILocation(line: 50, column: 59, scope: !4808)
!4815 = !DILocalVariable(name: "p_data", arg: 3, scope: !4808, file: !3, line: 50, type: !4274)
!4816 = !DILocation(line: 50, column: 68, scope: !4808)
!4817 = !DILocalVariable(name: "ret", scope: !4808, file: !3, line: 52, type: !325)
!4818 = !DILocation(line: 52, column: 6, scope: !4808)
!4819 = !DILocalVariable(name: "dev_addr", scope: !4808, file: !3, line: 53, type: !346)
!4820 = !DILocation(line: 53, column: 5, scope: !4808)
!4821 = !DILocalVariable(name: "buf1", scope: !4808, file: !3, line: 55, type: !4822)
!4822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 16, elements: !1720)
!4823 = !DILocation(line: 55, column: 5, scope: !4808)
!4824 = !DILocation(line: 55, column: 14, scope: !4808)
!4825 = !DILocation(line: 55, column: 16, scope: !4808)
!4826 = !DILocation(line: 55, column: 20, scope: !4808)
!4827 = !DILocation(line: 55, column: 26, scope: !4808)
!4828 = !DILocation(line: 55, column: 30, scope: !4808)
!4829 = !DILocalVariable(name: "buf2", scope: !4808, file: !3, line: 56, type: !4830)
!4830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, size: 8, elements: !1517)
!4831 = !DILocation(line: 56, column: 5, scope: !4808)
!4832 = !DILocalVariable(name: "msg1", scope: !4808, file: !3, line: 57, type: !4341)
!4833 = !DILocation(line: 57, column: 17, scope: !4808)
!4834 = !DILocation(line: 57, column: 24, scope: !4808)
!4835 = !DILocation(line: 57, column: 45, scope: !4808)
!4836 = !DILocalVariable(name: "msg2", scope: !4808, file: !3, line: 58, type: !4341)
!4837 = !DILocation(line: 58, column: 17, scope: !4808)
!4838 = !DILocation(line: 58, column: 24, scope: !4808)
!4839 = !DILocation(line: 58, column: 52, scope: !4808)
!4840 = !DILocation(line: 60, column: 13, scope: !4808)
!4841 = !DILocation(line: 60, column: 19, scope: !4808)
!4842 = !DILocation(line: 60, column: 27, scope: !4808)
!4843 = !DILocation(line: 60, column: 11, scope: !4808)
!4844 = !DILocation(line: 61, column: 14, scope: !4808)
!4845 = !DILocation(line: 61, column: 7, scope: !4808)
!4846 = !DILocation(line: 61, column: 12, scope: !4808)
!4847 = !DILocation(line: 62, column: 14, scope: !4808)
!4848 = !DILocation(line: 62, column: 7, scope: !4808)
!4849 = !DILocation(line: 62, column: 12, scope: !4808)
!4850 = !DILocation(line: 64, column: 21, scope: !4808)
!4851 = !DILocation(line: 64, column: 27, scope: !4808)
!4852 = !DILocation(line: 64, column: 8, scope: !4808)
!4853 = !DILocation(line: 64, column: 6, scope: !4808)
!4854 = !DILocation(line: 65, column: 6, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 65, column: 6)
!4856 = !DILocation(line: 65, column: 10, scope: !4855)
!4857 = !DILocation(line: 65, column: 6, scope: !4808)
!4858 = !DILocation(line: 66, column: 3, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 65, column: 16)
!4860 = !DILocation(line: 66, column: 3, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4862, file: !3, line: 66, column: 3)
!4862 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 66, column: 3)
!4863 = !DILocation(line: 66, column: 3, scope: !4862)
!4864 = !DILocation(line: 67, column: 3, scope: !4859)
!4865 = !DILocation(line: 70, column: 21, scope: !4808)
!4866 = !DILocation(line: 70, column: 27, scope: !4808)
!4867 = !DILocation(line: 70, column: 8, scope: !4808)
!4868 = !DILocation(line: 70, column: 6, scope: !4808)
!4869 = !DILocation(line: 71, column: 6, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 71, column: 6)
!4871 = !DILocation(line: 71, column: 10, scope: !4870)
!4872 = !DILocation(line: 71, column: 6, scope: !4808)
!4873 = !DILocation(line: 72, column: 3, scope: !4870)
!4874 = !DILocation(line: 74, column: 12, scope: !4808)
!4875 = !DILocation(line: 74, column: 3, scope: !4808)
!4876 = !DILocation(line: 74, column: 10, scope: !4808)
!4877 = !DILocation(line: 75, column: 6, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4808, file: !3, line: 75, column: 6)
!4879 = !DILocation(line: 75, column: 12, scope: !4878)
!4880 = !DILocation(line: 75, column: 6, scope: !4808)
!4881 = !DILocation(line: 76, column: 3, scope: !4878)
!4882 = !DILocation(line: 76, column: 3, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 76, column: 3)
!4884 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 76, column: 3)
!4885 = !DILocation(line: 76, column: 3, scope: !4884)
!4886 = !DILocation(line: 79, column: 2, scope: !4808)
!4887 = !DILocation(line: 80, column: 1, scope: !4808)
!4888 = distinct !DISubprogram(name: "atbm8830_init", scope: !3, file: !3, line: 217, type: !4125, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4889 = !DILocalVariable(name: "fe", arg: 1, scope: !4888, file: !3, line: 217, type: !433)
!4890 = !DILocation(line: 217, column: 47, scope: !4888)
!4891 = !DILocalVariable(name: "priv", scope: !4888, file: !3, line: 219, type: !4452)
!4892 = !DILocation(line: 219, column: 21, scope: !4888)
!4893 = !DILocation(line: 219, column: 28, scope: !4888)
!4894 = !DILocation(line: 219, column: 32, scope: !4888)
!4895 = !DILocalVariable(name: "cfg", scope: !4888, file: !3, line: 220, type: !4309)
!4896 = !DILocation(line: 220, column: 32, scope: !4888)
!4897 = !DILocation(line: 220, column: 38, scope: !4888)
!4898 = !DILocation(line: 220, column: 44, scope: !4888)
!4899 = !DILocation(line: 223, column: 15, scope: !4888)
!4900 = !DILocation(line: 223, column: 21, scope: !4888)
!4901 = !DILocation(line: 223, column: 26, scope: !4888)
!4902 = !DILocation(line: 223, column: 2, scope: !4888)
!4903 = !DILocation(line: 226, column: 14, scope: !4888)
!4904 = !DILocation(line: 226, column: 20, scope: !4888)
!4905 = !DILocation(line: 226, column: 25, scope: !4888)
!4906 = !DILocation(line: 226, column: 2, scope: !4888)
!4907 = !DILocation(line: 229, column: 17, scope: !4888)
!4908 = !DILocation(line: 229, column: 23, scope: !4888)
!4909 = !DILocation(line: 229, column: 28, scope: !4888)
!4910 = !DILocation(line: 229, column: 37, scope: !4888)
!4911 = !DILocation(line: 229, column: 42, scope: !4888)
!4912 = !DILocation(line: 230, column: 3, scope: !4888)
!4913 = !DILocation(line: 230, column: 8, scope: !4888)
!4914 = !DILocation(line: 229, column: 2, scope: !4888)
!4915 = !DILocation(line: 233, column: 26, scope: !4888)
!4916 = !DILocation(line: 233, column: 2, scope: !4888)
!4917 = !DILocation(line: 235, column: 16, scope: !4888)
!4918 = !DILocation(line: 235, column: 2, scope: !4888)
!4919 = !DILocation(line: 237, column: 21, scope: !4888)
!4920 = !DILocation(line: 237, column: 2, scope: !4888)
!4921 = !DILocation(line: 240, column: 21, scope: !4888)
!4922 = !DILocation(line: 240, column: 2, scope: !4888)
!4923 = !DILocation(line: 243, column: 21, scope: !4888)
!4924 = !DILocation(line: 243, column: 2, scope: !4888)
!4925 = !DILocation(line: 245, column: 2, scope: !4888)
!4926 = distinct !DISubprogram(name: "atbm8830_i2c_gate_ctrl", scope: !3, file: !3, line: 411, type: !4218, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4927 = !DILocalVariable(name: "fe", arg: 1, scope: !4926, file: !3, line: 411, type: !433)
!4928 = !DILocation(line: 411, column: 56, scope: !4926)
!4929 = !DILocalVariable(name: "enable", arg: 2, scope: !4926, file: !3, line: 411, type: !325)
!4930 = !DILocation(line: 411, column: 64, scope: !4926)
!4931 = !DILocalVariable(name: "priv", scope: !4926, file: !3, line: 413, type: !4452)
!4932 = !DILocation(line: 413, column: 21, scope: !4926)
!4933 = !DILocation(line: 413, column: 28, scope: !4926)
!4934 = !DILocation(line: 413, column: 32, scope: !4926)
!4935 = !DILocation(line: 415, column: 28, scope: !4926)
!4936 = !DILocation(line: 415, column: 48, scope: !4926)
!4937 = !DILocation(line: 415, column: 9, scope: !4926)
!4938 = !DILocation(line: 415, column: 2, scope: !4926)
!4939 = distinct !DISubprogram(name: "get_order", scope: !4940, file: !4940, line: 29, type: !4941, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4940 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!325, !576}
!4943 = !DILocalVariable(name: "x", arg: 1, scope: !4944, file: !4945, line: 366, type: !296)
!4944 = distinct !DISubprogram(name: "fls64", scope: !4945, file: !4945, line: 366, type: !4946, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4945 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!325, !296}
!4948 = !DILocation(line: 366, column: 40, scope: !4944, inlinedAt: !4949)
!4949 = distinct !DILocation(line: 46, column: 9, scope: !4939)
!4950 = !DILocalVariable(name: "bitpos", scope: !4944, file: !4945, line: 368, type: !325)
!4951 = !DILocation(line: 368, column: 6, scope: !4944, inlinedAt: !4949)
!4952 = !DILocalVariable(name: "size", arg: 1, scope: !4939, file: !4940, line: 29, type: !576)
!4953 = !DILocation(line: 29, column: 63, scope: !4939)
!4954 = !DILocation(line: 31, column: 27, scope: !4955)
!4955 = distinct !DILexicalBlock(scope: !4939, file: !4940, line: 31, column: 6)
!4956 = !DILocation(line: 31, column: 6, scope: !4955)
!4957 = !DILocation(line: 31, column: 6, scope: !4939)
!4958 = !DILocation(line: 32, column: 8, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !4940, line: 32, column: 7)
!4960 = distinct !DILexicalBlock(scope: !4955, file: !4940, line: 31, column: 34)
!4961 = !DILocation(line: 32, column: 7, scope: !4960)
!4962 = !DILocation(line: 33, column: 4, scope: !4959)
!4963 = !DILocation(line: 35, column: 7, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4960, file: !4940, line: 35, column: 7)
!4965 = !DILocation(line: 35, column: 12, scope: !4964)
!4966 = !DILocation(line: 35, column: 7, scope: !4960)
!4967 = !DILocation(line: 36, column: 4, scope: !4964)
!4968 = !DILocation(line: 38, column: 10, scope: !4960)
!4969 = !DILocation(line: 38, column: 28, scope: !4960)
!4970 = !DILocation(line: 38, column: 41, scope: !4960)
!4971 = !DILocation(line: 38, column: 3, scope: !4960)
!4972 = !DILocation(line: 41, column: 6, scope: !4939)
!4973 = !DILocation(line: 42, column: 7, scope: !4939)
!4974 = !DILocation(line: 46, column: 15, scope: !4939)
!4975 = !DILocation(line: 374, column: 2, scope: !4944, inlinedAt: !4949)
!4976 = !DILocation(line: 376, column: 14, scope: !4944, inlinedAt: !4949)
!4977 = !{i32 374288}
!4978 = !DILocation(line: 377, column: 9, scope: !4944, inlinedAt: !4949)
!4979 = !DILocation(line: 377, column: 16, scope: !4944, inlinedAt: !4949)
!4980 = !DILocation(line: 46, column: 2, scope: !4939)
!4981 = !DILocation(line: 48, column: 1, scope: !4939)
!4982 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4983, file: !4983, line: 30, type: !4984, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4983 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4984 = !DISubroutineType(types: !4985)
!4985 = !{!325, !294}
!4986 = !DILocation(line: 366, column: 40, scope: !4944, inlinedAt: !4987)
!4987 = distinct !DILocation(line: 32, column: 9, scope: !4982)
!4988 = !DILocation(line: 368, column: 6, scope: !4944, inlinedAt: !4987)
!4989 = !DILocalVariable(name: "n", arg: 1, scope: !4982, file: !4983, line: 30, type: !294)
!4990 = !DILocation(line: 30, column: 21, scope: !4982)
!4991 = !DILocation(line: 32, column: 15, scope: !4982)
!4992 = !DILocation(line: 374, column: 2, scope: !4944, inlinedAt: !4987)
!4993 = !DILocation(line: 376, column: 14, scope: !4944, inlinedAt: !4987)
!4994 = !DILocation(line: 377, column: 9, scope: !4944, inlinedAt: !4987)
!4995 = !DILocation(line: 377, column: 16, scope: !4944, inlinedAt: !4987)
!4996 = !DILocation(line: 32, column: 18, scope: !4982)
!4997 = !DILocation(line: 32, column: 2, scope: !4982)
!4998 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4999, file: !4999, line: 137, type: !5000, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!4999 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!291, !1170, !2277, !573, !292}
!5002 = !DILocalVariable(name: "s", arg: 1, scope: !4998, file: !4999, line: 137, type: !1170)
!5003 = !DILocation(line: 137, column: 54, scope: !4998)
!5004 = !DILocalVariable(name: "object", arg: 2, scope: !4998, file: !4999, line: 137, type: !2277)
!5005 = !DILocation(line: 137, column: 69, scope: !4998)
!5006 = !DILocalVariable(name: "size", arg: 3, scope: !4998, file: !4999, line: 138, type: !573)
!5007 = !DILocation(line: 138, column: 12, scope: !4998)
!5008 = !DILocalVariable(name: "flags", arg: 4, scope: !4998, file: !4999, line: 138, type: !292)
!5009 = !DILocation(line: 138, column: 24, scope: !4998)
!5010 = !DILocation(line: 140, column: 17, scope: !4998)
!5011 = !DILocation(line: 140, column: 2, scope: !4998)
!5012 = distinct !DISubprogram(name: "atbm8830_release", scope: !3, file: !3, line: 249, type: !431, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5013 = !DILocalVariable(name: "fe", arg: 1, scope: !5012, file: !3, line: 249, type: !433)
!5014 = !DILocation(line: 249, column: 51, scope: !5012)
!5015 = !DILocalVariable(name: "state", scope: !5012, file: !3, line: 251, type: !4452)
!5016 = !DILocation(line: 251, column: 21, scope: !5012)
!5017 = !DILocation(line: 251, column: 29, scope: !5012)
!5018 = !DILocation(line: 251, column: 33, scope: !5012)
!5019 = !DILocation(line: 252, column: 2, scope: !5012)
!5020 = !DILocation(line: 252, column: 2, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5022, file: !3, line: 252, column: 2)
!5022 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 252, column: 2)
!5023 = !DILocation(line: 252, column: 2, scope: !5022)
!5024 = !DILocation(line: 254, column: 8, scope: !5012)
!5025 = !DILocation(line: 254, column: 2, scope: !5012)
!5026 = !DILocation(line: 255, column: 1, scope: !5012)
!5027 = distinct !DISubprogram(name: "atbm8830_set_fe", scope: !3, file: !3, line: 257, type: !4125, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5028 = !DILocalVariable(name: "fe", arg: 1, scope: !5027, file: !3, line: 257, type: !433)
!5029 = !DILocation(line: 257, column: 49, scope: !5027)
!5030 = !DILocalVariable(name: "priv", scope: !5027, file: !3, line: 259, type: !4452)
!5031 = !DILocation(line: 259, column: 21, scope: !5027)
!5032 = !DILocation(line: 259, column: 28, scope: !5027)
!5033 = !DILocation(line: 259, column: 32, scope: !5027)
!5034 = !DILocalVariable(name: "i", scope: !5027, file: !3, line: 260, type: !325)
!5035 = !DILocation(line: 260, column: 6, scope: !5027)
!5036 = !DILocalVariable(name: "locked", scope: !5027, file: !3, line: 261, type: !346)
!5037 = !DILocation(line: 261, column: 5, scope: !5027)
!5038 = !DILocation(line: 262, column: 2, scope: !5027)
!5039 = !DILocation(line: 262, column: 2, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !3, line: 262, column: 2)
!5041 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 262, column: 2)
!5042 = !DILocation(line: 262, column: 2, scope: !5041)
!5043 = !DILocation(line: 265, column: 6, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 265, column: 6)
!5045 = !DILocation(line: 265, column: 10, scope: !5044)
!5046 = !DILocation(line: 265, column: 14, scope: !5044)
!5047 = !DILocation(line: 265, column: 24, scope: !5044)
!5048 = !DILocation(line: 265, column: 6, scope: !5027)
!5049 = !DILocation(line: 266, column: 7, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 266, column: 7)
!5051 = distinct !DILexicalBlock(scope: !5044, file: !3, line: 265, column: 36)
!5052 = !DILocation(line: 266, column: 11, scope: !5050)
!5053 = !DILocation(line: 266, column: 15, scope: !5050)
!5054 = !DILocation(line: 266, column: 7, scope: !5051)
!5055 = !DILocation(line: 267, column: 4, scope: !5050)
!5056 = !DILocation(line: 267, column: 8, scope: !5050)
!5057 = !DILocation(line: 267, column: 12, scope: !5050)
!5058 = !DILocation(line: 267, column: 26, scope: !5050)
!5059 = !DILocation(line: 268, column: 3, scope: !5051)
!5060 = !DILocation(line: 268, column: 7, scope: !5051)
!5061 = !DILocation(line: 268, column: 11, scope: !5051)
!5062 = !DILocation(line: 268, column: 21, scope: !5051)
!5063 = !DILocation(line: 268, column: 32, scope: !5051)
!5064 = !DILocation(line: 269, column: 7, scope: !5065)
!5065 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 269, column: 7)
!5066 = !DILocation(line: 269, column: 11, scope: !5065)
!5067 = !DILocation(line: 269, column: 15, scope: !5065)
!5068 = !DILocation(line: 269, column: 7, scope: !5051)
!5069 = !DILocation(line: 270, column: 4, scope: !5065)
!5070 = !DILocation(line: 270, column: 8, scope: !5065)
!5071 = !DILocation(line: 270, column: 12, scope: !5065)
!5072 = !DILocation(line: 270, column: 26, scope: !5065)
!5073 = !DILocation(line: 271, column: 2, scope: !5051)
!5074 = !DILocation(line: 274, column: 9, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 274, column: 2)
!5076 = !DILocation(line: 274, column: 7, scope: !5075)
!5077 = !DILocation(line: 274, column: 14, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5075, file: !3, line: 274, column: 2)
!5079 = !DILocation(line: 274, column: 16, scope: !5078)
!5080 = !DILocation(line: 274, column: 2, scope: !5075)
!5081 = !DILocalVariable(name: "__ms", scope: !5082, file: !3, line: 275, type: !576)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 275, column: 3)
!5083 = distinct !DILexicalBlock(scope: !5078, file: !3, line: 274, column: 27)
!5084 = !DILocation(line: 275, column: 3, scope: !5082)
!5085 = !DILocation(line: 275, column: 3, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 275, column: 3)
!5087 = distinct !DILexicalBlock(scope: !5088, file: !3, line: 275, column: 3)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 275, column: 3)
!5089 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 275, column: 3)
!5090 = distinct !{!5090, !5084, !5084}
!5091 = !DILocation(line: 276, column: 3, scope: !5083)
!5092 = !DILocation(line: 276, column: 3, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 276, column: 3)
!5094 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 276, column: 3)
!5095 = !DILocation(line: 276, column: 3, scope: !5094)
!5096 = !DILocation(line: 277, column: 13, scope: !5083)
!5097 = !DILocation(line: 277, column: 3, scope: !5083)
!5098 = !DILocation(line: 278, column: 7, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 278, column: 7)
!5100 = !DILocation(line: 278, column: 14, scope: !5099)
!5101 = !DILocation(line: 278, column: 7, scope: !5083)
!5102 = !DILocation(line: 279, column: 4, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 278, column: 20)
!5104 = !DILocation(line: 279, column: 4, scope: !5105)
!5105 = distinct !DILexicalBlock(scope: !5106, file: !3, line: 279, column: 4)
!5106 = distinct !DILexicalBlock(scope: !5103, file: !3, line: 279, column: 4)
!5107 = !DILocation(line: 279, column: 4, scope: !5106)
!5108 = !DILocation(line: 280, column: 4, scope: !5103)
!5109 = !DILocation(line: 282, column: 2, scope: !5083)
!5110 = !DILocation(line: 274, column: 23, scope: !5078)
!5111 = !DILocation(line: 274, column: 2, scope: !5078)
!5112 = distinct !{!5112, !5080, !5113}
!5113 = !DILocation(line: 282, column: 2, scope: !5075)
!5114 = !DILocation(line: 284, column: 2, scope: !5027)
!5115 = distinct !DISubprogram(name: "atbm8830_get_tune_settings", scope: !3, file: !3, line: 316, type: !4146, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5116 = !DILocalVariable(name: "fe", arg: 1, scope: !5115, file: !3, line: 316, type: !433)
!5117 = !DILocation(line: 316, column: 60, scope: !5115)
!5118 = !DILocalVariable(name: "fesettings", arg: 2, scope: !5115, file: !3, line: 317, type: !4148)
!5119 = !DILocation(line: 317, column: 37, scope: !5115)
!5120 = !DILocation(line: 319, column: 2, scope: !5115)
!5121 = !DILocation(line: 319, column: 14, scope: !5115)
!5122 = !DILocation(line: 319, column: 27, scope: !5115)
!5123 = !DILocation(line: 320, column: 2, scope: !5115)
!5124 = !DILocation(line: 320, column: 14, scope: !5115)
!5125 = !DILocation(line: 320, column: 24, scope: !5115)
!5126 = !DILocation(line: 321, column: 2, scope: !5115)
!5127 = !DILocation(line: 321, column: 14, scope: !5115)
!5128 = !DILocation(line: 321, column: 24, scope: !5115)
!5129 = !DILocation(line: 322, column: 2, scope: !5115)
!5130 = distinct !DISubprogram(name: "atbm8830_get_fe", scope: !3, file: !3, line: 287, type: !4156, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5131 = !DILocalVariable(name: "fe", arg: 1, scope: !5130, file: !3, line: 287, type: !433)
!5132 = !DILocation(line: 287, column: 49, scope: !5130)
!5133 = !DILocalVariable(name: "c", arg: 2, scope: !5130, file: !3, line: 288, type: !4158)
!5134 = !DILocation(line: 288, column: 39, scope: !5130)
!5135 = !DILocation(line: 290, column: 2, scope: !5130)
!5136 = !DILocation(line: 290, column: 2, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5138, file: !3, line: 290, column: 2)
!5138 = distinct !DILexicalBlock(scope: !5130, file: !3, line: 290, column: 2)
!5139 = !DILocation(line: 290, column: 2, scope: !5138)
!5140 = !DILocation(line: 294, column: 2, scope: !5130)
!5141 = !DILocation(line: 294, column: 5, scope: !5130)
!5142 = !DILocation(line: 294, column: 15, scope: !5130)
!5143 = !DILocation(line: 297, column: 2, scope: !5130)
!5144 = !DILocation(line: 297, column: 5, scope: !5130)
!5145 = !DILocation(line: 297, column: 18, scope: !5130)
!5146 = !DILocation(line: 299, column: 2, scope: !5130)
!5147 = !DILocation(line: 299, column: 5, scope: !5130)
!5148 = !DILocation(line: 299, column: 18, scope: !5130)
!5149 = !DILocation(line: 300, column: 2, scope: !5130)
!5150 = !DILocation(line: 300, column: 5, scope: !5130)
!5151 = !DILocation(line: 300, column: 18, scope: !5130)
!5152 = !DILocation(line: 302, column: 2, scope: !5130)
!5153 = !DILocation(line: 302, column: 5, scope: !5130)
!5154 = !DILocation(line: 302, column: 16, scope: !5130)
!5155 = !DILocation(line: 305, column: 2, scope: !5130)
!5156 = !DILocation(line: 305, column: 5, scope: !5130)
!5157 = !DILocation(line: 305, column: 23, scope: !5130)
!5158 = !DILocation(line: 308, column: 2, scope: !5130)
!5159 = !DILocation(line: 308, column: 5, scope: !5130)
!5160 = !DILocation(line: 308, column: 20, scope: !5130)
!5161 = !DILocation(line: 311, column: 2, scope: !5130)
!5162 = !DILocation(line: 311, column: 5, scope: !5130)
!5163 = !DILocation(line: 311, column: 15, scope: !5130)
!5164 = !DILocation(line: 313, column: 2, scope: !5130)
!5165 = distinct !DISubprogram(name: "atbm8830_read_status", scope: !3, file: !3, line: 325, type: !4161, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5166 = !DILocalVariable(name: "fe", arg: 1, scope: !5165, file: !3, line: 325, type: !433)
!5167 = !DILocation(line: 325, column: 54, scope: !5165)
!5168 = !DILocalVariable(name: "fe_status", arg: 2, scope: !5165, file: !3, line: 326, type: !4138)
!5169 = !DILocation(line: 326, column: 21, scope: !5165)
!5170 = !DILocalVariable(name: "priv", scope: !5165, file: !3, line: 328, type: !4452)
!5171 = !DILocation(line: 328, column: 21, scope: !5165)
!5172 = !DILocation(line: 328, column: 28, scope: !5165)
!5173 = !DILocation(line: 328, column: 32, scope: !5165)
!5174 = !DILocalVariable(name: "locked", scope: !5165, file: !3, line: 329, type: !346)
!5175 = !DILocation(line: 329, column: 5, scope: !5165)
!5176 = !DILocalVariable(name: "agc_locked", scope: !5165, file: !3, line: 330, type: !346)
!5177 = !DILocation(line: 330, column: 5, scope: !5165)
!5178 = !DILocation(line: 332, column: 2, scope: !5165)
!5179 = !DILocation(line: 332, column: 2, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 332, column: 2)
!5181 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 332, column: 2)
!5182 = !DILocation(line: 332, column: 2, scope: !5181)
!5183 = !DILocation(line: 333, column: 3, scope: !5165)
!5184 = !DILocation(line: 333, column: 13, scope: !5165)
!5185 = !DILocation(line: 335, column: 12, scope: !5165)
!5186 = !DILocation(line: 335, column: 2, scope: !5165)
!5187 = !DILocation(line: 336, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 336, column: 6)
!5189 = !DILocation(line: 336, column: 6, scope: !5165)
!5190 = !DILocation(line: 337, column: 4, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 336, column: 14)
!5192 = !DILocation(line: 337, column: 14, scope: !5191)
!5193 = !DILocation(line: 339, column: 2, scope: !5191)
!5194 = !DILocation(line: 340, column: 2, scope: !5165)
!5195 = !DILocation(line: 340, column: 2, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 340, column: 2)
!5197 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 340, column: 2)
!5198 = !DILocation(line: 340, column: 2, scope: !5197)
!5199 = !DILocation(line: 342, column: 20, scope: !5165)
!5200 = !DILocation(line: 342, column: 2, scope: !5165)
!5201 = !DILocation(line: 343, column: 2, scope: !5165)
!5202 = !DILocation(line: 343, column: 2, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5204, file: !3, line: 343, column: 2)
!5204 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 343, column: 2)
!5205 = !DILocation(line: 343, column: 2, scope: !5204)
!5206 = !DILocation(line: 345, column: 2, scope: !5165)
!5207 = distinct !DISubprogram(name: "atbm8830_read_ber", scope: !3, file: !3, line: 348, type: !4165, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5208 = !DILocalVariable(name: "fe", arg: 1, scope: !5207, file: !3, line: 348, type: !433)
!5209 = !DILocation(line: 348, column: 51, scope: !5207)
!5210 = !DILocalVariable(name: "ber", arg: 2, scope: !5207, file: !3, line: 348, type: !1561)
!5211 = !DILocation(line: 348, column: 60, scope: !5207)
!5212 = !DILocalVariable(name: "priv", scope: !5207, file: !3, line: 350, type: !4452)
!5213 = !DILocation(line: 350, column: 21, scope: !5207)
!5214 = !DILocation(line: 350, column: 28, scope: !5207)
!5215 = !DILocation(line: 350, column: 32, scope: !5207)
!5216 = !DILocalVariable(name: "frame_err", scope: !5207, file: !3, line: 351, type: !416)
!5217 = !DILocation(line: 351, column: 6, scope: !5207)
!5218 = !DILocalVariable(name: "t", scope: !5207, file: !3, line: 352, type: !346)
!5219 = !DILocation(line: 352, column: 5, scope: !5207)
!5220 = !DILocation(line: 354, column: 2, scope: !5207)
!5221 = !DILocation(line: 354, column: 2, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5223, file: !3, line: 354, column: 2)
!5223 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 354, column: 2)
!5224 = !DILocation(line: 354, column: 2, scope: !5223)
!5225 = !DILocation(line: 356, column: 25, scope: !5207)
!5226 = !DILocation(line: 356, column: 2, scope: !5207)
!5227 = !DILocation(line: 358, column: 20, scope: !5207)
!5228 = !DILocation(line: 358, column: 2, scope: !5207)
!5229 = !DILocation(line: 359, column: 14, scope: !5207)
!5230 = !DILocation(line: 359, column: 16, scope: !5207)
!5231 = !DILocation(line: 359, column: 12, scope: !5207)
!5232 = !DILocation(line: 360, column: 12, scope: !5207)
!5233 = !DILocation(line: 361, column: 20, scope: !5207)
!5234 = !DILocation(line: 361, column: 2, scope: !5207)
!5235 = !DILocation(line: 362, column: 15, scope: !5207)
!5236 = !DILocation(line: 362, column: 12, scope: !5207)
!5237 = !DILocation(line: 364, column: 25, scope: !5207)
!5238 = !DILocation(line: 364, column: 2, scope: !5207)
!5239 = !DILocation(line: 366, column: 9, scope: !5207)
!5240 = !DILocation(line: 366, column: 19, scope: !5207)
!5241 = !DILocation(line: 366, column: 25, scope: !5207)
!5242 = !DILocation(line: 366, column: 3, scope: !5207)
!5243 = !DILocation(line: 366, column: 7, scope: !5207)
!5244 = !DILocation(line: 368, column: 2, scope: !5207)
!5245 = !DILocation(line: 368, column: 2, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5247, file: !3, line: 368, column: 2)
!5247 = distinct !DILexicalBlock(scope: !5207, file: !3, line: 368, column: 2)
!5248 = !DILocation(line: 368, column: 2, scope: !5247)
!5249 = !DILocation(line: 369, column: 2, scope: !5207)
!5250 = distinct !DISubprogram(name: "atbm8830_read_signal_strength", scope: !3, file: !3, line: 372, type: !4169, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5251 = !DILocalVariable(name: "fe", arg: 1, scope: !5250, file: !3, line: 372, type: !433)
!5252 = !DILocation(line: 372, column: 63, scope: !5250)
!5253 = !DILocalVariable(name: "signal", arg: 2, scope: !5250, file: !3, line: 372, type: !4171)
!5254 = !DILocation(line: 372, column: 72, scope: !5250)
!5255 = !DILocalVariable(name: "priv", scope: !5250, file: !3, line: 374, type: !4452)
!5256 = !DILocation(line: 374, column: 21, scope: !5250)
!5257 = !DILocation(line: 374, column: 28, scope: !5250)
!5258 = !DILocation(line: 374, column: 32, scope: !5250)
!5259 = !DILocalVariable(name: "pwm", scope: !5250, file: !3, line: 375, type: !416)
!5260 = !DILocation(line: 375, column: 6, scope: !5250)
!5261 = !DILocalVariable(name: "t", scope: !5250, file: !3, line: 376, type: !346)
!5262 = !DILocation(line: 376, column: 5, scope: !5250)
!5263 = !DILocation(line: 378, column: 2, scope: !5250)
!5264 = !DILocation(line: 378, column: 2, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5266, file: !3, line: 378, column: 2)
!5266 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 378, column: 2)
!5267 = !DILocation(line: 378, column: 2, scope: !5266)
!5268 = !DILocation(line: 379, column: 25, scope: !5250)
!5269 = !DILocation(line: 379, column: 2, scope: !5250)
!5270 = !DILocation(line: 381, column: 20, scope: !5250)
!5271 = !DILocation(line: 381, column: 2, scope: !5250)
!5272 = !DILocation(line: 382, column: 8, scope: !5250)
!5273 = !DILocation(line: 382, column: 10, scope: !5250)
!5274 = !DILocation(line: 382, column: 6, scope: !5250)
!5275 = !DILocation(line: 383, column: 6, scope: !5250)
!5276 = !DILocation(line: 384, column: 20, scope: !5250)
!5277 = !DILocation(line: 384, column: 2, scope: !5250)
!5278 = !DILocation(line: 385, column: 9, scope: !5250)
!5279 = !DILocation(line: 385, column: 6, scope: !5250)
!5280 = !DILocation(line: 387, column: 25, scope: !5250)
!5281 = !DILocation(line: 387, column: 2, scope: !5250)
!5282 = !DILocation(line: 389, column: 2, scope: !5250)
!5283 = !DILocation(line: 389, column: 2, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5285, file: !3, line: 389, column: 2)
!5285 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 389, column: 2)
!5286 = !DILocation(line: 389, column: 2, scope: !5285)
!5287 = !DILocation(line: 390, column: 16, scope: !5250)
!5288 = !DILocation(line: 390, column: 14, scope: !5250)
!5289 = !DILocation(line: 390, column: 6, scope: !5250)
!5290 = !DILocation(line: 392, column: 12, scope: !5250)
!5291 = !DILocation(line: 392, column: 16, scope: !5250)
!5292 = !DILocation(line: 392, column: 26, scope: !5250)
!5293 = !DILocation(line: 392, column: 3, scope: !5250)
!5294 = !DILocation(line: 392, column: 10, scope: !5250)
!5295 = !DILocation(line: 394, column: 2, scope: !5250)
!5296 = distinct !DISubprogram(name: "atbm8830_read_snr", scope: !3, file: !3, line: 397, type: !4169, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5297 = !DILocalVariable(name: "fe", arg: 1, scope: !5296, file: !3, line: 397, type: !433)
!5298 = !DILocation(line: 397, column: 51, scope: !5296)
!5299 = !DILocalVariable(name: "snr", arg: 2, scope: !5296, file: !3, line: 397, type: !4171)
!5300 = !DILocation(line: 397, column: 60, scope: !5296)
!5301 = !DILocation(line: 399, column: 2, scope: !5296)
!5302 = !DILocation(line: 399, column: 2, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5304, file: !3, line: 399, column: 2)
!5304 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 399, column: 2)
!5305 = !DILocation(line: 399, column: 2, scope: !5304)
!5306 = !DILocation(line: 400, column: 3, scope: !5296)
!5307 = !DILocation(line: 400, column: 7, scope: !5296)
!5308 = !DILocation(line: 401, column: 2, scope: !5296)
!5309 = distinct !DISubprogram(name: "atbm8830_read_ucblocks", scope: !3, file: !3, line: 404, type: !4165, scopeLine: 405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5310 = !DILocalVariable(name: "fe", arg: 1, scope: !5309, file: !3, line: 404, type: !433)
!5311 = !DILocation(line: 404, column: 56, scope: !5309)
!5312 = !DILocalVariable(name: "ucblocks", arg: 2, scope: !5309, file: !3, line: 404, type: !1561)
!5313 = !DILocation(line: 404, column: 65, scope: !5309)
!5314 = !DILocation(line: 406, column: 2, scope: !5309)
!5315 = !DILocation(line: 406, column: 2, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 406, column: 2)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 406, column: 2)
!5318 = !DILocation(line: 406, column: 2, scope: !5317)
!5319 = !DILocation(line: 407, column: 3, scope: !5309)
!5320 = !DILocation(line: 407, column: 12, scope: !5309)
!5321 = !DILocation(line: 408, column: 2, scope: !5309)
!5322 = distinct !DISubprogram(name: "is_locked", scope: !3, file: !3, line: 147, type: !5323, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!325, !4452, !4274}
!5325 = !DILocalVariable(name: "priv", arg: 1, scope: !5322, file: !3, line: 147, type: !4452)
!5326 = !DILocation(line: 147, column: 41, scope: !5322)
!5327 = !DILocalVariable(name: "locked", arg: 2, scope: !5322, file: !3, line: 147, type: !4274)
!5328 = !DILocation(line: 147, column: 51, scope: !5322)
!5329 = !DILocalVariable(name: "status", scope: !5322, file: !3, line: 149, type: !346)
!5330 = !DILocation(line: 149, column: 5, scope: !5322)
!5331 = !DILocation(line: 151, column: 20, scope: !5322)
!5332 = !DILocation(line: 151, column: 2, scope: !5322)
!5333 = !DILocation(line: 153, column: 6, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 153, column: 6)
!5335 = !DILocation(line: 153, column: 13, scope: !5334)
!5336 = !DILocation(line: 153, column: 6, scope: !5322)
!5337 = !DILocation(line: 154, column: 14, scope: !5334)
!5338 = !DILocation(line: 154, column: 21, scope: !5334)
!5339 = !DILocation(line: 154, column: 13, scope: !5334)
!5340 = !DILocation(line: 154, column: 4, scope: !5334)
!5341 = !DILocation(line: 154, column: 11, scope: !5334)
!5342 = !DILocation(line: 154, column: 3, scope: !5334)
!5343 = !DILocation(line: 155, column: 2, scope: !5322)
!5344 = distinct !DISubprogram(name: "atbm8830_reglatch_lock", scope: !3, file: !3, line: 83, type: !5345, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5345 = !DISubroutineType(types: !5346)
!5346 = !{!325, !4452, !325}
!5347 = !DILocalVariable(name: "priv", arg: 1, scope: !5344, file: !3, line: 83, type: !4452)
!5348 = !DILocation(line: 83, column: 61, scope: !5344)
!5349 = !DILocalVariable(name: "lock", arg: 2, scope: !5344, file: !3, line: 83, type: !325)
!5350 = !DILocation(line: 83, column: 71, scope: !5344)
!5351 = !DILocation(line: 85, column: 28, scope: !5344)
!5352 = !DILocation(line: 85, column: 50, scope: !5344)
!5353 = !DILocation(line: 85, column: 9, scope: !5344)
!5354 = !DILocation(line: 85, column: 2, scope: !5344)
!5355 = distinct !DISubprogram(name: "atbm8830_write_reg", scope: !3, file: !3, line: 26, type: !5356, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!325, !4452, !338, !346}
!5358 = !DILocalVariable(name: "priv", arg: 1, scope: !5355, file: !3, line: 26, type: !4452)
!5359 = !DILocation(line: 26, column: 50, scope: !5355)
!5360 = !DILocalVariable(name: "reg", arg: 2, scope: !5355, file: !3, line: 26, type: !338)
!5361 = !DILocation(line: 26, column: 60, scope: !5355)
!5362 = !DILocalVariable(name: "data", arg: 3, scope: !5355, file: !3, line: 26, type: !346)
!5363 = !DILocation(line: 26, column: 68, scope: !5355)
!5364 = !DILocalVariable(name: "ret", scope: !5355, file: !3, line: 28, type: !325)
!5365 = !DILocation(line: 28, column: 6, scope: !5355)
!5366 = !DILocalVariable(name: "dev_addr", scope: !5355, file: !3, line: 29, type: !346)
!5367 = !DILocation(line: 29, column: 5, scope: !5355)
!5368 = !DILocalVariable(name: "buf1", scope: !5355, file: !3, line: 30, type: !4822)
!5369 = !DILocation(line: 30, column: 5, scope: !5355)
!5370 = !DILocation(line: 30, column: 14, scope: !5355)
!5371 = !DILocation(line: 30, column: 16, scope: !5355)
!5372 = !DILocation(line: 30, column: 20, scope: !5355)
!5373 = !DILocation(line: 30, column: 26, scope: !5355)
!5374 = !DILocation(line: 30, column: 30, scope: !5355)
!5375 = !DILocalVariable(name: "buf2", scope: !5355, file: !3, line: 31, type: !4830)
!5376 = !DILocation(line: 31, column: 5, scope: !5355)
!5377 = !DILocation(line: 31, column: 14, scope: !5355)
!5378 = !DILocation(line: 31, column: 16, scope: !5355)
!5379 = !DILocalVariable(name: "msg1", scope: !5355, file: !3, line: 32, type: !4341)
!5380 = !DILocation(line: 32, column: 17, scope: !5355)
!5381 = !DILocation(line: 32, column: 24, scope: !5355)
!5382 = !DILocation(line: 32, column: 45, scope: !5355)
!5383 = !DILocalVariable(name: "msg2", scope: !5355, file: !3, line: 33, type: !4341)
!5384 = !DILocation(line: 33, column: 17, scope: !5355)
!5385 = !DILocation(line: 33, column: 24, scope: !5355)
!5386 = !DILocation(line: 33, column: 45, scope: !5355)
!5387 = !DILocation(line: 35, column: 13, scope: !5355)
!5388 = !DILocation(line: 35, column: 19, scope: !5355)
!5389 = !DILocation(line: 35, column: 27, scope: !5355)
!5390 = !DILocation(line: 35, column: 11, scope: !5355)
!5391 = !DILocation(line: 36, column: 14, scope: !5355)
!5392 = !DILocation(line: 36, column: 7, scope: !5355)
!5393 = !DILocation(line: 36, column: 12, scope: !5355)
!5394 = !DILocation(line: 37, column: 14, scope: !5355)
!5395 = !DILocation(line: 37, column: 7, scope: !5355)
!5396 = !DILocation(line: 37, column: 12, scope: !5355)
!5397 = !DILocation(line: 39, column: 6, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 39, column: 6)
!5399 = !DILocation(line: 39, column: 12, scope: !5398)
!5400 = !DILocation(line: 39, column: 6, scope: !5355)
!5401 = !DILocation(line: 40, column: 3, scope: !5398)
!5402 = !DILocation(line: 40, column: 3, scope: !5403)
!5403 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 40, column: 3)
!5404 = distinct !DILexicalBlock(scope: !5398, file: !3, line: 40, column: 3)
!5405 = !DILocation(line: 40, column: 3, scope: !5404)
!5406 = !DILocation(line: 42, column: 21, scope: !5355)
!5407 = !DILocation(line: 42, column: 27, scope: !5355)
!5408 = !DILocation(line: 42, column: 8, scope: !5355)
!5409 = !DILocation(line: 42, column: 6, scope: !5355)
!5410 = !DILocation(line: 43, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5355, file: !3, line: 43, column: 6)
!5412 = !DILocation(line: 43, column: 10, scope: !5411)
!5413 = !DILocation(line: 43, column: 6, scope: !5355)
!5414 = !DILocation(line: 44, column: 3, scope: !5411)
!5415 = !DILocation(line: 46, column: 21, scope: !5355)
!5416 = !DILocation(line: 46, column: 27, scope: !5355)
!5417 = !DILocation(line: 46, column: 8, scope: !5355)
!5418 = !DILocation(line: 46, column: 6, scope: !5355)
!5419 = !DILocation(line: 47, column: 10, scope: !5355)
!5420 = !DILocation(line: 47, column: 14, scope: !5355)
!5421 = !DILocation(line: 47, column: 9, scope: !5355)
!5422 = !DILocation(line: 47, column: 2, scope: !5355)
!5423 = !DILocation(line: 48, column: 1, scope: !5355)
!5424 = distinct !DISubprogram(name: "set_osc_freq", scope: !3, file: !3, line: 88, type: !5425, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!325, !4452, !416}
!5427 = !DILocalVariable(name: "priv", arg: 1, scope: !5424, file: !3, line: 88, type: !4452)
!5428 = !DILocation(line: 88, column: 44, scope: !5424)
!5429 = !DILocalVariable(name: "freq", arg: 2, scope: !5424, file: !3, line: 88, type: !416)
!5430 = !DILocation(line: 88, column: 54, scope: !5424)
!5431 = !DILocalVariable(name: "val", scope: !5424, file: !3, line: 90, type: !416)
!5432 = !DILocation(line: 90, column: 6, scope: !5424)
!5433 = !DILocalVariable(name: "t", scope: !5424, file: !3, line: 91, type: !294)
!5434 = !DILocation(line: 91, column: 6, scope: !5424)
!5435 = !DILocation(line: 94, column: 22, scope: !5424)
!5436 = !DILocation(line: 94, column: 20, scope: !5424)
!5437 = !DILocation(line: 94, column: 4, scope: !5424)
!5438 = !DILocalVariable(name: "__base", scope: !5439, file: !3, line: 95, type: !800)
!5439 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 95, column: 2)
!5440 = !DILocation(line: 95, column: 2, scope: !5439)
!5441 = !DILocalVariable(name: "__rem", scope: !5439, file: !3, line: 95, type: !800)
!5442 = !DILocation(line: 96, column: 8, scope: !5424)
!5443 = !DILocation(line: 96, column: 6, scope: !5424)
!5444 = !DILocation(line: 98, column: 21, scope: !5424)
!5445 = !DILocation(line: 98, column: 40, scope: !5424)
!5446 = !DILocation(line: 98, column: 2, scope: !5424)
!5447 = !DILocation(line: 99, column: 21, scope: !5424)
!5448 = !DILocation(line: 99, column: 44, scope: !5424)
!5449 = !DILocation(line: 99, column: 48, scope: !5424)
!5450 = !DILocation(line: 99, column: 2, scope: !5424)
!5451 = !DILocation(line: 100, column: 21, scope: !5424)
!5452 = !DILocation(line: 100, column: 44, scope: !5424)
!5453 = !DILocation(line: 100, column: 48, scope: !5424)
!5454 = !DILocation(line: 100, column: 2, scope: !5424)
!5455 = !DILocation(line: 102, column: 2, scope: !5424)
!5456 = distinct !DISubprogram(name: "set_if_freq", scope: !3, file: !3, line: 105, type: !5425, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5457 = !DILocalVariable(name: "priv", arg: 1, scope: !5456, file: !3, line: 105, type: !4452)
!5458 = !DILocation(line: 105, column: 43, scope: !5456)
!5459 = !DILocalVariable(name: "freq", arg: 2, scope: !5456, file: !3, line: 105, type: !416)
!5460 = !DILocation(line: 105, column: 53, scope: !5456)
!5461 = !DILocalVariable(name: "fs", scope: !5456, file: !3, line: 108, type: !416)
!5462 = !DILocation(line: 108, column: 6, scope: !5456)
!5463 = !DILocation(line: 108, column: 11, scope: !5456)
!5464 = !DILocation(line: 108, column: 17, scope: !5456)
!5465 = !DILocation(line: 108, column: 25, scope: !5456)
!5466 = !DILocalVariable(name: "t", scope: !5456, file: !3, line: 109, type: !294)
!5467 = !DILocation(line: 109, column: 6, scope: !5456)
!5468 = !DILocalVariable(name: "val", scope: !5456, file: !3, line: 110, type: !416)
!5469 = !DILocation(line: 110, column: 6, scope: !5456)
!5470 = !DILocalVariable(name: "dat", scope: !5456, file: !3, line: 111, type: !346)
!5471 = !DILocation(line: 111, column: 5, scope: !5456)
!5472 = !DILocation(line: 113, column: 6, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5456, file: !3, line: 113, column: 6)
!5474 = !DILocation(line: 113, column: 11, scope: !5473)
!5475 = !DILocation(line: 113, column: 6, scope: !5456)
!5476 = !DILocation(line: 115, column: 26, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 113, column: 17)
!5478 = !DILocation(line: 115, column: 33, scope: !5477)
!5479 = !DILocation(line: 115, column: 31, scope: !5477)
!5480 = !DILocation(line: 115, column: 25, scope: !5477)
!5481 = !DILocation(line: 115, column: 23, scope: !5477)
!5482 = !DILocation(line: 115, column: 5, scope: !5477)
!5483 = !DILocation(line: 116, column: 5, scope: !5477)
!5484 = !DILocalVariable(name: "__base", scope: !5485, file: !3, line: 117, type: !800)
!5485 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 117, column: 3)
!5486 = !DILocation(line: 117, column: 3, scope: !5485)
!5487 = !DILocalVariable(name: "__rem", scope: !5485, file: !3, line: 117, type: !800)
!5488 = !DILocalVariable(name: "__base", scope: !5489, file: !3, line: 118, type: !800)
!5489 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 118, column: 3)
!5490 = !DILocation(line: 118, column: 3, scope: !5489)
!5491 = !DILocalVariable(name: "__rem", scope: !5489, file: !3, line: 118, type: !800)
!5492 = !DILocation(line: 119, column: 9, scope: !5477)
!5493 = !DILocation(line: 119, column: 7, scope: !5477)
!5494 = !DILocation(line: 121, column: 22, scope: !5477)
!5495 = !DILocation(line: 121, column: 3, scope: !5477)
!5496 = !DILocation(line: 122, column: 22, scope: !5477)
!5497 = !DILocation(line: 122, column: 41, scope: !5477)
!5498 = !DILocation(line: 122, column: 3, scope: !5477)
!5499 = !DILocation(line: 123, column: 22, scope: !5477)
!5500 = !DILocation(line: 123, column: 43, scope: !5477)
!5501 = !DILocation(line: 123, column: 47, scope: !5477)
!5502 = !DILocation(line: 123, column: 3, scope: !5477)
!5503 = !DILocation(line: 124, column: 22, scope: !5477)
!5504 = !DILocation(line: 124, column: 43, scope: !5477)
!5505 = !DILocation(line: 124, column: 47, scope: !5477)
!5506 = !DILocation(line: 124, column: 3, scope: !5477)
!5507 = !DILocation(line: 126, column: 21, scope: !5477)
!5508 = !DILocation(line: 126, column: 3, scope: !5477)
!5509 = !DILocation(line: 127, column: 7, scope: !5477)
!5510 = !DILocation(line: 128, column: 22, scope: !5477)
!5511 = !DILocation(line: 128, column: 44, scope: !5477)
!5512 = !DILocation(line: 128, column: 3, scope: !5477)
!5513 = !DILocation(line: 129, column: 2, scope: !5477)
!5514 = !DILocation(line: 131, column: 22, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5473, file: !3, line: 129, column: 9)
!5516 = !DILocation(line: 131, column: 3, scope: !5515)
!5517 = !DILocation(line: 133, column: 21, scope: !5515)
!5518 = !DILocation(line: 133, column: 3, scope: !5515)
!5519 = !DILocation(line: 134, column: 7, scope: !5515)
!5520 = !DILocation(line: 135, column: 7, scope: !5515)
!5521 = !DILocation(line: 136, column: 22, scope: !5515)
!5522 = !DILocation(line: 136, column: 44, scope: !5515)
!5523 = !DILocation(line: 136, column: 3, scope: !5515)
!5524 = !DILocation(line: 138, column: 7, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5515, file: !3, line: 138, column: 7)
!5526 = !DILocation(line: 138, column: 13, scope: !5525)
!5527 = !DILocation(line: 138, column: 21, scope: !5525)
!5528 = !DILocation(line: 138, column: 7, scope: !5515)
!5529 = !DILocation(line: 139, column: 23, scope: !5525)
!5530 = !DILocation(line: 139, column: 4, scope: !5525)
!5531 = !DILocation(line: 141, column: 23, scope: !5525)
!5532 = !DILocation(line: 141, column: 4, scope: !5525)
!5533 = !DILocation(line: 144, column: 2, scope: !5456)
!5534 = distinct !DISubprogram(name: "set_agc_config", scope: !3, file: !3, line: 158, type: !5535, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{!325, !4452, !346, !346, !346}
!5537 = !DILocalVariable(name: "priv", arg: 1, scope: !5534, file: !3, line: 158, type: !4452)
!5538 = !DILocation(line: 158, column: 46, scope: !5534)
!5539 = !DILocalVariable(name: "min", arg: 2, scope: !5534, file: !3, line: 159, type: !346)
!5540 = !DILocation(line: 159, column: 5, scope: !5534)
!5541 = !DILocalVariable(name: "max", arg: 3, scope: !5534, file: !3, line: 159, type: !346)
!5542 = !DILocation(line: 159, column: 13, scope: !5534)
!5543 = !DILocalVariable(name: "hold_loop", arg: 4, scope: !5534, file: !3, line: 159, type: !346)
!5544 = !DILocation(line: 159, column: 21, scope: !5534)
!5545 = !DILocation(line: 162, column: 7, scope: !5546)
!5546 = distinct !DILexicalBlock(scope: !5534, file: !3, line: 162, column: 6)
!5547 = !DILocation(line: 162, column: 11, scope: !5546)
!5548 = !DILocation(line: 162, column: 15, scope: !5546)
!5549 = !DILocation(line: 162, column: 6, scope: !5534)
!5550 = !DILocation(line: 163, column: 6, scope: !5546)
!5551 = !DILocation(line: 165, column: 21, scope: !5534)
!5552 = !DILocation(line: 165, column: 40, scope: !5534)
!5553 = !DILocation(line: 165, column: 2, scope: !5534)
!5554 = !DILocation(line: 166, column: 21, scope: !5534)
!5555 = !DILocation(line: 166, column: 40, scope: !5534)
!5556 = !DILocation(line: 166, column: 2, scope: !5534)
!5557 = !DILocation(line: 167, column: 21, scope: !5534)
!5558 = !DILocation(line: 167, column: 46, scope: !5534)
!5559 = !DILocation(line: 167, column: 2, scope: !5534)
!5560 = !DILocation(line: 169, column: 2, scope: !5534)
!5561 = !DILocation(line: 170, column: 1, scope: !5534)
!5562 = distinct !DISubprogram(name: "set_static_channel_mode", scope: !3, file: !3, line: 172, type: !5563, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{!325, !4452}
!5565 = !DILocalVariable(name: "priv", arg: 1, scope: !5562, file: !3, line: 172, type: !4452)
!5566 = !DILocation(line: 172, column: 55, scope: !5562)
!5567 = !DILocalVariable(name: "i", scope: !5562, file: !3, line: 174, type: !325)
!5568 = !DILocation(line: 174, column: 6, scope: !5562)
!5569 = !DILocation(line: 176, column: 9, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5562, file: !3, line: 176, column: 2)
!5571 = !DILocation(line: 176, column: 7, scope: !5570)
!5572 = !DILocation(line: 176, column: 14, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 176, column: 2)
!5574 = !DILocation(line: 176, column: 16, scope: !5573)
!5575 = !DILocation(line: 176, column: 2, scope: !5570)
!5576 = !DILocation(line: 177, column: 22, scope: !5573)
!5577 = !DILocation(line: 177, column: 37, scope: !5573)
!5578 = !DILocation(line: 177, column: 35, scope: !5573)
!5579 = !DILocation(line: 177, column: 28, scope: !5573)
!5580 = !DILocation(line: 177, column: 3, scope: !5573)
!5581 = !DILocation(line: 176, column: 22, scope: !5573)
!5582 = !DILocation(line: 176, column: 2, scope: !5573)
!5583 = distinct !{!5583, !5575, !5584}
!5584 = !DILocation(line: 177, column: 44, scope: !5570)
!5585 = !DILocation(line: 179, column: 21, scope: !5562)
!5586 = !DILocation(line: 179, column: 2, scope: !5562)
!5587 = !DILocation(line: 180, column: 21, scope: !5562)
!5588 = !DILocation(line: 180, column: 2, scope: !5562)
!5589 = !DILocation(line: 181, column: 21, scope: !5562)
!5590 = !DILocation(line: 181, column: 2, scope: !5562)
!5591 = !DILocation(line: 182, column: 21, scope: !5562)
!5592 = !DILocation(line: 182, column: 2, scope: !5562)
!5593 = !DILocation(line: 183, column: 21, scope: !5562)
!5594 = !DILocation(line: 183, column: 2, scope: !5562)
!5595 = !DILocation(line: 186, column: 21, scope: !5562)
!5596 = !DILocation(line: 186, column: 2, scope: !5562)
!5597 = !DILocation(line: 187, column: 21, scope: !5562)
!5598 = !DILocation(line: 187, column: 2, scope: !5562)
!5599 = !DILocation(line: 188, column: 21, scope: !5562)
!5600 = !DILocation(line: 188, column: 2, scope: !5562)
!5601 = !DILocation(line: 189, column: 21, scope: !5562)
!5602 = !DILocation(line: 189, column: 2, scope: !5562)
!5603 = !DILocation(line: 190, column: 21, scope: !5562)
!5604 = !DILocation(line: 190, column: 2, scope: !5562)
!5605 = !DILocation(line: 193, column: 21, scope: !5562)
!5606 = !DILocation(line: 193, column: 2, scope: !5562)
!5607 = !DILocation(line: 195, column: 21, scope: !5562)
!5608 = !DILocation(line: 195, column: 2, scope: !5562)
!5609 = !DILocation(line: 197, column: 2, scope: !5562)
!5610 = distinct !DISubprogram(name: "set_ts_config", scope: !3, file: !3, line: 200, type: !5563, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !501)
!5611 = !DILocalVariable(name: "priv", arg: 1, scope: !5610, file: !3, line: 200, type: !4452)
!5612 = !DILocation(line: 200, column: 45, scope: !5610)
!5613 = !DILocalVariable(name: "cfg", scope: !5610, file: !3, line: 202, type: !4309)
!5614 = !DILocation(line: 202, column: 32, scope: !5610)
!5615 = !DILocation(line: 202, column: 38, scope: !5610)
!5616 = !DILocation(line: 202, column: 44, scope: !5610)
!5617 = !DILocation(line: 205, column: 21, scope: !5610)
!5618 = !DILocation(line: 205, column: 42, scope: !5610)
!5619 = !DILocation(line: 205, column: 47, scope: !5610)
!5620 = !DILocation(line: 205, column: 2, scope: !5610)
!5621 = !DILocation(line: 206, column: 21, scope: !5610)
!5622 = !DILocation(line: 206, column: 44, scope: !5610)
!5623 = !DILocation(line: 206, column: 49, scope: !5610)
!5624 = !DILocation(line: 206, column: 2, scope: !5610)
!5625 = !DILocation(line: 208, column: 21, scope: !5610)
!5626 = !DILocation(line: 209, column: 3, scope: !5610)
!5627 = !DILocation(line: 209, column: 8, scope: !5610)
!5628 = !DILocation(line: 208, column: 2, scope: !5610)
!5629 = !DILocation(line: 211, column: 21, scope: !5610)
!5630 = !DILocation(line: 212, column: 3, scope: !5610)
!5631 = !DILocation(line: 212, column: 8, scope: !5610)
!5632 = !DILocation(line: 211, column: 2, scope: !5610)
!5633 = !DILocation(line: 214, column: 2, scope: !5610)
