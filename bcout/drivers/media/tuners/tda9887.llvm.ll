; ModuleID = '../bcout/drivers/media/tuners/tda9887.llvm.bc'
source_filename = "drivers/media/tuners/tda9887.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.67, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.67 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.65, %struct.list_head, %struct.list_head, %union.anon.66 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.63 }
%union.anon.63 = type { %struct.anon.64 }
%struct.anon.64 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.55, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.55 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.56, i32 }
%union.anon.56 = type { %struct.kuid_t }
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
%union.anon.65 = type { %struct.list_head }
%union.anon.66 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.57, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.58, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.59, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.62, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.57 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.58 = type { %struct.callback_head }
%union.anon.59 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.swap_info_struct = type opaque
%union.anon.62 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.60 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.60 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.33 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.33 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.seq_file = type opaque
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
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.0 }>
%union.anon.0 = type { i64 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.kmem_cache = type opaque
%struct.tvnorm = type { i64, i8*, i8, i8, i8 }
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
%struct.tda9887_priv = type { %struct.tuner_i2c_props, %struct.list_head, [4 x i8], i32, i32, i32, i64, i8 }
%struct.tuner_i2c_props = type { i8, %struct.i2c_adapter*, i32, i8* }

@__param_str_debug = internal constant [14 x i8] c"tda9887.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !4294
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !4202
@__UNIQUE_ID_debugtype250 = internal constant [27 x i8] c"tda9887.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !4254
@__UNIQUE_ID_debug251 = internal constant [49 x i8] c"tda9887.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1, !dbg !4259
@__param_str_port1 = internal constant [14 x i8] c"tda9887.port1\00", align 1, !dbg !4296
@port1 = internal global i32 -1, align 4, !dbg !4301
@__param_port1 = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_port1, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @port1 to i8*) } }, section "__param", align 8, !dbg !4264
@__UNIQUE_ID_port1type252 = internal constant [27 x i8] c"tda9887.parmtype=port1:int\00", section ".modinfo", align 1, !dbg !4266
@__param_str_port2 = internal constant [14 x i8] c"tda9887.port2\00", align 1, !dbg !4303
@port2 = internal global i32 -1, align 4, !dbg !4305
@__param_port2 = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_port2, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @port2 to i8*) } }, section "__param", align 8, !dbg !4268
@__UNIQUE_ID_port2type253 = internal constant [27 x i8] c"tda9887.parmtype=port2:int\00", section ".modinfo", align 1, !dbg !4270
@__param_str_qss = internal constant [12 x i8] c"tda9887.qss\00", align 1, !dbg !4307
@qss = internal global i32 -1, align 4, !dbg !4310
@__param_qss = internal constant %struct.kernel_param { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__param_str_qss, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @qss to i8*) } }, section "__param", align 8, !dbg !4272
@__UNIQUE_ID_qsstype254 = internal constant [25 x i8] c"tda9887.parmtype=qss:int\00", section ".modinfo", align 1, !dbg !4274
@__param_str_adjust = internal constant [15 x i8] c"tda9887.adjust\00", align 1, !dbg !4312
@adjust = internal global i32 -1, align 4, !dbg !4317
@__param_adjust = internal constant %struct.kernel_param { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__param_str_adjust, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @adjust to i8*) } }, section "__param", align 8, !dbg !4279
@__UNIQUE_ID_adjusttype255 = internal constant [28 x i8] c"tda9887.parmtype=adjust:int\00", section ".modinfo", align 1, !dbg !4281
@tda9887_list_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @tda9887_list_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @tda9887_list_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4319
@hybrid_tuner_instance_list = internal global %struct.list_head { %struct.list_head* @hybrid_tuner_instance_list, %struct.list_head* @hybrid_tuner_instance_list }, align 8, !dbg !4321
@.str = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tda9887\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: tda988[5/6/7] found\0A\00", align 1
@tda9887_ops = internal constant %struct.analog_demod_ops { %struct.analog_demod_info { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0) }, void (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda9887_set_params, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* @tda9887_get_afc, void (%struct.dvb_frontend*)* @tda9887_tuner_status, void (%struct.dvb_frontend*)* @tda9887_standby, void (%struct.dvb_frontend*)* @tda9887_release, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i8*)* @tda9887_set_config }, align 8, !dbg !4323
@__UNIQUE_ID_file258 = internal constant [42 x i8] c"tda9887.file=drivers/media/tuners/tda9887\00", section ".modinfo", align 1, !dbg !4286
@__UNIQUE_ID_license259 = internal constant [20 x i8] c"tda9887.license=GPL\00", section ".modinfo", align 1, !dbg !4291
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\017%s %d-%04x: writing: b=0x%02x c=0x%02x e=0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@radio_mono = internal global %struct.tvnorm { i64 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i8 12, i8 48, i8 61 }, align 8, !dbg !4646
@radio_stereo = internal global %struct.tvnorm { i64 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8 12, i8 -112, i8 61 }, align 8, !dbg !4655
@tvnorms = internal global [10 x %struct.tvnorm] [%struct.tvnorm { i64 527, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8 20, i8 112, i8 73 }, %struct.tvnorm { i64 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i8 20, i8 112, i8 74 }, %struct.tvnorm { i64 224, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 1280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 851968, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8 20, i8 16, i8 9 }, %struct.tvnorm { i64 4194304, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8 4, i8 16, i8 75 }, %struct.tvnorm { i64 8388608, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i8 -124, i8 16, i8 83 }, %struct.tvnorm { i64 3276800, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8 20, i8 112, i8 75 }, %struct.tvnorm { i64 36864, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8 20, i8 48, i8 68 }, %struct.tvnorm { i64 8192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8 20, i8 112, i8 64 }], align 16, !dbg !4657
@.str.7 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: Unsupported tvnorm entry - audio muted\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\017%s %d-%04x: configure for: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Radio Mono\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Radio Stereo\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"PAL-BGHN\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"PAL-I\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"PAL-DK\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"PAL-M/Nc\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"SECAM-BGH\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"SECAM-L\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"SECAM-L'\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"SECAM-DK\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"NTSC-M\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"NTSC-M-JP\00", align 1
@dump_write_message.sound = internal global [4 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)], align 16, !dbg !4662
@.str.21 = private unnamed_addr constant [6 x i8] c"AM/TV\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"FM/radio\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"FM/TV\00", align 1
@dump_write_message.adjust = internal global [32 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0)], align 16, !dbg !4669
@.str.24 = private unnamed_addr constant [4 x i8] c"-16\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"-15\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"-14\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"-13\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"-12\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"-11\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"-10\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-9\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"-8\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-7\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"-6\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-5\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"-4\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-3\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-2\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"+1\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"+2\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"+3\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"+4\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"+5\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"+6\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"+7\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"+8\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"+9\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"+10\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"+11\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"+12\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"+13\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"+14\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"+15\00", align 1
@dump_write_message.deemph = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.58, i32 0, i32 0)], align 16, !dbg !4672
@.str.56 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"75\00", align 1
@.str.58 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@dump_write_message.carrier = internal global [4 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0)], align 16, !dbg !4674
@.str.59 = private unnamed_addr constant [8 x i8] c"4.5 MHz\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"5.5 MHz\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"6.0 MHz\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"6.5 MHz / AM\00", align 1
@dump_write_message.vif = internal global [8 x i8*] [i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.70, i32 0, i32 0)], align 16, !dbg !4676
@.str.63 = private unnamed_addr constant [10 x i8] c"58.75 MHz\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"45.75 MHz\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"38.9 MHz\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"38.0 MHz\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"33.9 MHz\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"33.4 MHz\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"45.75 MHz + pin13\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"38.9 MHz + pin13\00", align 1
@dump_write_message.rif = internal global [4 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0)], align 16, !dbg !4679
@.str.71 = private unnamed_addr constant [7 x i8] c"44 MHz\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"52 MHz\00", align 1
@.str.73 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte B 0x%02x\0A\00", align 1
@.str.74 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B0   video mode      : %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"video trap\00", align 1
@.str.76 = private unnamed_addr constant [11 x i8] c"sound trap\00", align 1
@.str.77 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B1   auto mute fm    : %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B2   carrier mode    : %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"QSS\00", align 1
@.str.81 = private unnamed_addr constant [13 x i8] c"Intercarrier\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B3-4 tv sound/radio  : %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B5   force mute audio: %s\0A\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B6   output port 1   : %s\0A\00", align 1
@.str.85 = private unnamed_addr constant [16 x i8] c"high (inactive)\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"low (active)\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   B7   output port 2   : %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte C 0x%02x\0A\00", align 1
@.str.89 = private unnamed_addr constant [46 x i8] c"\016%s %d-%04x:   C0-4 top adjustment  : %s dB\0A\00", align 1
@.str.90 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   C5-6 de-emphasis     : %s\0A\00", align 1
@.str.91 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   C7   audio gain      : %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [36 x i8] c"\016%s %d-%04x: write: byte E 0x%02x\0A\00", align 1
@.str.93 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E0-1 sound carrier   : %s\0A\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"\016%s %d-%04x:   E6   l pll gating   : %s\0A\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"36\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@.str.97 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E2-4 video if        : %s\0A\00", align 1
@.str.98 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E7   vif agc output  : %s\0A\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"fm-agc radio\00", align 1
@.str.100 = private unnamed_addr constant [14 x i8] c"sif-agc radio\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"fm radio carrier afc\00", align 1
@.str.102 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x:   E5   tuner gain      : %s\0A\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.104 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"minimum\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"pin3 port, pin22 vif agc out\00", align 1
@.str.107 = private unnamed_addr constant [32 x i8] c"pin22 port, pin3 vif acg ext in\00", align 1
@.str.108 = private unnamed_addr constant [16 x i8] c"pin3+pin22 port\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c"\016%s %d-%04x: --\0A\00", align 1
@.str.110 = private unnamed_addr constant [53 x i8] c"\016%s %d-%04x: i2c i/o error: rc == %d (should be 1)\0A\00", align 1
@dump_read_message.afc = internal global [16 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.111, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.113, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.114, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.116, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.117, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.119, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.126, i32 0, i32 0)], align 16, !dbg !4681
@.str.111 = private unnamed_addr constant [11 x i8] c"- 12.5 kHz\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"- 37.5 kHz\00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"- 62.5 kHz\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"- 87.5 kHz\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"-112.5 kHz\00", align 1
@.str.116 = private unnamed_addr constant [11 x i8] c"-137.5 kHz\00", align 1
@.str.117 = private unnamed_addr constant [11 x i8] c"-162.5 kHz\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"-187.5 kHz [min]\00", align 1
@.str.119 = private unnamed_addr constant [17 x i8] c"+187.5 kHz [max]\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"+162.5 kHz\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"+137.5 kHz\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"+112.5 kHz\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"+ 87.5 kHz\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"+ 62.5 kHz\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"+ 37.5 kHz\00", align 1
@.str.126 = private unnamed_addr constant [11 x i8] c"+ 12.5 kHz\00", align 1
@.str.127 = private unnamed_addr constant [27 x i8] c"\016%s %d-%04x: read: 0x%2x\0A\00", align 1
@.str.128 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   after power on : %s\0A\00", align 1
@.str.129 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   afc            : %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   fmif level     : %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.132 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.133 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   afc window     : %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.135 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.136 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x:   vfi level      : %s\0A\00", align 1
@tda9887_get_afc.AFC_BITS_2_kHz = internal constant [16 x i32] [i32 -12500, i32 -37500, i32 -62500, i32 -97500, i32 -112500, i32 -137500, i32 -162500, i32 -187500, i32 187500, i32 162500, i32 137500, i32 112500, i32 97500, i32 62500, i32 37500, i32 12500], align 16, !dbg !4685
@.str.137 = private unnamed_addr constant [54 x i8] c"\016%s %d-%04x: Data bytes: b=0x%02x c=0x%02x e=0x%02x\0A\00", align 1
@.str.138 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.used = appending global [13 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype250, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_debug251, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_port1 to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_port1type252, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_port2 to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_port2type253, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_qss to i8*), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_qsstype254, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_adjust to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__UNIQUE_ID_adjusttype255, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file258, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license259, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda9887_attach(%struct.dvb_frontend* %fe, %struct.i2c_adapter* %i2c_adap, i8 zeroext %i2c_addr) #0 !dbg !4695 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %priv = alloca %struct.tda9887_priv*, align 8
  %instance = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.tda9887_priv*, align 8
  %__mptr30 = alloca i8*, align 8
  %tmp34 = alloca %struct.tda9887_priv*, align 8
  %tmp77 = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4698, metadata !DIExpression()), !dbg !4699
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !4700, metadata !DIExpression()), !dbg !4701
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !4702, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !4704, metadata !DIExpression()), !dbg !4705
  store %struct.tda9887_priv* null, %struct.tda9887_priv** %priv, align 8, !dbg !4705
  call void @llvm.dbg.declare(metadata i32* %instance, metadata !4706, metadata !DIExpression()), !dbg !4707
  call void @mutex_lock(%struct.mutex* @tda9887_list_mutex) #8, !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !4709, metadata !DIExpression()), !dbg !4711
  store i32 0, i32* %__ret, align 4, !dbg !4711
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4712, metadata !DIExpression()), !dbg !4715
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @hybrid_tuner_instance_list, i32 0, i32 0), align 8, !dbg !4715
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4715
  store i8* %1, i8** %__mptr, align 8, !dbg !4715
  br label %do.body, !dbg !4715

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4716

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4715
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4715
  %3 = bitcast i8* %add.ptr to %struct.tda9887_priv*, !dbg !4715
  store %struct.tda9887_priv* %3, %struct.tda9887_priv** %tmp, align 8, !dbg !4716
  %4 = load %struct.tda9887_priv*, %struct.tda9887_priv** %tmp, align 8, !dbg !4715
  store %struct.tda9887_priv* %4, %struct.tda9887_priv** %priv, align 8, !dbg !4718
  br label %for.cond, !dbg !4718

for.cond:                                         ; preds = %do.end33, %do.end
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4719
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 1, !dbg !4719
  %cmp = icmp eq %struct.list_head* %hybrid_tuner_instance_list, @hybrid_tuner_instance_list, !dbg !4719
  %lnot = xor i1 %cmp, true, !dbg !4719
  br i1 %lnot, label %for.body, label %for.end, !dbg !4718

for.body:                                         ; preds = %for.cond
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !4721
  %tobool = icmp ne %struct.i2c_adapter* %6, null, !dbg !4721
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4721

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4721
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 0, !dbg !4721
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 1, !dbg !4721
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4721
  %tobool1 = icmp ne %struct.i2c_adapter* %8, null, !dbg !4721
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !4721

land.lhs.true2:                                   ; preds = %land.lhs.true
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4721
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0, !dbg !4721
  %adap4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !4721
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap4, align 8, !dbg !4721
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %10) #8, !dbg !4721
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !4721
  %call5 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !4721
  %cmp6 = icmp eq i32 %call, %call5, !dbg !4721
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !4721

land.lhs.true7:                                   ; preds = %land.lhs.true2
  %12 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4721
  %conv = zext i8 %12 to i32, !dbg !4721
  %13 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4721
  %i2c_props8 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %13, i32 0, i32 0, !dbg !4721
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props8, i32 0, i32 0, !dbg !4721
  %14 = load i8, i8* %addr, align 8, !dbg !4721
  %conv9 = zext i8 %14 to i32, !dbg !4721
  %cmp10 = icmp eq i32 %conv, %conv9, !dbg !4721
  br i1 %cmp10, label %if.then, label %if.end, !dbg !4724

if.then:                                          ; preds = %land.lhs.true7
  br label %do.body12, !dbg !4725

do.body12:                                        ; preds = %if.then
  br label %do.body13, !dbg !4727

do.body13:                                        ; preds = %do.body12
  %15 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4729
  %i2c_props14 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %15, i32 0, i32 0, !dbg !4729
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props14, i32 0, i32 3, !dbg !4729
  %16 = load i8*, i8** %name, align 8, !dbg !4729
  %17 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4729
  %i2c_props15 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %17, i32 0, i32 0, !dbg !4729
  %adap16 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props15, i32 0, i32 1, !dbg !4729
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap16, align 8, !dbg !4729
  %tobool17 = icmp ne %struct.i2c_adapter* %18, null, !dbg !4729
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !4729

cond.true:                                        ; preds = %do.body13
  %19 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4729
  %i2c_props18 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %19, i32 0, i32 0, !dbg !4729
  %adap19 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props18, i32 0, i32 1, !dbg !4729
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap19, align 8, !dbg !4729
  %call20 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %20) #8, !dbg !4729
  br label %cond.end, !dbg !4729

cond.false:                                       ; preds = %do.body13
  br label %cond.end, !dbg !4729

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call20, %cond.true ], [ -1, %cond.false ], !dbg !4729
  %21 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4729
  %i2c_props21 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %21, i32 0, i32 0, !dbg !4729
  %addr22 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props21, i32 0, i32 0, !dbg !4729
  %22 = load i8, i8* %addr22, align 8, !dbg !4729
  %conv23 = zext i8 %22 to i32, !dbg !4729
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %cond, i32 %conv23) #9, !dbg !4729
  br label %do.end25, !dbg !4729

do.end25:                                         ; preds = %cond.end
  br label %do.end26, !dbg !4727

do.end26:                                         ; preds = %do.end25
  %23 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4725
  %i2c_props27 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %23, i32 0, i32 0, !dbg !4725
  %count = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props27, i32 0, i32 2, !dbg !4725
  %24 = load i32, i32* %count, align 8, !dbg !4725
  %inc = add i32 %24, 1, !dbg !4725
  store i32 %inc, i32* %count, align 8, !dbg !4725
  %25 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4725
  %i2c_props28 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %25, i32 0, i32 0, !dbg !4725
  %count29 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props28, i32 0, i32 2, !dbg !4725
  %26 = load i32, i32* %count29, align 8, !dbg !4725
  store i32 %26, i32* %__ret, align 4, !dbg !4725
  br label %for.end, !dbg !4725

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true2, %land.lhs.true, %for.body
  br label %for.inc, !dbg !4724

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr30, metadata !4731, metadata !DIExpression()), !dbg !4733
  %27 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4733
  %hybrid_tuner_instance_list31 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %27, i32 0, i32 1, !dbg !4733
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %hybrid_tuner_instance_list31, i32 0, i32 0, !dbg !4733
  %28 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4733
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !4733
  store i8* %29, i8** %__mptr30, align 8, !dbg !4733
  br label %do.body32, !dbg !4733

do.body32:                                        ; preds = %for.inc
  br label %do.end33, !dbg !4734

do.end33:                                         ; preds = %do.body32
  %30 = load i8*, i8** %__mptr30, align 8, !dbg !4733
  %add.ptr35 = getelementptr i8, i8* %30, i64 -32, !dbg !4733
  %31 = bitcast i8* %add.ptr35 to %struct.tda9887_priv*, !dbg !4733
  store %struct.tda9887_priv* %31, %struct.tda9887_priv** %tmp34, align 8, !dbg !4734
  %32 = load %struct.tda9887_priv*, %struct.tda9887_priv** %tmp34, align 8, !dbg !4733
  store %struct.tda9887_priv* %32, %struct.tda9887_priv** %priv, align 8, !dbg !4719
  br label %for.cond, !dbg !4719, !llvm.loop !4736

for.end:                                          ; preds = %do.end26, %for.cond
  %33 = load i32, i32* %__ret, align 4, !dbg !4737
  %cmp36 = icmp eq i32 0, %33, !dbg !4737
  br i1 %cmp36, label %if.then38, label %if.end76, !dbg !4711

if.then38:                                        ; preds = %for.end
  %call39 = call i8* @kzalloc(i64 80, i32 3264) #8, !dbg !4739
  %34 = bitcast i8* %call39 to %struct.tda9887_priv*, !dbg !4739
  store %struct.tda9887_priv* %34, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %35 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4741
  %cmp40 = icmp eq %struct.tda9887_priv* null, %35, !dbg !4741
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !4739

if.then42:                                        ; preds = %if.then38
  br label %__fail, !dbg !4741

if.end43:                                         ; preds = %if.then38
  %36 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4739
  %37 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %i2c_props44 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %37, i32 0, i32 0, !dbg !4739
  %addr45 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props44, i32 0, i32 0, !dbg !4739
  store i8 %36, i8* %addr45, align 8, !dbg !4739
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !4739
  %39 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %i2c_props46 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %39, i32 0, i32 0, !dbg !4739
  %adap47 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props46, i32 0, i32 1, !dbg !4739
  store %struct.i2c_adapter* %38, %struct.i2c_adapter** %adap47, align 8, !dbg !4739
  %40 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %i2c_props48 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %40, i32 0, i32 0, !dbg !4739
  %name49 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props48, i32 0, i32 3, !dbg !4739
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %name49, align 8, !dbg !4739
  br label %do.body50, !dbg !4739

do.body50:                                        ; preds = %if.end43
  br label %do.body51, !dbg !4743

do.body51:                                        ; preds = %do.body50
  %41 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4745
  %i2c_props52 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %41, i32 0, i32 0, !dbg !4745
  %name53 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props52, i32 0, i32 3, !dbg !4745
  %42 = load i8*, i8** %name53, align 8, !dbg !4745
  %43 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4745
  %i2c_props54 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %43, i32 0, i32 0, !dbg !4745
  %adap55 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props54, i32 0, i32 1, !dbg !4745
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap55, align 8, !dbg !4745
  %tobool56 = icmp ne %struct.i2c_adapter* %44, null, !dbg !4745
  br i1 %tobool56, label %cond.true57, label %cond.false61, !dbg !4745

cond.true57:                                      ; preds = %do.body51
  %45 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4745
  %i2c_props58 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %45, i32 0, i32 0, !dbg !4745
  %adap59 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props58, i32 0, i32 1, !dbg !4745
  %46 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap59, align 8, !dbg !4745
  %call60 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %46) #8, !dbg !4745
  br label %cond.end62, !dbg !4745

cond.false61:                                     ; preds = %do.body51
  br label %cond.end62, !dbg !4745

cond.end62:                                       ; preds = %cond.false61, %cond.true57
  %cond63 = phi i32 [ %call60, %cond.true57 ], [ -1, %cond.false61 ], !dbg !4745
  %47 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4745
  %i2c_props64 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %47, i32 0, i32 0, !dbg !4745
  %addr65 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props64, i32 0, i32 0, !dbg !4745
  %48 = load i8, i8* %addr65, align 8, !dbg !4745
  %conv66 = zext i8 %48 to i32, !dbg !4745
  %call67 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 %cond63, i32 %conv66) #9, !dbg !4745
  br label %do.end68, !dbg !4745

do.end68:                                         ; preds = %cond.end62
  br label %do.end69, !dbg !4743

do.end69:                                         ; preds = %do.end68
  %49 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %hybrid_tuner_instance_list70 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %49, i32 0, i32 1, !dbg !4739
  call void @list_add_tail(%struct.list_head* %hybrid_tuner_instance_list70, %struct.list_head* @hybrid_tuner_instance_list) #8, !dbg !4739
  %50 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %i2c_props71 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %50, i32 0, i32 0, !dbg !4739
  %count72 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props71, i32 0, i32 2, !dbg !4739
  %51 = load i32, i32* %count72, align 8, !dbg !4739
  %inc73 = add i32 %51, 1, !dbg !4739
  store i32 %inc73, i32* %count72, align 8, !dbg !4739
  %52 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4739
  %i2c_props74 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %52, i32 0, i32 0, !dbg !4739
  %count75 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props74, i32 0, i32 2, !dbg !4739
  %53 = load i32, i32* %count75, align 8, !dbg !4739
  store i32 %53, i32* %__ret, align 4, !dbg !4739
  br label %if.end76, !dbg !4739

if.end76:                                         ; preds = %do.end69, %for.end
  br label %__fail, !dbg !4737

__fail:                                           ; preds = %if.end76, %if.then42
  call void @llvm.dbg.label(metadata !4747), !dbg !4711
  %54 = load i32, i32* %__ret, align 4, !dbg !4711
  store i32 %54, i32* %tmp77, align 4, !dbg !4737
  %55 = load i32, i32* %tmp77, align 4, !dbg !4711
  store i32 %55, i32* %instance, align 4, !dbg !4748
  %56 = load i32, i32* %instance, align 4, !dbg !4749
  switch i32 %56, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb78
  ], !dbg !4750

sw.bb:                                            ; preds = %__fail
  call void @mutex_unlock(%struct.mutex* @tda9887_list_mutex) #8, !dbg !4751
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4753
  br label %return, !dbg !4753

sw.bb78:                                          ; preds = %__fail
  %57 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4754
  %58 = bitcast %struct.tda9887_priv* %57 to i8*, !dbg !4754
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4755
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %59, i32 0, i32 7, !dbg !4756
  store i8* %58, i8** %analog_demod_priv, align 8, !dbg !4757
  %60 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4758
  %standby = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %60, i32 0, i32 7, !dbg !4759
  store i8 1, i8* %standby, align 8, !dbg !4760
  br label %do.body79, !dbg !4761

do.body79:                                        ; preds = %sw.bb78
  br label %do.body80, !dbg !4762

do.body80:                                        ; preds = %do.body79
  %61 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4764
  %i2c_props81 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %61, i32 0, i32 0, !dbg !4764
  %name82 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props81, i32 0, i32 3, !dbg !4764
  %62 = load i8*, i8** %name82, align 8, !dbg !4764
  %63 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4764
  %i2c_props83 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %63, i32 0, i32 0, !dbg !4764
  %adap84 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props83, i32 0, i32 1, !dbg !4764
  %64 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap84, align 8, !dbg !4764
  %tobool85 = icmp ne %struct.i2c_adapter* %64, null, !dbg !4764
  br i1 %tobool85, label %cond.true86, label %cond.false90, !dbg !4764

cond.true86:                                      ; preds = %do.body80
  %65 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4764
  %i2c_props87 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %65, i32 0, i32 0, !dbg !4764
  %adap88 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props87, i32 0, i32 1, !dbg !4764
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap88, align 8, !dbg !4764
  %call89 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %66) #8, !dbg !4764
  br label %cond.end91, !dbg !4764

cond.false90:                                     ; preds = %do.body80
  br label %cond.end91, !dbg !4764

cond.end91:                                       ; preds = %cond.false90, %cond.true86
  %cond92 = phi i32 [ %call89, %cond.true86 ], [ -1, %cond.false90 ], !dbg !4764
  %67 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4764
  %i2c_props93 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %67, i32 0, i32 0, !dbg !4764
  %addr94 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props93, i32 0, i32 0, !dbg !4764
  %68 = load i8, i8* %addr94, align 8, !dbg !4764
  %conv95 = zext i8 %68 to i32, !dbg !4764
  %call96 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %62, i32 %cond92, i32 %conv95) #9, !dbg !4764
  br label %do.end97, !dbg !4764

do.end97:                                         ; preds = %cond.end91
  br label %do.end98, !dbg !4762

do.end98:                                         ; preds = %do.end97
  br label %sw.epilog, !dbg !4766

sw.default:                                       ; preds = %__fail
  %69 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !4767
  %70 = bitcast %struct.tda9887_priv* %69 to i8*, !dbg !4767
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4768
  %analog_demod_priv99 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %71, i32 0, i32 7, !dbg !4769
  store i8* %70, i8** %analog_demod_priv99, align 8, !dbg !4770
  br label %sw.epilog, !dbg !4771

sw.epilog:                                        ; preds = %sw.default, %do.end98
  call void @mutex_unlock(%struct.mutex* @tda9887_list_mutex) #8, !dbg !4772
  %72 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4773
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %72, i32 0, i32 1, !dbg !4774
  %analog_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 31, !dbg !4775
  %73 = bitcast %struct.analog_demod_ops* %analog_ops to i8*, !dbg !4776
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 bitcast (%struct.analog_demod_ops* @tda9887_ops to i8*), i64 72, i1 false), !dbg !4776
  %74 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4777
  store %struct.dvb_frontend* %74, %struct.dvb_frontend** %retval, align 8, !dbg !4778
  br label %return, !dbg !4778

return:                                           ; preds = %sw.epilog, %sw.bb
  %75 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4779
  ret %struct.dvb_frontend* %75, !dbg !4779
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_id(%struct.i2c_adapter* %adap) #0 !dbg !4780 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4783
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 11, !dbg !4784
  %1 = load i32, i32* %nr, align 8, !dbg !4784
  ret i32 %1, !dbg !4785
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4786 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4789, metadata !DIExpression()), !dbg !4793
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4799, metadata !DIExpression()), !dbg !4800
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4801, metadata !DIExpression()), !dbg !4802
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4803, metadata !DIExpression()), !dbg !4804
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4805, metadata !DIExpression()), !dbg !4809
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4811, metadata !DIExpression()), !dbg !4815
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4817, metadata !DIExpression()), !dbg !4821
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4826, metadata !DIExpression()), !dbg !4827
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4828, metadata !DIExpression()), !dbg !4829
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4830, metadata !DIExpression()), !dbg !4831
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4832, metadata !DIExpression()), !dbg !4833
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4834, metadata !DIExpression()), !dbg !4835
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4836, metadata !DIExpression()), !dbg !4837
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4838, metadata !DIExpression()), !dbg !4839
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4840, metadata !DIExpression()), !dbg !4841
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4842, metadata !DIExpression()), !dbg !4843
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4844, metadata !DIExpression()), !dbg !4845
  %0 = load i64, i64* %size.addr, align 8, !dbg !4846
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4847
  %or = or i32 %1, 256, !dbg !4848
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4849
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4850
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4851

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4852
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4853
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4854

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4855
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4856
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4857
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4858
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4835
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4859
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4860
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4861
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4862
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4863
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4864
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4865
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4865
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4865
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4865
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4865
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4866
  br label %kmalloc.exit, !dbg !4866

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4867
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4868
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4868
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4870

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4871
  br label %kmalloc_index.exit.i, !dbg !4871

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4872
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4874
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4875

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4876
  br label %kmalloc_index.exit.i, !dbg !4876

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4877
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4879
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4880

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4881
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4882
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4883

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4884
  br label %kmalloc_index.exit.i, !dbg !4884

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4885
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4887
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4888

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4889
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4890
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4891

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4892
  br label %kmalloc_index.exit.i, !dbg !4892

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4893
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4895
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4896

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4897
  br label %kmalloc_index.exit.i, !dbg !4897

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4898
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4900
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4901

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4902
  br label %kmalloc_index.exit.i, !dbg !4902

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4903
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4905
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4906

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4907
  br label %kmalloc_index.exit.i, !dbg !4907

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4908
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4910
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4911

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4912
  br label %kmalloc_index.exit.i, !dbg !4912

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4913
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4915
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4916

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4917
  br label %kmalloc_index.exit.i, !dbg !4917

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4918
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4920
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4921

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4922
  br label %kmalloc_index.exit.i, !dbg !4922

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4923
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4925
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4926

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4927
  br label %kmalloc_index.exit.i, !dbg !4927

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4928
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4930
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4931

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4935
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4936

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4937
  br label %kmalloc_index.exit.i, !dbg !4937

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4938
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4940
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4941

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4942
  br label %kmalloc_index.exit.i, !dbg !4942

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4943
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4945
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4946

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4947
  br label %kmalloc_index.exit.i, !dbg !4947

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4948
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4950
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4951

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4952
  br label %kmalloc_index.exit.i, !dbg !4952

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4953
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4955
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4956

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4957
  br label %kmalloc_index.exit.i, !dbg !4957

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4958
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4960
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4961

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4962
  br label %kmalloc_index.exit.i, !dbg !4962

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4963
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4965
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4966

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4967
  br label %kmalloc_index.exit.i, !dbg !4967

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4968
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4970
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4971

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4972
  br label %kmalloc_index.exit.i, !dbg !4972

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4973
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4975
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4976

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4977
  br label %kmalloc_index.exit.i, !dbg !4977

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4978
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4980
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4981

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4982
  br label %kmalloc_index.exit.i, !dbg !4982

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4983
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4985
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4986

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4987
  br label %kmalloc_index.exit.i, !dbg !4987

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4988
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4990
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4991

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4992
  br label %kmalloc_index.exit.i, !dbg !4992

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4993
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4995
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4996

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4997
  br label %kmalloc_index.exit.i, !dbg !4997

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4998
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5000
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5001

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5002
  br label %kmalloc_index.exit.i, !dbg !5002

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5003
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5005
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5006

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5007
  br label %kmalloc_index.exit.i, !dbg !5007

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5008
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5010
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5011

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5012
  br label %kmalloc_index.exit.i, !dbg !5012

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5013, !srcloc !5016
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #10, !dbg !5017, !srcloc !5020
  unreachable, !dbg !5021

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5022
  store i32 %45, i32* %index.i, align 4, !dbg !5023
  %46 = load i32, i32* %index.i, align 4, !dbg !5024
  %tobool.i = icmp ne i32 %46, 0, !dbg !5024
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5026

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5027
  br label %kmalloc.exit, !dbg !5027

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5028
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5029
  %and.i.i = and i32 %48, 17, !dbg !5029
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5029
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5029
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5029
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5029
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5031

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5032
  br label %kmalloc_type.exit.i, !dbg !5032

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5033
  %and2.i.i = and i32 %49, 1, !dbg !5034
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5033
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5033
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5033
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5035
  br label %kmalloc_type.exit.i, !dbg !5035

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5036
  %idxprom.i = zext i32 %51 to i64, !dbg !5037
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5037
  %52 = load i32, i32* %index.i, align 4, !dbg !5038
  %idxprom6.i = zext i32 %52 to i64, !dbg !5037
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5037
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5037
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5039
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5040
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5041
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5042
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5043
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5043
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5043
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5043
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5043
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4804
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5044
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5045
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5046
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5047
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5048
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5049
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5050
  store i8* %62, i8** %retval.i, align 8, !dbg !5051
  br label %kmalloc.exit, !dbg !5051

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5052
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5053
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5054
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5054
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5054
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5054
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5054
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5055
  br label %kmalloc.exit, !dbg !5055

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5056
  ret i8* %65, !dbg !5057
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5058 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5066
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5067
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5068
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5068
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5069
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !5070
  ret void, !dbg !5071
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5072 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5081
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5083, metadata !DIExpression()), !dbg !5084
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  %0 = load i64, i64* %size.addr, align 8, !dbg !5087
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5089
  br i1 %1, label %if.then, label %if.end447, !dbg !5090

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5091
  %tobool = icmp ne i64 %2, 0, !dbg !5091
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5094

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5095
  br label %return, !dbg !5095

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5096
  %cmp = icmp ult i64 %3, 4096, !dbg !5098
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5099

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5100
  br label %return, !dbg !5100

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub = sub i64 %4, 1, !dbg !5101
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5101
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5101

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub4 = sub i64 %6, 1, !dbg !5101
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5101
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5101

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub6 = sub i64 %8, 1, !dbg !5101
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5101
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5101

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5101

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub9 = sub i64 %9, 1, !dbg !5101
  %and = and i64 %sub9, -9223372036854775808, !dbg !5101
  %tobool10 = icmp ne i64 %and, 0, !dbg !5101
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5101

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5101

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub13 = sub i64 %10, 1, !dbg !5101
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5101
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5101
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5101

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5101

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub18 = sub i64 %11, 1, !dbg !5101
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5101
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5101
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5101

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5101

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub23 = sub i64 %12, 1, !dbg !5101
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5101
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5101
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5101

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5101

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub28 = sub i64 %13, 1, !dbg !5101
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5101
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5101
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5101

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5101

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub33 = sub i64 %14, 1, !dbg !5101
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5101
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5101
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5101

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5101

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub38 = sub i64 %15, 1, !dbg !5101
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5101
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5101
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5101

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5101

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub43 = sub i64 %16, 1, !dbg !5101
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5101
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5101
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5101

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5101

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub48 = sub i64 %17, 1, !dbg !5101
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5101
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5101
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5101

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5101

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub53 = sub i64 %18, 1, !dbg !5101
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5101
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5101
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5101

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5101

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub58 = sub i64 %19, 1, !dbg !5101
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5101
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5101
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5101

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5101

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub63 = sub i64 %20, 1, !dbg !5101
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5101
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5101
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5101

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5101

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub68 = sub i64 %21, 1, !dbg !5101
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5101
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5101
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5101

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5101

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub73 = sub i64 %22, 1, !dbg !5101
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5101
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5101
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5101

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5101

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub78 = sub i64 %23, 1, !dbg !5101
  %and79 = and i64 %sub78, 562949953421312, !dbg !5101
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5101
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5101

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5101

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub83 = sub i64 %24, 1, !dbg !5101
  %and84 = and i64 %sub83, 281474976710656, !dbg !5101
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5101
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5101

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5101

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub88 = sub i64 %25, 1, !dbg !5101
  %and89 = and i64 %sub88, 140737488355328, !dbg !5101
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5101
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5101

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5101

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub93 = sub i64 %26, 1, !dbg !5101
  %and94 = and i64 %sub93, 70368744177664, !dbg !5101
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5101
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5101

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5101

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub98 = sub i64 %27, 1, !dbg !5101
  %and99 = and i64 %sub98, 35184372088832, !dbg !5101
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5101
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5101

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5101

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub103 = sub i64 %28, 1, !dbg !5101
  %and104 = and i64 %sub103, 17592186044416, !dbg !5101
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5101
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5101

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5101

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub108 = sub i64 %29, 1, !dbg !5101
  %and109 = and i64 %sub108, 8796093022208, !dbg !5101
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5101
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5101

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5101

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub113 = sub i64 %30, 1, !dbg !5101
  %and114 = and i64 %sub113, 4398046511104, !dbg !5101
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5101
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5101

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5101

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub118 = sub i64 %31, 1, !dbg !5101
  %and119 = and i64 %sub118, 2199023255552, !dbg !5101
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5101
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5101

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5101

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub123 = sub i64 %32, 1, !dbg !5101
  %and124 = and i64 %sub123, 1099511627776, !dbg !5101
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5101
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5101

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5101

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub128 = sub i64 %33, 1, !dbg !5101
  %and129 = and i64 %sub128, 549755813888, !dbg !5101
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5101
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5101

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5101

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub133 = sub i64 %34, 1, !dbg !5101
  %and134 = and i64 %sub133, 274877906944, !dbg !5101
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5101
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5101

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5101

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub138 = sub i64 %35, 1, !dbg !5101
  %and139 = and i64 %sub138, 137438953472, !dbg !5101
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5101
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5101

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5101

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub143 = sub i64 %36, 1, !dbg !5101
  %and144 = and i64 %sub143, 68719476736, !dbg !5101
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5101
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5101

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5101

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub148 = sub i64 %37, 1, !dbg !5101
  %and149 = and i64 %sub148, 34359738368, !dbg !5101
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5101
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5101

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5101

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub153 = sub i64 %38, 1, !dbg !5101
  %and154 = and i64 %sub153, 17179869184, !dbg !5101
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5101
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5101

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5101

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub158 = sub i64 %39, 1, !dbg !5101
  %and159 = and i64 %sub158, 8589934592, !dbg !5101
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5101
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5101

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5101

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub163 = sub i64 %40, 1, !dbg !5101
  %and164 = and i64 %sub163, 4294967296, !dbg !5101
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5101
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5101

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5101

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub168 = sub i64 %41, 1, !dbg !5101
  %and169 = and i64 %sub168, 2147483648, !dbg !5101
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5101
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5101

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5101

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub173 = sub i64 %42, 1, !dbg !5101
  %and174 = and i64 %sub173, 1073741824, !dbg !5101
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5101
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5101

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5101

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub178 = sub i64 %43, 1, !dbg !5101
  %and179 = and i64 %sub178, 536870912, !dbg !5101
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5101
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5101

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5101

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub183 = sub i64 %44, 1, !dbg !5101
  %and184 = and i64 %sub183, 268435456, !dbg !5101
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5101
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5101

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5101

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub188 = sub i64 %45, 1, !dbg !5101
  %and189 = and i64 %sub188, 134217728, !dbg !5101
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5101
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5101

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5101

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub193 = sub i64 %46, 1, !dbg !5101
  %and194 = and i64 %sub193, 67108864, !dbg !5101
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5101
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5101

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5101

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub198 = sub i64 %47, 1, !dbg !5101
  %and199 = and i64 %sub198, 33554432, !dbg !5101
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5101
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5101

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5101

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub203 = sub i64 %48, 1, !dbg !5101
  %and204 = and i64 %sub203, 16777216, !dbg !5101
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5101
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5101

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5101

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub208 = sub i64 %49, 1, !dbg !5101
  %and209 = and i64 %sub208, 8388608, !dbg !5101
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5101
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5101

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5101

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub213 = sub i64 %50, 1, !dbg !5101
  %and214 = and i64 %sub213, 4194304, !dbg !5101
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5101
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5101

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5101

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub218 = sub i64 %51, 1, !dbg !5101
  %and219 = and i64 %sub218, 2097152, !dbg !5101
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5101
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5101

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5101

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub223 = sub i64 %52, 1, !dbg !5101
  %and224 = and i64 %sub223, 1048576, !dbg !5101
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5101
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5101

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5101

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub228 = sub i64 %53, 1, !dbg !5101
  %and229 = and i64 %sub228, 524288, !dbg !5101
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5101
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5101

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5101

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub233 = sub i64 %54, 1, !dbg !5101
  %and234 = and i64 %sub233, 262144, !dbg !5101
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5101
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5101

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5101

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub238 = sub i64 %55, 1, !dbg !5101
  %and239 = and i64 %sub238, 131072, !dbg !5101
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5101
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5101

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5101

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub243 = sub i64 %56, 1, !dbg !5101
  %and244 = and i64 %sub243, 65536, !dbg !5101
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5101
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5101

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5101

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub248 = sub i64 %57, 1, !dbg !5101
  %and249 = and i64 %sub248, 32768, !dbg !5101
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5101
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5101

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5101

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub253 = sub i64 %58, 1, !dbg !5101
  %and254 = and i64 %sub253, 16384, !dbg !5101
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5101
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5101

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5101

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub258 = sub i64 %59, 1, !dbg !5101
  %and259 = and i64 %sub258, 8192, !dbg !5101
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5101
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5101

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5101

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub263 = sub i64 %60, 1, !dbg !5101
  %and264 = and i64 %sub263, 4096, !dbg !5101
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5101
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5101

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5101

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub268 = sub i64 %61, 1, !dbg !5101
  %and269 = and i64 %sub268, 2048, !dbg !5101
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5101
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5101

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5101

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub273 = sub i64 %62, 1, !dbg !5101
  %and274 = and i64 %sub273, 1024, !dbg !5101
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5101
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5101

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5101

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub278 = sub i64 %63, 1, !dbg !5101
  %and279 = and i64 %sub278, 512, !dbg !5101
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5101
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5101

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5101

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub283 = sub i64 %64, 1, !dbg !5101
  %and284 = and i64 %sub283, 256, !dbg !5101
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5101
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5101

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5101

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub288 = sub i64 %65, 1, !dbg !5101
  %and289 = and i64 %sub288, 128, !dbg !5101
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5101
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5101

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5101

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub293 = sub i64 %66, 1, !dbg !5101
  %and294 = and i64 %sub293, 64, !dbg !5101
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5101
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5101

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5101

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub298 = sub i64 %67, 1, !dbg !5101
  %and299 = and i64 %sub298, 32, !dbg !5101
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5101
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5101

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5101

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub303 = sub i64 %68, 1, !dbg !5101
  %and304 = and i64 %sub303, 16, !dbg !5101
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5101
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5101

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5101

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub308 = sub i64 %69, 1, !dbg !5101
  %and309 = and i64 %sub308, 8, !dbg !5101
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5101
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5101

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5101

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub313 = sub i64 %70, 1, !dbg !5101
  %and314 = and i64 %sub313, 4, !dbg !5101
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5101
  %71 = zext i1 %tobool315 to i64, !dbg !5101
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5101
  br label %cond.end, !dbg !5101

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5101
  br label %cond.end317, !dbg !5101

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5101
  br label %cond.end319, !dbg !5101

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5101
  br label %cond.end321, !dbg !5101

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5101
  br label %cond.end323, !dbg !5101

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5101
  br label %cond.end325, !dbg !5101

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5101
  br label %cond.end327, !dbg !5101

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5101
  br label %cond.end329, !dbg !5101

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5101
  br label %cond.end331, !dbg !5101

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5101
  br label %cond.end333, !dbg !5101

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5101
  br label %cond.end335, !dbg !5101

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5101
  br label %cond.end337, !dbg !5101

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5101
  br label %cond.end339, !dbg !5101

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5101
  br label %cond.end341, !dbg !5101

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5101
  br label %cond.end343, !dbg !5101

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5101
  br label %cond.end345, !dbg !5101

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5101
  br label %cond.end347, !dbg !5101

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5101
  br label %cond.end349, !dbg !5101

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5101
  br label %cond.end351, !dbg !5101

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5101
  br label %cond.end353, !dbg !5101

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5101
  br label %cond.end355, !dbg !5101

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5101
  br label %cond.end357, !dbg !5101

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5101
  br label %cond.end359, !dbg !5101

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5101
  br label %cond.end361, !dbg !5101

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5101
  br label %cond.end363, !dbg !5101

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5101
  br label %cond.end365, !dbg !5101

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5101
  br label %cond.end367, !dbg !5101

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5101
  br label %cond.end369, !dbg !5101

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5101
  br label %cond.end371, !dbg !5101

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5101
  br label %cond.end373, !dbg !5101

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5101
  br label %cond.end375, !dbg !5101

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5101
  br label %cond.end377, !dbg !5101

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5101
  br label %cond.end379, !dbg !5101

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5101
  br label %cond.end381, !dbg !5101

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5101
  br label %cond.end383, !dbg !5101

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5101
  br label %cond.end385, !dbg !5101

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5101
  br label %cond.end387, !dbg !5101

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5101
  br label %cond.end389, !dbg !5101

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5101
  br label %cond.end391, !dbg !5101

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5101
  br label %cond.end393, !dbg !5101

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5101
  br label %cond.end395, !dbg !5101

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5101
  br label %cond.end397, !dbg !5101

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5101
  br label %cond.end399, !dbg !5101

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5101
  br label %cond.end401, !dbg !5101

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5101
  br label %cond.end403, !dbg !5101

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5101
  br label %cond.end405, !dbg !5101

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5101
  br label %cond.end407, !dbg !5101

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5101
  br label %cond.end409, !dbg !5101

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5101
  br label %cond.end411, !dbg !5101

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5101
  br label %cond.end413, !dbg !5101

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5101
  br label %cond.end415, !dbg !5101

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5101
  br label %cond.end417, !dbg !5101

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5101
  br label %cond.end419, !dbg !5101

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5101
  br label %cond.end421, !dbg !5101

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5101
  br label %cond.end423, !dbg !5101

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5101
  br label %cond.end425, !dbg !5101

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5101
  br label %cond.end427, !dbg !5101

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5101
  br label %cond.end429, !dbg !5101

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5101
  br label %cond.end431, !dbg !5101

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5101
  br label %cond.end433, !dbg !5101

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5101
  br label %cond.end435, !dbg !5101

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5101
  br label %cond.end437, !dbg !5101

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5101
  br label %cond.end440, !dbg !5101

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5101

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5101
  br label %cond.end444, !dbg !5101

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5101
  %sub443 = sub i64 %72, 1, !dbg !5101
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5101
  br label %cond.end444, !dbg !5101

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5101
  %sub446 = sub i32 %cond445, 12, !dbg !5102
  %add = add i32 %sub446, 1, !dbg !5103
  store i32 %add, i32* %retval, align 4, !dbg !5104
  br label %return, !dbg !5104

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5105
  %dec = add i64 %73, -1, !dbg !5105
  store i64 %dec, i64* %size.addr, align 8, !dbg !5105
  %74 = load i64, i64* %size.addr, align 8, !dbg !5106
  %shr = lshr i64 %74, 12, !dbg !5106
  store i64 %shr, i64* %size.addr, align 8, !dbg !5106
  %75 = load i64, i64* %size.addr, align 8, !dbg !5107
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5084
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5108
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5109
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !5108, !srcloc !5110
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5108
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5111
  %add.i = add i32 %79, 1, !dbg !5112
  store i32 %add.i, i32* %retval, align 4, !dbg !5113
  br label %return, !dbg !5113

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5114
  ret i32 %80, !dbg !5114
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5115 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5076, metadata !DIExpression()), !dbg !5119
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5083, metadata !DIExpression()), !dbg !5121
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5122, metadata !DIExpression()), !dbg !5123
  %0 = load i64, i64* %n.addr, align 8, !dbg !5124
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5121
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5125
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5126
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !5125, !srcloc !5110
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5125
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5127
  %add.i = add i32 %4, 1, !dbg !5128
  %sub = sub i32 %add.i, 1, !dbg !5129
  ret i32 %sub, !dbg !5130
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5131 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5135, metadata !DIExpression()), !dbg !5136
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5141, metadata !DIExpression()), !dbg !5142
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5143
  ret i8* %0, !dbg !5144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5145 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5148, metadata !DIExpression()), !dbg !5149
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5154
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5156
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5157
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5158
  br i1 %call, label %if.end, label %if.then, !dbg !5159

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5160

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5161
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5162
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5163
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5164
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5165
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5166
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5167
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5168
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5169
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5170
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5171
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5172
  br label %do.body, !dbg !5173

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5174

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5176

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5174

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5178
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5178
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5178
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5178
  br label %do.end7, !dbg !5178

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5174

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5181 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5184, metadata !DIExpression()), !dbg !5185
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5188, metadata !DIExpression()), !dbg !5189
  ret i1 true, !dbg !5190
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda9887_set_params(%struct.dvb_frontend* %fe, %struct.analog_parameters* %params) #0 !dbg !5191 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %params.addr = alloca %struct.analog_parameters*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5192, metadata !DIExpression()), !dbg !5193
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !5194, metadata !DIExpression()), !dbg !5195
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5196, metadata !DIExpression()), !dbg !5197
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5198
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5199
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5199
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5198
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5197
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5200
  %standby = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 7, !dbg !5201
  store i8 0, i8* %standby, align 8, !dbg !5202
  %4 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5203
  %mode = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %4, i32 0, i32 1, !dbg !5204
  %5 = load i32, i32* %mode, align 4, !dbg !5204
  %6 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5205
  %mode1 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %6, i32 0, i32 4, !dbg !5206
  store i32 %5, i32* %mode1, align 8, !dbg !5207
  %7 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5208
  %audmode = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %7, i32 0, i32 2, !dbg !5209
  %8 = load i32, i32* %audmode, align 8, !dbg !5209
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5210
  %audmode2 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 5, !dbg !5211
  store i32 %8, i32* %audmode2, align 4, !dbg !5212
  %10 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5213
  %std = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %10, i32 0, i32 3, !dbg !5214
  %11 = load i64, i64* %std, align 8, !dbg !5214
  %12 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5215
  %std3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %12, i32 0, i32 6, !dbg !5216
  store i64 %11, i64* %std3, align 8, !dbg !5217
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5218
  call void @tda9887_configure(%struct.dvb_frontend* %13) #8, !dbg !5219
  ret void, !dbg !5220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_get_afc(%struct.dvb_frontend* %fe, i32* %afc) #0 !dbg !4687 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %afc.addr = alloca i32*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %reg = alloca i8, align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i32* %afc, i32** %afc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %afc.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5227
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5228
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5228
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5227
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5226
  call void @llvm.dbg.declare(metadata i8* %reg, metadata !5229, metadata !DIExpression()), !dbg !5230
  store i8 0, i8* %reg, align 1, !dbg !5230
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5231
  %mode = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 4, !dbg !5233
  %4 = load i32, i32* %mode, align 8, !dbg !5233
  %cmp = icmp ne i32 %4, 1, !dbg !5234
  br i1 %cmp, label %if.then, label %if.end, !dbg !5235

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5236
  br label %return, !dbg !5236

if.end:                                           ; preds = %entry
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5237
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 0, !dbg !5239
  %call = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %i2c_props, i8* %reg, i32 1) #8, !dbg !5240
  %cmp1 = icmp eq i32 1, %call, !dbg !5241
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !5242

if.then2:                                         ; preds = %if.end
  %6 = load i8, i8* %reg, align 1, !dbg !5243
  %conv = zext i8 %6 to i32, !dbg !5243
  %shr = ashr i32 %conv, 1, !dbg !5244
  %and = and i32 %shr, 15, !dbg !5245
  %idxprom = sext i32 %and to i64, !dbg !5246
  %arrayidx = getelementptr [16 x i32], [16 x i32]* @tda9887_get_afc.AFC_BITS_2_kHz, i64 0, i64 %idxprom, !dbg !5246
  %7 = load i32, i32* %arrayidx, align 4, !dbg !5246
  %8 = load i32*, i32** %afc.addr, align 8, !dbg !5247
  store i32 %7, i32* %8, align 4, !dbg !5248
  br label %if.end3, !dbg !5249

if.end3:                                          ; preds = %if.then2, %if.end
  store i32 0, i32* %retval, align 4, !dbg !5250
  br label %return, !dbg !5250

return:                                           ; preds = %if.end3, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !5251
  ret i32 %9, !dbg !5251
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda9887_tuner_status(%struct.dvb_frontend* %fe) #0 !dbg !5252 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5255, metadata !DIExpression()), !dbg !5256
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5257
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5258
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5258
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5257
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5256
  br label %do.body, !dbg !5259

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5260

do.body1:                                         ; preds = %do.body
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 0, !dbg !5262
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5262
  %4 = load i8*, i8** %name, align 8, !dbg !5262
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %i2c_props2 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 0, !dbg !5262
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5262
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5262
  %tobool = icmp ne %struct.i2c_adapter* %6, null, !dbg !5262
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5262

cond.true:                                        ; preds = %do.body1
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 0, !dbg !5262
  %adap4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5262
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap4, align 8, !dbg !5262
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %8) #8, !dbg !5262
  br label %cond.end, !dbg !5262

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5262

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5262
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %i2c_props5 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0, !dbg !5262
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props5, i32 0, i32 0, !dbg !5262
  %10 = load i8, i8* %addr, align 8, !dbg !5262
  %conv = zext i8 %10 to i32, !dbg !5262
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %data = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 2, !dbg !5262
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %data, i64 0, i64 1, !dbg !5262
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5262
  %conv6 = zext i8 %12 to i32, !dbg !5262
  %13 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %data7 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %13, i32 0, i32 2, !dbg !5262
  %arrayidx8 = getelementptr [4 x i8], [4 x i8]* %data7, i64 0, i64 2, !dbg !5262
  %14 = load i8, i8* %arrayidx8, align 2, !dbg !5262
  %conv9 = zext i8 %14 to i32, !dbg !5262
  %15 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5262
  %data10 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %15, i32 0, i32 2, !dbg !5262
  %arrayidx11 = getelementptr [4 x i8], [4 x i8]* %data10, i64 0, i64 3, !dbg !5262
  %16 = load i8, i8* %arrayidx11, align 1, !dbg !5262
  %conv12 = zext i8 %16 to i32, !dbg !5262
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.137, i64 0, i64 0), i8* %4, i32 %cond, i32 %conv, i32 %conv6, i32 %conv9, i32 %conv12) #9, !dbg !5262
  br label %do.end, !dbg !5262

do.end:                                           ; preds = %cond.end
  br label %do.end14, !dbg !5260

do.end14:                                         ; preds = %do.end
  ret void, !dbg !5264
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda9887_standby(%struct.dvb_frontend* %fe) #0 !dbg !5265 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5268, metadata !DIExpression()), !dbg !5269
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5270
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5271
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5271
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5270
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5269
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5272
  %standby = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 7, !dbg !5273
  store i8 1, i8* %standby, align 8, !dbg !5274
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5275
  call void @tda9887_configure(%struct.dvb_frontend* %4) #8, !dbg !5276
  ret void, !dbg !5277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda9887_release(%struct.dvb_frontend* %fe) #0 !dbg !5278 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5281, metadata !DIExpression()), !dbg !5282
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5283
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5284
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5284
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5283
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5282
  call void @mutex_lock(%struct.mutex* @tda9887_list_mutex) #8, !dbg !5285
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5286
  %tobool = icmp ne %struct.tda9887_priv* %3, null, !dbg !5286
  br i1 %tobool, label %if.then, label %if.end16, !dbg !5288

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !5289, metadata !DIExpression()), !dbg !5291
  %4 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5291
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %4, i32 0, i32 0, !dbg !5291
  %count = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 2, !dbg !5291
  %5 = load i32, i32* %count, align 8, !dbg !5291
  %dec = add i32 %5, -1, !dbg !5291
  store i32 %dec, i32* %count, align 8, !dbg !5291
  %6 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5291
  %i2c_props1 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %6, i32 0, i32 0, !dbg !5291
  %count2 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props1, i32 0, i32 2, !dbg !5291
  %7 = load i32, i32* %count2, align 8, !dbg !5291
  store i32 %7, i32* %__ret, align 4, !dbg !5291
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5292
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %8, i32 0, i32 0, !dbg !5292
  %count4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 2, !dbg !5292
  %9 = load i32, i32* %count4, align 8, !dbg !5292
  %tobool5 = icmp ne i32 %9, 0, !dbg !5292
  br i1 %tobool5, label %if.end, label %if.then6, !dbg !5291

if.then6:                                         ; preds = %if.then
  br label %do.body, !dbg !5294

do.body:                                          ; preds = %if.then6
  br label %do.body7, !dbg !5296

do.body7:                                         ; preds = %do.body
  %10 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5298
  %i2c_props8 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %10, i32 0, i32 0, !dbg !5298
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props8, i32 0, i32 3, !dbg !5298
  %11 = load i8*, i8** %name, align 8, !dbg !5298
  %12 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5298
  %i2c_props9 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %12, i32 0, i32 0, !dbg !5298
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props9, i32 0, i32 1, !dbg !5298
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5298
  %tobool10 = icmp ne %struct.i2c_adapter* %13, null, !dbg !5298
  br i1 %tobool10, label %cond.true, label %cond.false, !dbg !5298

cond.true:                                        ; preds = %do.body7
  %14 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5298
  %i2c_props11 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %14, i32 0, i32 0, !dbg !5298
  %adap12 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props11, i32 0, i32 1, !dbg !5298
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap12, align 8, !dbg !5298
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %15) #8, !dbg !5298
  br label %cond.end, !dbg !5298

cond.false:                                       ; preds = %do.body7
  br label %cond.end, !dbg !5298

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5298
  %16 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5298
  %i2c_props13 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %16, i32 0, i32 0, !dbg !5298
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props13, i32 0, i32 0, !dbg !5298
  %17 = load i8, i8* %addr, align 8, !dbg !5298
  %conv = zext i8 %17 to i32, !dbg !5298
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.138, i64 0, i64 0), i8* %11, i32 %cond, i32 %conv) #9, !dbg !5298
  br label %do.end, !dbg !5298

do.end:                                           ; preds = %cond.end
  br label %do.end15, !dbg !5296

do.end15:                                         ; preds = %do.end
  %18 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5294
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %18, i32 0, i32 1, !dbg !5294
  call void @list_del(%struct.list_head* %hybrid_tuner_instance_list) #8, !dbg !5294
  %19 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5294
  %20 = bitcast %struct.tda9887_priv* %19 to i8*, !dbg !5294
  call void @kfree(i8* %20) #8, !dbg !5294
  br label %if.end, !dbg !5294

if.end:                                           ; preds = %do.end15, %if.then
  %21 = load i32, i32* %__ret, align 4, !dbg !5291
  store i32 %21, i32* %tmp, align 4, !dbg !5292
  %22 = load i32, i32* %tmp, align 4, !dbg !5291
  br label %if.end16, !dbg !5300

if.end16:                                         ; preds = %if.end, %entry
  call void @mutex_unlock(%struct.mutex* @tda9887_list_mutex) #8, !dbg !5301
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5302
  %analog_demod_priv17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %23, i32 0, i32 7, !dbg !5303
  store i8* null, i8** %analog_demod_priv17, align 8, !dbg !5304
  ret void, !dbg !5305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_set_config(%struct.dvb_frontend* %fe, i8* %priv_cfg) #0 !dbg !5306 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv_cfg.addr = alloca i8*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5307, metadata !DIExpression()), !dbg !5308
  store i8* %priv_cfg, i8** %priv_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv_cfg.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5311, metadata !DIExpression()), !dbg !5312
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5313
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5314
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5314
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5313
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5312
  %3 = load i8*, i8** %priv_cfg.addr, align 8, !dbg !5315
  %4 = bitcast i8* %3 to i32*, !dbg !5316
  %5 = load i32, i32* %4, align 4, !dbg !5317
  %6 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5318
  %config = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %6, i32 0, i32 3, !dbg !5319
  store i32 %5, i32* %config, align 4, !dbg !5320
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5321
  call void @tda9887_configure(%struct.dvb_frontend* %7) #8, !dbg !5322
  ret i32 0, !dbg !5323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda9887_configure(%struct.dvb_frontend* %fe) #0 !dbg !5324 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5325, metadata !DIExpression()), !dbg !5326
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5327, metadata !DIExpression()), !dbg !5328
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5329
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5330
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5330
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5329
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5328
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5331, metadata !DIExpression()), !dbg !5332
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5333
  %data = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 2, !dbg !5334
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0, !dbg !5335
  call void @llvm.memset.p0i8.i64(i8* align 8 %arraydecay, i8 0, i64 4, i1 false), !dbg !5335
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5336
  %call = call i32 @tda9887_set_tvnorm(%struct.dvb_frontend* %4) #8, !dbg !5337
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5338
  %data1 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 2, !dbg !5339
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %data1, i64 0, i64 1, !dbg !5338
  %6 = load i8, i8* %arrayidx, align 1, !dbg !5340
  %conv = zext i8 %6 to i32, !dbg !5340
  %or = or i32 %conv, 64, !dbg !5340
  %conv2 = trunc i32 %or to i8, !dbg !5340
  store i8 %conv2, i8* %arrayidx, align 1, !dbg !5340
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5341
  %data3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 2, !dbg !5342
  %arrayidx4 = getelementptr [4 x i8], [4 x i8]* %data3, i64 0, i64 1, !dbg !5341
  %8 = load i8, i8* %arrayidx4, align 1, !dbg !5343
  %conv5 = zext i8 %8 to i32, !dbg !5343
  %or6 = or i32 %conv5, 128, !dbg !5343
  %conv7 = trunc i32 %or6 to i8, !dbg !5343
  store i8 %conv7, i8* %arrayidx4, align 1, !dbg !5343
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5344
  %call8 = call i32 @tda9887_do_config(%struct.dvb_frontend* %9) #8, !dbg !5345
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5346
  %call9 = call i32 @tda9887_set_insmod(%struct.dvb_frontend* %10) #8, !dbg !5347
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5348
  %standby = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 7, !dbg !5350
  %12 = load i8, i8* %standby, align 8, !dbg !5350
  %tobool = trunc i8 %12 to i1, !dbg !5350
  br i1 %tobool, label %if.then, label %if.end, !dbg !5351

if.then:                                          ; preds = %entry
  %13 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5352
  %data10 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %13, i32 0, i32 2, !dbg !5353
  %arrayidx11 = getelementptr [4 x i8], [4 x i8]* %data10, i64 0, i64 1, !dbg !5352
  %14 = load i8, i8* %arrayidx11, align 1, !dbg !5354
  %conv12 = zext i8 %14 to i32, !dbg !5354
  %or13 = or i32 %conv12, 32, !dbg !5354
  %conv14 = trunc i32 %or13 to i8, !dbg !5354
  store i8 %conv14, i8* %arrayidx11, align 1, !dbg !5354
  br label %if.end, !dbg !5352

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !5355

do.body:                                          ; preds = %if.end
  %15 = load i32, i32* @debug, align 4, !dbg !5356
  %tobool15 = icmp ne i32 %15, 0, !dbg !5356
  br i1 %tobool15, label %if.then16, label %if.end35, !dbg !5359

if.then16:                                        ; preds = %do.body
  br label %do.body17, !dbg !5356

do.body17:                                        ; preds = %if.then16
  %16 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %16, i32 0, i32 0, !dbg !5360
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5360
  %17 = load i8*, i8** %name, align 8, !dbg !5360
  %18 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %i2c_props18 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %18, i32 0, i32 0, !dbg !5360
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props18, i32 0, i32 1, !dbg !5360
  %19 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5360
  %tobool19 = icmp ne %struct.i2c_adapter* %19, null, !dbg !5360
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !5360

cond.true:                                        ; preds = %do.body17
  %20 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %i2c_props20 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %20, i32 0, i32 0, !dbg !5360
  %adap21 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props20, i32 0, i32 1, !dbg !5360
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap21, align 8, !dbg !5360
  %call22 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %21) #8, !dbg !5360
  br label %cond.end, !dbg !5360

cond.false:                                       ; preds = %do.body17
  br label %cond.end, !dbg !5360

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call22, %cond.true ], [ -1, %cond.false ], !dbg !5360
  %22 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %i2c_props23 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %22, i32 0, i32 0, !dbg !5360
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props23, i32 0, i32 0, !dbg !5360
  %23 = load i8, i8* %addr, align 8, !dbg !5360
  %conv24 = zext i8 %23 to i32, !dbg !5360
  %24 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %data25 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %24, i32 0, i32 2, !dbg !5360
  %arrayidx26 = getelementptr [4 x i8], [4 x i8]* %data25, i64 0, i64 1, !dbg !5360
  %25 = load i8, i8* %arrayidx26, align 1, !dbg !5360
  %conv27 = zext i8 %25 to i32, !dbg !5360
  %26 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %data28 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %26, i32 0, i32 2, !dbg !5360
  %arrayidx29 = getelementptr [4 x i8], [4 x i8]* %data28, i64 0, i64 2, !dbg !5360
  %27 = load i8, i8* %arrayidx29, align 2, !dbg !5360
  %conv30 = zext i8 %27 to i32, !dbg !5360
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5360
  %data31 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 2, !dbg !5360
  %arrayidx32 = getelementptr [4 x i8], [4 x i8]* %data31, i64 0, i64 3, !dbg !5360
  %29 = load i8, i8* %arrayidx32, align 1, !dbg !5360
  %conv33 = zext i8 %29 to i32, !dbg !5360
  %call34 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i8* %17, i32 %cond, i32 %conv24, i32 %conv27, i32 %conv30, i32 %conv33) #9, !dbg !5360
  br label %do.end, !dbg !5360

do.end:                                           ; preds = %cond.end
  br label %if.end35, !dbg !5360

if.end35:                                         ; preds = %do.end, %do.body
  br label %do.end36, !dbg !5359

do.end36:                                         ; preds = %if.end35
  %30 = load i32, i32* @debug, align 4, !dbg !5362
  %cmp = icmp sgt i32 %30, 1, !dbg !5364
  br i1 %cmp, label %if.then38, label %if.end41, !dbg !5365

if.then38:                                        ; preds = %do.end36
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5366
  %32 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5367
  %data39 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %32, i32 0, i32 2, !dbg !5368
  %arraydecay40 = getelementptr inbounds [4 x i8], [4 x i8]* %data39, i64 0, i64 0, !dbg !5367
  call void @dump_write_message(%struct.dvb_frontend* %31, i8* %arraydecay40) #8, !dbg !5369
  br label %if.end41, !dbg !5369

if.end41:                                         ; preds = %if.then38, %do.end36
  %33 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5370
  %i2c_props42 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %33, i32 0, i32 0, !dbg !5372
  %34 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5373
  %data43 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %34, i32 0, i32 2, !dbg !5374
  %arraydecay44 = getelementptr inbounds [4 x i8], [4 x i8]* %data43, i64 0, i64 0, !dbg !5373
  %call45 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %i2c_props42, i8* %arraydecay44, i32 4) #8, !dbg !5375
  store i32 %call45, i32* %rc, align 4, !dbg !5376
  %cmp46 = icmp ne i32 4, %call45, !dbg !5377
  br i1 %cmp46, label %if.then48, label %if.end69, !dbg !5378

if.then48:                                        ; preds = %if.end41
  br label %do.body49, !dbg !5379

do.body49:                                        ; preds = %if.then48
  br label %do.body50, !dbg !5380

do.body50:                                        ; preds = %do.body49
  %35 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5382
  %i2c_props51 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %35, i32 0, i32 0, !dbg !5382
  %name52 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props51, i32 0, i32 3, !dbg !5382
  %36 = load i8*, i8** %name52, align 8, !dbg !5382
  %37 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5382
  %i2c_props53 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %37, i32 0, i32 0, !dbg !5382
  %adap54 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props53, i32 0, i32 1, !dbg !5382
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap54, align 8, !dbg !5382
  %tobool55 = icmp ne %struct.i2c_adapter* %38, null, !dbg !5382
  br i1 %tobool55, label %cond.true56, label %cond.false60, !dbg !5382

cond.true56:                                      ; preds = %do.body50
  %39 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5382
  %i2c_props57 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %39, i32 0, i32 0, !dbg !5382
  %adap58 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props57, i32 0, i32 1, !dbg !5382
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap58, align 8, !dbg !5382
  %call59 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %40) #8, !dbg !5382
  br label %cond.end61, !dbg !5382

cond.false60:                                     ; preds = %do.body50
  br label %cond.end61, !dbg !5382

cond.end61:                                       ; preds = %cond.false60, %cond.true56
  %cond62 = phi i32 [ %call59, %cond.true56 ], [ -1, %cond.false60 ], !dbg !5382
  %41 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5382
  %i2c_props63 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %41, i32 0, i32 0, !dbg !5382
  %addr64 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props63, i32 0, i32 0, !dbg !5382
  %42 = load i8, i8* %addr64, align 8, !dbg !5382
  %conv65 = zext i8 %42 to i32, !dbg !5382
  %43 = load i32, i32* %rc, align 4, !dbg !5382
  %call66 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %36, i32 %cond62, i32 %conv65, i32 %43) #9, !dbg !5382
  br label %do.end67, !dbg !5382

do.end67:                                         ; preds = %cond.end61
  br label %do.end68, !dbg !5380

do.end68:                                         ; preds = %do.end67
  br label %if.end69, !dbg !5380

if.end69:                                         ; preds = %do.end68, %if.end41
  %44 = load i32, i32* @debug, align 4, !dbg !5384
  %cmp70 = icmp sgt i32 %44, 2, !dbg !5386
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !5387

if.then72:                                        ; preds = %if.end69
  %call73 = call i64 @msleep_interruptible(i32 1000) #8, !dbg !5388
  %45 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5390
  %call74 = call i32 @tda9887_status(%struct.dvb_frontend* %45) #8, !dbg !5391
  br label %if.end75, !dbg !5392

if.end75:                                         ; preds = %if.then72, %if.end69
  ret void, !dbg !5393
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_set_tvnorm(%struct.dvb_frontend* %fe) #0 !dbg !5394 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %norm = alloca %struct.tvnorm*, align 8
  %buf = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5399
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5400
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5400
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5399
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata %struct.tvnorm** %norm, metadata !5401, metadata !DIExpression()), !dbg !5403
  store %struct.tvnorm* null, %struct.tvnorm** %norm, align 8, !dbg !5403
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5404, metadata !DIExpression()), !dbg !5405
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5406
  %data = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 2, !dbg !5407
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0, !dbg !5406
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5405
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5408, metadata !DIExpression()), !dbg !5409
  %4 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5410
  %mode = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %4, i32 0, i32 4, !dbg !5412
  %5 = load i32, i32* %mode, align 8, !dbg !5412
  %cmp = icmp eq i32 %5, 1, !dbg !5413
  br i1 %cmp, label %if.then, label %if.else3, !dbg !5414

if.then:                                          ; preds = %entry
  %6 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5415
  %audmode = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %6, i32 0, i32 5, !dbg !5418
  %7 = load i32, i32* %audmode, align 4, !dbg !5418
  %cmp1 = icmp eq i32 %7, 0, !dbg !5419
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5420

if.then2:                                         ; preds = %if.then
  store %struct.tvnorm* @radio_mono, %struct.tvnorm** %norm, align 8, !dbg !5421
  br label %if.end, !dbg !5422

if.else:                                          ; preds = %if.then
  store %struct.tvnorm* @radio_stereo, %struct.tvnorm** %norm, align 8, !dbg !5423
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end9, !dbg !5424

if.else3:                                         ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !5425
  br label %for.cond, !dbg !5428

for.cond:                                         ; preds = %for.inc, %if.else3
  %8 = load i32, i32* %i, align 4, !dbg !5429
  %conv = sext i32 %8 to i64, !dbg !5429
  %cmp4 = icmp ult i64 %conv, 10, !dbg !5431
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5432

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !5433
  %idxprom = sext i32 %9 to i64, !dbg !5436
  %arrayidx = getelementptr [10 x %struct.tvnorm], [10 x %struct.tvnorm]* @tvnorms, i64 0, i64 %idxprom, !dbg !5436
  %std = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %arrayidx, i32 0, i32 0, !dbg !5437
  %10 = load i64, i64* %std, align 8, !dbg !5437
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5438
  %std6 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 6, !dbg !5439
  %12 = load i64, i64* %std6, align 8, !dbg !5439
  %and = and i64 %10, %12, !dbg !5440
  %tobool = icmp ne i64 %and, 0, !dbg !5440
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !5441

if.then7:                                         ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !5442
  %idx.ext = sext i32 %13 to i64, !dbg !5444
  %add.ptr = getelementptr %struct.tvnorm, %struct.tvnorm* getelementptr inbounds ([10 x %struct.tvnorm], [10 x %struct.tvnorm]* @tvnorms, i64 0, i64 0), i64 %idx.ext, !dbg !5444
  store %struct.tvnorm* %add.ptr, %struct.tvnorm** %norm, align 8, !dbg !5445
  br label %for.end, !dbg !5446

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !5447

for.inc:                                          ; preds = %if.end8
  %14 = load i32, i32* %i, align 4, !dbg !5448
  %inc = add i32 %14, 1, !dbg !5448
  store i32 %inc, i32* %i, align 4, !dbg !5448
  br label %for.cond, !dbg !5449, !llvm.loop !5450

for.end:                                          ; preds = %if.then7, %for.cond
  br label %if.end9

if.end9:                                          ; preds = %for.end, %if.end
  %15 = load %struct.tvnorm*, %struct.tvnorm** %norm, align 8, !dbg !5452
  %cmp10 = icmp eq %struct.tvnorm* null, %15, !dbg !5454
  br i1 %cmp10, label %if.then12, label %if.end25, !dbg !5455

if.then12:                                        ; preds = %if.end9
  br label %do.body, !dbg !5456

do.body:                                          ; preds = %if.then12
  %16 = load i32, i32* @debug, align 4, !dbg !5458
  %tobool13 = icmp ne i32 %16, 0, !dbg !5458
  br i1 %tobool13, label %if.then14, label %if.end23, !dbg !5461

if.then14:                                        ; preds = %do.body
  br label %do.body15, !dbg !5458

do.body15:                                        ; preds = %if.then14
  %17 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5462
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %17, i32 0, i32 0, !dbg !5462
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5462
  %18 = load i8*, i8** %name, align 8, !dbg !5462
  %19 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5462
  %i2c_props16 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %19, i32 0, i32 0, !dbg !5462
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props16, i32 0, i32 1, !dbg !5462
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5462
  %tobool17 = icmp ne %struct.i2c_adapter* %20, null, !dbg !5462
  br i1 %tobool17, label %cond.true, label %cond.false, !dbg !5462

cond.true:                                        ; preds = %do.body15
  %21 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5462
  %i2c_props18 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %21, i32 0, i32 0, !dbg !5462
  %adap19 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props18, i32 0, i32 1, !dbg !5462
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap19, align 8, !dbg !5462
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %22) #8, !dbg !5462
  br label %cond.end, !dbg !5462

cond.false:                                       ; preds = %do.body15
  br label %cond.end, !dbg !5462

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5462
  %23 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5462
  %i2c_props20 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %23, i32 0, i32 0, !dbg !5462
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props20, i32 0, i32 0, !dbg !5462
  %24 = load i8, i8* %addr, align 8, !dbg !5462
  %conv21 = zext i8 %24 to i32, !dbg !5462
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i8* %18, i32 %cond, i32 %conv21) #9, !dbg !5462
  br label %do.end, !dbg !5462

do.end:                                           ; preds = %cond.end
  br label %if.end23, !dbg !5462

if.end23:                                         ; preds = %do.end, %do.body
  br label %do.end24, !dbg !5461

do.end24:                                         ; preds = %if.end23
  store i32 -1, i32* %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end25:                                         ; preds = %if.end9
  br label %do.body26, !dbg !5465

do.body26:                                        ; preds = %if.end25
  %25 = load i32, i32* @debug, align 4, !dbg !5466
  %tobool27 = icmp ne i32 %25, 0, !dbg !5466
  br i1 %tobool27, label %if.then28, label %if.end48, !dbg !5469

if.then28:                                        ; preds = %do.body26
  br label %do.body29, !dbg !5466

do.body29:                                        ; preds = %if.then28
  %26 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5470
  %i2c_props30 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %26, i32 0, i32 0, !dbg !5470
  %name31 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props30, i32 0, i32 3, !dbg !5470
  %27 = load i8*, i8** %name31, align 8, !dbg !5470
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5470
  %i2c_props32 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 0, !dbg !5470
  %adap33 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props32, i32 0, i32 1, !dbg !5470
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap33, align 8, !dbg !5470
  %tobool34 = icmp ne %struct.i2c_adapter* %29, null, !dbg !5470
  br i1 %tobool34, label %cond.true35, label %cond.false39, !dbg !5470

cond.true35:                                      ; preds = %do.body29
  %30 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5470
  %i2c_props36 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %30, i32 0, i32 0, !dbg !5470
  %adap37 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props36, i32 0, i32 1, !dbg !5470
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap37, align 8, !dbg !5470
  %call38 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %31) #8, !dbg !5470
  br label %cond.end40, !dbg !5470

cond.false39:                                     ; preds = %do.body29
  br label %cond.end40, !dbg !5470

cond.end40:                                       ; preds = %cond.false39, %cond.true35
  %cond41 = phi i32 [ %call38, %cond.true35 ], [ -1, %cond.false39 ], !dbg !5470
  %32 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5470
  %i2c_props42 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %32, i32 0, i32 0, !dbg !5470
  %addr43 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props42, i32 0, i32 0, !dbg !5470
  %33 = load i8, i8* %addr43, align 8, !dbg !5470
  %conv44 = zext i8 %33 to i32, !dbg !5470
  %34 = load %struct.tvnorm*, %struct.tvnorm** %norm, align 8, !dbg !5470
  %name45 = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %34, i32 0, i32 1, !dbg !5470
  %35 = load i8*, i8** %name45, align 8, !dbg !5470
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %27, i32 %cond41, i32 %conv44, i8* %35) #9, !dbg !5470
  br label %do.end47, !dbg !5470

do.end47:                                         ; preds = %cond.end40
  br label %if.end48, !dbg !5470

if.end48:                                         ; preds = %do.end47, %do.body26
  br label %do.end49, !dbg !5469

do.end49:                                         ; preds = %if.end48
  %36 = load %struct.tvnorm*, %struct.tvnorm** %norm, align 8, !dbg !5472
  %b = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %36, i32 0, i32 2, !dbg !5473
  %37 = load i8, i8* %b, align 8, !dbg !5473
  %38 = load i8*, i8** %buf, align 8, !dbg !5474
  %arrayidx50 = getelementptr i8, i8* %38, i64 1, !dbg !5474
  store i8 %37, i8* %arrayidx50, align 1, !dbg !5475
  %39 = load %struct.tvnorm*, %struct.tvnorm** %norm, align 8, !dbg !5476
  %c = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %39, i32 0, i32 3, !dbg !5477
  %40 = load i8, i8* %c, align 1, !dbg !5477
  %41 = load i8*, i8** %buf, align 8, !dbg !5478
  %arrayidx51 = getelementptr i8, i8* %41, i64 2, !dbg !5478
  store i8 %40, i8* %arrayidx51, align 1, !dbg !5479
  %42 = load %struct.tvnorm*, %struct.tvnorm** %norm, align 8, !dbg !5480
  %e = getelementptr inbounds %struct.tvnorm, %struct.tvnorm* %42, i32 0, i32 4, !dbg !5481
  %43 = load i8, i8* %e, align 2, !dbg !5481
  %44 = load i8*, i8** %buf, align 8, !dbg !5482
  %arrayidx52 = getelementptr i8, i8* %44, i64 3, !dbg !5482
  store i8 %43, i8* %arrayidx52, align 1, !dbg !5483
  store i32 0, i32* %retval, align 4, !dbg !5484
  br label %return, !dbg !5484

return:                                           ; preds = %do.end49, %do.end24
  %45 = load i32, i32* %retval, align 4, !dbg !5485
  ret i32 %45, !dbg !5485
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_do_config(%struct.dvb_frontend* %fe) #0 !dbg !5486 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %buf = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5487, metadata !DIExpression()), !dbg !5488
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5489, metadata !DIExpression()), !dbg !5490
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5491
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5492
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5492
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5491
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5490
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5493, metadata !DIExpression()), !dbg !5494
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5495
  %data = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 2, !dbg !5496
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0, !dbg !5495
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5494
  %4 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5497
  %config = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %4, i32 0, i32 3, !dbg !5499
  %5 = load i32, i32* %config, align 4, !dbg !5499
  %and = and i32 %5, 32, !dbg !5500
  %tobool = icmp ne i32 %and, 0, !dbg !5500
  br i1 %tobool, label %if.then, label %if.end, !dbg !5501

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %buf, align 8, !dbg !5502
  %arrayidx = getelementptr i8, i8* %6, i64 1, !dbg !5502
  %7 = load i8, i8* %arrayidx, align 1, !dbg !5503
  %conv = sext i8 %7 to i32, !dbg !5503
  %and1 = and i32 %conv, -65, !dbg !5503
  %conv2 = trunc i32 %and1 to i8, !dbg !5503
  store i8 %conv2, i8* %arrayidx, align 1, !dbg !5503
  br label %if.end, !dbg !5502

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5504
  %config3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %8, i32 0, i32 3, !dbg !5506
  %9 = load i32, i32* %config3, align 4, !dbg !5506
  %and4 = and i32 %9, 2, !dbg !5507
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5507
  br i1 %tobool5, label %if.then6, label %if.end10, !dbg !5508

if.then6:                                         ; preds = %if.end
  %10 = load i8*, i8** %buf, align 8, !dbg !5509
  %arrayidx7 = getelementptr i8, i8* %10, i64 1, !dbg !5509
  %11 = load i8, i8* %arrayidx7, align 1, !dbg !5510
  %conv8 = sext i8 %11 to i32, !dbg !5510
  %or = or i32 %conv8, 64, !dbg !5510
  %conv9 = trunc i32 %or to i8, !dbg !5510
  store i8 %conv9, i8* %arrayidx7, align 1, !dbg !5510
  br label %if.end10, !dbg !5509

if.end10:                                         ; preds = %if.then6, %if.end
  %12 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5511
  %config11 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %12, i32 0, i32 3, !dbg !5513
  %13 = load i32, i32* %config11, align 4, !dbg !5513
  %and12 = and i32 %13, 64, !dbg !5514
  %tobool13 = icmp ne i32 %and12, 0, !dbg !5514
  br i1 %tobool13, label %if.then14, label %if.end19, !dbg !5515

if.then14:                                        ; preds = %if.end10
  %14 = load i8*, i8** %buf, align 8, !dbg !5516
  %arrayidx15 = getelementptr i8, i8* %14, i64 1, !dbg !5516
  %15 = load i8, i8* %arrayidx15, align 1, !dbg !5517
  %conv16 = sext i8 %15 to i32, !dbg !5517
  %and17 = and i32 %conv16, -129, !dbg !5517
  %conv18 = trunc i32 %and17 to i8, !dbg !5517
  store i8 %conv18, i8* %arrayidx15, align 1, !dbg !5517
  br label %if.end19, !dbg !5516

if.end19:                                         ; preds = %if.then14, %if.end10
  %16 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5518
  %config20 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %16, i32 0, i32 3, !dbg !5520
  %17 = load i32, i32* %config20, align 4, !dbg !5520
  %and21 = and i32 %17, 4, !dbg !5521
  %tobool22 = icmp ne i32 %and21, 0, !dbg !5521
  br i1 %tobool22, label %if.then23, label %if.end28, !dbg !5522

if.then23:                                        ; preds = %if.end19
  %18 = load i8*, i8** %buf, align 8, !dbg !5523
  %arrayidx24 = getelementptr i8, i8* %18, i64 1, !dbg !5523
  %19 = load i8, i8* %arrayidx24, align 1, !dbg !5524
  %conv25 = sext i8 %19 to i32, !dbg !5524
  %or26 = or i32 %conv25, 128, !dbg !5524
  %conv27 = trunc i32 %or26 to i8, !dbg !5524
  store i8 %conv27, i8* %arrayidx24, align 1, !dbg !5524
  br label %if.end28, !dbg !5523

if.end28:                                         ; preds = %if.then23, %if.end19
  %20 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5525
  %config29 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %20, i32 0, i32 3, !dbg !5527
  %21 = load i32, i32* %config29, align 4, !dbg !5527
  %and30 = and i32 %21, 8, !dbg !5528
  %tobool31 = icmp ne i32 %and30, 0, !dbg !5528
  br i1 %tobool31, label %if.then32, label %if.end37, !dbg !5529

if.then32:                                        ; preds = %if.end28
  %22 = load i8*, i8** %buf, align 8, !dbg !5530
  %arrayidx33 = getelementptr i8, i8* %22, i64 1, !dbg !5530
  %23 = load i8, i8* %arrayidx33, align 1, !dbg !5531
  %conv34 = sext i8 %23 to i32, !dbg !5531
  %or35 = or i32 %conv34, 4, !dbg !5531
  %conv36 = trunc i32 %or35 to i8, !dbg !5531
  store i8 %conv36, i8* %arrayidx33, align 1, !dbg !5531
  br label %if.end37, !dbg !5530

if.end37:                                         ; preds = %if.then32, %if.end28
  %24 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5532
  %config38 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %24, i32 0, i32 3, !dbg !5534
  %25 = load i32, i32* %config38, align 4, !dbg !5534
  %and39 = and i32 %25, 16, !dbg !5535
  %tobool40 = icmp ne i32 %and39, 0, !dbg !5535
  br i1 %tobool40, label %if.then41, label %if.end46, !dbg !5536

if.then41:                                        ; preds = %if.end37
  %26 = load i8*, i8** %buf, align 8, !dbg !5537
  %arrayidx42 = getelementptr i8, i8* %26, i64 1, !dbg !5537
  %27 = load i8, i8* %arrayidx42, align 1, !dbg !5538
  %conv43 = sext i8 %27 to i32, !dbg !5538
  %and44 = and i32 %conv43, -5, !dbg !5538
  %conv45 = trunc i32 %and44 to i8, !dbg !5538
  store i8 %conv45, i8* %arrayidx42, align 1, !dbg !5538
  br label %if.end46, !dbg !5537

if.end46:                                         ; preds = %if.then41, %if.end37
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5539
  %config47 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 3, !dbg !5541
  %29 = load i32, i32* %config47, align 4, !dbg !5541
  %and48 = and i32 %29, 262144, !dbg !5542
  %tobool49 = icmp ne i32 %and48, 0, !dbg !5542
  br i1 %tobool49, label %if.then50, label %if.end55, !dbg !5543

if.then50:                                        ; preds = %if.end46
  %30 = load i8*, i8** %buf, align 8, !dbg !5544
  %arrayidx51 = getelementptr i8, i8* %30, i64 1, !dbg !5544
  %31 = load i8, i8* %arrayidx51, align 1, !dbg !5545
  %conv52 = sext i8 %31 to i32, !dbg !5545
  %or53 = or i32 %conv52, 2, !dbg !5545
  %conv54 = trunc i32 %or53 to i8, !dbg !5545
  store i8 %conv54, i8* %arrayidx51, align 1, !dbg !5545
  br label %if.end55, !dbg !5544

if.end55:                                         ; preds = %if.then50, %if.end46
  %32 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5546
  %config56 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %32, i32 0, i32 3, !dbg !5548
  %33 = load i32, i32* %config56, align 4, !dbg !5548
  %and57 = and i32 %33, 196608, !dbg !5549
  %tobool58 = icmp ne i32 %and57, 0, !dbg !5549
  br i1 %tobool58, label %if.then59, label %if.end79, !dbg !5550

if.then59:                                        ; preds = %if.end55
  %34 = load i8*, i8** %buf, align 8, !dbg !5551
  %arrayidx60 = getelementptr i8, i8* %34, i64 2, !dbg !5551
  %35 = load i8, i8* %arrayidx60, align 1, !dbg !5553
  %conv61 = sext i8 %35 to i32, !dbg !5553
  %and62 = and i32 %conv61, -97, !dbg !5553
  %conv63 = trunc i32 %and62 to i8, !dbg !5553
  store i8 %conv63, i8* %arrayidx60, align 1, !dbg !5553
  %36 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5554
  %config64 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %36, i32 0, i32 3, !dbg !5555
  %37 = load i32, i32* %config64, align 4, !dbg !5555
  %and65 = and i32 %37, 196608, !dbg !5556
  switch i32 %and65, label %sw.epilog [
    i32 65536, label %sw.bb
    i32 131072, label %sw.bb69
    i32 196608, label %sw.bb74
  ], !dbg !5557

sw.bb:                                            ; preds = %if.then59
  %38 = load i8*, i8** %buf, align 8, !dbg !5558
  %arrayidx66 = getelementptr i8, i8* %38, i64 2, !dbg !5558
  %39 = load i8, i8* %arrayidx66, align 1, !dbg !5560
  %conv67 = sext i8 %39 to i32, !dbg !5560
  %conv68 = trunc i32 %conv67 to i8, !dbg !5560
  store i8 %conv68, i8* %arrayidx66, align 1, !dbg !5560
  br label %sw.epilog, !dbg !5561

sw.bb69:                                          ; preds = %if.then59
  %40 = load i8*, i8** %buf, align 8, !dbg !5562
  %arrayidx70 = getelementptr i8, i8* %40, i64 2, !dbg !5562
  %41 = load i8, i8* %arrayidx70, align 1, !dbg !5563
  %conv71 = sext i8 %41 to i32, !dbg !5563
  %or72 = or i32 %conv71, 96, !dbg !5563
  %conv73 = trunc i32 %or72 to i8, !dbg !5563
  store i8 %conv73, i8* %arrayidx70, align 1, !dbg !5563
  br label %sw.epilog, !dbg !5564

sw.bb74:                                          ; preds = %if.then59
  %42 = load i8*, i8** %buf, align 8, !dbg !5565
  %arrayidx75 = getelementptr i8, i8* %42, i64 2, !dbg !5565
  %43 = load i8, i8* %arrayidx75, align 1, !dbg !5566
  %conv76 = sext i8 %43 to i32, !dbg !5566
  %or77 = or i32 %conv76, 32, !dbg !5566
  %conv78 = trunc i32 %or77 to i8, !dbg !5566
  store i8 %conv78, i8* %arrayidx75, align 1, !dbg !5566
  br label %sw.epilog, !dbg !5567

sw.epilog:                                        ; preds = %if.then59, %sw.bb74, %sw.bb69, %sw.bb
  br label %if.end79, !dbg !5568

if.end79:                                         ; preds = %sw.epilog, %if.end55
  %44 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5569
  %config80 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %44, i32 0, i32 3, !dbg !5571
  %45 = load i32, i32* %config80, align 4, !dbg !5571
  %and81 = and i32 %45, 8192, !dbg !5572
  %tobool82 = icmp ne i32 %and81, 0, !dbg !5572
  br i1 %tobool82, label %if.then83, label %if.end94, !dbg !5573

if.then83:                                        ; preds = %if.end79
  %46 = load i8*, i8** %buf, align 8, !dbg !5574
  %arrayidx84 = getelementptr i8, i8* %46, i64 2, !dbg !5574
  %47 = load i8, i8* %arrayidx84, align 1, !dbg !5576
  %conv85 = sext i8 %47 to i32, !dbg !5576
  %and86 = and i32 %conv85, -32, !dbg !5576
  %conv87 = trunc i32 %and86 to i8, !dbg !5576
  store i8 %conv87, i8* %arrayidx84, align 1, !dbg !5576
  %48 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5577
  %config88 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %48, i32 0, i32 3, !dbg !5578
  %49 = load i32, i32* %config88, align 4, !dbg !5578
  %shr = lshr i32 %49, 8, !dbg !5579
  %and89 = and i32 %shr, 31, !dbg !5580
  %50 = load i8*, i8** %buf, align 8, !dbg !5581
  %arrayidx90 = getelementptr i8, i8* %50, i64 2, !dbg !5581
  %51 = load i8, i8* %arrayidx90, align 1, !dbg !5582
  %conv91 = sext i8 %51 to i32, !dbg !5582
  %or92 = or i32 %conv91, %and89, !dbg !5582
  %conv93 = trunc i32 %or92 to i8, !dbg !5582
  store i8 %conv93, i8* %arrayidx90, align 1, !dbg !5582
  br label %if.end94, !dbg !5583

if.end94:                                         ; preds = %if.then83, %if.end79
  %52 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5584
  %config95 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %52, i32 0, i32 3, !dbg !5586
  %53 = load i32, i32* %config95, align 4, !dbg !5586
  %and96 = and i32 %53, 128, !dbg !5587
  %tobool97 = icmp ne i32 %and96, 0, !dbg !5587
  br i1 %tobool97, label %land.lhs.true, label %if.end105, !dbg !5588

land.lhs.true:                                    ; preds = %if.end94
  %54 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5589
  %std = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %54, i32 0, i32 6, !dbg !5590
  %55 = load i64, i64* %std, align 8, !dbg !5590
  %and98 = and i64 %55, 45056, !dbg !5591
  %tobool99 = icmp ne i64 %and98, 0, !dbg !5591
  br i1 %tobool99, label %if.then100, label %if.end105, !dbg !5592

if.then100:                                       ; preds = %land.lhs.true
  %56 = load i8*, i8** %buf, align 8, !dbg !5593
  %arrayidx101 = getelementptr i8, i8* %56, i64 1, !dbg !5593
  %57 = load i8, i8* %arrayidx101, align 1, !dbg !5594
  %conv102 = sext i8 %57 to i32, !dbg !5594
  %and103 = and i32 %conv102, -5, !dbg !5594
  %conv104 = trunc i32 %and103 to i8, !dbg !5594
  store i8 %conv104, i8* %arrayidx101, align 1, !dbg !5594
  br label %if.end105, !dbg !5593

if.end105:                                        ; preds = %if.then100, %land.lhs.true, %if.end94
  %58 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5595
  %config106 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %58, i32 0, i32 3, !dbg !5597
  %59 = load i32, i32* %config106, align 4, !dbg !5597
  %and107 = and i32 %59, 524288, !dbg !5598
  %tobool108 = icmp ne i32 %and107, 0, !dbg !5598
  br i1 %tobool108, label %if.then109, label %if.end114, !dbg !5599

if.then109:                                       ; preds = %if.end105
  %60 = load i8*, i8** %buf, align 8, !dbg !5600
  %arrayidx110 = getelementptr i8, i8* %60, i64 3, !dbg !5600
  %61 = load i8, i8* %arrayidx110, align 1, !dbg !5601
  %conv111 = sext i8 %61 to i32, !dbg !5601
  %and112 = and i32 %conv111, -65, !dbg !5601
  %conv113 = trunc i32 %and112 to i8, !dbg !5601
  store i8 %conv113, i8* %arrayidx110, align 1, !dbg !5601
  br label %if.end114, !dbg !5600

if.end114:                                        ; preds = %if.then109, %if.end105
  %62 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5602
  %mode = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %62, i32 0, i32 4, !dbg !5604
  %63 = load i32, i32* %mode, align 8, !dbg !5604
  %cmp = icmp eq i32 %63, 1, !dbg !5605
  br i1 %cmp, label %if.then116, label %if.end139, !dbg !5606

if.then116:                                       ; preds = %if.end114
  %64 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5607
  %config117 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %64, i32 0, i32 3, !dbg !5610
  %65 = load i32, i32* %config117, align 4, !dbg !5610
  %and118 = and i32 %65, 2097152, !dbg !5611
  %tobool119 = icmp ne i32 %and118, 0, !dbg !5611
  br i1 %tobool119, label %if.then120, label %if.end129, !dbg !5612

if.then120:                                       ; preds = %if.then116
  %66 = load i8*, i8** %buf, align 8, !dbg !5613
  %arrayidx121 = getelementptr i8, i8* %66, i64 3, !dbg !5613
  %67 = load i8, i8* %arrayidx121, align 1, !dbg !5615
  %conv122 = sext i8 %67 to i32, !dbg !5615
  %and123 = and i32 %conv122, -29, !dbg !5615
  %conv124 = trunc i32 %and123 to i8, !dbg !5615
  store i8 %conv124, i8* %arrayidx121, align 1, !dbg !5615
  %68 = load i8*, i8** %buf, align 8, !dbg !5616
  %arrayidx125 = getelementptr i8, i8* %68, i64 3, !dbg !5616
  %69 = load i8, i8* %arrayidx125, align 1, !dbg !5617
  %conv126 = sext i8 %69 to i32, !dbg !5617
  %or127 = or i32 %conv126, 4, !dbg !5617
  %conv128 = trunc i32 %or127 to i8, !dbg !5617
  store i8 %conv128, i8* %arrayidx125, align 1, !dbg !5617
  br label %if.end129, !dbg !5618

if.end129:                                        ; preds = %if.then120, %if.then116
  %70 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5619
  %config130 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %70, i32 0, i32 3, !dbg !5621
  %71 = load i32, i32* %config130, align 4, !dbg !5621
  %and131 = and i32 %71, 1048576, !dbg !5622
  %tobool132 = icmp ne i32 %and131, 0, !dbg !5622
  br i1 %tobool132, label %if.then133, label %if.end138, !dbg !5623

if.then133:                                       ; preds = %if.end129
  %72 = load i8*, i8** %buf, align 8, !dbg !5624
  %arrayidx134 = getelementptr i8, i8* %72, i64 3, !dbg !5624
  %73 = load i8, i8* %arrayidx134, align 1, !dbg !5625
  %conv135 = sext i8 %73 to i32, !dbg !5625
  %and136 = and i32 %conv135, -33, !dbg !5625
  %conv137 = trunc i32 %and136 to i8, !dbg !5625
  store i8 %conv137, i8* %arrayidx134, align 1, !dbg !5625
  br label %if.end138, !dbg !5624

if.end138:                                        ; preds = %if.then133, %if.end129
  br label %if.end139, !dbg !5626

if.end139:                                        ; preds = %if.end138, %if.end114
  ret i32 0, !dbg !5627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_set_insmod(%struct.dvb_frontend* %fe) #0 !dbg !5628 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %buf = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5631, metadata !DIExpression()), !dbg !5632
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5633
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5634
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5634
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5633
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5632
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !5635, metadata !DIExpression()), !dbg !5636
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5637
  %data = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 2, !dbg !5638
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %data, i64 0, i64 0, !dbg !5637
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5636
  %4 = load i32, i32* @port1, align 4, !dbg !5639
  %cmp = icmp ne i32 -1, %4, !dbg !5641
  br i1 %cmp, label %if.then, label %if.end6, !dbg !5642

if.then:                                          ; preds = %entry
  %5 = load i32, i32* @port1, align 4, !dbg !5643
  %tobool = icmp ne i32 %5, 0, !dbg !5643
  br i1 %tobool, label %if.then1, label %if.else, !dbg !5646

if.then1:                                         ; preds = %if.then
  %6 = load i8*, i8** %buf, align 8, !dbg !5647
  %arrayidx = getelementptr i8, i8* %6, i64 1, !dbg !5647
  %7 = load i8, i8* %arrayidx, align 1, !dbg !5648
  %conv = sext i8 %7 to i32, !dbg !5648
  %or = or i32 %conv, 64, !dbg !5648
  %conv2 = trunc i32 %or to i8, !dbg !5648
  store i8 %conv2, i8* %arrayidx, align 1, !dbg !5648
  br label %if.end, !dbg !5647

if.else:                                          ; preds = %if.then
  %8 = load i8*, i8** %buf, align 8, !dbg !5649
  %arrayidx3 = getelementptr i8, i8* %8, i64 1, !dbg !5649
  %9 = load i8, i8* %arrayidx3, align 1, !dbg !5650
  %conv4 = sext i8 %9 to i32, !dbg !5650
  %and = and i32 %conv4, -65, !dbg !5650
  %conv5 = trunc i32 %and to i8, !dbg !5650
  store i8 %conv5, i8* %arrayidx3, align 1, !dbg !5650
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end6, !dbg !5651

if.end6:                                          ; preds = %if.end, %entry
  %10 = load i32, i32* @port2, align 4, !dbg !5652
  %cmp7 = icmp ne i32 -1, %10, !dbg !5654
  br i1 %cmp7, label %if.then9, label %if.end22, !dbg !5655

if.then9:                                         ; preds = %if.end6
  %11 = load i32, i32* @port2, align 4, !dbg !5656
  %tobool10 = icmp ne i32 %11, 0, !dbg !5656
  br i1 %tobool10, label %if.then11, label %if.else16, !dbg !5659

if.then11:                                        ; preds = %if.then9
  %12 = load i8*, i8** %buf, align 8, !dbg !5660
  %arrayidx12 = getelementptr i8, i8* %12, i64 1, !dbg !5660
  %13 = load i8, i8* %arrayidx12, align 1, !dbg !5661
  %conv13 = sext i8 %13 to i32, !dbg !5661
  %or14 = or i32 %conv13, 128, !dbg !5661
  %conv15 = trunc i32 %or14 to i8, !dbg !5661
  store i8 %conv15, i8* %arrayidx12, align 1, !dbg !5661
  br label %if.end21, !dbg !5660

if.else16:                                        ; preds = %if.then9
  %14 = load i8*, i8** %buf, align 8, !dbg !5662
  %arrayidx17 = getelementptr i8, i8* %14, i64 1, !dbg !5662
  %15 = load i8, i8* %arrayidx17, align 1, !dbg !5663
  %conv18 = sext i8 %15 to i32, !dbg !5663
  %and19 = and i32 %conv18, -129, !dbg !5663
  %conv20 = trunc i32 %and19 to i8, !dbg !5663
  store i8 %conv20, i8* %arrayidx17, align 1, !dbg !5663
  br label %if.end21

if.end21:                                         ; preds = %if.else16, %if.then11
  br label %if.end22, !dbg !5664

if.end22:                                         ; preds = %if.end21, %if.end6
  %16 = load i32, i32* @qss, align 4, !dbg !5665
  %cmp23 = icmp ne i32 -1, %16, !dbg !5667
  br i1 %cmp23, label %if.then25, label %if.end38, !dbg !5668

if.then25:                                        ; preds = %if.end22
  %17 = load i32, i32* @qss, align 4, !dbg !5669
  %tobool26 = icmp ne i32 %17, 0, !dbg !5669
  br i1 %tobool26, label %if.then27, label %if.else32, !dbg !5672

if.then27:                                        ; preds = %if.then25
  %18 = load i8*, i8** %buf, align 8, !dbg !5673
  %arrayidx28 = getelementptr i8, i8* %18, i64 1, !dbg !5673
  %19 = load i8, i8* %arrayidx28, align 1, !dbg !5674
  %conv29 = sext i8 %19 to i32, !dbg !5674
  %or30 = or i32 %conv29, 4, !dbg !5674
  %conv31 = trunc i32 %or30 to i8, !dbg !5674
  store i8 %conv31, i8* %arrayidx28, align 1, !dbg !5674
  br label %if.end37, !dbg !5673

if.else32:                                        ; preds = %if.then25
  %20 = load i8*, i8** %buf, align 8, !dbg !5675
  %arrayidx33 = getelementptr i8, i8* %20, i64 1, !dbg !5675
  %21 = load i8, i8* %arrayidx33, align 1, !dbg !5676
  %conv34 = sext i8 %21 to i32, !dbg !5676
  %and35 = and i32 %conv34, -5, !dbg !5676
  %conv36 = trunc i32 %and35 to i8, !dbg !5676
  store i8 %conv36, i8* %arrayidx33, align 1, !dbg !5676
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then27
  br label %if.end38, !dbg !5677

if.end38:                                         ; preds = %if.end37, %if.end22
  %22 = load i32, i32* @adjust, align 4, !dbg !5678
  %cmp39 = icmp ult i32 %22, 32, !dbg !5680
  br i1 %cmp39, label %if.then41, label %if.end50, !dbg !5681

if.then41:                                        ; preds = %if.end38
  %23 = load i8*, i8** %buf, align 8, !dbg !5682
  %arrayidx42 = getelementptr i8, i8* %23, i64 2, !dbg !5682
  %24 = load i8, i8* %arrayidx42, align 1, !dbg !5684
  %conv43 = sext i8 %24 to i32, !dbg !5684
  %and44 = and i32 %conv43, -32, !dbg !5684
  %conv45 = trunc i32 %and44 to i8, !dbg !5684
  store i8 %conv45, i8* %arrayidx42, align 1, !dbg !5684
  %25 = load i32, i32* @adjust, align 4, !dbg !5685
  %26 = load i8*, i8** %buf, align 8, !dbg !5686
  %arrayidx46 = getelementptr i8, i8* %26, i64 2, !dbg !5686
  %27 = load i8, i8* %arrayidx46, align 1, !dbg !5687
  %conv47 = sext i8 %27 to i32, !dbg !5687
  %or48 = or i32 %conv47, %25, !dbg !5687
  %conv49 = trunc i32 %or48 to i8, !dbg !5687
  store i8 %conv49, i8* %arrayidx46, align 1, !dbg !5687
  br label %if.end50, !dbg !5688

if.end50:                                         ; preds = %if.then41, %if.end38
  ret i32 0, !dbg !5689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dump_write_message(%struct.dvb_frontend* %fe, i8* %buf) #0 !dbg !4664 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5692, metadata !DIExpression()), !dbg !5693
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5694, metadata !DIExpression()), !dbg !5695
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5696
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5697
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5697
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5696
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5695
  br label %do.body, !dbg !5698

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5699

do.body1:                                         ; preds = %do.body
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5701
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 0, !dbg !5701
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5701
  %4 = load i8*, i8** %name, align 8, !dbg !5701
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5701
  %i2c_props2 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 0, !dbg !5701
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5701
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5701
  %tobool = icmp ne %struct.i2c_adapter* %6, null, !dbg !5701
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5701

cond.true:                                        ; preds = %do.body1
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5701
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 0, !dbg !5701
  %adap4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5701
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap4, align 8, !dbg !5701
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %8) #8, !dbg !5701
  br label %cond.end, !dbg !5701

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5701

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5701
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5701
  %i2c_props5 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0, !dbg !5701
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props5, i32 0, i32 0, !dbg !5701
  %10 = load i8, i8* %addr, align 8, !dbg !5701
  %conv = zext i8 %10 to i32, !dbg !5701
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5701
  %arrayidx = getelementptr i8, i8* %11, i64 1, !dbg !5701
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5701
  %conv6 = zext i8 %12 to i32, !dbg !5701
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.73, i64 0, i64 0), i8* %4, i32 %cond, i32 %conv, i32 %conv6) #9, !dbg !5701
  br label %do.end, !dbg !5701

do.end:                                           ; preds = %cond.end
  br label %do.end8, !dbg !5699

do.end8:                                          ; preds = %do.end
  br label %do.body9, !dbg !5703

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !5704

do.body10:                                        ; preds = %do.body9
  %13 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5706
  %i2c_props11 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %13, i32 0, i32 0, !dbg !5706
  %name12 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props11, i32 0, i32 3, !dbg !5706
  %14 = load i8*, i8** %name12, align 8, !dbg !5706
  %15 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5706
  %i2c_props13 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %15, i32 0, i32 0, !dbg !5706
  %adap14 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props13, i32 0, i32 1, !dbg !5706
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap14, align 8, !dbg !5706
  %tobool15 = icmp ne %struct.i2c_adapter* %16, null, !dbg !5706
  br i1 %tobool15, label %cond.true16, label %cond.false20, !dbg !5706

cond.true16:                                      ; preds = %do.body10
  %17 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5706
  %i2c_props17 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %17, i32 0, i32 0, !dbg !5706
  %adap18 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props17, i32 0, i32 1, !dbg !5706
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap18, align 8, !dbg !5706
  %call19 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %18) #8, !dbg !5706
  br label %cond.end21, !dbg !5706

cond.false20:                                     ; preds = %do.body10
  br label %cond.end21, !dbg !5706

cond.end21:                                       ; preds = %cond.false20, %cond.true16
  %cond22 = phi i32 [ %call19, %cond.true16 ], [ -1, %cond.false20 ], !dbg !5706
  %19 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5706
  %i2c_props23 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %19, i32 0, i32 0, !dbg !5706
  %addr24 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props23, i32 0, i32 0, !dbg !5706
  %20 = load i8, i8* %addr24, align 8, !dbg !5706
  %conv25 = zext i8 %20 to i32, !dbg !5706
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !5706
  %arrayidx26 = getelementptr i8, i8* %21, i64 1, !dbg !5706
  %22 = load i8, i8* %arrayidx26, align 1, !dbg !5706
  %conv27 = zext i8 %22 to i32, !dbg !5706
  %and = and i32 %conv27, 1, !dbg !5706
  %tobool28 = icmp ne i32 %and, 0, !dbg !5706
  %23 = zext i1 %tobool28 to i64, !dbg !5706
  %cond29 = select i1 %tobool28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.76, i64 0, i64 0), !dbg !5706
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.74, i64 0, i64 0), i8* %14, i32 %cond22, i32 %conv25, i8* %cond29) #9, !dbg !5706
  br label %do.end31, !dbg !5706

do.end31:                                         ; preds = %cond.end21
  br label %do.end32, !dbg !5704

do.end32:                                         ; preds = %do.end31
  br label %do.body33, !dbg !5708

do.body33:                                        ; preds = %do.end32
  br label %do.body34, !dbg !5709

do.body34:                                        ; preds = %do.body33
  %24 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5711
  %i2c_props35 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %24, i32 0, i32 0, !dbg !5711
  %name36 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props35, i32 0, i32 3, !dbg !5711
  %25 = load i8*, i8** %name36, align 8, !dbg !5711
  %26 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5711
  %i2c_props37 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %26, i32 0, i32 0, !dbg !5711
  %adap38 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props37, i32 0, i32 1, !dbg !5711
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap38, align 8, !dbg !5711
  %tobool39 = icmp ne %struct.i2c_adapter* %27, null, !dbg !5711
  br i1 %tobool39, label %cond.true40, label %cond.false44, !dbg !5711

cond.true40:                                      ; preds = %do.body34
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5711
  %i2c_props41 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 0, !dbg !5711
  %adap42 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props41, i32 0, i32 1, !dbg !5711
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap42, align 8, !dbg !5711
  %call43 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %29) #8, !dbg !5711
  br label %cond.end45, !dbg !5711

cond.false44:                                     ; preds = %do.body34
  br label %cond.end45, !dbg !5711

cond.end45:                                       ; preds = %cond.false44, %cond.true40
  %cond46 = phi i32 [ %call43, %cond.true40 ], [ -1, %cond.false44 ], !dbg !5711
  %30 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5711
  %i2c_props47 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %30, i32 0, i32 0, !dbg !5711
  %addr48 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props47, i32 0, i32 0, !dbg !5711
  %31 = load i8, i8* %addr48, align 8, !dbg !5711
  %conv49 = zext i8 %31 to i32, !dbg !5711
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !5711
  %arrayidx50 = getelementptr i8, i8* %32, i64 1, !dbg !5711
  %33 = load i8, i8* %arrayidx50, align 1, !dbg !5711
  %conv51 = zext i8 %33 to i32, !dbg !5711
  %and52 = and i32 %conv51, 2, !dbg !5711
  %tobool53 = icmp ne i32 %and52, 0, !dbg !5711
  %34 = zext i1 %tobool53 to i64, !dbg !5711
  %cond54 = select i1 %tobool53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), !dbg !5711
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.77, i64 0, i64 0), i8* %25, i32 %cond46, i32 %conv49, i8* %cond54) #9, !dbg !5711
  br label %do.end56, !dbg !5711

do.end56:                                         ; preds = %cond.end45
  br label %do.end57, !dbg !5709

do.end57:                                         ; preds = %do.end56
  br label %do.body58, !dbg !5713

do.body58:                                        ; preds = %do.end57
  br label %do.body59, !dbg !5714

do.body59:                                        ; preds = %do.body58
  %35 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5716
  %i2c_props60 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %35, i32 0, i32 0, !dbg !5716
  %name61 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props60, i32 0, i32 3, !dbg !5716
  %36 = load i8*, i8** %name61, align 8, !dbg !5716
  %37 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5716
  %i2c_props62 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %37, i32 0, i32 0, !dbg !5716
  %adap63 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props62, i32 0, i32 1, !dbg !5716
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap63, align 8, !dbg !5716
  %tobool64 = icmp ne %struct.i2c_adapter* %38, null, !dbg !5716
  br i1 %tobool64, label %cond.true65, label %cond.false69, !dbg !5716

cond.true65:                                      ; preds = %do.body59
  %39 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5716
  %i2c_props66 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %39, i32 0, i32 0, !dbg !5716
  %adap67 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props66, i32 0, i32 1, !dbg !5716
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap67, align 8, !dbg !5716
  %call68 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %40) #8, !dbg !5716
  br label %cond.end70, !dbg !5716

cond.false69:                                     ; preds = %do.body59
  br label %cond.end70, !dbg !5716

cond.end70:                                       ; preds = %cond.false69, %cond.true65
  %cond71 = phi i32 [ %call68, %cond.true65 ], [ -1, %cond.false69 ], !dbg !5716
  %41 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5716
  %i2c_props72 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %41, i32 0, i32 0, !dbg !5716
  %addr73 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props72, i32 0, i32 0, !dbg !5716
  %42 = load i8, i8* %addr73, align 8, !dbg !5716
  %conv74 = zext i8 %42 to i32, !dbg !5716
  %43 = load i8*, i8** %buf.addr, align 8, !dbg !5716
  %arrayidx75 = getelementptr i8, i8* %43, i64 1, !dbg !5716
  %44 = load i8, i8* %arrayidx75, align 1, !dbg !5716
  %conv76 = zext i8 %44 to i32, !dbg !5716
  %and77 = and i32 %conv76, 4, !dbg !5716
  %tobool78 = icmp ne i32 %and77, 0, !dbg !5716
  %45 = zext i1 %tobool78 to i64, !dbg !5716
  %cond79 = select i1 %tobool78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.80, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.81, i64 0, i64 0), !dbg !5716
  %call80 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i64 0, i64 0), i8* %36, i32 %cond71, i32 %conv74, i8* %cond79) #9, !dbg !5716
  br label %do.end81, !dbg !5716

do.end81:                                         ; preds = %cond.end70
  br label %do.end82, !dbg !5714

do.end82:                                         ; preds = %do.end81
  br label %do.body83, !dbg !5718

do.body83:                                        ; preds = %do.end82
  br label %do.body84, !dbg !5719

do.body84:                                        ; preds = %do.body83
  %46 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5721
  %i2c_props85 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %46, i32 0, i32 0, !dbg !5721
  %name86 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props85, i32 0, i32 3, !dbg !5721
  %47 = load i8*, i8** %name86, align 8, !dbg !5721
  %48 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5721
  %i2c_props87 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %48, i32 0, i32 0, !dbg !5721
  %adap88 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props87, i32 0, i32 1, !dbg !5721
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap88, align 8, !dbg !5721
  %tobool89 = icmp ne %struct.i2c_adapter* %49, null, !dbg !5721
  br i1 %tobool89, label %cond.true90, label %cond.false94, !dbg !5721

cond.true90:                                      ; preds = %do.body84
  %50 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5721
  %i2c_props91 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %50, i32 0, i32 0, !dbg !5721
  %adap92 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props91, i32 0, i32 1, !dbg !5721
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap92, align 8, !dbg !5721
  %call93 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %51) #8, !dbg !5721
  br label %cond.end95, !dbg !5721

cond.false94:                                     ; preds = %do.body84
  br label %cond.end95, !dbg !5721

cond.end95:                                       ; preds = %cond.false94, %cond.true90
  %cond96 = phi i32 [ %call93, %cond.true90 ], [ -1, %cond.false94 ], !dbg !5721
  %52 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5721
  %i2c_props97 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %52, i32 0, i32 0, !dbg !5721
  %addr98 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props97, i32 0, i32 0, !dbg !5721
  %53 = load i8, i8* %addr98, align 8, !dbg !5721
  %conv99 = zext i8 %53 to i32, !dbg !5721
  %54 = load i8*, i8** %buf.addr, align 8, !dbg !5721
  %arrayidx100 = getelementptr i8, i8* %54, i64 1, !dbg !5721
  %55 = load i8, i8* %arrayidx100, align 1, !dbg !5721
  %conv101 = zext i8 %55 to i32, !dbg !5721
  %and102 = and i32 %conv101, 24, !dbg !5721
  %shr = ashr i32 %and102, 3, !dbg !5721
  %idxprom = sext i32 %shr to i64, !dbg !5721
  %arrayidx103 = getelementptr [4 x i8*], [4 x i8*]* @dump_write_message.sound, i64 0, i64 %idxprom, !dbg !5721
  %56 = load i8*, i8** %arrayidx103, align 8, !dbg !5721
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i64 0, i64 0), i8* %47, i32 %cond96, i32 %conv99, i8* %56) #9, !dbg !5721
  br label %do.end105, !dbg !5721

do.end105:                                        ; preds = %cond.end95
  br label %do.end106, !dbg !5719

do.end106:                                        ; preds = %do.end105
  br label %do.body107, !dbg !5723

do.body107:                                       ; preds = %do.end106
  br label %do.body108, !dbg !5724

do.body108:                                       ; preds = %do.body107
  %57 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5726
  %i2c_props109 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %57, i32 0, i32 0, !dbg !5726
  %name110 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props109, i32 0, i32 3, !dbg !5726
  %58 = load i8*, i8** %name110, align 8, !dbg !5726
  %59 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5726
  %i2c_props111 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %59, i32 0, i32 0, !dbg !5726
  %adap112 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props111, i32 0, i32 1, !dbg !5726
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap112, align 8, !dbg !5726
  %tobool113 = icmp ne %struct.i2c_adapter* %60, null, !dbg !5726
  br i1 %tobool113, label %cond.true114, label %cond.false118, !dbg !5726

cond.true114:                                     ; preds = %do.body108
  %61 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5726
  %i2c_props115 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %61, i32 0, i32 0, !dbg !5726
  %adap116 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props115, i32 0, i32 1, !dbg !5726
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap116, align 8, !dbg !5726
  %call117 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %62) #8, !dbg !5726
  br label %cond.end119, !dbg !5726

cond.false118:                                    ; preds = %do.body108
  br label %cond.end119, !dbg !5726

cond.end119:                                      ; preds = %cond.false118, %cond.true114
  %cond120 = phi i32 [ %call117, %cond.true114 ], [ -1, %cond.false118 ], !dbg !5726
  %63 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5726
  %i2c_props121 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %63, i32 0, i32 0, !dbg !5726
  %addr122 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props121, i32 0, i32 0, !dbg !5726
  %64 = load i8, i8* %addr122, align 8, !dbg !5726
  %conv123 = zext i8 %64 to i32, !dbg !5726
  %65 = load i8*, i8** %buf.addr, align 8, !dbg !5726
  %arrayidx124 = getelementptr i8, i8* %65, i64 1, !dbg !5726
  %66 = load i8, i8* %arrayidx124, align 1, !dbg !5726
  %conv125 = zext i8 %66 to i32, !dbg !5726
  %and126 = and i32 %conv125, 32, !dbg !5726
  %tobool127 = icmp ne i32 %and126, 0, !dbg !5726
  %67 = zext i1 %tobool127 to i64, !dbg !5726
  %cond128 = select i1 %tobool127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), !dbg !5726
  %call129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.83, i64 0, i64 0), i8* %58, i32 %cond120, i32 %conv123, i8* %cond128) #9, !dbg !5726
  br label %do.end130, !dbg !5726

do.end130:                                        ; preds = %cond.end119
  br label %do.end131, !dbg !5724

do.end131:                                        ; preds = %do.end130
  br label %do.body132, !dbg !5728

do.body132:                                       ; preds = %do.end131
  br label %do.body133, !dbg !5729

do.body133:                                       ; preds = %do.body132
  %68 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5731
  %i2c_props134 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %68, i32 0, i32 0, !dbg !5731
  %name135 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props134, i32 0, i32 3, !dbg !5731
  %69 = load i8*, i8** %name135, align 8, !dbg !5731
  %70 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5731
  %i2c_props136 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %70, i32 0, i32 0, !dbg !5731
  %adap137 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props136, i32 0, i32 1, !dbg !5731
  %71 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap137, align 8, !dbg !5731
  %tobool138 = icmp ne %struct.i2c_adapter* %71, null, !dbg !5731
  br i1 %tobool138, label %cond.true139, label %cond.false143, !dbg !5731

cond.true139:                                     ; preds = %do.body133
  %72 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5731
  %i2c_props140 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %72, i32 0, i32 0, !dbg !5731
  %adap141 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props140, i32 0, i32 1, !dbg !5731
  %73 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap141, align 8, !dbg !5731
  %call142 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %73) #8, !dbg !5731
  br label %cond.end144, !dbg !5731

cond.false143:                                    ; preds = %do.body133
  br label %cond.end144, !dbg !5731

cond.end144:                                      ; preds = %cond.false143, %cond.true139
  %cond145 = phi i32 [ %call142, %cond.true139 ], [ -1, %cond.false143 ], !dbg !5731
  %74 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5731
  %i2c_props146 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %74, i32 0, i32 0, !dbg !5731
  %addr147 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props146, i32 0, i32 0, !dbg !5731
  %75 = load i8, i8* %addr147, align 8, !dbg !5731
  %conv148 = zext i8 %75 to i32, !dbg !5731
  %76 = load i8*, i8** %buf.addr, align 8, !dbg !5731
  %arrayidx149 = getelementptr i8, i8* %76, i64 1, !dbg !5731
  %77 = load i8, i8* %arrayidx149, align 1, !dbg !5731
  %conv150 = zext i8 %77 to i32, !dbg !5731
  %and151 = and i32 %conv150, 64, !dbg !5731
  %tobool152 = icmp ne i32 %and151, 0, !dbg !5731
  %78 = zext i1 %tobool152 to i64, !dbg !5731
  %cond153 = select i1 %tobool152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i64 0, i64 0), !dbg !5731
  %call154 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.84, i64 0, i64 0), i8* %69, i32 %cond145, i32 %conv148, i8* %cond153) #9, !dbg !5731
  br label %do.end155, !dbg !5731

do.end155:                                        ; preds = %cond.end144
  br label %do.end156, !dbg !5729

do.end156:                                        ; preds = %do.end155
  br label %do.body157, !dbg !5733

do.body157:                                       ; preds = %do.end156
  br label %do.body158, !dbg !5734

do.body158:                                       ; preds = %do.body157
  %79 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5736
  %i2c_props159 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %79, i32 0, i32 0, !dbg !5736
  %name160 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props159, i32 0, i32 3, !dbg !5736
  %80 = load i8*, i8** %name160, align 8, !dbg !5736
  %81 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5736
  %i2c_props161 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %81, i32 0, i32 0, !dbg !5736
  %adap162 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props161, i32 0, i32 1, !dbg !5736
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap162, align 8, !dbg !5736
  %tobool163 = icmp ne %struct.i2c_adapter* %82, null, !dbg !5736
  br i1 %tobool163, label %cond.true164, label %cond.false168, !dbg !5736

cond.true164:                                     ; preds = %do.body158
  %83 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5736
  %i2c_props165 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %83, i32 0, i32 0, !dbg !5736
  %adap166 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props165, i32 0, i32 1, !dbg !5736
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap166, align 8, !dbg !5736
  %call167 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %84) #8, !dbg !5736
  br label %cond.end169, !dbg !5736

cond.false168:                                    ; preds = %do.body158
  br label %cond.end169, !dbg !5736

cond.end169:                                      ; preds = %cond.false168, %cond.true164
  %cond170 = phi i32 [ %call167, %cond.true164 ], [ -1, %cond.false168 ], !dbg !5736
  %85 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5736
  %i2c_props171 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %85, i32 0, i32 0, !dbg !5736
  %addr172 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props171, i32 0, i32 0, !dbg !5736
  %86 = load i8, i8* %addr172, align 8, !dbg !5736
  %conv173 = zext i8 %86 to i32, !dbg !5736
  %87 = load i8*, i8** %buf.addr, align 8, !dbg !5736
  %arrayidx174 = getelementptr i8, i8* %87, i64 1, !dbg !5736
  %88 = load i8, i8* %arrayidx174, align 1, !dbg !5736
  %conv175 = zext i8 %88 to i32, !dbg !5736
  %and176 = and i32 %conv175, 128, !dbg !5736
  %tobool177 = icmp ne i32 %and176, 0, !dbg !5736
  %89 = zext i1 %tobool177 to i64, !dbg !5736
  %cond178 = select i1 %tobool177, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.85, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i64 0, i64 0), !dbg !5736
  %call179 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.87, i64 0, i64 0), i8* %80, i32 %cond170, i32 %conv173, i8* %cond178) #9, !dbg !5736
  br label %do.end180, !dbg !5736

do.end180:                                        ; preds = %cond.end169
  br label %do.end181, !dbg !5734

do.end181:                                        ; preds = %do.end180
  br label %do.body182, !dbg !5738

do.body182:                                       ; preds = %do.end181
  br label %do.body183, !dbg !5739

do.body183:                                       ; preds = %do.body182
  %90 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5741
  %i2c_props184 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %90, i32 0, i32 0, !dbg !5741
  %name185 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props184, i32 0, i32 3, !dbg !5741
  %91 = load i8*, i8** %name185, align 8, !dbg !5741
  %92 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5741
  %i2c_props186 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %92, i32 0, i32 0, !dbg !5741
  %adap187 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props186, i32 0, i32 1, !dbg !5741
  %93 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap187, align 8, !dbg !5741
  %tobool188 = icmp ne %struct.i2c_adapter* %93, null, !dbg !5741
  br i1 %tobool188, label %cond.true189, label %cond.false193, !dbg !5741

cond.true189:                                     ; preds = %do.body183
  %94 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5741
  %i2c_props190 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %94, i32 0, i32 0, !dbg !5741
  %adap191 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props190, i32 0, i32 1, !dbg !5741
  %95 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap191, align 8, !dbg !5741
  %call192 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %95) #8, !dbg !5741
  br label %cond.end194, !dbg !5741

cond.false193:                                    ; preds = %do.body183
  br label %cond.end194, !dbg !5741

cond.end194:                                      ; preds = %cond.false193, %cond.true189
  %cond195 = phi i32 [ %call192, %cond.true189 ], [ -1, %cond.false193 ], !dbg !5741
  %96 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5741
  %i2c_props196 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %96, i32 0, i32 0, !dbg !5741
  %addr197 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props196, i32 0, i32 0, !dbg !5741
  %97 = load i8, i8* %addr197, align 8, !dbg !5741
  %conv198 = zext i8 %97 to i32, !dbg !5741
  %98 = load i8*, i8** %buf.addr, align 8, !dbg !5741
  %arrayidx199 = getelementptr i8, i8* %98, i64 2, !dbg !5741
  %99 = load i8, i8* %arrayidx199, align 1, !dbg !5741
  %conv200 = zext i8 %99 to i32, !dbg !5741
  %call201 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.88, i64 0, i64 0), i8* %91, i32 %cond195, i32 %conv198, i32 %conv200) #9, !dbg !5741
  br label %do.end202, !dbg !5741

do.end202:                                        ; preds = %cond.end194
  br label %do.end203, !dbg !5739

do.end203:                                        ; preds = %do.end202
  br label %do.body204, !dbg !5743

do.body204:                                       ; preds = %do.end203
  br label %do.body205, !dbg !5744

do.body205:                                       ; preds = %do.body204
  %100 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5746
  %i2c_props206 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %100, i32 0, i32 0, !dbg !5746
  %name207 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props206, i32 0, i32 3, !dbg !5746
  %101 = load i8*, i8** %name207, align 8, !dbg !5746
  %102 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5746
  %i2c_props208 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %102, i32 0, i32 0, !dbg !5746
  %adap209 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props208, i32 0, i32 1, !dbg !5746
  %103 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap209, align 8, !dbg !5746
  %tobool210 = icmp ne %struct.i2c_adapter* %103, null, !dbg !5746
  br i1 %tobool210, label %cond.true211, label %cond.false215, !dbg !5746

cond.true211:                                     ; preds = %do.body205
  %104 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5746
  %i2c_props212 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %104, i32 0, i32 0, !dbg !5746
  %adap213 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props212, i32 0, i32 1, !dbg !5746
  %105 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap213, align 8, !dbg !5746
  %call214 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %105) #8, !dbg !5746
  br label %cond.end216, !dbg !5746

cond.false215:                                    ; preds = %do.body205
  br label %cond.end216, !dbg !5746

cond.end216:                                      ; preds = %cond.false215, %cond.true211
  %cond217 = phi i32 [ %call214, %cond.true211 ], [ -1, %cond.false215 ], !dbg !5746
  %106 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5746
  %i2c_props218 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %106, i32 0, i32 0, !dbg !5746
  %addr219 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props218, i32 0, i32 0, !dbg !5746
  %107 = load i8, i8* %addr219, align 8, !dbg !5746
  %conv220 = zext i8 %107 to i32, !dbg !5746
  %108 = load i8*, i8** %buf.addr, align 8, !dbg !5746
  %arrayidx221 = getelementptr i8, i8* %108, i64 2, !dbg !5746
  %109 = load i8, i8* %arrayidx221, align 1, !dbg !5746
  %conv222 = zext i8 %109 to i32, !dbg !5746
  %and223 = and i32 %conv222, 31, !dbg !5746
  %idxprom224 = sext i32 %and223 to i64, !dbg !5746
  %arrayidx225 = getelementptr [32 x i8*], [32 x i8*]* @dump_write_message.adjust, i64 0, i64 %idxprom224, !dbg !5746
  %110 = load i8*, i8** %arrayidx225, align 8, !dbg !5746
  %call226 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.89, i64 0, i64 0), i8* %101, i32 %cond217, i32 %conv220, i8* %110) #9, !dbg !5746
  br label %do.end227, !dbg !5746

do.end227:                                        ; preds = %cond.end216
  br label %do.end228, !dbg !5744

do.end228:                                        ; preds = %do.end227
  br label %do.body229, !dbg !5748

do.body229:                                       ; preds = %do.end228
  br label %do.body230, !dbg !5749

do.body230:                                       ; preds = %do.body229
  %111 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5751
  %i2c_props231 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %111, i32 0, i32 0, !dbg !5751
  %name232 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props231, i32 0, i32 3, !dbg !5751
  %112 = load i8*, i8** %name232, align 8, !dbg !5751
  %113 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5751
  %i2c_props233 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %113, i32 0, i32 0, !dbg !5751
  %adap234 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props233, i32 0, i32 1, !dbg !5751
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap234, align 8, !dbg !5751
  %tobool235 = icmp ne %struct.i2c_adapter* %114, null, !dbg !5751
  br i1 %tobool235, label %cond.true236, label %cond.false240, !dbg !5751

cond.true236:                                     ; preds = %do.body230
  %115 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5751
  %i2c_props237 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %115, i32 0, i32 0, !dbg !5751
  %adap238 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props237, i32 0, i32 1, !dbg !5751
  %116 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap238, align 8, !dbg !5751
  %call239 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %116) #8, !dbg !5751
  br label %cond.end241, !dbg !5751

cond.false240:                                    ; preds = %do.body230
  br label %cond.end241, !dbg !5751

cond.end241:                                      ; preds = %cond.false240, %cond.true236
  %cond242 = phi i32 [ %call239, %cond.true236 ], [ -1, %cond.false240 ], !dbg !5751
  %117 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5751
  %i2c_props243 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %117, i32 0, i32 0, !dbg !5751
  %addr244 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props243, i32 0, i32 0, !dbg !5751
  %118 = load i8, i8* %addr244, align 8, !dbg !5751
  %conv245 = zext i8 %118 to i32, !dbg !5751
  %119 = load i8*, i8** %buf.addr, align 8, !dbg !5751
  %arrayidx246 = getelementptr i8, i8* %119, i64 2, !dbg !5751
  %120 = load i8, i8* %arrayidx246, align 1, !dbg !5751
  %conv247 = zext i8 %120 to i32, !dbg !5751
  %and248 = and i32 %conv247, 96, !dbg !5751
  %shr249 = ashr i32 %and248, 5, !dbg !5751
  %idxprom250 = sext i32 %shr249 to i64, !dbg !5751
  %arrayidx251 = getelementptr [4 x i8*], [4 x i8*]* @dump_write_message.deemph, i64 0, i64 %idxprom250, !dbg !5751
  %121 = load i8*, i8** %arrayidx251, align 8, !dbg !5751
  %call252 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.90, i64 0, i64 0), i8* %112, i32 %cond242, i32 %conv245, i8* %121) #9, !dbg !5751
  br label %do.end253, !dbg !5751

do.end253:                                        ; preds = %cond.end241
  br label %do.end254, !dbg !5749

do.end254:                                        ; preds = %do.end253
  br label %do.body255, !dbg !5753

do.body255:                                       ; preds = %do.end254
  br label %do.body256, !dbg !5754

do.body256:                                       ; preds = %do.body255
  %122 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5756
  %i2c_props257 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %122, i32 0, i32 0, !dbg !5756
  %name258 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props257, i32 0, i32 3, !dbg !5756
  %123 = load i8*, i8** %name258, align 8, !dbg !5756
  %124 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5756
  %i2c_props259 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %124, i32 0, i32 0, !dbg !5756
  %adap260 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props259, i32 0, i32 1, !dbg !5756
  %125 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap260, align 8, !dbg !5756
  %tobool261 = icmp ne %struct.i2c_adapter* %125, null, !dbg !5756
  br i1 %tobool261, label %cond.true262, label %cond.false266, !dbg !5756

cond.true262:                                     ; preds = %do.body256
  %126 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5756
  %i2c_props263 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %126, i32 0, i32 0, !dbg !5756
  %adap264 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props263, i32 0, i32 1, !dbg !5756
  %127 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap264, align 8, !dbg !5756
  %call265 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %127) #8, !dbg !5756
  br label %cond.end267, !dbg !5756

cond.false266:                                    ; preds = %do.body256
  br label %cond.end267, !dbg !5756

cond.end267:                                      ; preds = %cond.false266, %cond.true262
  %cond268 = phi i32 [ %call265, %cond.true262 ], [ -1, %cond.false266 ], !dbg !5756
  %128 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5756
  %i2c_props269 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %128, i32 0, i32 0, !dbg !5756
  %addr270 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props269, i32 0, i32 0, !dbg !5756
  %129 = load i8, i8* %addr270, align 8, !dbg !5756
  %conv271 = zext i8 %129 to i32, !dbg !5756
  %130 = load i8*, i8** %buf.addr, align 8, !dbg !5756
  %arrayidx272 = getelementptr i8, i8* %130, i64 2, !dbg !5756
  %131 = load i8, i8* %arrayidx272, align 1, !dbg !5756
  %conv273 = zext i8 %131 to i32, !dbg !5756
  %and274 = and i32 %conv273, 128, !dbg !5756
  %tobool275 = icmp ne i32 %and274, 0, !dbg !5756
  %132 = zext i1 %tobool275 to i64, !dbg !5756
  %cond276 = select i1 %tobool275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), !dbg !5756
  %call277 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.91, i64 0, i64 0), i8* %123, i32 %cond268, i32 %conv271, i8* %cond276) #9, !dbg !5756
  br label %do.end278, !dbg !5756

do.end278:                                        ; preds = %cond.end267
  br label %do.end279, !dbg !5754

do.end279:                                        ; preds = %do.end278
  br label %do.body280, !dbg !5758

do.body280:                                       ; preds = %do.end279
  br label %do.body281, !dbg !5759

do.body281:                                       ; preds = %do.body280
  %133 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5761
  %i2c_props282 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %133, i32 0, i32 0, !dbg !5761
  %name283 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props282, i32 0, i32 3, !dbg !5761
  %134 = load i8*, i8** %name283, align 8, !dbg !5761
  %135 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5761
  %i2c_props284 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %135, i32 0, i32 0, !dbg !5761
  %adap285 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props284, i32 0, i32 1, !dbg !5761
  %136 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap285, align 8, !dbg !5761
  %tobool286 = icmp ne %struct.i2c_adapter* %136, null, !dbg !5761
  br i1 %tobool286, label %cond.true287, label %cond.false291, !dbg !5761

cond.true287:                                     ; preds = %do.body281
  %137 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5761
  %i2c_props288 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %137, i32 0, i32 0, !dbg !5761
  %adap289 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props288, i32 0, i32 1, !dbg !5761
  %138 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap289, align 8, !dbg !5761
  %call290 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %138) #8, !dbg !5761
  br label %cond.end292, !dbg !5761

cond.false291:                                    ; preds = %do.body281
  br label %cond.end292, !dbg !5761

cond.end292:                                      ; preds = %cond.false291, %cond.true287
  %cond293 = phi i32 [ %call290, %cond.true287 ], [ -1, %cond.false291 ], !dbg !5761
  %139 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5761
  %i2c_props294 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %139, i32 0, i32 0, !dbg !5761
  %addr295 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props294, i32 0, i32 0, !dbg !5761
  %140 = load i8, i8* %addr295, align 8, !dbg !5761
  %conv296 = zext i8 %140 to i32, !dbg !5761
  %141 = load i8*, i8** %buf.addr, align 8, !dbg !5761
  %arrayidx297 = getelementptr i8, i8* %141, i64 3, !dbg !5761
  %142 = load i8, i8* %arrayidx297, align 1, !dbg !5761
  %conv298 = zext i8 %142 to i32, !dbg !5761
  %call299 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.92, i64 0, i64 0), i8* %134, i32 %cond293, i32 %conv296, i32 %conv298) #9, !dbg !5761
  br label %do.end300, !dbg !5761

do.end300:                                        ; preds = %cond.end292
  br label %do.end301, !dbg !5759

do.end301:                                        ; preds = %do.end300
  br label %do.body302, !dbg !5763

do.body302:                                       ; preds = %do.end301
  br label %do.body303, !dbg !5764

do.body303:                                       ; preds = %do.body302
  %143 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5766
  %i2c_props304 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %143, i32 0, i32 0, !dbg !5766
  %name305 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props304, i32 0, i32 3, !dbg !5766
  %144 = load i8*, i8** %name305, align 8, !dbg !5766
  %145 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5766
  %i2c_props306 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %145, i32 0, i32 0, !dbg !5766
  %adap307 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props306, i32 0, i32 1, !dbg !5766
  %146 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap307, align 8, !dbg !5766
  %tobool308 = icmp ne %struct.i2c_adapter* %146, null, !dbg !5766
  br i1 %tobool308, label %cond.true309, label %cond.false313, !dbg !5766

cond.true309:                                     ; preds = %do.body303
  %147 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5766
  %i2c_props310 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %147, i32 0, i32 0, !dbg !5766
  %adap311 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props310, i32 0, i32 1, !dbg !5766
  %148 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap311, align 8, !dbg !5766
  %call312 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %148) #8, !dbg !5766
  br label %cond.end314, !dbg !5766

cond.false313:                                    ; preds = %do.body303
  br label %cond.end314, !dbg !5766

cond.end314:                                      ; preds = %cond.false313, %cond.true309
  %cond315 = phi i32 [ %call312, %cond.true309 ], [ -1, %cond.false313 ], !dbg !5766
  %149 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5766
  %i2c_props316 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %149, i32 0, i32 0, !dbg !5766
  %addr317 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props316, i32 0, i32 0, !dbg !5766
  %150 = load i8, i8* %addr317, align 8, !dbg !5766
  %conv318 = zext i8 %150 to i32, !dbg !5766
  %151 = load i8*, i8** %buf.addr, align 8, !dbg !5766
  %arrayidx319 = getelementptr i8, i8* %151, i64 3, !dbg !5766
  %152 = load i8, i8* %arrayidx319, align 1, !dbg !5766
  %conv320 = zext i8 %152 to i32, !dbg !5766
  %and321 = and i32 %conv320, 3, !dbg !5766
  %idxprom322 = sext i32 %and321 to i64, !dbg !5766
  %arrayidx323 = getelementptr [4 x i8*], [4 x i8*]* @dump_write_message.carrier, i64 0, i64 %idxprom322, !dbg !5766
  %153 = load i8*, i8** %arrayidx323, align 8, !dbg !5766
  %call324 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.93, i64 0, i64 0), i8* %144, i32 %cond315, i32 %conv318, i8* %153) #9, !dbg !5766
  br label %do.end325, !dbg !5766

do.end325:                                        ; preds = %cond.end314
  br label %do.end326, !dbg !5764

do.end326:                                        ; preds = %do.end325
  br label %do.body327, !dbg !5768

do.body327:                                       ; preds = %do.end326
  br label %do.body328, !dbg !5769

do.body328:                                       ; preds = %do.body327
  %154 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5771
  %i2c_props329 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %154, i32 0, i32 0, !dbg !5771
  %name330 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props329, i32 0, i32 3, !dbg !5771
  %155 = load i8*, i8** %name330, align 8, !dbg !5771
  %156 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5771
  %i2c_props331 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %156, i32 0, i32 0, !dbg !5771
  %adap332 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props331, i32 0, i32 1, !dbg !5771
  %157 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap332, align 8, !dbg !5771
  %tobool333 = icmp ne %struct.i2c_adapter* %157, null, !dbg !5771
  br i1 %tobool333, label %cond.true334, label %cond.false338, !dbg !5771

cond.true334:                                     ; preds = %do.body328
  %158 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5771
  %i2c_props335 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %158, i32 0, i32 0, !dbg !5771
  %adap336 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props335, i32 0, i32 1, !dbg !5771
  %159 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap336, align 8, !dbg !5771
  %call337 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %159) #8, !dbg !5771
  br label %cond.end339, !dbg !5771

cond.false338:                                    ; preds = %do.body328
  br label %cond.end339, !dbg !5771

cond.end339:                                      ; preds = %cond.false338, %cond.true334
  %cond340 = phi i32 [ %call337, %cond.true334 ], [ -1, %cond.false338 ], !dbg !5771
  %160 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5771
  %i2c_props341 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %160, i32 0, i32 0, !dbg !5771
  %addr342 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props341, i32 0, i32 0, !dbg !5771
  %161 = load i8, i8* %addr342, align 8, !dbg !5771
  %conv343 = zext i8 %161 to i32, !dbg !5771
  %162 = load i8*, i8** %buf.addr, align 8, !dbg !5771
  %arrayidx344 = getelementptr i8, i8* %162, i64 3, !dbg !5771
  %163 = load i8, i8* %arrayidx344, align 1, !dbg !5771
  %conv345 = zext i8 %163 to i32, !dbg !5771
  %and346 = and i32 %conv345, 64, !dbg !5771
  %tobool347 = icmp ne i32 %and346, 0, !dbg !5771
  %164 = zext i1 %tobool347 to i64, !dbg !5771
  %cond348 = select i1 %tobool347, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.95, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i64 0, i64 0), !dbg !5771
  %call349 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.94, i64 0, i64 0), i8* %155, i32 %cond340, i32 %conv343, i8* %cond348) #9, !dbg !5771
  br label %do.end350, !dbg !5771

do.end350:                                        ; preds = %cond.end339
  br label %do.end351, !dbg !5769

do.end351:                                        ; preds = %do.end350
  %165 = load i8*, i8** %buf.addr, align 8, !dbg !5773
  %arrayidx352 = getelementptr i8, i8* %165, i64 1, !dbg !5773
  %166 = load i8, i8* %arrayidx352, align 1, !dbg !5773
  %conv353 = zext i8 %166 to i32, !dbg !5773
  %and354 = and i32 %conv353, 8, !dbg !5775
  %tobool355 = icmp ne i32 %and354, 0, !dbg !5775
  br i1 %tobool355, label %if.then, label %if.else, !dbg !5776

if.then:                                          ; preds = %do.end351
  br label %do.body356, !dbg !5777

do.body356:                                       ; preds = %if.then
  br label %do.body357, !dbg !5779

do.body357:                                       ; preds = %do.body356
  %167 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5781
  %i2c_props358 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %167, i32 0, i32 0, !dbg !5781
  %name359 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props358, i32 0, i32 3, !dbg !5781
  %168 = load i8*, i8** %name359, align 8, !dbg !5781
  %169 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5781
  %i2c_props360 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %169, i32 0, i32 0, !dbg !5781
  %adap361 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props360, i32 0, i32 1, !dbg !5781
  %170 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap361, align 8, !dbg !5781
  %tobool362 = icmp ne %struct.i2c_adapter* %170, null, !dbg !5781
  br i1 %tobool362, label %cond.true363, label %cond.false367, !dbg !5781

cond.true363:                                     ; preds = %do.body357
  %171 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5781
  %i2c_props364 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %171, i32 0, i32 0, !dbg !5781
  %adap365 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props364, i32 0, i32 1, !dbg !5781
  %172 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap365, align 8, !dbg !5781
  %call366 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %172) #8, !dbg !5781
  br label %cond.end368, !dbg !5781

cond.false367:                                    ; preds = %do.body357
  br label %cond.end368, !dbg !5781

cond.end368:                                      ; preds = %cond.false367, %cond.true363
  %cond369 = phi i32 [ %call366, %cond.true363 ], [ -1, %cond.false367 ], !dbg !5781
  %173 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5781
  %i2c_props370 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %173, i32 0, i32 0, !dbg !5781
  %addr371 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props370, i32 0, i32 0, !dbg !5781
  %174 = load i8, i8* %addr371, align 8, !dbg !5781
  %conv372 = zext i8 %174 to i32, !dbg !5781
  %175 = load i8*, i8** %buf.addr, align 8, !dbg !5781
  %arrayidx373 = getelementptr i8, i8* %175, i64 3, !dbg !5781
  %176 = load i8, i8* %arrayidx373, align 1, !dbg !5781
  %conv374 = zext i8 %176 to i32, !dbg !5781
  %and375 = and i32 %conv374, 12, !dbg !5781
  %shr376 = ashr i32 %and375, 2, !dbg !5781
  %idxprom377 = sext i32 %shr376 to i64, !dbg !5781
  %arrayidx378 = getelementptr [4 x i8*], [4 x i8*]* @dump_write_message.rif, i64 0, i64 %idxprom377, !dbg !5781
  %177 = load i8*, i8** %arrayidx378, align 8, !dbg !5781
  %call379 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.97, i64 0, i64 0), i8* %168, i32 %cond369, i32 %conv372, i8* %177) #9, !dbg !5781
  br label %do.end380, !dbg !5781

do.end380:                                        ; preds = %cond.end368
  br label %do.end381, !dbg !5779

do.end381:                                        ; preds = %do.end380
  br label %do.body382, !dbg !5783

do.body382:                                       ; preds = %do.end381
  br label %do.body383, !dbg !5784

do.body383:                                       ; preds = %do.body382
  %178 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5786
  %i2c_props384 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %178, i32 0, i32 0, !dbg !5786
  %name385 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props384, i32 0, i32 3, !dbg !5786
  %179 = load i8*, i8** %name385, align 8, !dbg !5786
  %180 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5786
  %i2c_props386 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %180, i32 0, i32 0, !dbg !5786
  %adap387 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props386, i32 0, i32 1, !dbg !5786
  %181 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap387, align 8, !dbg !5786
  %tobool388 = icmp ne %struct.i2c_adapter* %181, null, !dbg !5786
  br i1 %tobool388, label %cond.true389, label %cond.false393, !dbg !5786

cond.true389:                                     ; preds = %do.body383
  %182 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5786
  %i2c_props390 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %182, i32 0, i32 0, !dbg !5786
  %adap391 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props390, i32 0, i32 1, !dbg !5786
  %183 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap391, align 8, !dbg !5786
  %call392 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %183) #8, !dbg !5786
  br label %cond.end394, !dbg !5786

cond.false393:                                    ; preds = %do.body383
  br label %cond.end394, !dbg !5786

cond.end394:                                      ; preds = %cond.false393, %cond.true389
  %cond395 = phi i32 [ %call392, %cond.true389 ], [ -1, %cond.false393 ], !dbg !5786
  %184 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5786
  %i2c_props396 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %184, i32 0, i32 0, !dbg !5786
  %addr397 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props396, i32 0, i32 0, !dbg !5786
  %185 = load i8, i8* %addr397, align 8, !dbg !5786
  %conv398 = zext i8 %185 to i32, !dbg !5786
  %186 = load i8*, i8** %buf.addr, align 8, !dbg !5786
  %arrayidx399 = getelementptr i8, i8* %186, i64 3, !dbg !5786
  %187 = load i8, i8* %arrayidx399, align 1, !dbg !5786
  %conv400 = zext i8 %187 to i32, !dbg !5786
  %and401 = and i32 %conv400, 128, !dbg !5786
  %tobool402 = icmp ne i32 %and401, 0, !dbg !5786
  br i1 %tobool402, label %cond.true403, label %cond.false409, !dbg !5786

cond.true403:                                     ; preds = %cond.end394
  %188 = load i8*, i8** %buf.addr, align 8, !dbg !5786
  %arrayidx404 = getelementptr i8, i8* %188, i64 3, !dbg !5786
  %189 = load i8, i8* %arrayidx404, align 1, !dbg !5786
  %conv405 = zext i8 %189 to i32, !dbg !5786
  %and406 = and i32 %conv405, 16, !dbg !5786
  %tobool407 = icmp ne i32 %and406, 0, !dbg !5786
  %190 = zext i1 %tobool407 to i64, !dbg !5786
  %cond408 = select i1 %tobool407, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0), !dbg !5786
  br label %cond.end410, !dbg !5786

cond.false409:                                    ; preds = %cond.end394
  br label %cond.end410, !dbg !5786

cond.end410:                                      ; preds = %cond.false409, %cond.true403
  %cond411 = phi i8* [ %cond408, %cond.true403 ], [ getelementptr inbounds ([21 x i8], [21 x i8]* @.str.101, i64 0, i64 0), %cond.false409 ], !dbg !5786
  %call412 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.98, i64 0, i64 0), i8* %179, i32 %cond395, i32 %conv398, i8* %cond411) #9, !dbg !5786
  br label %do.end413, !dbg !5786

do.end413:                                        ; preds = %cond.end410
  br label %do.end414, !dbg !5784

do.end414:                                        ; preds = %do.end413
  br label %if.end, !dbg !5788

if.else:                                          ; preds = %do.end351
  br label %do.body415, !dbg !5789

do.body415:                                       ; preds = %if.else
  br label %do.body416, !dbg !5791

do.body416:                                       ; preds = %do.body415
  %191 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5793
  %i2c_props417 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %191, i32 0, i32 0, !dbg !5793
  %name418 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props417, i32 0, i32 3, !dbg !5793
  %192 = load i8*, i8** %name418, align 8, !dbg !5793
  %193 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5793
  %i2c_props419 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %193, i32 0, i32 0, !dbg !5793
  %adap420 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props419, i32 0, i32 1, !dbg !5793
  %194 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap420, align 8, !dbg !5793
  %tobool421 = icmp ne %struct.i2c_adapter* %194, null, !dbg !5793
  br i1 %tobool421, label %cond.true422, label %cond.false426, !dbg !5793

cond.true422:                                     ; preds = %do.body416
  %195 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5793
  %i2c_props423 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %195, i32 0, i32 0, !dbg !5793
  %adap424 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props423, i32 0, i32 1, !dbg !5793
  %196 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap424, align 8, !dbg !5793
  %call425 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %196) #8, !dbg !5793
  br label %cond.end427, !dbg !5793

cond.false426:                                    ; preds = %do.body416
  br label %cond.end427, !dbg !5793

cond.end427:                                      ; preds = %cond.false426, %cond.true422
  %cond428 = phi i32 [ %call425, %cond.true422 ], [ -1, %cond.false426 ], !dbg !5793
  %197 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5793
  %i2c_props429 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %197, i32 0, i32 0, !dbg !5793
  %addr430 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props429, i32 0, i32 0, !dbg !5793
  %198 = load i8, i8* %addr430, align 8, !dbg !5793
  %conv431 = zext i8 %198 to i32, !dbg !5793
  %199 = load i8*, i8** %buf.addr, align 8, !dbg !5793
  %arrayidx432 = getelementptr i8, i8* %199, i64 3, !dbg !5793
  %200 = load i8, i8* %arrayidx432, align 1, !dbg !5793
  %conv433 = zext i8 %200 to i32, !dbg !5793
  %and434 = and i32 %conv433, 28, !dbg !5793
  %shr435 = ashr i32 %and434, 2, !dbg !5793
  %idxprom436 = sext i32 %shr435 to i64, !dbg !5793
  %arrayidx437 = getelementptr [8 x i8*], [8 x i8*]* @dump_write_message.vif, i64 0, i64 %idxprom436, !dbg !5793
  %201 = load i8*, i8** %arrayidx437, align 8, !dbg !5793
  %call438 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.97, i64 0, i64 0), i8* %192, i32 %cond428, i32 %conv431, i8* %201) #9, !dbg !5793
  br label %do.end439, !dbg !5793

do.end439:                                        ; preds = %cond.end427
  br label %do.end440, !dbg !5791

do.end440:                                        ; preds = %do.end439
  br label %do.body441, !dbg !5795

do.body441:                                       ; preds = %do.end440
  br label %do.body442, !dbg !5796

do.body442:                                       ; preds = %do.body441
  %202 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5798
  %i2c_props443 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %202, i32 0, i32 0, !dbg !5798
  %name444 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props443, i32 0, i32 3, !dbg !5798
  %203 = load i8*, i8** %name444, align 8, !dbg !5798
  %204 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5798
  %i2c_props445 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %204, i32 0, i32 0, !dbg !5798
  %adap446 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props445, i32 0, i32 1, !dbg !5798
  %205 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap446, align 8, !dbg !5798
  %tobool447 = icmp ne %struct.i2c_adapter* %205, null, !dbg !5798
  br i1 %tobool447, label %cond.true448, label %cond.false452, !dbg !5798

cond.true448:                                     ; preds = %do.body442
  %206 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5798
  %i2c_props449 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %206, i32 0, i32 0, !dbg !5798
  %adap450 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props449, i32 0, i32 1, !dbg !5798
  %207 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap450, align 8, !dbg !5798
  %call451 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %207) #8, !dbg !5798
  br label %cond.end453, !dbg !5798

cond.false452:                                    ; preds = %do.body442
  br label %cond.end453, !dbg !5798

cond.end453:                                      ; preds = %cond.false452, %cond.true448
  %cond454 = phi i32 [ %call451, %cond.true448 ], [ -1, %cond.false452 ], !dbg !5798
  %208 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5798
  %i2c_props455 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %208, i32 0, i32 0, !dbg !5798
  %addr456 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props455, i32 0, i32 0, !dbg !5798
  %209 = load i8, i8* %addr456, align 8, !dbg !5798
  %conv457 = zext i8 %209 to i32, !dbg !5798
  %210 = load i8*, i8** %buf.addr, align 8, !dbg !5798
  %arrayidx458 = getelementptr i8, i8* %210, i64 3, !dbg !5798
  %211 = load i8, i8* %arrayidx458, align 1, !dbg !5798
  %conv459 = zext i8 %211 to i32, !dbg !5798
  %and460 = and i32 %conv459, 128, !dbg !5798
  %tobool461 = icmp ne i32 %and460, 0, !dbg !5798
  br i1 %tobool461, label %cond.true462, label %cond.false468, !dbg !5798

cond.true462:                                     ; preds = %cond.end453
  %212 = load i8*, i8** %buf.addr, align 8, !dbg !5798
  %arrayidx463 = getelementptr i8, i8* %212, i64 3, !dbg !5798
  %213 = load i8, i8* %arrayidx463, align 1, !dbg !5798
  %conv464 = zext i8 %213 to i32, !dbg !5798
  %and465 = and i32 %conv464, 32, !dbg !5798
  %tobool466 = icmp ne i32 %and465, 0, !dbg !5798
  %214 = zext i1 %tobool466 to i64, !dbg !5798
  %cond467 = select i1 %tobool466, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0), !dbg !5798
  br label %cond.end474, !dbg !5798

cond.false468:                                    ; preds = %cond.end453
  %215 = load i8*, i8** %buf.addr, align 8, !dbg !5798
  %arrayidx469 = getelementptr i8, i8* %215, i64 3, !dbg !5798
  %216 = load i8, i8* %arrayidx469, align 1, !dbg !5798
  %conv470 = zext i8 %216 to i32, !dbg !5798
  %and471 = and i32 %conv470, 32, !dbg !5798
  %tobool472 = icmp ne i32 %and471, 0, !dbg !5798
  %217 = zext i1 %tobool472 to i64, !dbg !5798
  %cond473 = select i1 %tobool472, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.105, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.104, i64 0, i64 0), !dbg !5798
  br label %cond.end474, !dbg !5798

cond.end474:                                      ; preds = %cond.false468, %cond.true462
  %cond475 = phi i8* [ %cond467, %cond.true462 ], [ %cond473, %cond.false468 ], !dbg !5798
  %call476 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.102, i64 0, i64 0), i8* %203, i32 %cond454, i32 %conv457, i8* %cond475) #9, !dbg !5798
  br label %do.end477, !dbg !5798

do.end477:                                        ; preds = %cond.end474
  br label %do.end478, !dbg !5796

do.end478:                                        ; preds = %do.end477
  br label %do.body479, !dbg !5800

do.body479:                                       ; preds = %do.end478
  br label %do.body480, !dbg !5801

do.body480:                                       ; preds = %do.body479
  %218 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5803
  %i2c_props481 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %218, i32 0, i32 0, !dbg !5803
  %name482 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props481, i32 0, i32 3, !dbg !5803
  %219 = load i8*, i8** %name482, align 8, !dbg !5803
  %220 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5803
  %i2c_props483 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %220, i32 0, i32 0, !dbg !5803
  %adap484 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props483, i32 0, i32 1, !dbg !5803
  %221 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap484, align 8, !dbg !5803
  %tobool485 = icmp ne %struct.i2c_adapter* %221, null, !dbg !5803
  br i1 %tobool485, label %cond.true486, label %cond.false490, !dbg !5803

cond.true486:                                     ; preds = %do.body480
  %222 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5803
  %i2c_props487 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %222, i32 0, i32 0, !dbg !5803
  %adap488 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props487, i32 0, i32 1, !dbg !5803
  %223 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap488, align 8, !dbg !5803
  %call489 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %223) #8, !dbg !5803
  br label %cond.end491, !dbg !5803

cond.false490:                                    ; preds = %do.body480
  br label %cond.end491, !dbg !5803

cond.end491:                                      ; preds = %cond.false490, %cond.true486
  %cond492 = phi i32 [ %call489, %cond.true486 ], [ -1, %cond.false490 ], !dbg !5803
  %224 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5803
  %i2c_props493 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %224, i32 0, i32 0, !dbg !5803
  %addr494 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props493, i32 0, i32 0, !dbg !5803
  %225 = load i8, i8* %addr494, align 8, !dbg !5803
  %conv495 = zext i8 %225 to i32, !dbg !5803
  %226 = load i8*, i8** %buf.addr, align 8, !dbg !5803
  %arrayidx496 = getelementptr i8, i8* %226, i64 3, !dbg !5803
  %227 = load i8, i8* %arrayidx496, align 1, !dbg !5803
  %conv497 = zext i8 %227 to i32, !dbg !5803
  %and498 = and i32 %conv497, 128, !dbg !5803
  %tobool499 = icmp ne i32 %and498, 0, !dbg !5803
  br i1 %tobool499, label %cond.true500, label %cond.false506, !dbg !5803

cond.true500:                                     ; preds = %cond.end491
  %228 = load i8*, i8** %buf.addr, align 8, !dbg !5803
  %arrayidx501 = getelementptr i8, i8* %228, i64 3, !dbg !5803
  %229 = load i8, i8* %arrayidx501, align 1, !dbg !5803
  %conv502 = zext i8 %229 to i32, !dbg !5803
  %and503 = and i32 %conv502, 32, !dbg !5803
  %tobool504 = icmp ne i32 %and503, 0, !dbg !5803
  %230 = zext i1 %tobool504 to i64, !dbg !5803
  %cond505 = select i1 %tobool504, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.106, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.107, i64 0, i64 0), !dbg !5803
  br label %cond.end507, !dbg !5803

cond.false506:                                    ; preds = %cond.end491
  br label %cond.end507, !dbg !5803

cond.end507:                                      ; preds = %cond.false506, %cond.true500
  %cond508 = phi i8* [ %cond505, %cond.true500 ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.108, i64 0, i64 0), %cond.false506 ], !dbg !5803
  %call509 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.98, i64 0, i64 0), i8* %219, i32 %cond492, i32 %conv495, i8* %cond508) #9, !dbg !5803
  br label %do.end510, !dbg !5803

do.end510:                                        ; preds = %cond.end507
  br label %do.end511, !dbg !5801

do.end511:                                        ; preds = %do.end510
  br label %if.end

if.end:                                           ; preds = %do.end511, %do.end414
  br label %do.body512, !dbg !5805

do.body512:                                       ; preds = %if.end
  br label %do.body513, !dbg !5806

do.body513:                                       ; preds = %do.body512
  %231 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5808
  %i2c_props514 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %231, i32 0, i32 0, !dbg !5808
  %name515 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props514, i32 0, i32 3, !dbg !5808
  %232 = load i8*, i8** %name515, align 8, !dbg !5808
  %233 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5808
  %i2c_props516 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %233, i32 0, i32 0, !dbg !5808
  %adap517 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props516, i32 0, i32 1, !dbg !5808
  %234 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap517, align 8, !dbg !5808
  %tobool518 = icmp ne %struct.i2c_adapter* %234, null, !dbg !5808
  br i1 %tobool518, label %cond.true519, label %cond.false523, !dbg !5808

cond.true519:                                     ; preds = %do.body513
  %235 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5808
  %i2c_props520 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %235, i32 0, i32 0, !dbg !5808
  %adap521 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props520, i32 0, i32 1, !dbg !5808
  %236 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap521, align 8, !dbg !5808
  %call522 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %236) #8, !dbg !5808
  br label %cond.end524, !dbg !5808

cond.false523:                                    ; preds = %do.body513
  br label %cond.end524, !dbg !5808

cond.end524:                                      ; preds = %cond.false523, %cond.true519
  %cond525 = phi i32 [ %call522, %cond.true519 ], [ -1, %cond.false523 ], !dbg !5808
  %237 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5808
  %i2c_props526 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %237, i32 0, i32 0, !dbg !5808
  %addr527 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props526, i32 0, i32 0, !dbg !5808
  %238 = load i8, i8* %addr527, align 8, !dbg !5808
  %conv528 = zext i8 %238 to i32, !dbg !5808
  %call529 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.109, i64 0, i64 0), i8* %232, i32 %cond525, i32 %conv528) #9, !dbg !5808
  br label %do.end530, !dbg !5808

do.end530:                                        ; preds = %cond.end524
  br label %do.end531, !dbg !5806

do.end531:                                        ; preds = %do.end530
  ret void, !dbg !5810
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %props, i8* %buf, i32 %len) #0 !dbg !5811 {
entry:
  %props.addr = alloca %struct.tuner_i2c_props*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.tuner_i2c_props* %props, %struct.tuner_i2c_props** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tuner_i2c_props** %props.addr, metadata !5815, metadata !DIExpression()), !dbg !5816
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5819, metadata !DIExpression()), !dbg !5820
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5821, metadata !DIExpression()), !dbg !5822
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5823
  %0 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5824
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %0, i32 0, i32 0, !dbg !5825
  %1 = load i8, i8* %addr1, align 8, !dbg !5825
  %conv = zext i8 %1 to i16, !dbg !5824
  store i16 %conv, i16* %addr, align 8, !dbg !5823
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5823
  store i16 0, i16* %flags, align 2, !dbg !5823
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5823
  %2 = load i32, i32* %len.addr, align 4, !dbg !5826
  %conv3 = trunc i32 %2 to i16, !dbg !5826
  store i16 %conv3, i16* %len2, align 4, !dbg !5823
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5823
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5827
  store i8* %3, i8** %buf4, align 8, !dbg !5823
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5828, metadata !DIExpression()), !dbg !5829
  %4 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5830
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %4, i32 0, i32 1, !dbg !5831
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5831
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5832
  store i32 %call, i32* %ret, align 4, !dbg !5829
  %6 = load i32, i32* %ret, align 4, !dbg !5833
  %cmp = icmp eq i32 %6, 1, !dbg !5834
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5835

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %len.addr, align 4, !dbg !5836
  br label %cond.end, !dbg !5835

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !5837
  br label %cond.end, !dbg !5835

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !5835
  ret i32 %cond, !dbg !5838
}

; Function Attrs: noredzone
declare dso_local i64 @msleep_interruptible(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda9887_status(%struct.dvb_frontend* %fe) #0 !dbg !5839 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  %buf = alloca [1 x i8], align 1
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5840, metadata !DIExpression()), !dbg !5841
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5842, metadata !DIExpression()), !dbg !5843
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5844
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5845
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5845
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5844
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5843
  call void @llvm.dbg.declare(metadata [1 x i8]* %buf, metadata !5846, metadata !DIExpression()), !dbg !5848
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5849, metadata !DIExpression()), !dbg !5850
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5851
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 0, !dbg !5852
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0, !dbg !5853
  %call = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %i2c_props, i8* %arraydecay, i32 1) #8, !dbg !5854
  store i32 %call, i32* %rc, align 4, !dbg !5855
  %4 = load i32, i32* %rc, align 4, !dbg !5856
  %cmp = icmp ne i32 %4, 1, !dbg !5858
  br i1 %cmp, label %if.then, label %if.end, !dbg !5859

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5860

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5861

do.body1:                                         ; preds = %do.body
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5863
  %i2c_props2 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 0, !dbg !5863
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 3, !dbg !5863
  %6 = load i8*, i8** %name, align 8, !dbg !5863
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5863
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 0, !dbg !5863
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5863
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5863
  %tobool = icmp ne %struct.i2c_adapter* %8, null, !dbg !5863
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5863

cond.true:                                        ; preds = %do.body1
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5863
  %i2c_props4 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0, !dbg !5863
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5863
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5863
  %call6 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %10) #8, !dbg !5863
  br label %cond.end, !dbg !5863

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5863

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ -1, %cond.false ], !dbg !5863
  %11 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5863
  %i2c_props7 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %11, i32 0, i32 0, !dbg !5863
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props7, i32 0, i32 0, !dbg !5863
  %12 = load i8, i8* %addr, align 8, !dbg !5863
  %conv = zext i8 %12 to i32, !dbg !5863
  %13 = load i32, i32* %rc, align 4, !dbg !5863
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.110, i64 0, i64 0), i8* %6, i32 %cond, i32 %conv, i32 %13) #9, !dbg !5863
  br label %do.end, !dbg !5863

do.end:                                           ; preds = %cond.end
  br label %do.end9, !dbg !5861

do.end9:                                          ; preds = %do.end
  br label %if.end, !dbg !5861

if.end:                                           ; preds = %do.end9, %entry
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5865
  %arraydecay10 = getelementptr inbounds [1 x i8], [1 x i8]* %buf, i64 0, i64 0, !dbg !5866
  call void @dump_read_message(%struct.dvb_frontend* %14, i8* %arraydecay10) #8, !dbg !5867
  ret i32 0, !dbg !5868
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %props, i8* %buf, i32 %len) #0 !dbg !5869 {
entry:
  %props.addr = alloca %struct.tuner_i2c_props*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.tuner_i2c_props* %props, %struct.tuner_i2c_props** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tuner_i2c_props** %props.addr, metadata !5870, metadata !DIExpression()), !dbg !5871
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5872, metadata !DIExpression()), !dbg !5873
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5874, metadata !DIExpression()), !dbg !5875
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5876, metadata !DIExpression()), !dbg !5877
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5878
  %0 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5879
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %0, i32 0, i32 0, !dbg !5880
  %1 = load i8, i8* %addr1, align 8, !dbg !5880
  %conv = zext i8 %1 to i16, !dbg !5879
  store i16 %conv, i16* %addr, align 8, !dbg !5878
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5878
  store i16 1, i16* %flags, align 2, !dbg !5878
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5878
  %2 = load i32, i32* %len.addr, align 4, !dbg !5881
  %conv3 = trunc i32 %2 to i16, !dbg !5881
  store i16 %conv3, i16* %len2, align 4, !dbg !5878
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5878
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5882
  store i8* %3, i8** %buf4, align 8, !dbg !5878
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5883, metadata !DIExpression()), !dbg !5884
  %4 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5885
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %4, i32 0, i32 1, !dbg !5886
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5886
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5887
  store i32 %call, i32* %ret, align 4, !dbg !5884
  %6 = load i32, i32* %ret, align 4, !dbg !5888
  %cmp = icmp eq i32 %6, 1, !dbg !5889
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5890

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %len.addr, align 4, !dbg !5891
  br label %cond.end, !dbg !5890

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !5892
  br label %cond.end, !dbg !5890

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !5890
  ret i32 %cond, !dbg !5893
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dump_read_message(%struct.dvb_frontend* %fe, i8* %buf) #0 !dbg !4683 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buf.addr = alloca i8*, align 8
  %priv = alloca %struct.tda9887_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5894, metadata !DIExpression()), !dbg !5895
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5896, metadata !DIExpression()), !dbg !5897
  call void @llvm.dbg.declare(metadata %struct.tda9887_priv** %priv, metadata !5898, metadata !DIExpression()), !dbg !5899
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5900
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 7, !dbg !5901
  %1 = load i8*, i8** %analog_demod_priv, align 8, !dbg !5901
  %2 = bitcast i8* %1 to %struct.tda9887_priv*, !dbg !5900
  store %struct.tda9887_priv* %2, %struct.tda9887_priv** %priv, align 8, !dbg !5899
  br label %do.body, !dbg !5902

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5903

do.body1:                                         ; preds = %do.body
  %3 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5905
  %i2c_props = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %3, i32 0, i32 0, !dbg !5905
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5905
  %4 = load i8*, i8** %name, align 8, !dbg !5905
  %5 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5905
  %i2c_props2 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %5, i32 0, i32 0, !dbg !5905
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5905
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5905
  %tobool = icmp ne %struct.i2c_adapter* %6, null, !dbg !5905
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5905

cond.true:                                        ; preds = %do.body1
  %7 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5905
  %i2c_props3 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %7, i32 0, i32 0, !dbg !5905
  %adap4 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5905
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap4, align 8, !dbg !5905
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %8) #8, !dbg !5905
  br label %cond.end, !dbg !5905

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5905

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5905
  %9 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5905
  %i2c_props5 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %9, i32 0, i32 0, !dbg !5905
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props5, i32 0, i32 0, !dbg !5905
  %10 = load i8, i8* %addr, align 8, !dbg !5905
  %conv = zext i8 %10 to i32, !dbg !5905
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5905
  %arrayidx = getelementptr i8, i8* %11, i64 0, !dbg !5905
  %12 = load i8, i8* %arrayidx, align 1, !dbg !5905
  %conv6 = zext i8 %12 to i32, !dbg !5905
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.127, i64 0, i64 0), i8* %4, i32 %cond, i32 %conv, i32 %conv6) #9, !dbg !5905
  br label %do.end, !dbg !5905

do.end:                                           ; preds = %cond.end
  br label %do.end8, !dbg !5903

do.end8:                                          ; preds = %do.end
  br label %do.body9, !dbg !5907

do.body9:                                         ; preds = %do.end8
  br label %do.body10, !dbg !5908

do.body10:                                        ; preds = %do.body9
  %13 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5910
  %i2c_props11 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %13, i32 0, i32 0, !dbg !5910
  %name12 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props11, i32 0, i32 3, !dbg !5910
  %14 = load i8*, i8** %name12, align 8, !dbg !5910
  %15 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5910
  %i2c_props13 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %15, i32 0, i32 0, !dbg !5910
  %adap14 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props13, i32 0, i32 1, !dbg !5910
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap14, align 8, !dbg !5910
  %tobool15 = icmp ne %struct.i2c_adapter* %16, null, !dbg !5910
  br i1 %tobool15, label %cond.true16, label %cond.false20, !dbg !5910

cond.true16:                                      ; preds = %do.body10
  %17 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5910
  %i2c_props17 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %17, i32 0, i32 0, !dbg !5910
  %adap18 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props17, i32 0, i32 1, !dbg !5910
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap18, align 8, !dbg !5910
  %call19 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %18) #8, !dbg !5910
  br label %cond.end21, !dbg !5910

cond.false20:                                     ; preds = %do.body10
  br label %cond.end21, !dbg !5910

cond.end21:                                       ; preds = %cond.false20, %cond.true16
  %cond22 = phi i32 [ %call19, %cond.true16 ], [ -1, %cond.false20 ], !dbg !5910
  %19 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5910
  %i2c_props23 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %19, i32 0, i32 0, !dbg !5910
  %addr24 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props23, i32 0, i32 0, !dbg !5910
  %20 = load i8, i8* %addr24, align 8, !dbg !5910
  %conv25 = zext i8 %20 to i32, !dbg !5910
  %21 = load i8*, i8** %buf.addr, align 8, !dbg !5910
  %arrayidx26 = getelementptr i8, i8* %21, i64 0, !dbg !5910
  %22 = load i8, i8* %arrayidx26, align 1, !dbg !5910
  %conv27 = zext i8 %22 to i32, !dbg !5910
  %and = and i32 %conv27, 1, !dbg !5910
  %tobool28 = icmp ne i32 %and, 0, !dbg !5910
  %23 = zext i1 %tobool28 to i64, !dbg !5910
  %cond29 = select i1 %tobool28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), !dbg !5910
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.128, i64 0, i64 0), i8* %14, i32 %cond22, i32 %conv25, i8* %cond29) #9, !dbg !5910
  br label %do.end31, !dbg !5910

do.end31:                                         ; preds = %cond.end21
  br label %do.end32, !dbg !5908

do.end32:                                         ; preds = %do.end31
  br label %do.body33, !dbg !5912

do.body33:                                        ; preds = %do.end32
  br label %do.body34, !dbg !5913

do.body34:                                        ; preds = %do.body33
  %24 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5915
  %i2c_props35 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %24, i32 0, i32 0, !dbg !5915
  %name36 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props35, i32 0, i32 3, !dbg !5915
  %25 = load i8*, i8** %name36, align 8, !dbg !5915
  %26 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5915
  %i2c_props37 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %26, i32 0, i32 0, !dbg !5915
  %adap38 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props37, i32 0, i32 1, !dbg !5915
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap38, align 8, !dbg !5915
  %tobool39 = icmp ne %struct.i2c_adapter* %27, null, !dbg !5915
  br i1 %tobool39, label %cond.true40, label %cond.false44, !dbg !5915

cond.true40:                                      ; preds = %do.body34
  %28 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5915
  %i2c_props41 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %28, i32 0, i32 0, !dbg !5915
  %adap42 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props41, i32 0, i32 1, !dbg !5915
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap42, align 8, !dbg !5915
  %call43 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %29) #8, !dbg !5915
  br label %cond.end45, !dbg !5915

cond.false44:                                     ; preds = %do.body34
  br label %cond.end45, !dbg !5915

cond.end45:                                       ; preds = %cond.false44, %cond.true40
  %cond46 = phi i32 [ %call43, %cond.true40 ], [ -1, %cond.false44 ], !dbg !5915
  %30 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5915
  %i2c_props47 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %30, i32 0, i32 0, !dbg !5915
  %addr48 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props47, i32 0, i32 0, !dbg !5915
  %31 = load i8, i8* %addr48, align 8, !dbg !5915
  %conv49 = zext i8 %31 to i32, !dbg !5915
  %32 = load i8*, i8** %buf.addr, align 8, !dbg !5915
  %arrayidx50 = getelementptr i8, i8* %32, i64 0, !dbg !5915
  %33 = load i8, i8* %arrayidx50, align 1, !dbg !5915
  %conv51 = zext i8 %33 to i32, !dbg !5915
  %shr = ashr i32 %conv51, 1, !dbg !5915
  %and52 = and i32 %shr, 15, !dbg !5915
  %idxprom = sext i32 %and52 to i64, !dbg !5915
  %arrayidx53 = getelementptr [16 x i8*], [16 x i8*]* @dump_read_message.afc, i64 0, i64 %idxprom, !dbg !5915
  %34 = load i8*, i8** %arrayidx53, align 8, !dbg !5915
  %call54 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.129, i64 0, i64 0), i8* %25, i32 %cond46, i32 %conv49, i8* %34) #9, !dbg !5915
  br label %do.end55, !dbg !5915

do.end55:                                         ; preds = %cond.end45
  br label %do.end56, !dbg !5913

do.end56:                                         ; preds = %do.end55
  br label %do.body57, !dbg !5917

do.body57:                                        ; preds = %do.end56
  br label %do.body58, !dbg !5918

do.body58:                                        ; preds = %do.body57
  %35 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5920
  %i2c_props59 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %35, i32 0, i32 0, !dbg !5920
  %name60 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props59, i32 0, i32 3, !dbg !5920
  %36 = load i8*, i8** %name60, align 8, !dbg !5920
  %37 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5920
  %i2c_props61 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %37, i32 0, i32 0, !dbg !5920
  %adap62 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props61, i32 0, i32 1, !dbg !5920
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap62, align 8, !dbg !5920
  %tobool63 = icmp ne %struct.i2c_adapter* %38, null, !dbg !5920
  br i1 %tobool63, label %cond.true64, label %cond.false68, !dbg !5920

cond.true64:                                      ; preds = %do.body58
  %39 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5920
  %i2c_props65 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %39, i32 0, i32 0, !dbg !5920
  %adap66 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props65, i32 0, i32 1, !dbg !5920
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap66, align 8, !dbg !5920
  %call67 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %40) #8, !dbg !5920
  br label %cond.end69, !dbg !5920

cond.false68:                                     ; preds = %do.body58
  br label %cond.end69, !dbg !5920

cond.end69:                                       ; preds = %cond.false68, %cond.true64
  %cond70 = phi i32 [ %call67, %cond.true64 ], [ -1, %cond.false68 ], !dbg !5920
  %41 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5920
  %i2c_props71 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %41, i32 0, i32 0, !dbg !5920
  %addr72 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props71, i32 0, i32 0, !dbg !5920
  %42 = load i8, i8* %addr72, align 8, !dbg !5920
  %conv73 = zext i8 %42 to i32, !dbg !5920
  %43 = load i8*, i8** %buf.addr, align 8, !dbg !5920
  %arrayidx74 = getelementptr i8, i8* %43, i64 0, !dbg !5920
  %44 = load i8, i8* %arrayidx74, align 1, !dbg !5920
  %conv75 = zext i8 %44 to i32, !dbg !5920
  %and76 = and i32 %conv75, 32, !dbg !5920
  %tobool77 = icmp ne i32 %and76, 0, !dbg !5920
  %45 = zext i1 %tobool77 to i64, !dbg !5920
  %cond78 = select i1 %tobool77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i64 0, i64 0), !dbg !5920
  %call79 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.130, i64 0, i64 0), i8* %36, i32 %cond70, i32 %conv73, i8* %cond78) #9, !dbg !5920
  br label %do.end80, !dbg !5920

do.end80:                                         ; preds = %cond.end69
  br label %do.end81, !dbg !5918

do.end81:                                         ; preds = %do.end80
  br label %do.body82, !dbg !5922

do.body82:                                        ; preds = %do.end81
  br label %do.body83, !dbg !5923

do.body83:                                        ; preds = %do.body82
  %46 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5925
  %i2c_props84 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %46, i32 0, i32 0, !dbg !5925
  %name85 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props84, i32 0, i32 3, !dbg !5925
  %47 = load i8*, i8** %name85, align 8, !dbg !5925
  %48 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5925
  %i2c_props86 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %48, i32 0, i32 0, !dbg !5925
  %adap87 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props86, i32 0, i32 1, !dbg !5925
  %49 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap87, align 8, !dbg !5925
  %tobool88 = icmp ne %struct.i2c_adapter* %49, null, !dbg !5925
  br i1 %tobool88, label %cond.true89, label %cond.false93, !dbg !5925

cond.true89:                                      ; preds = %do.body83
  %50 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5925
  %i2c_props90 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %50, i32 0, i32 0, !dbg !5925
  %adap91 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props90, i32 0, i32 1, !dbg !5925
  %51 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap91, align 8, !dbg !5925
  %call92 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %51) #8, !dbg !5925
  br label %cond.end94, !dbg !5925

cond.false93:                                     ; preds = %do.body83
  br label %cond.end94, !dbg !5925

cond.end94:                                       ; preds = %cond.false93, %cond.true89
  %cond95 = phi i32 [ %call92, %cond.true89 ], [ -1, %cond.false93 ], !dbg !5925
  %52 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5925
  %i2c_props96 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %52, i32 0, i32 0, !dbg !5925
  %addr97 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props96, i32 0, i32 0, !dbg !5925
  %53 = load i8, i8* %addr97, align 8, !dbg !5925
  %conv98 = zext i8 %53 to i32, !dbg !5925
  %54 = load i8*, i8** %buf.addr, align 8, !dbg !5925
  %arrayidx99 = getelementptr i8, i8* %54, i64 0, !dbg !5925
  %55 = load i8, i8* %arrayidx99, align 1, !dbg !5925
  %conv100 = zext i8 %55 to i32, !dbg !5925
  %and101 = and i32 %conv100, 64, !dbg !5925
  %tobool102 = icmp ne i32 %and101, 0, !dbg !5925
  %56 = zext i1 %tobool102 to i64, !dbg !5925
  %cond103 = select i1 %tobool102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.134, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.135, i64 0, i64 0), !dbg !5925
  %call104 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.133, i64 0, i64 0), i8* %47, i32 %cond95, i32 %conv98, i8* %cond103) #9, !dbg !5925
  br label %do.end105, !dbg !5925

do.end105:                                        ; preds = %cond.end94
  br label %do.end106, !dbg !5923

do.end106:                                        ; preds = %do.end105
  br label %do.body107, !dbg !5927

do.body107:                                       ; preds = %do.end106
  br label %do.body108, !dbg !5928

do.body108:                                       ; preds = %do.body107
  %57 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5930
  %i2c_props109 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %57, i32 0, i32 0, !dbg !5930
  %name110 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props109, i32 0, i32 3, !dbg !5930
  %58 = load i8*, i8** %name110, align 8, !dbg !5930
  %59 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5930
  %i2c_props111 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %59, i32 0, i32 0, !dbg !5930
  %adap112 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props111, i32 0, i32 1, !dbg !5930
  %60 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap112, align 8, !dbg !5930
  %tobool113 = icmp ne %struct.i2c_adapter* %60, null, !dbg !5930
  br i1 %tobool113, label %cond.true114, label %cond.false118, !dbg !5930

cond.true114:                                     ; preds = %do.body108
  %61 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5930
  %i2c_props115 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %61, i32 0, i32 0, !dbg !5930
  %adap116 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props115, i32 0, i32 1, !dbg !5930
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap116, align 8, !dbg !5930
  %call117 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %62) #8, !dbg !5930
  br label %cond.end119, !dbg !5930

cond.false118:                                    ; preds = %do.body108
  br label %cond.end119, !dbg !5930

cond.end119:                                      ; preds = %cond.false118, %cond.true114
  %cond120 = phi i32 [ %call117, %cond.true114 ], [ -1, %cond.false118 ], !dbg !5930
  %63 = load %struct.tda9887_priv*, %struct.tda9887_priv** %priv, align 8, !dbg !5930
  %i2c_props121 = getelementptr inbounds %struct.tda9887_priv, %struct.tda9887_priv* %63, i32 0, i32 0, !dbg !5930
  %addr122 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props121, i32 0, i32 0, !dbg !5930
  %64 = load i8, i8* %addr122, align 8, !dbg !5930
  %conv123 = zext i8 %64 to i32, !dbg !5930
  %65 = load i8*, i8** %buf.addr, align 8, !dbg !5930
  %arrayidx124 = getelementptr i8, i8* %65, i64 0, !dbg !5930
  %66 = load i8, i8* %arrayidx124, align 1, !dbg !5930
  %conv125 = zext i8 %66 to i32, !dbg !5930
  %and126 = and i32 %conv125, 128, !dbg !5930
  %tobool127 = icmp ne i32 %and126, 0, !dbg !5930
  %67 = zext i1 %tobool127 to i64, !dbg !5930
  %cond128 = select i1 %tobool127, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.131, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.132, i64 0, i64 0), !dbg !5930
  %call129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.136, i64 0, i64 0), i8* %58, i32 %cond120, i32 %conv123, i8* %cond128) #9, !dbg !5930
  br label %do.end130, !dbg !5930

do.end130:                                        ; preds = %cond.end119
  br label %do.end131, !dbg !5928

do.end131:                                        ; preds = %do.end130
  ret void, !dbg !5932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5933 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5936, metadata !DIExpression()), !dbg !5937
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5938
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !5939
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5940
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5941
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5942
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5943
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5944
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5945
  ret void, !dbg !5946
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5947 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5948, metadata !DIExpression()), !dbg !5949
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5950
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !5952
  br i1 %call, label %if.end, label %if.then, !dbg !5953

if.then:                                          ; preds = %entry
  br label %return, !dbg !5954

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5955
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5956
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5956
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5957
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5958
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5958
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !5959
  br label %return, !dbg !5960

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5961 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5964, metadata !DIExpression()), !dbg !5965
  ret i1 true, !dbg !5966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5967 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5968, metadata !DIExpression()), !dbg !5969
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5970, metadata !DIExpression()), !dbg !5971
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5972
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5973
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5974
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5975
  br label %do.body, !dbg !5976

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5977

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5979

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5977

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5981
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5981
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5981
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5981
  br label %do.end5, !dbg !5981

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5977

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5983
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
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
!llvm.module.flags = !{!4690, !4691, !4692, !4693}
!llvm.ident = !{!4694}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 25, type: !4298, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !316, globals: !4201, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/tuners/tda9887.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !196, !201, !207, !214, !220, !229, !237, !243, !249, !256, !264, !270, !284, !296, !301, !308}
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
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !191, line: 546, baseType: !7, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !194, !195}
!193 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!194 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!195 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !197, line: 65, baseType: !7, size: 32, elements: !198)
!197 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!198 = !{!199, !200}
!199 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!200 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!201 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !202, line: 16, baseType: !7, size: 32, elements: !203)
!202 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!203 = !{!204, !205, !206}
!204 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!205 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!206 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!207 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !208, line: 59, baseType: !7, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !211, !212, !213}
!210 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!211 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!212 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!213 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!214 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !215, line: 54, baseType: !7, size: 32, elements: !216)
!215 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !219}
!217 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!219 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!220 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !221, line: 296, baseType: !7, size: 32, elements: !222)
!221 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!222 = !{!223, !224, !225, !226, !227, !228}
!223 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!224 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!225 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!226 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!227 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!228 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !230, line: 9, baseType: !7, size: 32, elements: !231)
!230 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !233, !234, !235, !236}
!232 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!233 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!234 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!235 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!236 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!237 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !238, line: 26, baseType: !7, size: 32, elements: !239)
!238 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!239 = !{!240, !241, !242}
!240 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!241 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!242 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !244, line: 44, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!245 = !{!246, !247, !248}
!246 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!247 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!248 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !250, line: 343, baseType: !7, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!251 = !{!252, !253, !254, !255}
!252 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!253 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!254 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!255 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!256 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !257, line: 524, baseType: !7, size: 32, elements: !258)
!257 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!258 = !{!259, !260, !261, !262, !263}
!259 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!260 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!261 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!262 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!263 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !257, line: 502, baseType: !7, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!267 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!268 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!269 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !271, line: 76, baseType: !7, size: 32, elements: !272)
!271 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283}
!273 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!274 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!275 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!276 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!277 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!278 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!279 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!280 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!281 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!282 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!283 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!284 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !285, line: 57, baseType: !7, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !288, !289, !290, !291, !292, !293, !294, !295}
!287 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!288 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!289 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!290 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!291 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!292 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!293 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!294 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!295 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!296 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !297, line: 10, baseType: !7, size: 32, elements: !298)
!297 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300}
!299 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!300 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!301 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !302, line: 305, baseType: !7, size: 32, elements: !303)
!302 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!303 = !{!304, !305, !306, !307}
!304 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!305 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!306 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!307 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_tuner_type", file: !309, line: 176, baseType: !7, size: 32, elements: !310)
!309 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!310 = !{!311, !312, !313, !314, !315}
!311 = !DIEnumerator(name: "V4L2_TUNER_RADIO", value: 1, isUnsigned: true)
!312 = !DIEnumerator(name: "V4L2_TUNER_ANALOG_TV", value: 2, isUnsigned: true)
!313 = !DIEnumerator(name: "V4L2_TUNER_DIGITAL_TV", value: 3, isUnsigned: true)
!314 = !DIEnumerator(name: "V4L2_TUNER_SDR", value: 4, isUnsigned: true)
!315 = !DIEnumerator(name: "V4L2_TUNER_RF", value: 5, isUnsigned: true)
!316 = !{!317, !318, !679, !4199, !350, !4197, !1317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda9887_priv", file: !3, line: 31, size: 640, elements: !320)
!320 = !{!321, !4190, !4191, !4193, !4194, !4195, !4196, !4198}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_props", scope: !319, file: !3, line: 32, baseType: !322, size: 256)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_i2c_props", file: !323, line: 15, size: 256, elements: !324)
!323 = !DIFile(filename: "drivers/media/tuners/tuner-i2c.h", directory: "/home/lizy2001/genbc/linux")
!324 = !{!325, !331, !4188, !4189}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !322, file: !323, line: 16, baseType: !326, size: 8)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !327, line: 17, baseType: !328)
!327 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !329, line: 21, baseType: !330)
!329 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!330 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "adap", scope: !322, file: !323, line: 17, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !334, line: 695, size: 7552, elements: !335)
!334 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!335 = !{!336, !340, !341, !385, !386, !400, !3581, !3582, !3583, !3584, !4135, !4136, !4137, !4141, !4142, !4143, !4144, !4176, !4187}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !333, file: !334, line: 696, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !339, line: 76, flags: DIFlagFwdDecl)
!339 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!340 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !333, file: !334, line: 697, baseType: !7, size: 32, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !333, file: !334, line: 698, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !344)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !334, line: 519, size: 320, elements: !345)
!345 = !{!346, !362, !363, !378, !379}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !344, file: !334, line: 529, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!350, !332, !351, !350}
!350 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !353, line: 69, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !358, !359, !360}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !352, file: !353, line: 70, baseType: !356, size: 16)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !329, line: 24, baseType: !357)
!357 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !352, file: !353, line: 71, baseType: !356, size: 16, offset: 16)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !352, file: !353, line: 84, baseType: !356, size: 16, offset: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !352, file: !353, line: 85, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !344, file: !334, line: 531, baseType: !347, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !344, file: !334, line: 533, baseType: !364, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!350, !332, !367, !357, !368, !326, !350, !369}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !327, line: 19, baseType: !356)
!368 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !353, line: 135, size: 272, elements: !371)
!371 = !{!372, !373, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !370, file: !353, line: 136, baseType: !328, size: 8)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !370, file: !353, line: 137, baseType: !356, size: 16)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !370, file: !353, line: 138, baseType: !375, size: 272)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 272, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 34)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !344, file: !334, line: 536, baseType: !364, size: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !344, file: !334, line: 541, baseType: !380, size: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!383, !332}
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !327, line: 21, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !329, line: 27, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !333, file: !334, line: 699, baseType: !317, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !333, file: !334, line: 702, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !334, line: 557, size: 192, elements: !390)
!390 = !{!391, !395, !399}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !389, file: !334, line: 558, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !332, !7}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !389, file: !334, line: 559, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!350, !332, !7}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !389, file: !334, line: 560, baseType: !392, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !333, file: !334, line: 703, baseType: !401, size: 192, offset: 320)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !402, line: 30, size: 192, elements: !403)
!402 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!403 = !{!404, !414, !430}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !401, file: !402, line: 31, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !406, line: 29, baseType: !407)
!406 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !406, line: 20, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !407, file: !406, line: 21, baseType: !410)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !411, line: 25, baseType: !412)
!411 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 25, elements: !413)
!413 = !{}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !401, file: !402, line: 32, baseType: !415, size: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !416, line: 125, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!417 = !{!418, !429}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !415, file: !416, line: 126, baseType: !419, size: 64)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !416, line: 31, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !419, file: !416, line: 32, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !416, line: 24, size: 192, align: 64, elements: !424)
!424 = !{!425, !427, !428}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !423, file: !416, line: 25, baseType: !426, size: 64)
!426 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !423, file: !416, line: 26, baseType: !422, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !423, file: !416, line: 27, baseType: !422, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !415, file: !416, line: 127, baseType: !422, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !401, file: !402, line: 33, baseType: !431, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !433, line: 640, size: 48640, elements: !434)
!433 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!434 = !{!435, !441, !444, !445, !456, !457, !458, !459, !460, !461, !462, !463, !467, !493, !504, !596, !597, !598, !609, !610, !612, !613, !2883, !2884, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2966, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2981, !2982, !2983, !2985, !2986, !2987, !2988, !2989, !2990, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3014, !3019, !3020, !3021, !3022, !3023, !3025, !3028, !3031, !3034, !3037, !3041, !3142, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3188, !3189, !3190, !3191, !3192, !3197, !3198, !3199, !3202, !3203, !3206, !3209, !3212, !3213, !3245, !3248, !3249, !3328, !3329, !3332, !3333, !3336, !3337, !3338, !3342, !3343, !3344, !3357, !3358, !3359, !3369, !3374, !3375, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !432, file: !433, line: 646, baseType: !436, size: 128)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !437, line: 56, size: 128, elements: !438)
!437 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !436, file: !437, line: 57, baseType: !426, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !436, file: !437, line: 58, baseType: !383, size: 32, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !432, file: !433, line: 649, baseType: !442, size: 64, offset: 128)
!442 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !443)
!443 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !432, file: !433, line: 657, baseType: !317, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !432, file: !433, line: 658, baseType: !446, size: 32, offset: 256)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !447, line: 113, baseType: !448)
!447 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !447, line: 111, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !448, file: !447, line: 112, baseType: !451, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !452, line: 168, baseType: !453)
!452 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 166, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !453, file: !452, line: 167, baseType: !350, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !433, line: 660, baseType: !7, size: 32, offset: 288)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !432, file: !433, line: 661, baseType: !7, size: 32, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !432, file: !433, line: 684, baseType: !350, size: 32, offset: 352)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !432, file: !433, line: 686, baseType: !350, size: 32, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !432, file: !433, line: 687, baseType: !350, size: 32, offset: 416)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !432, file: !433, line: 688, baseType: !350, size: 32, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !432, file: !433, line: 689, baseType: !7, size: 32, offset: 480)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !432, file: !433, line: 691, baseType: !464, size: 64, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!466 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !433, line: 691, flags: DIFlagFwdDecl)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !432, file: !433, line: 692, baseType: !468, size: 832, offset: 576)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !433, line: 451, size: 832, elements: !469)
!469 = !{!470, !475, !476, !482, !483, !487, !488, !489, !490, !491}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !468, file: !433, line: 453, baseType: !471, size: 128)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !433, line: 325, size: 128, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !471, file: !433, line: 326, baseType: !426, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !471, file: !433, line: 327, baseType: !383, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !468, file: !433, line: 454, baseType: !423, size: 192, align: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !468, file: !433, line: 455, baseType: !477, size: 128, offset: 320)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !452, line: 178, size: 128, elements: !478)
!478 = !{!479, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !477, file: !452, line: 179, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !477, file: !452, line: 179, baseType: !480, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !468, file: !433, line: 456, baseType: !7, size: 32, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !468, file: !433, line: 458, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !327, line: 23, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !329, line: 31, baseType: !486)
!486 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !468, file: !433, line: 459, baseType: !484, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !468, file: !433, line: 460, baseType: !484, size: 64, offset: 640)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !468, file: !433, line: 461, baseType: !484, size: 64, offset: 704)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !468, file: !433, line: 463, baseType: !484, size: 64, offset: 768)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !468, file: !433, line: 465, baseType: !492, offset: 832)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !433, line: 415, elements: !413)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !432, file: !433, line: 693, baseType: !494, size: 384, offset: 1408)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !433, line: 489, size: 384, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !501, !502}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !494, file: !433, line: 490, baseType: !477, size: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !494, file: !433, line: 491, baseType: !426, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !494, file: !433, line: 492, baseType: !426, size: 64, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !494, file: !433, line: 493, baseType: !7, size: 32, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !494, file: !433, line: 494, baseType: !357, size: 16, offset: 288)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !494, file: !433, line: 495, baseType: !357, size: 16, offset: 304)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !494, file: !433, line: 497, baseType: !503, size: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !432, file: !433, line: 697, baseType: !505, size: 1792, offset: 1792)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !433, line: 507, size: 1792, elements: !506)
!506 = !{!507, !508, !509, !510, !511, !512, !513, !517, !518, !519, !520, !521, !522, !523, !593, !594}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !505, file: !433, line: 508, baseType: !423, size: 192, align: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !505, file: !433, line: 515, baseType: !484, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !505, file: !433, line: 516, baseType: !484, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !505, file: !433, line: 517, baseType: !484, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !505, file: !433, line: 518, baseType: !484, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !505, file: !433, line: 519, baseType: !484, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !505, file: !433, line: 526, baseType: !514, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !327, line: 22, baseType: !515)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !329, line: 30, baseType: !516)
!516 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !505, file: !433, line: 527, baseType: !484, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !505, file: !433, line: 528, baseType: !7, size: 32, offset: 640)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !505, file: !433, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !505, file: !433, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !505, file: !433, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !505, file: !433, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !505, file: !433, line: 563, baseType: !524, size: 512, offset: 704)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !197, line: 118, size: 512, elements: !525)
!525 = !{!526, !534, !535, !540, !589, !590, !591, !592}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !524, file: !197, line: 119, baseType: !527, size: 256)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !528, line: 9, size: 256, elements: !529)
!528 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!529 = !{!530, !531}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !527, file: !528, line: 10, baseType: !423, size: 192, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !527, file: !528, line: 11, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !533, line: 29, baseType: !514)
!533 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!534 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !524, file: !197, line: 120, baseType: !532, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !524, file: !197, line: 121, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{!196, !539}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !524, file: !197, line: 122, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !197, line: 159, size: 512, align: 512, elements: !543)
!543 = !{!544, !564, !565, !569, !579, !580, !584, !588}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !542, file: !197, line: 160, baseType: !545, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !197, line: 214, size: 4608, align: 512, elements: !547)
!547 = !{!548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !546, file: !197, line: 215, baseType: !405)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !546, file: !197, line: 216, baseType: !7, size: 32)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !546, file: !197, line: 217, baseType: !7, size: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !546, file: !197, line: 218, baseType: !7, size: 32, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !546, file: !197, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !546, file: !197, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !546, file: !197, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !546, file: !197, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !546, file: !197, line: 233, baseType: !532, size: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !546, file: !197, line: 234, baseType: !539, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !546, file: !197, line: 235, baseType: !532, size: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !546, file: !197, line: 236, baseType: !539, size: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !546, file: !197, line: 237, baseType: !561, size: 4096, offset: 512)
!561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 4096, elements: !562)
!562 = !{!563}
!563 = !DISubrange(count: 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !542, file: !197, line: 161, baseType: !7, size: 32, offset: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !542, file: !197, line: 162, baseType: !566, size: 32, offset: 96)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !452, line: 27, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !568, line: 96, baseType: !350)
!568 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!569 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !542, file: !197, line: 163, baseType: !570, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !571, line: 276, baseType: !572)
!571 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !571, line: 276, size: 32, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !572, file: !571, line: 276, baseType: !575, size: 32)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !571, line: 70, baseType: !576)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !571, line: 65, size: 32, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !576, file: !571, line: 66, baseType: !7, size: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !542, file: !197, line: 164, baseType: !539, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !542, file: !197, line: 165, baseType: !581, size: 128, offset: 256)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !528, line: 14, size: 128, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !581, file: !528, line: 15, baseType: !415, size: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !542, file: !197, line: 166, baseType: !585, size: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{!532}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !542, file: !197, line: 167, baseType: !532, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !524, file: !197, line: 123, baseType: !326, size: 8, offset: 448)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !524, file: !197, line: 124, baseType: !326, size: 8, offset: 456)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !524, file: !197, line: 125, baseType: !326, size: 8, offset: 464)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !524, file: !197, line: 126, baseType: !326, size: 8, offset: 472)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !505, file: !433, line: 572, baseType: !524, size: 512, offset: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !505, file: !433, line: 580, baseType: !595, size: 64, offset: 1728)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !432, file: !433, line: 721, baseType: !7, size: 32, offset: 3584)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !432, file: !433, line: 722, baseType: !350, size: 32, offset: 3616)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !432, file: !433, line: 723, baseType: !599, size: 64, offset: 3648)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !602, line: 17, baseType: !603)
!602 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !602, line: 17, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !603, file: !602, line: 17, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 64, elements: !607)
!607 = !{!608}
!608 = !DISubrange(count: 1)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !432, file: !433, line: 724, baseType: !601, size: 64, offset: 3712)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !432, file: !433, line: 749, baseType: !611, offset: 3776)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !433, line: 290, elements: !413)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !432, file: !433, line: 751, baseType: !477, size: 128, offset: 3776)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !432, file: !433, line: 757, baseType: !614, size: 64, offset: 3904)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !616, line: 388, size: 7296, elements: !617)
!616 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618, !2879}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !615, file: !616, line: 389, baseType: !619, size: 7296)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !615, file: !616, line: 389, size: 7296, elements: !620)
!620 = !{!621, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2802, !2808, !2811, !2850, !2851, !2863, !2864, !2867, !2868, !2869, !2872, !2873, !2874, !2877, !2878}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !619, file: !616, line: 390, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !616, line: 305, size: 1472, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631, !632, !640, !641, !646, !647, !650, !2748, !2749, !2750, !2751, !2752}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !623, file: !616, line: 308, baseType: !426, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !623, file: !616, line: 309, baseType: !426, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !623, file: !616, line: 313, baseType: !622, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !623, file: !616, line: 313, baseType: !622, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !623, file: !616, line: 315, baseType: !423, size: 192, align: 64, offset: 256)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !623, file: !616, line: 323, baseType: !426, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !623, file: !616, line: 327, baseType: !614, size: 64, offset: 512)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !623, file: !616, line: 333, baseType: !633, size: 64, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !634, line: 284, baseType: !635)
!634 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !634, line: 284, size: 64, elements: !636)
!636 = !{!637}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !635, file: !634, line: 284, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !639, line: 19, baseType: !426)
!639 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !623, file: !616, line: 334, baseType: !426, size: 64, offset: 640)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !623, file: !616, line: 343, baseType: !642, size: 256, offset: 704)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !623, file: !616, line: 340, size: 256, elements: !643)
!643 = !{!644, !645}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !642, file: !616, line: 341, baseType: !423, size: 192, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !642, file: !616, line: 342, baseType: !426, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !623, file: !616, line: 351, baseType: !477, size: 128, offset: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !623, file: !616, line: 353, baseType: !648, size: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !616, line: 353, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !623, file: !616, line: 356, baseType: !651, size: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !191, line: 557, size: 832, elements: !654)
!654 = !{!655, !659, !660, !664, !668, !2722, !2726, !2730, !2734, !2735, !2736, !2740, !2744}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !653, file: !191, line: 558, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !622}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !653, file: !191, line: 559, baseType: !656, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !653, file: !191, line: 560, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!350, !622, !426}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !653, file: !191, line: 561, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!350, !622}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !653, file: !191, line: 562, baseType: !669, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !673}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !616, line: 682, baseType: !7)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !191, line: 508, size: 768, elements: !675)
!675 = !{!676, !677, !678, !680, !681, !682, !689, !696, !702, !2716, !2717, !2719, !2721}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !674, file: !191, line: 509, baseType: !622, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !191, line: 510, baseType: !7, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !674, file: !191, line: 511, baseType: !679, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !452, line: 148, baseType: !7)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !674, file: !191, line: 512, baseType: !426, size: 64, offset: 128)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !674, file: !191, line: 513, baseType: !426, size: 64, offset: 192)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !674, file: !191, line: 514, baseType: !683, size: 64, offset: 256)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !634, line: 385, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 385, size: 64, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !685, file: !634, line: 385, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !639, line: 15, baseType: !426)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !674, file: !191, line: 516, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !634, line: 359, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 359, size: 64, elements: !693)
!693 = !{!694}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !692, file: !634, line: 359, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !639, line: 16, baseType: !426)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !674, file: !191, line: 519, baseType: !697, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !639, line: 21, baseType: !698)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !639, line: 21, size: 64, elements: !699)
!699 = !{!700}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !698, file: !639, line: 21, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !639, line: 14, baseType: !426)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !674, file: !191, line: 521, baseType: !703, size: 64, offset: 448)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !616, line: 68, size: 512, align: 128, elements: !705)
!705 = !{!706, !707, !2708, !2715}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !704, file: !616, line: 69, baseType: !426, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !616, line: 77, baseType: !708, size: 320, offset: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !616, line: 77, size: 320, elements: !709)
!709 = !{!710, !2569, !2574, !2602, !2610, !2616, !2629, !2707}
!710 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 78, baseType: !711, size: 320)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 78, size: 320, elements: !712)
!712 = !{!713, !714, !2567, !2568}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !711, file: !616, line: 84, baseType: !477, size: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !711, file: !616, line: 86, baseType: !715, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !221, line: 451, size: 1216, align: 64, elements: !717)
!717 = !{!718, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2562, !2563, !2564, !2565, !2566}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !716, file: !221, line: 452, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !221, line: 610, size: 4224, elements: !721)
!721 = !{!722, !724, !725, !733, !740, !741, !2078, !2079, !2080, !2081, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2122, !2130, !2131, !2132, !2456, !2457, !2458, !2459}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !720, file: !221, line: 611, baseType: !723, size: 16)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !452, line: 19, baseType: !357)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !720, file: !221, line: 612, baseType: !357, size: 16, offset: 16)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !720, file: !221, line: 613, baseType: !726, size: 32, offset: 32)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !727, line: 23, baseType: !728)
!727 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 21, size: 32, elements: !729)
!729 = !{!730}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !728, file: !727, line: 22, baseType: !731, size: 32)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !452, line: 32, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !568, line: 49, baseType: !7)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !720, file: !221, line: 614, baseType: !734, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !727, line: 28, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !727, line: 26, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !735, file: !727, line: 27, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !452, line: 33, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !568, line: 50, baseType: !7)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !720, file: !221, line: 615, baseType: !7, size: 32, offset: 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !720, file: !221, line: 622, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !744)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !221, line: 1864, size: 1536, align: 512, elements: !745)
!745 = !{!746, !1430, !1443, !1447, !1453, !1457, !1461, !1465, !1469, !1473, !1477, !1478, !1482, !1486, !2028, !2054, !2058, !2064, !2069, !2073, !2074}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !744, file: !221, line: 1865, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{!750, !719, !750, !7}
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !752, line: 89, size: 1536, elements: !753)
!752 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!753 = !{!754, !755, !760, !768, !769, !784, !785, !789, !808, !881, !1414, !1415, !1416, !1422, !1423, !1424}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !751, file: !752, line: 91, baseType: !7, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !751, file: !752, line: 92, baseType: !756, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !571, line: 277, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !571, line: 277, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !757, file: !571, line: 277, baseType: !575, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !751, file: !752, line: 93, baseType: !761, size: 128, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !762, line: 38, size: 128, elements: !763)
!762 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!763 = !{!764, !766}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !761, file: !762, line: 39, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !761, file: !762, line: 39, baseType: !767, size: 64, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !751, file: !752, line: 94, baseType: !750, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !751, file: !752, line: 95, baseType: !770, size: 128, offset: 256)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !752, line: 47, size: 128, elements: !771)
!771 = !{!772, !781}
!772 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !752, line: 48, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !752, line: 48, size: 64, elements: !774)
!774 = !{!775, !780}
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !773, file: !752, line: 49, baseType: !776, size: 64)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !773, file: !752, line: 49, size: 64, elements: !777)
!777 = !{!778, !779}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !776, file: !752, line: 50, baseType: !383, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !776, file: !752, line: 50, baseType: !383, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !773, file: !752, line: 52, baseType: !484, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !770, file: !752, line: 54, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !751, file: !752, line: 96, baseType: !719, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !751, file: !752, line: 98, baseType: !786, size: 256, offset: 448)
!786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 256, elements: !787)
!787 = !{!788}
!788 = !DISubrange(count: 32)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !751, file: !752, line: 101, baseType: !790, size: 32, offset: 704)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !791, line: 25, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !791, line: 26, baseType: !794, size: 32)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !791, line: 26, size: 32, elements: !795)
!795 = !{!796}
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !794, file: !791, line: 30, baseType: !797, size: 32)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !794, file: !791, line: 30, size: 32, elements: !798)
!798 = !{!799, !807}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !797, file: !791, line: 31, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !406, line: 83, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !406, line: 71, elements: !802)
!802 = !{!803}
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !801, file: !406, line: 72, baseType: !804)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !801, file: !406, line: 72, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !804, file: !406, line: 73, baseType: !407)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !791, line: 32, baseType: !350, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !751, file: !752, line: 102, baseType: !809, size: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !811)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !752, line: 135, size: 1024, align: 512, elements: !812)
!812 = !{!813, !817, !818, !825, !833, !837, !841, !845, !846, !850, !855, !867, !875}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !811, file: !752, line: 136, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!350, !750, !7}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !811, file: !752, line: 137, baseType: !814, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !811, file: !752, line: 138, baseType: !819, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DISubroutineType(types: !821)
!821 = !{!350, !822, !824}
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !751)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !811, file: !752, line: 139, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!350, !822, !7, !829, !831}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !770)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !811, file: !752, line: 141, baseType: !834, size: 64, offset: 256)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!350, !822}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !811, file: !752, line: 142, baseType: !838, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!350, !750}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !811, file: !752, line: 143, baseType: !842, size: 64, offset: 384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !750}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !811, file: !752, line: 144, baseType: !842, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !811, file: !752, line: 145, baseType: !847, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !750, !719}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !811, file: !752, line: 146, baseType: !851, size: 64, offset: 576)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!854, !750, !854, !350}
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !811, file: !752, line: 147, baseType: !856, size: 64, offset: 640)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!859, !861}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !752, line: 18, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !863, line: 8, size: 128, elements: !864)
!863 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !862, file: !863, line: 9, baseType: !859, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !862, file: !863, line: 10, baseType: !750, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !811, file: !752, line: 148, baseType: !868, size: 64, offset: 704)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!350, !871, !873}
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !452, line: 30, baseType: !874)
!874 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !811, file: !752, line: 149, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!750, !750, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !751, file: !752, line: 103, baseType: !882, size: 64, offset: 832)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !221, line: 1416, size: 9472, elements: !884)
!884 = !{!885, !886, !889, !890, !891, !894, !943, !1025, !1121, !1204, !1208, !1209, !1210, !1211, !1212, !1220, !1221, !1222, !1227, !1231, !1232, !1235, !1238, !1241, !1242, !1243, !1284, !1325, !1326, !1327, !1328, !1329, !1330, !1333, !1335, !1344, !1345, !1347, !1348, !1349, !1350, !1351, !1366, !1367, !1368, !1369, !1372, !1376, !1377, !1380, !1395, !1396, !1397, !1408, !1409, !1410, !1411, !1412, !1413}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !883, file: !221, line: 1417, baseType: !477, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !883, file: !221, line: 1418, baseType: !887, size: 32, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !452, line: 16, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !452, line: 13, baseType: !383)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !883, file: !221, line: 1419, baseType: !330, size: 8, offset: 160)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !883, file: !221, line: 1420, baseType: !426, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !883, file: !221, line: 1421, baseType: !892, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !452, line: 46, baseType: !893)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !568, line: 88, baseType: !516)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !883, file: !221, line: 1422, baseType: !895, size: 64, offset: 320)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !221, line: 2228, size: 576, elements: !897)
!897 = !{!898, !899, !900, !907, !911, !915, !919, !920, !921, !931, !934, !935, !936, !940, !941, !942}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !896, file: !221, line: 2229, baseType: !829, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !896, file: !221, line: 2230, baseType: !350, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !896, file: !221, line: 2238, baseType: !901, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!350, !904}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !906, line: 28, flags: DIFlagFwdDecl)
!906 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!907 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !896, file: !221, line: 2239, baseType: !908, size: 64, offset: 192)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !221, line: 70, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !896, file: !221, line: 2240, baseType: !912, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!750, !895, !350, !829, !317}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !896, file: !221, line: 2242, baseType: !916, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{null, !882}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !896, file: !221, line: 2243, baseType: !337, size: 64, offset: 384)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !896, file: !221, line: 2244, baseType: !895, size: 64, offset: 448)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !896, file: !221, line: 2245, baseType: !922, size: 64, offset: 512)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !452, line: 182, size: 64, elements: !923)
!923 = !{!924}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !922, file: !452, line: 183, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !452, line: 186, size: 128, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !452, line: 187, baseType: !925, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !926, file: !452, line: 187, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !896, file: !221, line: 2247, baseType: !932, offset: 576)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !933, line: 187, elements: !413)
!933 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!934 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !896, file: !221, line: 2248, baseType: !932, offset: 576)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !896, file: !221, line: 2249, baseType: !932, offset: 576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !896, file: !221, line: 2250, baseType: !937, offset: 576)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 3)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !896, file: !221, line: 2252, baseType: !932, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !896, file: !221, line: 2253, baseType: !932, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !896, file: !221, line: 2254, baseType: !932, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !883, file: !221, line: 1423, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !221, line: 1935, size: 1472, elements: !947)
!947 = !{!948, !952, !956, !957, !961, !967, !971, !972, !973, !977, !981, !982, !983, !984, !990, !995, !996, !1002, !1003, !1004, !1005, !1009, !1024}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !946, file: !221, line: 1936, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!719, !882}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !946, file: !221, line: 1937, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !719}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !946, file: !221, line: 1938, baseType: !953, size: 64, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !946, file: !221, line: 1940, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !719, !350}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !946, file: !221, line: 1941, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!350, !719, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !221, line: 289, flags: DIFlagFwdDecl)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !946, file: !221, line: 1942, baseType: !968, size: 64, offset: 320)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!350, !719}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !946, file: !221, line: 1943, baseType: !953, size: 64, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !946, file: !221, line: 1944, baseType: !916, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !946, file: !221, line: 1945, baseType: !974, size: 64, offset: 512)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!350, !882, !350}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !946, file: !221, line: 1946, baseType: !978, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!350, !882}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !946, file: !221, line: 1947, baseType: !978, size: 64, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !946, file: !221, line: 1948, baseType: !978, size: 64, offset: 704)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !946, file: !221, line: 1949, baseType: !978, size: 64, offset: 768)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !946, file: !221, line: 1950, baseType: !985, size: 64, offset: 832)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!350, !750, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !221, line: 57, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !946, file: !221, line: 1951, baseType: !991, size: 64, offset: 896)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!350, !882, !994, !854}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !946, file: !221, line: 1952, baseType: !916, size: 64, offset: 960)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !946, file: !221, line: 1954, baseType: !997, size: 64, offset: 1024)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!350, !1000, !750}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !634, line: 539, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !946, file: !221, line: 1955, baseType: !997, size: 64, offset: 1088)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !946, file: !221, line: 1956, baseType: !997, size: 64, offset: 1152)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !946, file: !221, line: 1957, baseType: !997, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !946, file: !221, line: 1963, baseType: !1006, size: 64, offset: 1280)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!350, !882, !703, !679}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !946, file: !221, line: 1964, baseType: !1010, size: 64, offset: 1344)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!443, !882, !1013}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1015, line: 12, size: 256, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !{!1017, !1018, !1019, !1020, !1021}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1014, file: !1015, line: 13, baseType: !679, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1014, file: !1015, line: 16, baseType: !350, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1014, file: !1015, line: 23, baseType: !426, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1014, file: !1015, line: 30, baseType: !426, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1014, file: !1015, line: 33, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !616, line: 27, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !946, file: !221, line: 1966, baseType: !1010, size: 64, offset: 1408)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !883, file: !221, line: 1424, baseType: !1026, size: 64, offset: 448)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !215, line: 322, size: 704, elements: !1029)
!1029 = !{!1030, !1090, !1094, !1098, !1099, !1100, !1101, !1102, !1107, !1112, !1116}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1028, file: !215, line: 323, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!350, !1034}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !215, line: 294, size: 1600, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1040, !1041, !1054, !1055, !1056, !1057, !1073, !1074, !1075}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1035, file: !215, line: 295, baseType: !926, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1035, file: !215, line: 296, baseType: !477, size: 128, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1035, file: !215, line: 297, baseType: !477, size: 128, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1035, file: !215, line: 298, baseType: !477, size: 128, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1035, file: !215, line: 299, baseType: !1042, size: 192, offset: 512)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1043, line: 53, size: 192, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1052, !1053}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1042, file: !1043, line: 54, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1047, line: 13, baseType: !1048)
!1047 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !452, line: 175, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 173, size: 64, elements: !1050)
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1049, file: !452, line: 174, baseType: !514, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1042, file: !1043, line: 55, baseType: !800, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1042, file: !1043, line: 59, baseType: !477, size: 128, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1035, file: !215, line: 300, baseType: !800, offset: 704)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1035, file: !215, line: 301, baseType: !451, size: 32, offset: 704)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1035, file: !215, line: 302, baseType: !882, size: 64, offset: 768)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1035, file: !215, line: 303, baseType: !1058, size: 64, offset: 832)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !215, line: 68, size: 64, elements: !1059)
!1059 = !{!1060, !1072}
!1060 = !DIDerivedType(tag: DW_TAG_member, scope: !1058, file: !215, line: 69, baseType: !1061, size: 32)
!1061 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1058, file: !215, line: 69, size: 32, elements: !1062)
!1062 = !{!1063, !1064, !1065}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1061, file: !215, line: 70, baseType: !726, size: 32)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1061, file: !215, line: 71, baseType: !734, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1061, file: !215, line: 72, baseType: !1066, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1067, line: 24, baseType: !1068)
!1067 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 22, size: 32, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1068, file: !1067, line: 23, baseType: !1071, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1067, line: 20, baseType: !732)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1058, file: !215, line: 74, baseType: !214, size: 32, offset: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1035, file: !215, line: 304, baseType: !892, size: 64, offset: 896)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1035, file: !215, line: 305, baseType: !426, size: 64, offset: 960)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1035, file: !215, line: 306, baseType: !1076, size: 576, offset: 1024)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !215, line: 205, size: 576, elements: !1077)
!1077 = !{!1078, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1089}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1076, file: !215, line: 206, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !215, line: 66, baseType: !516)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1076, file: !215, line: 207, baseType: !1079, size: 64, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1076, file: !215, line: 208, baseType: !1079, size: 64, offset: 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1076, file: !215, line: 209, baseType: !1079, size: 64, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1076, file: !215, line: 210, baseType: !1079, size: 64, offset: 256)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1076, file: !215, line: 211, baseType: !1079, size: 64, offset: 320)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1076, file: !215, line: 212, baseType: !1079, size: 64, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1076, file: !215, line: 213, baseType: !1087, size: 64, offset: 448)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1088, line: 8, baseType: !515)
!1088 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1076, file: !215, line: 214, baseType: !1087, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1028, file: !215, line: 324, baseType: !1091, size: 64, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1034, !882, !350}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1028, file: !215, line: 325, baseType: !1095, size: 64, offset: 128)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !1034}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1028, file: !215, line: 326, baseType: !1031, size: 64, offset: 192)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1028, file: !215, line: 327, baseType: !1031, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1028, file: !215, line: 328, baseType: !1031, size: 64, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1028, file: !215, line: 329, baseType: !974, size: 64, offset: 384)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1028, file: !215, line: 332, baseType: !1103, size: 64, offset: 448)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!1106, !719}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1028, file: !215, line: 333, baseType: !1108, size: 64, offset: 512)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!350, !719, !1111}
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1028, file: !215, line: 335, baseType: !1113, size: 64, offset: 576)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!350, !719, !1106}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1028, file: !215, line: 337, baseType: !1117, size: 64, offset: 640)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DISubroutineType(types: !1119)
!1119 = !{!350, !882, !1120}
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !883, file: !221, line: 1425, baseType: !1122, size: 64, offset: 512)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !215, line: 428, size: 704, elements: !1125)
!1125 = !{!1126, !1130, !1131, !1135, !1136, !1137, !1152, !1175, !1179, !1180, !1203}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1124, file: !215, line: 429, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!350, !882, !350, !350, !871}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1124, file: !215, line: 430, baseType: !974, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1124, file: !215, line: 431, baseType: !1132, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!350, !882, !7}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1124, file: !215, line: 432, baseType: !1132, size: 64, offset: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1124, file: !215, line: 433, baseType: !974, size: 64, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1124, file: !215, line: 434, baseType: !1138, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!350, !882, !350, !1141}
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !215, line: 415, size: 256, elements: !1143)
!1143 = !{!1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1142, file: !215, line: 416, baseType: !350, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1142, file: !215, line: 417, baseType: !7, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1142, file: !215, line: 418, baseType: !7, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1142, file: !215, line: 420, baseType: !7, size: 32, offset: 96)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1142, file: !215, line: 421, baseType: !7, size: 32, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1142, file: !215, line: 422, baseType: !7, size: 32, offset: 160)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1142, file: !215, line: 423, baseType: !7, size: 32, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1142, file: !215, line: 424, baseType: !7, size: 32, offset: 224)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1124, file: !215, line: 435, baseType: !1153, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!350, !882, !1058, !1156}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !215, line: 343, size: 960, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1157, file: !215, line: 344, baseType: !350, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1157, file: !215, line: 345, baseType: !484, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1157, file: !215, line: 346, baseType: !484, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1157, file: !215, line: 347, baseType: !484, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1157, file: !215, line: 348, baseType: !484, size: 64, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1157, file: !215, line: 349, baseType: !484, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1157, file: !215, line: 350, baseType: !484, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1157, file: !215, line: 351, baseType: !514, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1157, file: !215, line: 353, baseType: !514, size: 64, offset: 512)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1157, file: !215, line: 354, baseType: !350, size: 32, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1157, file: !215, line: 355, baseType: !350, size: 32, offset: 608)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1157, file: !215, line: 356, baseType: !484, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1157, file: !215, line: 357, baseType: !484, size: 64, offset: 704)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1157, file: !215, line: 358, baseType: !484, size: 64, offset: 768)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1157, file: !215, line: 359, baseType: !514, size: 64, offset: 832)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1157, file: !215, line: 360, baseType: !350, size: 32, offset: 896)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1124, file: !215, line: 436, baseType: !1176, size: 64, offset: 448)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!350, !882, !1120, !1156}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1124, file: !215, line: 438, baseType: !1153, size: 64, offset: 512)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1124, file: !215, line: 439, baseType: !1181, size: 64, offset: 576)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!350, !882, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !215, line: 409, size: 1408, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1185, file: !215, line: 410, baseType: !7, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1185, file: !215, line: 411, baseType: !1189, size: 1344, offset: 64)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 1344, elements: !938)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !215, line: 395, size: 448, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1202}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !215, line: 396, baseType: !7, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1190, file: !215, line: 397, baseType: !7, size: 32, offset: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1190, file: !215, line: 399, baseType: !7, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1190, file: !215, line: 400, baseType: !7, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1190, file: !215, line: 401, baseType: !7, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1190, file: !215, line: 402, baseType: !7, size: 32, offset: 160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1190, file: !215, line: 403, baseType: !7, size: 32, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1190, file: !215, line: 404, baseType: !486, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1190, file: !215, line: 405, baseType: !1201, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !452, line: 126, baseType: !484)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1190, file: !215, line: 406, baseType: !1201, size: 64, offset: 384)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1124, file: !215, line: 440, baseType: !1132, size: 64, offset: 640)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !883, file: !221, line: 1426, baseType: !1205, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1207)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !221, line: 49, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !883, file: !221, line: 1427, baseType: !426, size: 64, offset: 640)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !883, file: !221, line: 1428, baseType: !426, size: 64, offset: 704)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !883, file: !221, line: 1429, baseType: !426, size: 64, offset: 768)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !883, file: !221, line: 1430, baseType: !750, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !883, file: !221, line: 1431, baseType: !1213, size: 256, offset: 896)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1214, line: 35, size: 256, elements: !1215)
!1214 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217, !1218, !1219}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1213, file: !1214, line: 36, baseType: !1046, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1213, file: !1214, line: 42, baseType: !1046, size: 64, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1213, file: !1214, line: 46, baseType: !405, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1213, file: !1214, line: 47, baseType: !477, size: 128, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !883, file: !221, line: 1432, baseType: !350, size: 32, offset: 1152)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !883, file: !221, line: 1433, baseType: !451, size: 32, offset: 1184)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !883, file: !221, line: 1437, baseType: !1223, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1226)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !221, line: 1437, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !883, file: !221, line: 1449, baseType: !1228, size: 64, offset: 1280)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !762, line: 34, size: 64, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1228, file: !762, line: 35, baseType: !765, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !883, file: !221, line: 1450, baseType: !477, size: 128, offset: 1344)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !883, file: !221, line: 1451, baseType: !1233, size: 64, offset: 1472)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !221, line: 699, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !883, file: !221, line: 1452, baseType: !1236, size: 64, offset: 1536)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !433, line: 40, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !883, file: !221, line: 1453, baseType: !1239, size: 64, offset: 1600)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !221, line: 1453, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !883, file: !221, line: 1454, baseType: !926, size: 128, offset: 1664)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !883, file: !221, line: 1455, baseType: !7, size: 32, offset: 1792)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !883, file: !221, line: 1456, baseType: !1244, size: 2432, offset: 1856)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !215, line: 518, size: 2432, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1250, !1282}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1244, file: !215, line: 519, baseType: !7, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1244, file: !215, line: 520, baseType: !1213, size: 256, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1244, file: !215, line: 521, baseType: !1249, size: 192, offset: 320)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !719, size: 192, elements: !938)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1244, file: !215, line: 522, baseType: !1251, size: 1728, offset: 512)
!1251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1252, size: 1728, elements: !938)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !215, line: 222, size: 576, elements: !1253)
!1253 = !{!1254, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1252, file: !215, line: 223, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !215, line: 443, size: 256, elements: !1257)
!1257 = !{!1258, !1259, !1272, !1273}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1256, file: !215, line: 444, baseType: !350, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1256, file: !215, line: 445, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !215, line: 310, size: 512, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1262, file: !215, line: 311, baseType: !974, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1262, file: !215, line: 312, baseType: !974, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1262, file: !215, line: 313, baseType: !974, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1262, file: !215, line: 314, baseType: !974, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1262, file: !215, line: 315, baseType: !1031, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1262, file: !215, line: 316, baseType: !1031, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1262, file: !215, line: 317, baseType: !1031, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1262, file: !215, line: 318, baseType: !1117, size: 64, offset: 448)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1256, file: !215, line: 446, baseType: !337, size: 64, offset: 128)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1256, file: !215, line: 447, baseType: !1255, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1252, file: !215, line: 224, baseType: !350, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1252, file: !215, line: 226, baseType: !477, size: 128, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1252, file: !215, line: 227, baseType: !426, size: 64, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1252, file: !215, line: 228, baseType: !7, size: 32, offset: 320)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1252, file: !215, line: 229, baseType: !7, size: 32, offset: 352)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1252, file: !215, line: 230, baseType: !1079, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1252, file: !215, line: 231, baseType: !1079, size: 64, offset: 448)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1252, file: !215, line: 232, baseType: !317, size: 64, offset: 512)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1244, file: !215, line: 523, baseType: !1283, size: 192, offset: 2240)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 192, elements: !938)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !883, file: !221, line: 1458, baseType: !1285, size: 2112, offset: 4288)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !221, line: 1410, size: 2112, elements: !1286)
!1286 = !{!1287, !1288, !1295}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1285, file: !221, line: 1411, baseType: !350, size: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1285, file: !221, line: 1412, baseType: !1289, size: 128, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1290, line: 40, baseType: !1291)
!1290 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1290, line: 36, size: 128, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1291, file: !1290, line: 37, baseType: !800)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1291, file: !1290, line: 38, baseType: !477, size: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1285, file: !221, line: 1413, baseType: !1296, size: 1920, offset: 192)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1297, size: 1920, elements: !938)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1298, line: 12, size: 640, elements: !1299)
!1298 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !{!1300, !1316, !1318, !1323, !1324}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1297, file: !1298, line: 13, baseType: !1301, size: 320)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1302, line: 17, size: 320, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1303 = !{!1304, !1305, !1306, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1301, file: !1302, line: 18, baseType: !350, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1301, file: !1302, line: 19, baseType: !350, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1301, file: !1302, line: 20, baseType: !1289, size: 128, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1301, file: !1302, line: 22, baseType: !1308, size: 128, align: 64, offset: 192)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !452, line: 216, size: 128, align: 64, elements: !1309)
!1309 = !{!1310, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1308, file: !452, line: 217, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1308, file: !452, line: 218, baseType: !1313, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1311}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1297, file: !1298, line: 14, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1297, file: !1298, line: 15, baseType: !1319, size: 64, offset: 384)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1320, line: 16, size: 64, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1319, file: !1320, line: 17, baseType: !431, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1297, file: !1298, line: 16, baseType: !1289, size: 128, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1297, file: !1298, line: 17, baseType: !451, size: 32, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !883, file: !221, line: 1465, baseType: !317, size: 64, offset: 6400)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !883, file: !221, line: 1468, baseType: !383, size: 32, offset: 6464)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !883, file: !221, line: 1470, baseType: !1087, size: 64, offset: 6528)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !883, file: !221, line: 1471, baseType: !1087, size: 64, offset: 6592)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !883, file: !221, line: 1473, baseType: !384, size: 32, offset: 6656)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !883, file: !221, line: 1474, baseType: !1331, size: 64, offset: 6720)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !221, line: 603, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !883, file: !221, line: 1477, baseType: !1334, size: 256, offset: 6784)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 256, elements: !787)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !883, file: !221, line: 1478, baseType: !1336, size: 128, offset: 7040)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1337, line: 18, baseType: !1338)
!1337 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1337, line: 16, size: 128, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1338, file: !1337, line: 17, baseType: !1341, size: 128)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 128, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 16)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !883, file: !221, line: 1480, baseType: !7, size: 32, offset: 7168)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !883, file: !221, line: 1481, baseType: !1346, size: 32, offset: 7200)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !452, line: 150, baseType: !7)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !883, file: !221, line: 1487, baseType: !1042, size: 192, offset: 7232)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !883, file: !221, line: 1493, baseType: !829, size: 64, offset: 7424)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !883, file: !221, line: 1495, baseType: !809, size: 64, offset: 7488)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !883, file: !221, line: 1500, baseType: !350, size: 32, offset: 7552)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !883, file: !221, line: 1502, baseType: !1352, size: 448, offset: 7616)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1015, line: 60, size: 448, elements: !1353)
!1353 = !{!1354, !1359, !1360, !1361, !1362, !1363, !1364}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1352, file: !1015, line: 61, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!426, !1358, !1013}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1352, file: !1015, line: 63, baseType: !1355, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1352, file: !1015, line: 66, baseType: !443, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1352, file: !1015, line: 67, baseType: !350, size: 32, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1352, file: !1015, line: 68, baseType: !7, size: 32, offset: 224)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1352, file: !1015, line: 71, baseType: !477, size: 128, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1352, file: !1015, line: 77, baseType: !1365, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !883, file: !221, line: 1505, baseType: !1046, size: 64, offset: 8064)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !883, file: !221, line: 1508, baseType: !1046, size: 64, offset: 8128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !883, file: !221, line: 1511, baseType: !350, size: 32, offset: 8192)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !883, file: !221, line: 1514, baseType: !1370, size: 32, offset: 8224)
!1370 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1371, line: 8, baseType: !383)
!1371 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !883, file: !221, line: 1517, baseType: !1373, size: 64, offset: 8256)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1375, line: 18, flags: DIFlagFwdDecl)
!1375 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !883, file: !221, line: 1518, baseType: !922, size: 64, offset: 8320)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !883, file: !221, line: 1525, baseType: !1378, size: 64, offset: 8384)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !727, line: 18, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !883, file: !221, line: 1532, baseType: !1381, size: 64, offset: 8448)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1382, line: 52, size: 64, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1381, file: !1382, line: 53, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1382, line: 40, size: 256, elements: !1387)
!1387 = !{!1388, !1389, !1394}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1386, file: !1382, line: 42, baseType: !800)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1386, file: !1382, line: 44, baseType: !1390, size: 192)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1382, line: 28, size: 192, elements: !1391)
!1391 = !{!1392, !1393}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1390, file: !1382, line: 29, baseType: !477, size: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1390, file: !1382, line: 31, baseType: !443, size: 64, offset: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1386, file: !1382, line: 49, baseType: !443, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !883, file: !221, line: 1533, baseType: !1381, size: 64, offset: 8512)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !883, file: !221, line: 1534, baseType: !1308, size: 128, align: 64, offset: 8576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !883, file: !221, line: 1535, baseType: !1398, size: 256, offset: 8704)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1375, line: 102, size: 256, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1398, file: !1375, line: 103, baseType: !1046, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1398, file: !1375, line: 104, baseType: !477, size: 128, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1398, file: !1375, line: 105, baseType: !1403, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1375, line: 21, baseType: !1404)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !1407}
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !883, file: !221, line: 1537, baseType: !1042, size: 192, offset: 8960)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !883, file: !221, line: 1542, baseType: !350, size: 32, offset: 9152)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !883, file: !221, line: 1545, baseType: !800, offset: 9184)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !883, file: !221, line: 1546, baseType: !477, size: 128, offset: 9216)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !883, file: !221, line: 1548, baseType: !800, offset: 9344)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !883, file: !221, line: 1549, baseType: !477, size: 128, offset: 9344)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !751, file: !752, line: 104, baseType: !426, size: 64, offset: 896)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !751, file: !752, line: 105, baseType: !317, size: 64, offset: 960)
!1416 = !DIDerivedType(tag: DW_TAG_member, scope: !751, file: !752, line: 107, baseType: !1417, size: 128, offset: 1024)
!1417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 107, size: 128, elements: !1418)
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1417, file: !752, line: 108, baseType: !477, size: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1417, file: !752, line: 109, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !751, file: !752, line: 111, baseType: !477, size: 128, offset: 1152)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !751, file: !752, line: 112, baseType: !477, size: 128, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !751, file: !752, line: 120, baseType: !1425, size: 128, offset: 1408)
!1425 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !751, file: !752, line: 116, size: 128, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1425, file: !752, line: 117, baseType: !926, size: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1425, file: !752, line: 118, baseType: !761, size: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1425, file: !752, line: 119, baseType: !1308, size: 128, align: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !744, file: !221, line: 1866, baseType: !1431, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!829, !750, !719, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1436, line: 10, size: 128, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!1437 = !{!1438, !1442}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1435, file: !1436, line: 11, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1440, size: 64)
!1440 = !DISubroutineType(types: !1441)
!1441 = !{null, !317}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1435, file: !1436, line: 12, baseType: !317, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !744, file: !221, line: 1867, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!350, !719, !350}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !744, file: !221, line: 1868, baseType: !1448, size: 64, offset: 192)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!1451, !719, !350}
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !221, line: 581, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !744, file: !221, line: 1870, baseType: !1454, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DISubroutineType(types: !1456)
!1456 = !{!350, !750, !854, !350}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !744, file: !221, line: 1872, baseType: !1458, size: 64, offset: 320)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!350, !719, !750, !723, !873}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !744, file: !221, line: 1873, baseType: !1462, size: 64, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!350, !750, !719, !750}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !744, file: !221, line: 1874, baseType: !1466, size: 64, offset: 448)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!350, !719, !750}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !744, file: !221, line: 1875, baseType: !1470, size: 64, offset: 512)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!350, !719, !750, !829}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !744, file: !221, line: 1876, baseType: !1474, size: 64, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!350, !719, !750, !723}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !744, file: !221, line: 1877, baseType: !1466, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !744, file: !221, line: 1878, baseType: !1479, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!350, !719, !750, !723, !887}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !744, file: !221, line: 1879, baseType: !1483, size: 64, offset: 768)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!350, !719, !750, !719, !750, !7}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !744, file: !221, line: 1881, baseType: !1487, size: 64, offset: 832)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!350, !750, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !221, line: 219, size: 640, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1503, !1504, !1505}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1491, file: !221, line: 220, baseType: !7, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1491, file: !221, line: 221, baseType: !723, size: 16, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1491, file: !221, line: 222, baseType: !726, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1491, file: !221, line: 223, baseType: !734, size: 32, offset: 96)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1491, file: !221, line: 224, baseType: !892, size: 64, offset: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1491, file: !221, line: 225, baseType: !1499, size: 128, offset: 192)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1088, line: 13, size: 128, elements: !1500)
!1500 = !{!1501, !1502}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1499, file: !1088, line: 14, baseType: !1087, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1499, file: !1088, line: 15, baseType: !443, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1491, file: !221, line: 226, baseType: !1499, size: 128, offset: 320)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1491, file: !221, line: 227, baseType: !1499, size: 128, offset: 448)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1491, file: !221, line: 234, baseType: !1506, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !221, line: 916, size: 1856, align: 32, elements: !1508)
!1508 = !{!1509, !1519, !1520, !1521, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1826, !2012, !2021, !2022, !2023, !2024, !2025, !2026, !2027}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1507, file: !221, line: 920, baseType: !1510, size: 128)
!1510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1507, file: !221, line: 917, size: 128, elements: !1511)
!1511 = !{!1512, !1518}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1510, file: !221, line: 918, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1514, line: 58, size: 64, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1513, file: !1514, line: 59, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1510, file: !221, line: 919, baseType: !1308, size: 128, align: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1507, file: !221, line: 921, baseType: !862, size: 128, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1507, file: !221, line: 922, baseType: !719, size: 64, offset: 256)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1507, file: !221, line: 923, baseType: !1522, size: 64, offset: 320)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !221, line: 1822, size: 2048, elements: !1525)
!1525 = !{!1526, !1527, !1531, !1542, !1546, !1572, !1573, !1577, !1590, !1591, !1607, !1611, !1612, !1616, !1617, !1621, !1626, !1627, !1631, !1635, !1744, !1748, !1752, !1756, !1757, !1763, !1767, !1772, !1776, !1780, !1784, !1788}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1524, file: !221, line: 1823, baseType: !337, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1524, file: !221, line: 1824, baseType: !1528, size: 64, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!892, !1506, !892, !350}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1524, file: !221, line: 1825, baseType: !1532, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1535, !1506, !854, !1538, !1541}
!1535 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !452, line: 60, baseType: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !568, line: 73, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !568, line: 15, baseType: !443)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !452, line: 55, baseType: !1539)
!1539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !568, line: 72, baseType: !1540)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !568, line: 16, baseType: !426)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1524, file: !221, line: 1826, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1535, !1506, !829, !1538, !1541}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1524, file: !221, line: 1827, baseType: !1547, size: 64, offset: 256)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!1535, !1550, !1570}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !221, line: 320, size: 384, elements: !1552)
!1552 = !{!1553, !1554, !1555, !1559, !1560, !1561, !1562, !1563}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1551, file: !221, line: 321, baseType: !1506, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1551, file: !221, line: 326, baseType: !892, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1551, file: !221, line: 327, baseType: !1556, size: 64, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{null, !1550, !443, !443}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1551, file: !221, line: 328, baseType: !317, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1551, file: !221, line: 329, baseType: !350, size: 32, offset: 256)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1551, file: !221, line: 330, baseType: !367, size: 16, offset: 288)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1551, file: !221, line: 331, baseType: !367, size: 16, offset: 304)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1551, file: !221, line: 332, baseType: !1564, size: 64, offset: 320)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1551, file: !221, line: 332, size: 64, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1564, file: !221, line: 333, baseType: !7, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1564, file: !221, line: 334, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !221, line: 334, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !221, line: 64, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1524, file: !221, line: 1828, baseType: !1547, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1524, file: !221, line: 1829, baseType: !1574, size: 64, offset: 384)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!350, !1550, !873}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1524, file: !221, line: 1830, baseType: !1578, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!350, !1506, !1581}
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !221, line: 1776, size: 128, elements: !1583)
!1583 = !{!1584, !1589}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1582, file: !221, line: 1777, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !221, line: 1773, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!350, !1581, !829, !350, !892, !484, !7}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1582, file: !221, line: 1778, baseType: !892, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1524, file: !221, line: 1831, baseType: !1578, size: 64, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1524, file: !221, line: 1832, baseType: !1592, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1595, !1506, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1596, line: 52, baseType: !7)
!1596 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1599, line: 43, size: 128, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1606}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1598, file: !1599, line: 44, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1599, line: 37, baseType: !1603)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !1506, !1421, !1597}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1598, file: !1599, line: 45, baseType: !1595, size: 32, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1524, file: !221, line: 1833, baseType: !1608, size: 64, offset: 640)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!443, !1506, !7, !426}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1524, file: !221, line: 1834, baseType: !1608, size: 64, offset: 704)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1524, file: !221, line: 1835, baseType: !1613, size: 64, offset: 768)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!350, !1506, !622}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1524, file: !221, line: 1836, baseType: !426, size: 64, offset: 832)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1524, file: !221, line: 1837, baseType: !1618, size: 64, offset: 896)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!350, !719, !1506}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1524, file: !221, line: 1838, baseType: !1622, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!350, !1506, !1625}
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !221, line: 1007, baseType: !317)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1524, file: !221, line: 1839, baseType: !1618, size: 64, offset: 1024)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1524, file: !221, line: 1840, baseType: !1628, size: 64, offset: 1088)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!350, !1506, !892, !892, !350}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1524, file: !221, line: 1841, baseType: !1632, size: 64, offset: 1152)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!350, !350, !1506, !350}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !221, line: 1842, baseType: !1636, size: 64, offset: 1216)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!350, !1506, !350, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !221, line: 1062, size: 1664, elements: !1641)
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1673, !1674, !1675, !1688, !1720}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1640, file: !221, line: 1063, baseType: !1639, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1640, file: !221, line: 1064, baseType: !477, size: 128, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1640, file: !221, line: 1065, baseType: !926, size: 128, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1640, file: !221, line: 1066, baseType: !477, size: 128, offset: 320)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1640, file: !221, line: 1069, baseType: !477, size: 128, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1640, file: !221, line: 1072, baseType: !1625, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1640, file: !221, line: 1073, baseType: !7, size: 32, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1640, file: !221, line: 1074, baseType: !330, size: 8, offset: 672)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1640, file: !221, line: 1075, baseType: !7, size: 32, offset: 704)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1640, file: !221, line: 1076, baseType: !350, size: 32, offset: 736)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1640, file: !221, line: 1077, baseType: !1289, size: 128, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1640, file: !221, line: 1078, baseType: !1506, size: 64, offset: 896)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1640, file: !221, line: 1079, baseType: !892, size: 64, offset: 960)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1640, file: !221, line: 1080, baseType: !892, size: 64, offset: 1024)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1640, file: !221, line: 1082, baseType: !1657, size: 64, offset: 1088)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !221, line: 1314, size: 320, elements: !1659)
!1659 = !{!1660, !1668, !1669, !1670, !1671, !1672}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1658, file: !221, line: 1315, baseType: !1661)
!1661 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1662, line: 20, baseType: !1663)
!1662 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1662, line: 11, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1663, file: !1662, line: 12, baseType: !1666)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !411, line: 33, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !411, line: 31, elements: !413)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1658, file: !221, line: 1316, baseType: !350, size: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1658, file: !221, line: 1317, baseType: !350, size: 32, offset: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1658, file: !221, line: 1318, baseType: !1657, size: 64, offset: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1658, file: !221, line: 1319, baseType: !1506, size: 64, offset: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1658, file: !221, line: 1320, baseType: !1308, size: 128, align: 64, offset: 192)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1640, file: !221, line: 1084, baseType: !426, size: 64, offset: 1152)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1640, file: !221, line: 1085, baseType: !426, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1640, file: !221, line: 1087, baseType: !1676, size: 64, offset: 1280)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !221, line: 1011, size: 128, elements: !1679)
!1679 = !{!1680, !1684}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1678, file: !221, line: 1012, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1639, !1639}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1678, file: !221, line: 1013, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1639}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1640, file: !221, line: 1088, baseType: !1689, size: 64, offset: 1344)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !221, line: 1016, size: 512, elements: !1692)
!1692 = !{!1693, !1697, !1701, !1702, !1706, !1710, !1714, !1719}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1691, file: !221, line: 1017, baseType: !1694, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1625, !1625}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1691, file: !221, line: 1018, baseType: !1698, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{null, !1625}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1691, file: !221, line: 1019, baseType: !1685, size: 64, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1691, file: !221, line: 1020, baseType: !1703, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!350, !1639, !350}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1691, file: !221, line: 1021, baseType: !1707, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!873, !1639}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1691, file: !221, line: 1022, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!350, !1639, !350, !480}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1691, file: !221, line: 1023, baseType: !1715, size: 64, offset: 384)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DISubroutineType(types: !1717)
!1717 = !{null, !1639, !1718}
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1691, file: !221, line: 1024, baseType: !1707, size: 64, offset: 448)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1640, file: !221, line: 1097, baseType: !1721, size: 256, offset: 1408)
!1721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !221, line: 1089, size: 256, elements: !1722)
!1722 = !{!1723, !1732, !1738}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1721, file: !221, line: 1090, baseType: !1724, size: 256)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1725, line: 10, size: 256, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1731}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1724, file: !1725, line: 11, baseType: !383, size: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1724, file: !1725, line: 12, baseType: !1729, size: 64, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1725, line: 5, flags: DIFlagFwdDecl)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1724, file: !1725, line: 13, baseType: !477, size: 128, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1721, file: !221, line: 1091, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1725, line: 17, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1733, file: !1725, line: 18, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1725, line: 16, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1721, file: !221, line: 1096, baseType: !1739, size: 192)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1721, file: !221, line: 1092, size: 192, elements: !1740)
!1740 = !{!1741, !1742, !1743}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1739, file: !221, line: 1093, baseType: !477, size: 128)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1739, file: !221, line: 1094, baseType: !350, size: 32, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1739, file: !221, line: 1095, baseType: !7, size: 32, offset: 160)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1524, file: !221, line: 1843, baseType: !1745, size: 64, offset: 1280)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!1535, !1506, !703, !350, !1538, !1541, !350}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1524, file: !221, line: 1844, baseType: !1749, size: 64, offset: 1344)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{!426, !1506, !426, !426, !426, !426}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1524, file: !221, line: 1845, baseType: !1753, size: 64, offset: 1408)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!350, !350}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1524, file: !221, line: 1846, baseType: !1636, size: 64, offset: 1472)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1524, file: !221, line: 1847, baseType: !1758, size: 64, offset: 1536)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1535, !1761, !1506, !1541, !1538, !7}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !433, line: 53, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1524, file: !221, line: 1848, baseType: !1764, size: 64, offset: 1600)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!1535, !1506, !1541, !1761, !1538, !7}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1524, file: !221, line: 1849, baseType: !1768, size: 64, offset: 1664)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!350, !1506, !443, !1771, !1718}
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1524, file: !221, line: 1850, baseType: !1773, size: 64, offset: 1728)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!443, !1506, !350, !892, !892}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1524, file: !221, line: 1852, baseType: !1777, size: 64, offset: 1792)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !1000, !1506}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1524, file: !221, line: 1856, baseType: !1781, size: 64, offset: 1856)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!1535, !1506, !892, !1506, !892, !1538, !7}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1524, file: !221, line: 1858, baseType: !1785, size: 64, offset: 1920)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!892, !1506, !892, !1506, !892, !892, !7}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1524, file: !221, line: 1861, baseType: !1628, size: 64, offset: 1984)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1507, file: !221, line: 929, baseType: !800, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1507, file: !221, line: 930, baseType: !220, size: 32, offset: 384)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1507, file: !221, line: 931, baseType: !1046, size: 64, offset: 448)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1507, file: !221, line: 932, baseType: !7, size: 32, offset: 512)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1507, file: !221, line: 933, baseType: !1346, size: 32, offset: 544)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1507, file: !221, line: 934, baseType: !1042, size: 192, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1507, file: !221, line: 935, baseType: !892, size: 64, offset: 768)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1507, file: !221, line: 936, baseType: !1797, size: 192, offset: 832)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !221, line: 885, size: 192, elements: !1798)
!1798 = !{!1799, !1800, !1822, !1823, !1824, !1825}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1797, file: !221, line: 886, baseType: !1661)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1797, file: !221, line: 887, baseType: !1801, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !230, line: 59, size: 768, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1807, !1811, !1812, !1813, !1814}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1802, file: !230, line: 61, baseType: !446, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1802, file: !230, line: 62, baseType: !7, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1802, file: !230, line: 63, baseType: !800, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1802, file: !230, line: 65, baseType: !1808, size: 256, offset: 64)
!1808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 256, elements: !1809)
!1809 = !{!1810}
!1810 = !DISubrange(count: 4)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1802, file: !230, line: 66, baseType: !922, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1802, file: !230, line: 68, baseType: !1289, size: 128, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1802, file: !230, line: 69, baseType: !1308, size: 128, align: 64, offset: 512)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1802, file: !230, line: 70, baseType: !1815, size: 128, offset: 640)
!1815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1816, size: 128, elements: !607)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !230, line: 54, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1816, file: !230, line: 55, baseType: !350, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1816, file: !230, line: 56, baseType: !1820, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !230, line: 56, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1797, file: !221, line: 888, baseType: !229, size: 32, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1797, file: !221, line: 889, baseType: !726, size: 32, offset: 96)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1797, file: !221, line: 889, baseType: !726, size: 32, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1797, file: !221, line: 890, baseType: !350, size: 32, offset: 160)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1507, file: !221, line: 937, baseType: !1827, size: 64, offset: 1024)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1830, line: 111, size: 1280, elements: !1831)
!1830 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1851, !1852, !1853, !1854, !1855, !1856, !1967, !1968, !1969, !1970, !1996, !1997, !2007}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1829, file: !1830, line: 112, baseType: !451, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1829, file: !1830, line: 120, baseType: !726, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1829, file: !1830, line: 121, baseType: !734, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1829, file: !1830, line: 122, baseType: !726, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1829, file: !1830, line: 123, baseType: !734, size: 32, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1829, file: !1830, line: 124, baseType: !726, size: 32, offset: 160)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1829, file: !1830, line: 125, baseType: !734, size: 32, offset: 192)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1829, file: !1830, line: 126, baseType: !726, size: 32, offset: 224)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1829, file: !1830, line: 127, baseType: !734, size: 32, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1829, file: !1830, line: 128, baseType: !7, size: 32, offset: 288)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1829, file: !1830, line: 129, baseType: !1843, size: 64, offset: 320)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1844, line: 26, baseType: !1845)
!1844 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1844, line: 24, size: 64, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1845, file: !1844, line: 25, baseType: !1848, size: 64)
!1848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DISubrange(count: 2)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1829, file: !1830, line: 130, baseType: !1843, size: 64, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1829, file: !1830, line: 131, baseType: !1843, size: 64, offset: 448)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1829, file: !1830, line: 132, baseType: !1843, size: 64, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1829, file: !1830, line: 133, baseType: !1843, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1829, file: !1830, line: 135, baseType: !330, size: 8, offset: 640)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1829, file: !1830, line: 137, baseType: !1857, size: 64, offset: 704)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1859, line: 189, size: 1664, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1867, !1872, !1873, !1876, !1877, !1882, !1883, !1884, !1885, !1888, !1889, !1890, !1892, !1893, !1931, !1952}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1858, file: !1859, line: 190, baseType: !446, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1858, file: !1859, line: 191, baseType: !1863, size: 32, offset: 32)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1859, line: 28, baseType: !1864)
!1864 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !452, line: 98, baseType: !1865)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !327, line: 20, baseType: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !329, line: 26, baseType: !350)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 192, baseType: !1868, size: 192, offset: 64)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 192, size: 192, elements: !1869)
!1869 = !{!1870, !1871}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1868, file: !1859, line: 193, baseType: !477, size: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1868, file: !1859, line: 194, baseType: !423, size: 192, align: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1858, file: !1859, line: 199, baseType: !1213, size: 256, offset: 256)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1858, file: !1859, line: 200, baseType: !1874, size: 64, offset: 512)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1859, line: 200, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1858, file: !1859, line: 201, baseType: !317, size: 64, offset: 576)
!1877 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 202, baseType: !1878, size: 64, offset: 640)
!1878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 202, size: 64, elements: !1879)
!1879 = !{!1880, !1881}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1878, file: !1859, line: 203, baseType: !1087, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1878, file: !1859, line: 204, baseType: !1087, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1858, file: !1859, line: 206, baseType: !1087, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1858, file: !1859, line: 207, baseType: !726, size: 32, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1858, file: !1859, line: 208, baseType: !734, size: 32, offset: 800)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1858, file: !1859, line: 209, baseType: !1886, size: 32, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1859, line: 31, baseType: !1887)
!1887 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !452, line: 104, baseType: !383)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1858, file: !1859, line: 210, baseType: !357, size: 16, offset: 864)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1858, file: !1859, line: 211, baseType: !357, size: 16, offset: 880)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1858, file: !1859, line: 215, baseType: !1891, size: 16, offset: 896)
!1891 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1858, file: !1859, line: 222, baseType: !426, size: 64, offset: 960)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 239, baseType: !1894, size: 320, offset: 1024)
!1894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 239, size: 320, elements: !1895)
!1895 = !{!1896, !1923}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1894, file: !1859, line: 240, baseType: !1897, size: 320)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1859, line: 108, size: 320, elements: !1898)
!1898 = !{!1899, !1900, !1912, !1915, !1922}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1897, file: !1859, line: 110, baseType: !426, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1897, file: !1859, line: 111, baseType: !1901, size: 64, offset: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1897, file: !1859, line: 111, size: 64, elements: !1902)
!1902 = !{!1903, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, scope: !1901, file: !1859, line: 112, baseType: !1904, size: 64)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1901, file: !1859, line: 112, size: 64, elements: !1905)
!1905 = !{!1906, !1907}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1904, file: !1859, line: 114, baseType: !367, size: 16)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1904, file: !1859, line: 115, baseType: !1908, size: 48, offset: 16)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 48, elements: !1909)
!1909 = !{!1910}
!1910 = !DISubrange(count: 6)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1901, file: !1859, line: 121, baseType: !426, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1897, file: !1859, line: 123, baseType: !1913, size: 64, offset: 128)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1859, line: 96, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1897, file: !1859, line: 124, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1859, line: 102, size: 192, elements: !1918)
!1918 = !{!1919, !1920, !1921}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1917, file: !1859, line: 103, baseType: !1308, size: 128, align: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1917, file: !1859, line: 104, baseType: !446, size: 32, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1917, file: !1859, line: 105, baseType: !873, size: 8, offset: 160)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1897, file: !1859, line: 125, baseType: !829, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !1859, line: 241, baseType: !1924, size: 320)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1894, file: !1859, line: 241, size: 320, elements: !1925)
!1925 = !{!1926, !1927, !1928, !1929, !1930}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1924, file: !1859, line: 242, baseType: !426, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1924, file: !1859, line: 243, baseType: !426, size: 64, offset: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1924, file: !1859, line: 244, baseType: !1913, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1924, file: !1859, line: 245, baseType: !1916, size: 64, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1924, file: !1859, line: 246, baseType: !854, size: 64, offset: 256)
!1931 = !DIDerivedType(tag: DW_TAG_member, scope: !1858, file: !1859, line: 254, baseType: !1932, size: 256, offset: 1344)
!1932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1858, file: !1859, line: 254, size: 256, elements: !1933)
!1933 = !{!1934, !1940}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1932, file: !1859, line: 255, baseType: !1935, size: 256)
!1935 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1859, line: 128, size: 256, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1935, file: !1859, line: 129, baseType: !317, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1935, file: !1859, line: 130, baseType: !1939, size: 256)
!1939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 256, elements: !1809)
!1940 = !DIDerivedType(tag: DW_TAG_member, scope: !1932, file: !1859, line: 256, baseType: !1941, size: 256)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !1859, line: 256, size: 256, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1941, file: !1859, line: 258, baseType: !477, size: 128)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1941, file: !1859, line: 259, baseType: !1945, size: 128, offset: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1946, line: 22, size: 128, elements: !1947)
!1946 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1947 = !{!1948, !1951}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1945, file: !1946, line: 23, baseType: !1949, size: 64)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1946, line: 23, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1945, file: !1946, line: 24, baseType: !426, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1858, file: !1859, line: 274, baseType: !1953, size: 64, offset: 1600)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1859, line: 170, size: 192, elements: !1955)
!1955 = !{!1956, !1965, !1966}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1954, file: !1859, line: 171, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1859, line: 165, baseType: !1958)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!350, !1857, !1961, !1963, !1857}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1914)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1954, file: !1859, line: 172, baseType: !1857, size: 64, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1954, file: !1859, line: 173, baseType: !1913, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1829, file: !1830, line: 138, baseType: !1857, size: 64, offset: 768)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1829, file: !1830, line: 139, baseType: !1857, size: 64, offset: 832)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1829, file: !1830, line: 140, baseType: !1857, size: 64, offset: 896)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1829, file: !1830, line: 145, baseType: !1971, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1973, line: 13, size: 896, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1972, file: !1973, line: 14, baseType: !446, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1972, file: !1973, line: 15, baseType: !451, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1972, file: !1973, line: 16, baseType: !451, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1972, file: !1973, line: 21, baseType: !1046, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1972, file: !1973, line: 27, baseType: !426, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1972, file: !1973, line: 28, baseType: !426, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1972, file: !1973, line: 29, baseType: !1046, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1972, file: !1973, line: 32, baseType: !926, size: 128, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1972, file: !1973, line: 33, baseType: !726, size: 32, offset: 512)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1972, file: !1973, line: 37, baseType: !1046, size: 64, offset: 576)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1972, file: !1973, line: 44, baseType: !1986, size: 256, offset: 640)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1987, line: 15, size: 256, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1986, file: !1987, line: 16, baseType: !405)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1986, file: !1987, line: 18, baseType: !350, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1986, file: !1987, line: 19, baseType: !350, size: 32, offset: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1986, file: !1987, line: 20, baseType: !350, size: 32, offset: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1986, file: !1987, line: 21, baseType: !350, size: 32, offset: 96)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1986, file: !1987, line: 22, baseType: !426, size: 64, offset: 128)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1987, line: 23, baseType: !426, size: 64, offset: 192)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1829, file: !1830, line: 146, baseType: !1378, size: 64, offset: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1829, file: !1830, line: 147, baseType: !1998, size: 64, offset: 1088)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1830, line: 25, size: 64, elements: !2000)
!2000 = !{!2001, !2002, !2003}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1999, file: !1830, line: 26, baseType: !451, size: 32)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1999, file: !1830, line: 27, baseType: !350, size: 32, offset: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1999, file: !1830, line: 28, baseType: !2004, offset: 64)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !734, elements: !2005)
!2005 = !{!2006}
!2006 = !DISubrange(count: 0)
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !1829, file: !1830, line: 149, baseType: !2008, size: 128, offset: 1152)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1829, file: !1830, line: 149, size: 128, elements: !2009)
!2009 = !{!2010, !2011}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2008, file: !1830, line: 150, baseType: !350, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2008, file: !1830, line: 151, baseType: !1308, size: 128, align: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1507, file: !221, line: 938, baseType: !2013, size: 256, offset: 1088)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !221, line: 896, size: 256, elements: !2014)
!2014 = !{!2015, !2016, !2017, !2018, !2019, !2020}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2013, file: !221, line: 897, baseType: !426, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2013, file: !221, line: 898, baseType: !7, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2013, file: !221, line: 899, baseType: !7, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2013, file: !221, line: 902, baseType: !7, size: 32, offset: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2013, file: !221, line: 903, baseType: !7, size: 32, offset: 160)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2013, file: !221, line: 904, baseType: !892, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1507, file: !221, line: 940, baseType: !484, size: 64, offset: 1344)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1507, file: !221, line: 945, baseType: !317, size: 64, offset: 1408)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1507, file: !221, line: 949, baseType: !477, size: 128, offset: 1472)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1507, file: !221, line: 950, baseType: !477, size: 128, offset: 1600)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1507, file: !221, line: 952, baseType: !715, size: 64, offset: 1728)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1507, file: !221, line: 953, baseType: !1370, size: 32, offset: 1792)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1507, file: !221, line: 954, baseType: !1370, size: 32, offset: 1824)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !744, file: !221, line: 1882, baseType: !2029, size: 64, offset: 896)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!350, !871, !2032, !383, !7}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2034, line: 22, size: 1152, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2033, file: !2034, line: 23, baseType: !383, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2033, file: !2034, line: 24, baseType: !723, size: 16, offset: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2033, file: !2034, line: 25, baseType: !7, size: 32, offset: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2033, file: !2034, line: 26, baseType: !1887, size: 32, offset: 96)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2033, file: !2034, line: 27, baseType: !484, size: 64, offset: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2033, file: !2034, line: 28, baseType: !484, size: 64, offset: 192)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2033, file: !2034, line: 37, baseType: !484, size: 64, offset: 256)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2033, file: !2034, line: 38, baseType: !887, size: 32, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2033, file: !2034, line: 39, baseType: !887, size: 32, offset: 352)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2033, file: !2034, line: 40, baseType: !726, size: 32, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2033, file: !2034, line: 41, baseType: !734, size: 32, offset: 416)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2033, file: !2034, line: 42, baseType: !892, size: 64, offset: 448)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2033, file: !2034, line: 43, baseType: !1499, size: 128, offset: 512)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2033, file: !2034, line: 44, baseType: !1499, size: 128, offset: 640)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2033, file: !2034, line: 45, baseType: !1499, size: 128, offset: 768)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2033, file: !2034, line: 46, baseType: !1499, size: 128, offset: 896)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2033, file: !2034, line: 47, baseType: !484, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2033, file: !2034, line: 48, baseType: !484, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !744, file: !221, line: 1883, baseType: !2055, size: 64, offset: 960)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!1535, !750, !854, !1538}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !744, file: !221, line: 1884, baseType: !2059, size: 64, offset: 1024)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!350, !719, !2062, !484, !484}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !221, line: 50, flags: DIFlagFwdDecl)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !744, file: !221, line: 1886, baseType: !2065, size: 64, offset: 1088)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!350, !719, !2068, !350}
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !744, file: !221, line: 1887, baseType: !2070, size: 64, offset: 1152)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!350, !719, !750, !1506, !7, !723}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !744, file: !221, line: 1890, baseType: !1474, size: 64, offset: 1216)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !744, file: !221, line: 1891, baseType: !2075, size: 64, offset: 1280)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!350, !719, !1451, !350}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !720, file: !221, line: 623, baseType: !882, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !720, file: !221, line: 624, baseType: !715, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !720, file: !221, line: 631, baseType: !426, size: 64, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !221, line: 639, baseType: !2082, size: 32, offset: 384)
!2082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !221, line: 639, size: 32, elements: !2083)
!2083 = !{!2084, !2086}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2082, file: !221, line: 640, baseType: !2085, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2082, file: !221, line: 641, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !720, file: !221, line: 643, baseType: !887, size: 32, offset: 416)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !720, file: !221, line: 644, baseType: !892, size: 64, offset: 448)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !720, file: !221, line: 645, baseType: !1499, size: 128, offset: 512)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !720, file: !221, line: 646, baseType: !1499, size: 128, offset: 640)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !720, file: !221, line: 647, baseType: !1499, size: 128, offset: 768)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !720, file: !221, line: 648, baseType: !800, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !720, file: !221, line: 649, baseType: !357, size: 16, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !720, file: !221, line: 650, baseType: !326, size: 8, offset: 912)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !720, file: !221, line: 651, baseType: !326, size: 8, offset: 920)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !720, file: !221, line: 652, baseType: !1201, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !720, file: !221, line: 659, baseType: !426, size: 64, offset: 1024)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !720, file: !221, line: 660, baseType: !1213, size: 256, offset: 1088)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !720, file: !221, line: 662, baseType: !426, size: 64, offset: 1344)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !720, file: !221, line: 663, baseType: !426, size: 64, offset: 1408)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !720, file: !221, line: 665, baseType: !926, size: 128, offset: 1472)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !720, file: !221, line: 666, baseType: !477, size: 128, offset: 1600)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !720, file: !221, line: 675, baseType: !477, size: 128, offset: 1728)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !720, file: !221, line: 676, baseType: !477, size: 128, offset: 1856)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !720, file: !221, line: 677, baseType: !477, size: 128, offset: 1984)
!2106 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !221, line: 678, baseType: !2107, size: 128, offset: 2112)
!2107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !221, line: 678, size: 128, elements: !2108)
!2108 = !{!2109, !2110}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2107, file: !221, line: 679, baseType: !922, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2107, file: !221, line: 680, baseType: !1308, size: 128, align: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !720, file: !221, line: 682, baseType: !1048, size: 64, offset: 2240)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !720, file: !221, line: 683, baseType: !1048, size: 64, offset: 2304)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !720, file: !221, line: 684, baseType: !451, size: 32, offset: 2368)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !720, file: !221, line: 685, baseType: !451, size: 32, offset: 2400)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !720, file: !221, line: 686, baseType: !451, size: 32, offset: 2432)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !720, file: !221, line: 688, baseType: !451, size: 32, offset: 2464)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !221, line: 690, baseType: !2118, size: 64, offset: 2496)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !221, line: 690, size: 64, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2118, file: !221, line: 691, baseType: !1522, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2118, file: !221, line: 692, baseType: !953, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !720, file: !221, line: 694, baseType: !2123, size: 64, offset: 2560)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !221, line: 1100, size: 384, elements: !2125)
!2125 = !{!2126, !2127, !2128, !2129}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2124, file: !221, line: 1101, baseType: !800)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2124, file: !221, line: 1102, baseType: !477, size: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2124, file: !221, line: 1103, baseType: !477, size: 128, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2124, file: !221, line: 1104, baseType: !477, size: 128, offset: 256)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !720, file: !221, line: 695, baseType: !716, size: 1216, align: 64, offset: 2624)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !720, file: !221, line: 696, baseType: !477, size: 128, offset: 3840)
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !720, file: !221, line: 697, baseType: !2133, size: 64, offset: 3968)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !720, file: !221, line: 697, size: 64, elements: !2134)
!2134 = !{!2135, !2136, !2137, !2454, !2455}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2133, file: !221, line: 698, baseType: !1761, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2133, file: !221, line: 699, baseType: !1233, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2133, file: !221, line: 700, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2140, line: 14, size: 832, elements: !2141)
!2140 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2141 = !{!2142, !2449, !2450, !2451, !2452, !2453}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2139, file: !2140, line: 15, baseType: !2143, size: 512)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2144, line: 64, size: 512, elements: !2145)
!2144 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !{!2146, !2147, !2148, !2150, !2192, !2294, !2439, !2444, !2445, !2446, !2447, !2448}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2143, file: !2144, line: 65, baseType: !829, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2143, file: !2144, line: 66, baseType: !477, size: 128, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2143, file: !2144, line: 67, baseType: !2149, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2143, file: !2144, line: 68, baseType: !2151, size: 64, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2144, line: 192, size: 704, elements: !2153)
!2153 = !{!2154, !2155, !2156, !2157}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2152, file: !2144, line: 193, baseType: !477, size: 128)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2152, file: !2144, line: 194, baseType: !800, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2152, file: !2144, line: 195, baseType: !2143, size: 512, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2152, file: !2144, line: 196, baseType: !2158, size: 64, offset: 640)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2144, line: 156, size: 192, elements: !2161)
!2161 = !{!2162, !2167, !2172}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2160, file: !2144, line: 157, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2164)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!350, !2151, !2149}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2160, file: !2144, line: 158, baseType: !2168, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2169)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!829, !2151, !2149}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2160, file: !2144, line: 159, baseType: !2173, size: 64, offset: 128)
!2173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2174)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!350, !2151, !2149, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2144, line: 148, size: 20736, elements: !2179)
!2179 = !{!2180, !2182, !2186, !2187, !2191}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2178, file: !2144, line: 149, baseType: !2181, size: 192)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 192, elements: !938)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2178, file: !2144, line: 150, baseType: !2183, size: 4096, offset: 192)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 4096, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2178, file: !2144, line: 151, baseType: !350, size: 32, offset: 4288)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2178, file: !2144, line: 152, baseType: !2188, size: 16384, offset: 4320)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 16384, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 2048)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2178, file: !2144, line: 153, baseType: !350, size: 32, offset: 20704)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2143, file: !2144, line: 69, baseType: !2193, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2144, line: 138, size: 448, elements: !2195)
!2195 = !{!2196, !2200, !2219, !2221, !2254, !2284, !2288}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2194, file: !2144, line: 139, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !2149}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2194, file: !2144, line: 140, baseType: !2201, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2203)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2204, line: 230, size: 128, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2205 = !{!2206, !2215}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2203, file: !2204, line: 231, baseType: !2207, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{!1535, !2149, !2210, !854}
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2204, line: 30, size: 128, elements: !2212)
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2204, line: 31, baseType: !829, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2211, file: !2204, line: 32, baseType: !723, size: 16, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2203, file: !2204, line: 232, baseType: !2216, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!1535, !2149, !2210, !829, !1538}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2194, file: !2144, line: 141, baseType: !2220, size: 64, offset: 128)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2194, file: !2144, line: 142, baseType: !2222, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2204, line: 84, size: 320, elements: !2226)
!2226 = !{!2227, !2228, !2232, !2251, !2252}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2225, file: !2204, line: 85, baseType: !829, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2225, file: !2204, line: 86, baseType: !2229, size: 64, offset: 64)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!723, !2149, !2210, !350}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2225, file: !2204, line: 88, baseType: !2233, size: 64, offset: 128)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!723, !2149, !2236, !350}
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2204, line: 168, size: 448, elements: !2238)
!2238 = !{!2239, !2240, !2241, !2242, !2246, !2247}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2237, file: !2204, line: 169, baseType: !2211, size: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2237, file: !2204, line: 170, baseType: !1538, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2237, file: !2204, line: 171, baseType: !317, size: 64, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2237, file: !2204, line: 172, baseType: !2243, size: 64, offset: 256)
!2243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2244, size: 64)
!2244 = !DISubroutineType(types: !2245)
!2245 = !{!1535, !1506, !2149, !2236, !854, !892, !1538}
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2237, file: !2204, line: 174, baseType: !2243, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2237, file: !2204, line: 176, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!350, !1506, !2149, !2236, !622}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2225, file: !2204, line: 90, baseType: !2220, size: 64, offset: 192)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2225, file: !2204, line: 91, baseType: !2253, size: 64, offset: 256)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2194, file: !2144, line: 143, baseType: !2255, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!2258, !2149}
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !238, line: 39, size: 384, elements: !2261)
!2261 = !{!2262, !2263, !2267, !2271, !2279, !2283}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2260, file: !238, line: 40, baseType: !237, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2260, file: !238, line: 41, baseType: !2264, size: 64, offset: 64)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!873}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2260, file: !238, line: 42, baseType: !2268, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!317}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2260, file: !238, line: 43, baseType: !2272, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{!2275, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !238, line: 19, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2260, file: !238, line: 44, baseType: !2280, size: 64, offset: 256)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!2275}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2260, file: !238, line: 45, baseType: !1439, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2194, file: !2144, line: 144, baseType: !2285, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!2275, !2149}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2194, file: !2144, line: 145, baseType: !2289, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !2149, !2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2143, file: !2144, line: 70, baseType: !2295, size: 64, offset: 384)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !906, line: 123, size: 1024, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2432, !2433, !2434, !2435, !2436}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2296, file: !906, line: 124, baseType: !451, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2296, file: !906, line: 125, baseType: !451, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2296, file: !906, line: 135, baseType: !2295, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2296, file: !906, line: 136, baseType: !829, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2296, file: !906, line: 138, baseType: !423, size: 192, align: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2296, file: !906, line: 140, baseType: !2275, size: 64, offset: 384)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2296, file: !906, line: 141, baseType: !7, size: 32, offset: 448)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !2296, file: !906, line: 142, baseType: !2306, size: 256, offset: 512)
!2306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2296, file: !906, line: 142, size: 256, elements: !2307)
!2307 = !{!2308, !2360, !2364}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2306, file: !906, line: 143, baseType: !2309, size: 192)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !906, line: 91, size: 192, elements: !2310)
!2310 = !{!2311, !2312, !2313}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2309, file: !906, line: 92, baseType: !426, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2309, file: !906, line: 94, baseType: !419, size: 64, offset: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2309, file: !906, line: 100, baseType: !2314, size: 64, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !906, line: 180, size: 704, elements: !2316)
!2316 = !{!2317, !2318, !2319, !2332, !2333, !2334, !2358, !2359}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2315, file: !906, line: 182, baseType: !2295, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2315, file: !906, line: 183, baseType: !7, size: 32, offset: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2315, file: !906, line: 186, baseType: !2320, size: 192, offset: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2321, line: 19, size: 192, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2330, !2331}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2320, file: !2321, line: 20, baseType: !2324, size: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2325, line: 292, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328, !2329}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2324, file: !2325, line: 293, baseType: !800)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2324, file: !2325, line: 295, baseType: !679, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2324, file: !2325, line: 296, baseType: !317, size: 64, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2320, file: !2321, line: 21, baseType: !7, size: 32, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2320, file: !2321, line: 22, baseType: !7, size: 32, offset: 160)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2315, file: !906, line: 187, baseType: !383, size: 32, offset: 320)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2315, file: !906, line: 188, baseType: !383, size: 32, offset: 352)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2315, file: !906, line: 189, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !906, line: 168, size: 320, elements: !2337)
!2337 = !{!2338, !2342, !2346, !2350, !2354}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2336, file: !906, line: 169, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!350, !1000, !2314}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2336, file: !906, line: 171, baseType: !2343, size: 64, offset: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!350, !2295, !829, !723}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2336, file: !906, line: 173, baseType: !2347, size: 64, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!350, !2295}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2336, file: !906, line: 174, baseType: !2351, size: 64, offset: 192)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!350, !2295, !2295, !829}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2336, file: !906, line: 176, baseType: !2355, size: 64, offset: 256)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!350, !1000, !2295, !2314}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2315, file: !906, line: 192, baseType: !477, size: 128, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2315, file: !906, line: 194, baseType: !1289, size: 128, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2306, file: !906, line: 144, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !906, line: 103, size: 64, elements: !2362)
!2362 = !{!2363}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2361, file: !906, line: 104, baseType: !2295, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2306, file: !906, line: 145, baseType: !2365, size: 256)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !906, line: 107, size: 256, elements: !2366)
!2366 = !{!2367, !2427, !2430, !2431}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2365, file: !906, line: 108, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2370)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !906, line: 217, size: 768, elements: !2371)
!2371 = !{!2372, !2392, !2396, !2400, !2404, !2408, !2412, !2416, !2417, !2418, !2419, !2423}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2370, file: !906, line: 222, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!350, !2376}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !906, line: 197, size: 1088, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2377, file: !906, line: 199, baseType: !2295, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2377, file: !906, line: 200, baseType: !1506, size: 64, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2377, file: !906, line: 201, baseType: !1000, size: 64, offset: 128)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2377, file: !906, line: 202, baseType: !317, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2377, file: !906, line: 205, baseType: !1042, size: 192, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2377, file: !906, line: 206, baseType: !1042, size: 192, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2377, file: !906, line: 207, baseType: !350, size: 32, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2377, file: !906, line: 208, baseType: !477, size: 128, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2377, file: !906, line: 209, baseType: !854, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2377, file: !906, line: 211, baseType: !1538, size: 64, offset: 896)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2377, file: !906, line: 212, baseType: !873, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2377, file: !906, line: 213, baseType: !873, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2377, file: !906, line: 214, baseType: !651, size: 64, offset: 1024)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2370, file: !906, line: 223, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{null, !2376}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2370, file: !906, line: 236, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!350, !1000, !317}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2370, file: !906, line: 238, baseType: !2401, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!317, !1000, !1541}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2370, file: !906, line: 239, baseType: !2405, size: 64, offset: 256)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2406, size: 64)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!317, !1000, !317, !1541}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2370, file: !906, line: 240, baseType: !2409, size: 64, offset: 320)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{null, !1000, !317}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2370, file: !906, line: 242, baseType: !2413, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!1535, !2376, !854, !1538, !892}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2370, file: !906, line: 252, baseType: !1538, size: 64, offset: 448)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2370, file: !906, line: 259, baseType: !873, size: 8, offset: 512)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2370, file: !906, line: 260, baseType: !2413, size: 64, offset: 576)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2370, file: !906, line: 263, baseType: !2420, size: 64, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!1595, !2376, !1597}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2370, file: !906, line: 266, baseType: !2424, size: 64, offset: 704)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!350, !2376, !622}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2365, file: !906, line: 109, baseType: !2428, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !906, line: 31, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2365, file: !906, line: 110, baseType: !892, size: 64, offset: 128)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2365, file: !906, line: 111, baseType: !2295, size: 64, offset: 192)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2296, file: !906, line: 148, baseType: !317, size: 64, offset: 768)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2296, file: !906, line: 154, baseType: !484, size: 64, offset: 832)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2296, file: !906, line: 156, baseType: !357, size: 16, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2296, file: !906, line: 157, baseType: !723, size: 16, offset: 912)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2296, file: !906, line: 158, baseType: !2437, size: 64, offset: 960)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !906, line: 32, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2143, file: !2144, line: 71, baseType: !2440, size: 32, offset: 448)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2441, line: 19, size: 32, elements: !2442)
!2441 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !{!2443}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2440, file: !2441, line: 20, baseType: !446, size: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2143, file: !2144, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2143, file: !2144, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2143, file: !2144, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2143, file: !2144, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2143, file: !2144, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2139, file: !2140, line: 16, baseType: !337, size: 64, offset: 512)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2139, file: !2140, line: 17, baseType: !1522, size: 64, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2139, file: !2140, line: 18, baseType: !477, size: 128, offset: 640)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2139, file: !2140, line: 19, baseType: !887, size: 32, offset: 768)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2139, file: !2140, line: 20, baseType: !7, size: 32, offset: 800)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2133, file: !221, line: 701, baseType: !854, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2133, file: !221, line: 702, baseType: !7, size: 32)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !720, file: !221, line: 705, baseType: !384, size: 32, offset: 4032)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !720, file: !221, line: 708, baseType: !384, size: 32, offset: 4064)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !720, file: !221, line: 709, baseType: !1331, size: 64, offset: 4096)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !720, file: !221, line: 720, baseType: !317, size: 64, offset: 4160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !716, file: !221, line: 453, baseType: !2324, size: 128, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !716, file: !221, line: 454, baseType: !679, size: 32, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !716, file: !221, line: 455, baseType: !451, size: 32, offset: 224)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !716, file: !221, line: 460, baseType: !415, size: 128, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !716, file: !221, line: 461, baseType: !1213, size: 256, offset: 384)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !716, file: !221, line: 462, baseType: !426, size: 64, offset: 640)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !716, file: !221, line: 463, baseType: !426, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !716, file: !221, line: 464, baseType: !426, size: 64, offset: 768)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !716, file: !221, line: 465, baseType: !2469, size: 64, offset: 832)
!2469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2470, size: 64)
!2470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2471)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !221, line: 367, size: 1408, elements: !2472)
!2472 = !{!2473, !2477, !2481, !2485, !2489, !2493, !2499, !2504, !2508, !2513, !2517, !2521, !2525, !2526, !2530, !2536, !2537, !2538, !2542, !2547, !2551, !2558}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2471, file: !221, line: 368, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!350, !703, !965}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2471, file: !221, line: 369, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!350, !1506, !703}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2471, file: !221, line: 372, baseType: !2482, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!350, !715, !965}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2471, file: !221, line: 375, baseType: !2486, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!350, !703}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2471, file: !221, line: 381, baseType: !2490, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!350, !1506, !715, !480, !7}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2471, file: !221, line: 383, baseType: !2494, size: 64, offset: 320)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DISubroutineType(types: !2496)
!2496 = !{null, !2497}
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !221, line: 290, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2471, file: !221, line: 385, baseType: !2500, size: 64, offset: 384)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!350, !1506, !715, !892, !7, !7, !2503, !1718}
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2471, file: !221, line: 388, baseType: !2505, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!350, !1506, !715, !892, !7, !7, !703, !317}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2471, file: !221, line: 393, baseType: !2509, size: 64, offset: 512)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!2512, !715, !2512}
!2512 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !452, line: 125, baseType: !484)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2471, file: !221, line: 394, baseType: !2514, size: 64, offset: 576)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{null, !703, !7, !7}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2471, file: !221, line: 395, baseType: !2518, size: 64, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = !DISubroutineType(types: !2520)
!2520 = !{!350, !703, !679}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2471, file: !221, line: 396, baseType: !2522, size: 64, offset: 704)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{null, !703}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2471, file: !221, line: 397, baseType: !1547, size: 64, offset: 768)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2471, file: !221, line: 402, baseType: !2527, size: 64, offset: 832)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{!350, !715, !703, !703, !183}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2471, file: !221, line: 404, baseType: !2531, size: 64, offset: 896)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{!873, !703, !2534}
!2534 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2535, line: 305, baseType: !7)
!2535 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2471, file: !221, line: 405, baseType: !2522, size: 64, offset: 960)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2471, file: !221, line: 406, baseType: !2486, size: 64, offset: 1024)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2471, file: !221, line: 407, baseType: !2539, size: 64, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!350, !703, !426, !426}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2471, file: !221, line: 409, baseType: !2543, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !703, !2546, !2546}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2471, file: !221, line: 410, baseType: !2548, size: 64, offset: 1216)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!350, !715, !703}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2471, file: !221, line: 413, baseType: !2552, size: 64, offset: 1280)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!350, !2555, !1506, !2557}
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !221, line: 61, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2471, file: !221, line: 415, baseType: !2559, size: 64, offset: 1344)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !1506}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !716, file: !221, line: 466, baseType: !426, size: 64, offset: 896)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !716, file: !221, line: 467, baseType: !1370, size: 32, offset: 960)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !716, file: !221, line: 468, baseType: !800, offset: 992)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !716, file: !221, line: 469, baseType: !477, size: 128, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !716, file: !221, line: 470, baseType: !317, size: 64, offset: 1152)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !711, file: !616, line: 87, baseType: !426, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !711, file: !616, line: 94, baseType: !426, size: 64, offset: 256)
!2569 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 96, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 96, size: 64, elements: !2571)
!2571 = !{!2572}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2570, file: !616, line: 101, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !452, line: 143, baseType: !484)
!2574 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 103, baseType: !2575, size: 320)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 103, size: 320, elements: !2576)
!2576 = !{!2577, !2587, !2590, !2591}
!2577 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !616, line: 104, baseType: !2578, size: 128)
!2578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !616, line: 104, size: 128, elements: !2579)
!2579 = !{!2580, !2581}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2578, file: !616, line: 105, baseType: !477, size: 128)
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !616, line: 106, baseType: !2582, size: 128)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2578, file: !616, line: 106, size: 128, elements: !2583)
!2583 = !{!2584, !2585, !2586}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2582, file: !616, line: 107, baseType: !703, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2582, file: !616, line: 109, baseType: !350, size: 32, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2582, file: !616, line: 110, baseType: !350, size: 32, offset: 96)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2575, file: !616, line: 117, baseType: !2588, size: 64, offset: 128)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !616, line: 117, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2575, file: !616, line: 119, baseType: !317, size: 64, offset: 192)
!2591 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !616, line: 120, baseType: !2592, size: 64, offset: 256)
!2592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !616, line: 120, size: 64, elements: !2593)
!2593 = !{!2594, !2595, !2596}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2592, file: !616, line: 121, baseType: !317, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2592, file: !616, line: 122, baseType: !426, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, scope: !2592, file: !616, line: 123, baseType: !2597, size: 32)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2592, file: !616, line: 123, size: 32, elements: !2598)
!2598 = !{!2599, !2600, !2601}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2597, file: !616, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2597, file: !616, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2597, file: !616, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 130, baseType: !2603, size: 192)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 130, size: 192, elements: !2604)
!2604 = !{!2605, !2606, !2607, !2608, !2609}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2603, file: !616, line: 131, baseType: !426, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2603, file: !616, line: 134, baseType: !330, size: 8, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2603, file: !616, line: 135, baseType: !330, size: 8, offset: 72)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2603, file: !616, line: 136, baseType: !451, size: 32, offset: 96)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2603, file: !616, line: 137, baseType: !7, size: 32, offset: 128)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 139, baseType: !2611, size: 256)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 139, size: 256, elements: !2612)
!2612 = !{!2613, !2614, !2615}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2611, file: !616, line: 140, baseType: !426, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2611, file: !616, line: 141, baseType: !451, size: 32, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2611, file: !616, line: 143, baseType: !477, size: 128, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 145, baseType: !2617, size: 256)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 145, size: 256, elements: !2618)
!2618 = !{!2619, !2620, !2622, !2623, !2628}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2617, file: !616, line: 146, baseType: !426, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2617, file: !616, line: 147, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !634, line: 509, baseType: !703)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2617, file: !616, line: 148, baseType: !426, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, scope: !2617, file: !616, line: 149, baseType: !2624, size: 64, offset: 192)
!2624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2617, file: !616, line: 149, size: 64, elements: !2625)
!2625 = !{!2626, !2627}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2624, file: !616, line: 150, baseType: !614, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2624, file: !616, line: 151, baseType: !451, size: 32)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2617, file: !616, line: 156, baseType: !800, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, scope: !708, file: !616, line: 159, baseType: !2630, size: 128)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !708, file: !616, line: 159, size: 128, elements: !2631)
!2631 = !{!2632, !2706}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2630, file: !616, line: 161, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !208, line: 110, size: 1152, elements: !2635)
!2635 = !{!2636, !2646, !2667, !2668, !2679, !2680, !2681, !2693, !2694, !2695}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2634, file: !208, line: 111, baseType: !2637, size: 384)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !208, line: 19, size: 384, elements: !2638)
!2638 = !{!2639, !2641, !2642, !2643, !2644, !2645}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2637, file: !208, line: 20, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2637, file: !208, line: 21, baseType: !2640, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2637, file: !208, line: 22, baseType: !2640, size: 64, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2637, file: !208, line: 23, baseType: !426, size: 64, offset: 192)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2637, file: !208, line: 24, baseType: !426, size: 64, offset: 256)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2637, file: !208, line: 25, baseType: !426, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2634, file: !208, line: 112, baseType: !2647, size: 64, offset: 384)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2649, line: 105, size: 128, elements: !2650)
!2649 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2648, file: !2649, line: 110, baseType: !426, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2648, file: !2649, line: 118, baseType: !2653, size: 64, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2649, line: 95, size: 448, elements: !2655)
!2655 = !{!2656, !2657, !2662, !2663, !2664, !2665, !2666}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2654, file: !2649, line: 96, baseType: !1046, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2654, file: !2649, line: 97, baseType: !2658, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2649, line: 60, baseType: !2660)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{null, !2647}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2654, file: !2649, line: 98, baseType: !2658, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2654, file: !2649, line: 99, baseType: !873, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2654, file: !2649, line: 100, baseType: !873, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2654, file: !2649, line: 101, baseType: !1308, size: 128, align: 64, offset: 256)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2654, file: !2649, line: 102, baseType: !2647, size: 64, offset: 384)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2634, file: !208, line: 113, baseType: !2648, size: 128, offset: 448)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2634, file: !208, line: 114, baseType: !2669, size: 192, offset: 576)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2670, line: 26, size: 192, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2669, file: !2670, line: 27, baseType: !7, size: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2669, file: !2670, line: 28, baseType: !2674, size: 128, offset: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2675, line: 43, size: 128, elements: !2676)
!2675 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!2676 = !{!2677, !2678}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2674, file: !2675, line: 44, baseType: !405)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2674, file: !2675, line: 45, baseType: !477, size: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2634, file: !208, line: 115, baseType: !207, size: 32, offset: 768)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2634, file: !208, line: 116, baseType: !7, size: 32, offset: 800)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2634, file: !208, line: 117, baseType: !2682, size: 64, offset: 832)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !208, line: 67, size: 256, elements: !2685)
!2685 = !{!2686, !2687, !2691, !2692}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2684, file: !208, line: 73, baseType: !2522, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2684, file: !208, line: 78, baseType: !2688, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DISubroutineType(types: !2690)
!2690 = !{null, !2633}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2684, file: !208, line: 83, baseType: !2688, size: 64, offset: 128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2684, file: !208, line: 89, baseType: !669, size: 64, offset: 192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2634, file: !208, line: 118, baseType: !317, size: 64, offset: 896)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2634, file: !208, line: 119, baseType: !350, size: 32, offset: 960)
!2695 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !208, line: 120, baseType: !2696, size: 128, offset: 1024)
!2696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !208, line: 120, size: 128, elements: !2697)
!2697 = !{!2698, !2704}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2696, file: !208, line: 121, baseType: !2699, size: 128)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2700, line: 6, size: 128, elements: !2701)
!2700 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !{!2702, !2703}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2699, file: !2700, line: 7, baseType: !484, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2699, file: !2700, line: 8, baseType: !484, size: 64, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2696, file: !208, line: 122, baseType: !2705)
!2705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2699, elements: !2005)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2630, file: !616, line: 162, baseType: !317, size: 64, offset: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !708, file: !616, line: 176, baseType: !1308, size: 128, align: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !616, line: 179, baseType: !2709, size: 32, offset: 384)
!2709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !704, file: !616, line: 179, size: 32, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2709, file: !616, line: 184, baseType: !451, size: 32)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2709, file: !616, line: 192, baseType: !7, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2709, file: !616, line: 194, baseType: !7, size: 32)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2709, file: !616, line: 195, baseType: !350, size: 32)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !704, file: !616, line: 199, baseType: !451, size: 32, offset: 416)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !674, file: !191, line: 522, baseType: !703, size: 64, offset: 512)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !674, file: !191, line: 528, baseType: !2718, size: 64, offset: 576)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !674, file: !191, line: 532, baseType: !2720, size: 64, offset: 640)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !674, file: !191, line: 536, baseType: !2621, size: 64, offset: 704)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !653, file: !191, line: 563, baseType: !2723, size: 64, offset: 320)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!672, !673, !190}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !653, file: !191, line: 565, baseType: !2727, size: 64, offset: 384)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{null, !673, !426, !426}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !653, file: !191, line: 567, baseType: !2731, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!426, !622}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !653, file: !191, line: 571, baseType: !669, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !653, file: !191, line: 574, baseType: !669, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !653, file: !191, line: 579, baseType: !2737, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!350, !622, !426, !317, !350, !350}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !653, file: !191, line: 585, baseType: !2741, size: 64, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!829, !622}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !653, file: !191, line: 615, baseType: !2745, size: 64, offset: 768)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!703, !622, !426}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !623, file: !616, line: 359, baseType: !426, size: 64, offset: 1216)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !623, file: !616, line: 361, baseType: !1506, size: 64, offset: 1280)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !623, file: !616, line: 362, baseType: !317, size: 64, offset: 1344)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !623, file: !616, line: 365, baseType: !1046, size: 64, offset: 1408)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !623, file: !616, line: 373, baseType: !2753, offset: 1472)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !616, line: 296, elements: !413)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !619, file: !616, line: 391, baseType: !419, size: 64, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !619, file: !616, line: 392, baseType: !484, size: 64, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !619, file: !616, line: 394, baseType: !1749, size: 64, offset: 192)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !619, file: !616, line: 398, baseType: !426, size: 64, offset: 256)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !619, file: !616, line: 399, baseType: !426, size: 64, offset: 320)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !619, file: !616, line: 405, baseType: !426, size: 64, offset: 384)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !619, file: !616, line: 406, baseType: !426, size: 64, offset: 448)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !619, file: !616, line: 407, baseType: !2762, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !634, line: 286, baseType: !2764)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !634, line: 286, size: 64, elements: !2765)
!2765 = !{!2766}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2764, file: !634, line: 286, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !639, line: 18, baseType: !426)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !619, file: !616, line: 416, baseType: !451, size: 32, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !619, file: !616, line: 428, baseType: !451, size: 32, offset: 608)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !619, file: !616, line: 437, baseType: !451, size: 32, offset: 640)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !619, file: !616, line: 447, baseType: !451, size: 32, offset: 672)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !619, file: !616, line: 450, baseType: !1046, size: 64, offset: 704)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !619, file: !616, line: 452, baseType: !350, size: 32, offset: 768)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !619, file: !616, line: 454, baseType: !800, offset: 800)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !619, file: !616, line: 457, baseType: !1213, size: 256, offset: 832)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !619, file: !616, line: 459, baseType: !477, size: 128, offset: 1088)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !619, file: !616, line: 466, baseType: !426, size: 64, offset: 1216)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !619, file: !616, line: 467, baseType: !426, size: 64, offset: 1280)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !619, file: !616, line: 469, baseType: !426, size: 64, offset: 1344)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !619, file: !616, line: 470, baseType: !426, size: 64, offset: 1408)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !619, file: !616, line: 471, baseType: !1048, size: 64, offset: 1472)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !619, file: !616, line: 472, baseType: !426, size: 64, offset: 1536)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !619, file: !616, line: 473, baseType: !426, size: 64, offset: 1600)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !619, file: !616, line: 474, baseType: !426, size: 64, offset: 1664)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !619, file: !616, line: 475, baseType: !426, size: 64, offset: 1728)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !619, file: !616, line: 477, baseType: !800, offset: 1792)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !619, file: !616, line: 478, baseType: !426, size: 64, offset: 1792)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !619, file: !616, line: 478, baseType: !426, size: 64, offset: 1856)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !619, file: !616, line: 478, baseType: !426, size: 64, offset: 1920)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !619, file: !616, line: 478, baseType: !426, size: 64, offset: 1984)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !619, file: !616, line: 479, baseType: !426, size: 64, offset: 2048)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !619, file: !616, line: 479, baseType: !426, size: 64, offset: 2112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !619, file: !616, line: 479, baseType: !426, size: 64, offset: 2176)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !619, file: !616, line: 480, baseType: !426, size: 64, offset: 2240)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !619, file: !616, line: 480, baseType: !426, size: 64, offset: 2304)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !619, file: !616, line: 480, baseType: !426, size: 64, offset: 2368)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !619, file: !616, line: 480, baseType: !426, size: 64, offset: 2432)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !619, file: !616, line: 482, baseType: !2799, size: 2816, offset: 2496)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, size: 2816, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 44)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !619, file: !616, line: 488, baseType: !2803, size: 256, offset: 5312)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2804, line: 60, size: 256, elements: !2805)
!2804 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2803, file: !2804, line: 61, baseType: !2807, size: 256)
!2807 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 256, elements: !1809)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !619, file: !616, line: 490, baseType: !2809, size: 64, offset: 5568)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !616, line: 490, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !619, file: !616, line: 493, baseType: !2812, size: 896, offset: 5632)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2813, line: 53, baseType: !2814)
!2813 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2813, line: 13, size: 896, elements: !2815)
!2815 = !{!2816, !2817, !2818, !2819, !2822, !2823, !2824, !2825, !2845, !2846, !2847}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2814, file: !2813, line: 18, baseType: !484, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2814, file: !2813, line: 28, baseType: !1048, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2814, file: !2813, line: 31, baseType: !1213, size: 256, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2814, file: !2813, line: 32, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2813, line: 32, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2814, file: !2813, line: 37, baseType: !357, size: 16, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2814, file: !2813, line: 40, baseType: !1042, size: 192, offset: 512)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2814, file: !2813, line: 41, baseType: !317, size: 64, offset: 704)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2814, file: !2813, line: 42, baseType: !2826, size: 64, offset: 768)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2829, line: 13, size: 896, elements: !2830)
!2829 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2830 = !{!2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2828, file: !2829, line: 14, baseType: !317, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2828, file: !2829, line: 15, baseType: !426, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2828, file: !2829, line: 17, baseType: !426, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2828, file: !2829, line: 17, baseType: !426, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2828, file: !2829, line: 19, baseType: !443, size: 64, offset: 256)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2828, file: !2829, line: 21, baseType: !443, size: 64, offset: 320)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2828, file: !2829, line: 22, baseType: !443, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2828, file: !2829, line: 23, baseType: !443, size: 64, offset: 448)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2828, file: !2829, line: 24, baseType: !443, size: 64, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2828, file: !2829, line: 25, baseType: !443, size: 64, offset: 576)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2828, file: !2829, line: 26, baseType: !443, size: 64, offset: 640)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2828, file: !2829, line: 27, baseType: !443, size: 64, offset: 704)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2828, file: !2829, line: 28, baseType: !443, size: 64, offset: 768)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2828, file: !2829, line: 29, baseType: !443, size: 64, offset: 832)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2814, file: !2813, line: 44, baseType: !451, size: 32, offset: 832)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2814, file: !2813, line: 50, baseType: !367, size: 16, offset: 864)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2814, file: !2813, line: 51, baseType: !2848, size: 16, offset: 880)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !327, line: 18, baseType: !2849)
!2849 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !329, line: 23, baseType: !1891)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !619, file: !616, line: 495, baseType: !426, size: 64, offset: 6528)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !619, file: !616, line: 497, baseType: !2852, size: 64, offset: 6592)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !616, line: 381, size: 384, elements: !2854)
!2854 = !{!2855, !2856, !2862}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2853, file: !616, line: 382, baseType: !451, size: 32)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2853, file: !616, line: 383, baseType: !2857, size: 128, offset: 64)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !616, line: 376, size: 128, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2857, file: !616, line: 377, baseType: !431, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2857, file: !616, line: 378, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2853, file: !616, line: 384, baseType: !2669, size: 192, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !619, file: !616, line: 500, baseType: !800, offset: 6656)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !619, file: !616, line: 501, baseType: !2865, size: 64, offset: 6656)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !616, line: 387, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !619, file: !616, line: 516, baseType: !1378, size: 64, offset: 6720)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !619, file: !616, line: 519, baseType: !1506, size: 64, offset: 6784)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !619, file: !616, line: 521, baseType: !2870, size: 64, offset: 6848)
!2870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2871, size: 64)
!2871 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !616, line: 521, flags: DIFlagFwdDecl)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !619, file: !616, line: 545, baseType: !451, size: 32, offset: 6912)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !619, file: !616, line: 548, baseType: !873, size: 8, offset: 6944)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !619, file: !616, line: 550, baseType: !2875, offset: 6952)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2876, line: 142, elements: !413)
!2876 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !619, file: !616, line: 554, baseType: !1398, size: 256, offset: 6976)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !619, file: !616, line: 557, baseType: !383, size: 32, offset: 7232)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !615, file: !616, line: 565, baseType: !2880, offset: 7296)
!2880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !426, elements: !2881)
!2881 = !{!2882}
!2882 = !DISubrange(count: -1)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !432, file: !433, line: 758, baseType: !614, size: 64, offset: 3968)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !432, file: !433, line: 761, baseType: !2885, size: 320, offset: 4032)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2804, line: 34, size: 320, elements: !2886)
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2885, file: !2804, line: 35, baseType: !484, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2885, file: !2804, line: 36, baseType: !2889, size: 256, offset: 64)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !622, size: 256, elements: !1809)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !432, file: !433, line: 766, baseType: !350, size: 32, offset: 4352)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !432, file: !433, line: 767, baseType: !350, size: 32, offset: 4384)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !432, file: !433, line: 768, baseType: !350, size: 32, offset: 4416)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !432, file: !433, line: 770, baseType: !350, size: 32, offset: 4448)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !432, file: !433, line: 772, baseType: !426, size: 64, offset: 4480)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !432, file: !433, line: 775, baseType: !7, size: 32, offset: 4544)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !432, file: !433, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !432, file: !433, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !432, file: !433, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !432, file: !433, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !432, file: !433, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !432, file: !433, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !432, file: !433, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !432, file: !433, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !432, file: !433, line: 831, baseType: !426, size: 64, offset: 4672)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !432, file: !433, line: 833, baseType: !2906, size: 384, offset: 4736)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !202, line: 25, size: 384, elements: !2907)
!2907 = !{!2908, !2913}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2906, file: !202, line: 26, baseType: !2909, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!443, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2906, file: !202, line: 27, baseType: !2914, size: 320, offset: 64)
!2914 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2906, file: !202, line: 27, size: 320, elements: !2915)
!2915 = !{!2916, !2926, !2951}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2914, file: !202, line: 36, baseType: !2917, size: 320)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !202, line: 29, size: 320, elements: !2918)
!2918 = !{!2919, !2921, !2922, !2923, !2924, !2925}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2917, file: !202, line: 30, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2917, file: !202, line: 31, baseType: !383, size: 32, offset: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2917, file: !202, line: 32, baseType: !383, size: 32, offset: 96)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2917, file: !202, line: 33, baseType: !383, size: 32, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2917, file: !202, line: 34, baseType: !484, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2917, file: !202, line: 35, baseType: !2920, size: 64, offset: 256)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2914, file: !202, line: 46, baseType: !2927, size: 192)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !202, line: 38, size: 192, elements: !2928)
!2928 = !{!2929, !2930, !2931, !2950}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2927, file: !202, line: 39, baseType: !566, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2927, file: !202, line: 40, baseType: !201, size: 32, offset: 32)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2927, file: !202, line: 41, baseType: !2932, size: 64, offset: 64)
!2932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2927, file: !202, line: 41, size: 64, elements: !2933)
!2933 = !{!2934, !2942}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2932, file: !202, line: 42, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2937, line: 7, size: 128, elements: !2938)
!2937 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !{!2939, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2936, file: !2937, line: 8, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !568, line: 93, baseType: !516)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2936, file: !2937, line: 9, baseType: !516, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2932, file: !202, line: 43, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2945, line: 7, size: 64, elements: !2946)
!2945 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2946 = !{!2947, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2944, file: !2945, line: 8, baseType: !2948, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2945, line: 5, baseType: !1865)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2944, file: !2945, line: 9, baseType: !1865, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2927, file: !202, line: 45, baseType: !484, size: 64, offset: 128)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2914, file: !202, line: 54, baseType: !2952, size: 256)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2914, file: !202, line: 48, size: 256, elements: !2953)
!2953 = !{!2954, !2962, !2963, !2964, !2965}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2952, file: !202, line: 49, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2957, line: 36, size: 64, elements: !2958)
!2957 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!2958 = !{!2959, !2960, !2961}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2956, file: !2957, line: 37, baseType: !350, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2956, file: !2957, line: 38, baseType: !1891, size: 16, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2956, file: !2957, line: 39, baseType: !1891, size: 16, offset: 48)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2952, file: !202, line: 50, baseType: !350, size: 32, offset: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2952, file: !202, line: 51, baseType: !350, size: 32, offset: 96)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2952, file: !202, line: 52, baseType: !426, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2952, file: !202, line: 53, baseType: !426, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !432, file: !433, line: 835, baseType: !2967, size: 32, offset: 5120)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !452, line: 22, baseType: !2968)
!2968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !568, line: 28, baseType: !350)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !432, file: !433, line: 836, baseType: !2967, size: 32, offset: 5152)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !432, file: !433, line: 840, baseType: !426, size: 64, offset: 5184)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !432, file: !433, line: 849, baseType: !431, size: 64, offset: 5248)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !432, file: !433, line: 852, baseType: !431, size: 64, offset: 5312)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !432, file: !433, line: 857, baseType: !477, size: 128, offset: 5376)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !432, file: !433, line: 858, baseType: !477, size: 128, offset: 5504)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !432, file: !433, line: 859, baseType: !431, size: 64, offset: 5632)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !432, file: !433, line: 867, baseType: !477, size: 128, offset: 5696)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !432, file: !433, line: 868, baseType: !477, size: 128, offset: 5824)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !432, file: !433, line: 871, baseType: !1801, size: 64, offset: 5952)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !432, file: !433, line: 872, baseType: !2980, size: 512, offset: 6016)
!2980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !926, size: 512, elements: !1809)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !432, file: !433, line: 873, baseType: !477, size: 128, offset: 6528)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !432, file: !433, line: 874, baseType: !477, size: 128, offset: 6656)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !432, file: !433, line: 876, baseType: !2984, size: 64, offset: 6784)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !432, file: !433, line: 879, baseType: !994, size: 64, offset: 6848)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !432, file: !433, line: 882, baseType: !994, size: 64, offset: 6912)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !432, file: !433, line: 884, baseType: !484, size: 64, offset: 6976)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !432, file: !433, line: 885, baseType: !484, size: 64, offset: 7040)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !432, file: !433, line: 890, baseType: !484, size: 64, offset: 7104)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !432, file: !433, line: 891, baseType: !2991, size: 128, offset: 7168)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !433, line: 242, size: 128, elements: !2992)
!2992 = !{!2993, !2994, !2995}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2991, file: !433, line: 244, baseType: !484, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2991, file: !433, line: 245, baseType: !484, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2991, file: !433, line: 246, baseType: !405, offset: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !432, file: !433, line: 900, baseType: !426, size: 64, offset: 7296)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !432, file: !433, line: 901, baseType: !426, size: 64, offset: 7360)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !432, file: !433, line: 904, baseType: !484, size: 64, offset: 7424)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !432, file: !433, line: 907, baseType: !484, size: 64, offset: 7488)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !432, file: !433, line: 910, baseType: !426, size: 64, offset: 7552)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !432, file: !433, line: 911, baseType: !426, size: 64, offset: 7616)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !432, file: !433, line: 914, baseType: !3003, size: 640, offset: 7680)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3004, line: 123, size: 640, elements: !3005)
!3004 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!3005 = !{!3006, !3012, !3013}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3003, file: !3004, line: 124, baseType: !3007, size: 576)
!3007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3008, size: 576, elements: !938)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3004, line: 108, size: 192, elements: !3009)
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3008, file: !3004, line: 109, baseType: !484, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3008, file: !3004, line: 110, baseType: !581, size: 128, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3003, file: !3004, line: 125, baseType: !7, size: 32, offset: 576)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3003, file: !3004, line: 126, baseType: !7, size: 32, offset: 608)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !432, file: !433, line: 917, baseType: !3015, size: 192, offset: 8320)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3004, line: 134, size: 192, elements: !3016)
!3016 = !{!3017, !3018}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3015, file: !3004, line: 135, baseType: !1308, size: 128, align: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3015, file: !3004, line: 136, baseType: !7, size: 32, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !432, file: !433, line: 923, baseType: !1827, size: 64, offset: 8512)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !432, file: !433, line: 926, baseType: !1827, size: 64, offset: 8576)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !432, file: !433, line: 929, baseType: !1827, size: 64, offset: 8640)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !432, file: !433, line: 933, baseType: !1857, size: 64, offset: 8704)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !432, file: !433, line: 943, baseType: !3024, size: 128, offset: 8768)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 128, elements: !1342)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !432, file: !433, line: 945, baseType: !3026, size: 64, offset: 8896)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !433, line: 49, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !432, file: !433, line: 956, baseType: !3029, size: 64, offset: 8960)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !433, line: 45, flags: DIFlagFwdDecl)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !432, file: !433, line: 959, baseType: !3032, size: 64, offset: 9024)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !433, line: 959, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !432, file: !433, line: 962, baseType: !3035, size: 64, offset: 9088)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !433, line: 66, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !432, file: !433, line: 966, baseType: !3038, size: 64, offset: 9152)
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3040, line: 35, flags: DIFlagFwdDecl)
!3040 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !432, file: !433, line: 969, baseType: !3042, size: 64, offset: 9216)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3044, line: 82, size: 7296, elements: !3045)
!3044 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!3045 = !{!3046, !3047, !3048, !3049, !3050, !3051, !3052, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3081, !3090, !3091, !3093, !3094, !3095, !3098, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3128, !3129, !3136, !3137, !3138, !3139, !3140, !3141}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3043, file: !3044, line: 83, baseType: !446, size: 32)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3043, file: !3044, line: 84, baseType: !451, size: 32, offset: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3043, file: !3044, line: 85, baseType: !350, size: 32, offset: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3043, file: !3044, line: 86, baseType: !477, size: 128, offset: 128)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3043, file: !3044, line: 88, baseType: !1289, size: 128, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3043, file: !3044, line: 91, baseType: !431, size: 64, offset: 384)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3043, file: !3044, line: 94, baseType: !3053, size: 192, offset: 448)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !3054, line: 30, size: 192, elements: !3055)
!3054 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3053, file: !3054, line: 31, baseType: !477, size: 128)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3053, file: !3054, line: 32, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3059, line: 25, baseType: !3060)
!3059 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3059, line: 23, size: 64, elements: !3061)
!3061 = !{!3062}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3060, file: !3059, line: 24, baseType: !606, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3043, file: !3044, line: 97, baseType: !922, size: 64, offset: 640)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3043, file: !3044, line: 100, baseType: !350, size: 32, offset: 704)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3043, file: !3044, line: 106, baseType: !350, size: 32, offset: 736)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !3043, file: !3044, line: 107, baseType: !431, size: 64, offset: 768)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3043, file: !3044, line: 110, baseType: !350, size: 32, offset: 832)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3043, file: !3044, line: 111, baseType: !7, size: 32, offset: 864)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3043, file: !3044, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3043, file: !3044, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !3043, file: !3044, line: 128, baseType: !350, size: 32, offset: 928)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3043, file: !3044, line: 129, baseType: !477, size: 128, offset: 960)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3043, file: !3044, line: 132, baseType: !524, size: 512, offset: 1088)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3043, file: !3044, line: 133, baseType: !532, size: 64, offset: 1600)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3043, file: !3044, line: 140, baseType: !3076, size: 256, offset: 1664)
!3076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3077, size: 256, elements: !1849)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3044, line: 38, size: 128, elements: !3078)
!3078 = !{!3079, !3080}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3077, file: !3044, line: 39, baseType: !484, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3077, file: !3044, line: 40, baseType: !484, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3043, file: !3044, line: 146, baseType: !3082, size: 192, offset: 1920)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3044, line: 66, size: 192, elements: !3083)
!3083 = !{!3084}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3082, file: !3044, line: 67, baseType: !3085, size: 192)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3044, line: 47, size: 192, elements: !3086)
!3086 = !{!3087, !3088, !3089}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3085, file: !3044, line: 48, baseType: !1048, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3085, file: !3044, line: 49, baseType: !1048, size: 64, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3085, file: !3044, line: 50, baseType: !1048, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3043, file: !3044, line: 150, baseType: !3003, size: 640, offset: 2112)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3043, file: !3044, line: 153, baseType: !3092, size: 256, offset: 2752)
!3092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1801, size: 256, elements: !1809)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3043, file: !3044, line: 159, baseType: !1801, size: 64, offset: 3008)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3043, file: !3044, line: 162, baseType: !350, size: 32, offset: 3072)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3043, file: !3044, line: 164, baseType: !3096, size: 64, offset: 3136)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3044, line: 164, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3043, file: !3044, line: 175, baseType: !3099, size: 32, offset: 3200)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !571, line: 805, baseType: !3100)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 798, size: 32, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3100, file: !571, line: 803, baseType: !756, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3100, file: !571, line: 804, baseType: !800, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3043, file: !3044, line: 176, baseType: !484, size: 64, offset: 3264)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3043, file: !3044, line: 176, baseType: !484, size: 64, offset: 3328)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3043, file: !3044, line: 176, baseType: !484, size: 64, offset: 3392)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3043, file: !3044, line: 176, baseType: !484, size: 64, offset: 3456)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3043, file: !3044, line: 177, baseType: !484, size: 64, offset: 3520)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3043, file: !3044, line: 178, baseType: !484, size: 64, offset: 3584)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3043, file: !3044, line: 179, baseType: !2991, size: 128, offset: 3648)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3043, file: !3044, line: 180, baseType: !426, size: 64, offset: 3776)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3043, file: !3044, line: 180, baseType: !426, size: 64, offset: 3840)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3043, file: !3044, line: 180, baseType: !426, size: 64, offset: 3904)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3043, file: !3044, line: 180, baseType: !426, size: 64, offset: 3968)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3043, file: !3044, line: 181, baseType: !426, size: 64, offset: 4032)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3043, file: !3044, line: 181, baseType: !426, size: 64, offset: 4096)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3043, file: !3044, line: 181, baseType: !426, size: 64, offset: 4160)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3043, file: !3044, line: 181, baseType: !426, size: 64, offset: 4224)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3043, file: !3044, line: 182, baseType: !426, size: 64, offset: 4288)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3043, file: !3044, line: 182, baseType: !426, size: 64, offset: 4352)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3043, file: !3044, line: 182, baseType: !426, size: 64, offset: 4416)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3043, file: !3044, line: 182, baseType: !426, size: 64, offset: 4480)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3043, file: !3044, line: 183, baseType: !426, size: 64, offset: 4544)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3043, file: !3044, line: 183, baseType: !426, size: 64, offset: 4608)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3043, file: !3044, line: 184, baseType: !3126, offset: 4672)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3127, line: 12, elements: !413)
!3127 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3043, file: !3044, line: 192, baseType: !486, size: 64, offset: 4672)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3043, file: !3044, line: 203, baseType: !3130, size: 2048, offset: 4736)
!3130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3131, size: 2048, elements: !1342)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3132, line: 43, size: 128, elements: !3133)
!3132 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3131, file: !3132, line: 44, baseType: !1540, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3131, file: !3132, line: 45, baseType: !1540, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3043, file: !3044, line: 220, baseType: !873, size: 8, offset: 6784)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3043, file: !3044, line: 221, baseType: !1891, size: 16, offset: 6800)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3043, file: !3044, line: 222, baseType: !1891, size: 16, offset: 6816)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3043, file: !3044, line: 224, baseType: !614, size: 64, offset: 6848)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3043, file: !3044, line: 227, baseType: !1042, size: 192, offset: 6912)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !3043, file: !3044, line: 233, baseType: !1042, size: 192, offset: 7104)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !432, file: !433, line: 970, baseType: !3143, size: 64, offset: 9280)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3044, line: 20, size: 16576, elements: !3145)
!3145 = !{!3146, !3147, !3148, !3149}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3144, file: !3044, line: 21, baseType: !800)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3144, file: !3044, line: 22, baseType: !446, size: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3144, file: !3044, line: 23, baseType: !1289, size: 128, offset: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3144, file: !3044, line: 24, baseType: !3150, size: 16384, offset: 192)
!3150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3151, size: 16384, elements: !2184)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !3054, line: 49, size: 256, elements: !3152)
!3152 = !{!3153}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3151, file: !3054, line: 50, baseType: !3154, size: 256)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !3054, line: 35, size: 256, elements: !3155)
!3155 = !{!3156, !3163, !3164, !3170}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3154, file: !3054, line: 37, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3158, line: 19, baseType: !3159)
!3158 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3158, line: 18, baseType: !3161)
!3161 = !DISubroutineType(types: !3162)
!3162 = !{null, !350}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3154, file: !3054, line: 38, baseType: !426, size: 64, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3154, file: !3054, line: 44, baseType: !3165, size: 64, offset: 128)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3158, line: 22, baseType: !3166)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3158, line: 21, baseType: !3168)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{null}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3154, file: !3054, line: 46, baseType: !3058, size: 64, offset: 192)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !432, file: !433, line: 971, baseType: !3058, size: 64, offset: 9344)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !432, file: !433, line: 972, baseType: !3058, size: 64, offset: 9408)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !432, file: !433, line: 974, baseType: !3058, size: 64, offset: 9472)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !432, file: !433, line: 975, baseType: !3053, size: 192, offset: 9536)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !432, file: !433, line: 976, baseType: !426, size: 64, offset: 9728)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !432, file: !433, line: 977, baseType: !1538, size: 64, offset: 9792)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !432, file: !433, line: 978, baseType: !7, size: 32, offset: 9856)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !432, file: !433, line: 980, baseType: !1311, size: 64, offset: 9920)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !432, file: !433, line: 989, baseType: !3180, size: 128, offset: 9984)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3181, line: 35, size: 128, elements: !3182)
!3181 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!3182 = !{!3183, !3184, !3185}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3180, file: !3181, line: 36, baseType: !350, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3180, file: !3181, line: 37, baseType: !451, size: 32, offset: 32)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3180, file: !3181, line: 38, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3181, line: 23, flags: DIFlagFwdDecl)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !432, file: !433, line: 992, baseType: !484, size: 64, offset: 10112)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !432, file: !433, line: 993, baseType: !484, size: 64, offset: 10176)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !432, file: !433, line: 996, baseType: !800, offset: 10240)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !432, file: !433, line: 999, baseType: !405, offset: 10240)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !432, file: !433, line: 1001, baseType: !3193, size: 64, offset: 10240)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !433, line: 636, size: 64, elements: !3194)
!3194 = !{!3195}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3193, file: !433, line: 637, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !432, file: !433, line: 1005, baseType: !415, size: 128, offset: 10304)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !432, file: !433, line: 1007, baseType: !431, size: 64, offset: 10432)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !432, file: !433, line: 1009, baseType: !3200, size: 64, offset: 10496)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !433, line: 1009, flags: DIFlagFwdDecl)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !432, file: !433, line: 1043, baseType: !317, size: 64, offset: 10560)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !432, file: !433, line: 1046, baseType: !3204, size: 64, offset: 10624)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !433, line: 41, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !432, file: !433, line: 1050, baseType: !3207, size: 64, offset: 10688)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !433, line: 42, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !432, file: !433, line: 1054, baseType: !3210, size: 64, offset: 10752)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !433, line: 55, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !432, file: !433, line: 1056, baseType: !1236, size: 64, offset: 10816)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !432, file: !433, line: 1058, baseType: !3214, size: 64, offset: 10880)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3216, line: 99, size: 704, elements: !3217)
!3216 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!3217 = !{!3218, !3219, !3220, !3221, !3222, !3223, !3224, !3243, !3244}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3215, file: !3216, line: 100, baseType: !1046, size: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3215, file: !3216, line: 101, baseType: !451, size: 32, offset: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !3215, file: !3216, line: 102, baseType: !451, size: 32, offset: 96)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3215, file: !3216, line: 105, baseType: !800, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3215, file: !3216, line: 107, baseType: !357, size: 16, offset: 128)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !3215, file: !3216, line: 109, baseType: !2324, size: 128, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !3215, file: !3216, line: 110, baseType: !3225, size: 64, offset: 320)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !3216, line: 73, size: 448, elements: !3227)
!3227 = !{!3228, !3231, !3232, !3237, !3242}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !3226, file: !3216, line: 74, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !3216, line: 74, flags: DIFlagFwdDecl)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !3226, file: !3216, line: 75, baseType: !3214, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3226, file: !3216, line: 83, baseType: !3233, size: 128, offset: 128)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3226, file: !3216, line: 83, size: 128, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !3233, file: !3216, line: 84, baseType: !477, size: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !3233, file: !3216, line: 85, baseType: !2588, size: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, scope: !3226, file: !3216, line: 87, baseType: !3238, size: 128, offset: 256)
!3238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3226, file: !3216, line: 87, size: 128, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !3238, file: !3216, line: 88, baseType: !926, size: 128)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !3238, file: !3216, line: 89, baseType: !1308, size: 128, align: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3226, file: !3216, line: 92, baseType: !7, size: 32, offset: 384)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !3215, file: !3216, line: 111, baseType: !922, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !3215, file: !3216, line: 113, baseType: !1398, size: 256, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !432, file: !433, line: 1061, baseType: !3246, size: 64, offset: 10944)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !433, line: 43, flags: DIFlagFwdDecl)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !432, file: !433, line: 1064, baseType: !426, size: 64, offset: 11008)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !432, file: !433, line: 1065, baseType: !3250, size: 64, offset: 11072)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !3054, line: 14, baseType: !3252)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !3054, line: 12, size: 384, elements: !3253)
!3253 = !{!3254}
!3254 = !DIDerivedType(tag: DW_TAG_member, scope: !3252, file: !3054, line: 13, baseType: !3255, size: 384)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3252, file: !3054, line: 13, size: 384, elements: !3256)
!3256 = !{!3257, !3258, !3259, !3260}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3255, file: !3054, line: 13, baseType: !350, size: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3255, file: !3054, line: 13, baseType: !350, size: 32, offset: 32)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3255, file: !3054, line: 13, baseType: !350, size: 32, offset: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3255, file: !3054, line: 13, baseType: !3261, size: 256, offset: 128)
!3261 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3262, line: 32, size: 256, elements: !3263)
!3262 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!3263 = !{!3264, !3269, !3282, !3288, !3297, !3317, !3322}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3261, file: !3262, line: 37, baseType: !3265, size: 64)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 34, size: 64, elements: !3266)
!3266 = !{!3267, !3268}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3265, file: !3262, line: 35, baseType: !2968, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3265, file: !3262, line: 36, baseType: !732, size: 32, offset: 32)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3261, file: !3262, line: 45, baseType: !3270, size: 192)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 40, size: 192, elements: !3271)
!3271 = !{!3272, !3274, !3275, !3281}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3270, file: !3262, line: 41, baseType: !3273, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !568, line: 95, baseType: !350)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3270, file: !3262, line: 42, baseType: !350, size: 32, offset: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3270, file: !3262, line: 43, baseType: !3276, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3262, line: 11, baseType: !3277)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3262, line: 8, size: 64, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3277, file: !3262, line: 9, baseType: !350, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3277, file: !3262, line: 10, baseType: !317, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3270, file: !3262, line: 44, baseType: !350, size: 32, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3261, file: !3262, line: 52, baseType: !3283, size: 128)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 48, size: 128, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3283, file: !3262, line: 49, baseType: !2968, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3283, file: !3262, line: 50, baseType: !732, size: 32, offset: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3283, file: !3262, line: 51, baseType: !3276, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3261, file: !3262, line: 61, baseType: !3289, size: 256)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 55, size: 256, elements: !3290)
!3290 = !{!3291, !3292, !3293, !3294, !3296}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3289, file: !3262, line: 56, baseType: !2968, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3289, file: !3262, line: 57, baseType: !732, size: 32, offset: 32)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3289, file: !3262, line: 58, baseType: !350, size: 32, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3289, file: !3262, line: 59, baseType: !3295, size: 64, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !568, line: 94, baseType: !1537)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3289, file: !3262, line: 60, baseType: !3295, size: 64, offset: 192)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3261, file: !3262, line: 95, baseType: !3298, size: 256)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 64, size: 256, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3298, file: !3262, line: 65, baseType: !317, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, scope: !3298, file: !3262, line: 77, baseType: !3302, size: 192, offset: 64)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3298, file: !3262, line: 77, size: 192, elements: !3303)
!3303 = !{!3304, !3305, !3312}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3302, file: !3262, line: 82, baseType: !1891, size: 16)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3302, file: !3262, line: 88, baseType: !3306, size: 192)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3262, line: 84, size: 192, elements: !3307)
!3307 = !{!3308, !3310, !3311}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3306, file: !3262, line: 85, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 64, elements: !562)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3306, file: !3262, line: 86, baseType: !317, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3306, file: !3262, line: 87, baseType: !317, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3302, file: !3262, line: 93, baseType: !3313, size: 96)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3302, file: !3262, line: 90, size: 96, elements: !3314)
!3314 = !{!3315, !3316}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3313, file: !3262, line: 91, baseType: !3309, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3313, file: !3262, line: 92, baseType: !384, size: 32, offset: 64)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3261, file: !3262, line: 101, baseType: !3318, size: 128)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 98, size: 128, elements: !3319)
!3319 = !{!3320, !3321}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3318, file: !3262, line: 99, baseType: !443, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3318, file: !3262, line: 100, baseType: !350, size: 32, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3261, file: !3262, line: 108, baseType: !3323, size: 128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3261, file: !3262, line: 104, size: 128, elements: !3324)
!3324 = !{!3325, !3326, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3323, file: !3262, line: 105, baseType: !317, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3323, file: !3262, line: 106, baseType: !350, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3323, file: !3262, line: 107, baseType: !7, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !432, file: !433, line: 1067, baseType: !3126, offset: 11136)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !432, file: !433, line: 1099, baseType: !3330, size: 64, offset: 11136)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !433, line: 56, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !432, file: !433, line: 1103, baseType: !477, size: 128, offset: 11200)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !432, file: !433, line: 1104, baseType: !3334, size: 64, offset: 11328)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !433, line: 46, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !432, file: !433, line: 1105, baseType: !1042, size: 192, offset: 11392)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !432, file: !433, line: 1106, baseType: !7, size: 32, offset: 11584)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !432, file: !433, line: 1109, baseType: !3339, size: 128, offset: 11648)
!3339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3340, size: 128, elements: !1849)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !433, line: 51, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !432, file: !433, line: 1110, baseType: !1042, size: 192, offset: 11776)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !432, file: !433, line: 1111, baseType: !477, size: 128, offset: 11968)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !432, file: !433, line: 1173, baseType: !3345, size: 64, offset: 12096)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3347, line: 62, size: 256, align: 256, elements: !3348)
!3347 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!3348 = !{!3349, !3350, !3351, !3356}
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3346, file: !3347, line: 75, baseType: !384, size: 32)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3346, file: !3347, line: 90, baseType: !384, size: 32, offset: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3346, file: !3347, line: 124, baseType: !3352, size: 64, offset: 64)
!3352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3346, file: !3347, line: 109, size: 64, elements: !3353)
!3353 = !{!3354, !3355}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !3352, file: !3347, line: 110, baseType: !485, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3352, file: !3347, line: 112, baseType: !485, size: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3346, file: !3347, line: 144, baseType: !384, size: 32, offset: 128)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !432, file: !433, line: 1174, baseType: !383, size: 32, offset: 12160)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !432, file: !433, line: 1179, baseType: !426, size: 64, offset: 12224)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !432, file: !433, line: 1182, baseType: !3360, size: 128, offset: 12288)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2804, line: 76, size: 128, elements: !3361)
!3361 = !{!3362, !3367, !3368}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3360, file: !2804, line: 85, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3364, line: 7, size: 64, elements: !3365)
!3364 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!3365 = !{!3366}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3363, file: !3364, line: 12, baseType: !603, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3360, file: !2804, line: 88, baseType: !873, size: 8, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3360, file: !2804, line: 95, baseType: !873, size: 8, offset: 72)
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !432, file: !433, line: 1184, baseType: !3370, size: 128, offset: 12416)
!3370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !432, file: !433, line: 1184, size: 128, elements: !3371)
!3371 = !{!3372, !3373}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3370, file: !433, line: 1185, baseType: !446, size: 32)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3370, file: !433, line: 1186, baseType: !1308, size: 128, align: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !432, file: !433, line: 1190, baseType: !1761, size: 64, offset: 12544)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !432, file: !433, line: 1192, baseType: !3376, size: 128, offset: 12608)
!3376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2804, line: 64, size: 128, elements: !3377)
!3377 = !{!3378, !3379, !3380}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3376, file: !2804, line: 65, baseType: !703, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3376, file: !2804, line: 67, baseType: !384, size: 32, offset: 64)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3376, file: !2804, line: 68, baseType: !384, size: 32, offset: 96)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !432, file: !433, line: 1206, baseType: !350, size: 32, offset: 12736)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !432, file: !433, line: 1207, baseType: !350, size: 32, offset: 12768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !432, file: !433, line: 1209, baseType: !426, size: 64, offset: 12800)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !432, file: !433, line: 1219, baseType: !484, size: 64, offset: 12864)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !432, file: !433, line: 1220, baseType: !484, size: 64, offset: 12928)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !432, file: !433, line: 1317, baseType: !350, size: 32, offset: 12992)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !432, file: !433, line: 1319, baseType: !431, size: 64, offset: 13056)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !432, file: !433, line: 1322, baseType: !3389, size: 64, offset: 13120)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3391, line: 56, size: 512, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!3392 = !{!3393, !3394, !3395, !3396, !3397, !3398, !3399, !3401}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3390, file: !3391, line: 57, baseType: !3389, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3390, file: !3391, line: 58, baseType: !317, size: 64, offset: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !3391, line: 59, baseType: !426, size: 64, offset: 128)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3390, file: !3391, line: 60, baseType: !426, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3390, file: !3391, line: 61, baseType: !2503, size: 64, offset: 256)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3390, file: !3391, line: 62, baseType: !7, size: 32, offset: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3390, file: !3391, line: 63, baseType: !3400, size: 64, offset: 384)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !452, line: 153, baseType: !484)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3390, file: !3391, line: 64, baseType: !2275, size: 64, offset: 448)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !432, file: !433, line: 1326, baseType: !446, size: 32, offset: 13184)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !432, file: !433, line: 1342, baseType: !317, size: 64, offset: 13248)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !432, file: !433, line: 1343, baseType: !485, size: 64, offset: 13312)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !432, file: !433, line: 1344, baseType: !484, size: 64, offset: 13376)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !432, file: !433, line: 1345, baseType: !485, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !432, file: !433, line: 1346, baseType: !485, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !432, file: !433, line: 1347, baseType: !485, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !432, file: !433, line: 1348, baseType: !1308, size: 128, align: 64, offset: 13504)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !432, file: !433, line: 1358, baseType: !3411, size: 34816, offset: 13824)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3412, line: 485, size: 34816, elements: !3413)
!3412 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!3413 = !{!3414, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3443, !3444, !3445, !3446, !3447, !3448, !3451, !3452, !3453}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3411, file: !3412, line: 487, baseType: !3415, size: 192)
!3415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3416, size: 192, elements: !938)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3417, line: 16, size: 64, elements: !3418)
!3417 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!3418 = !{!3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3416, file: !3417, line: 17, baseType: !367, size: 16)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3416, file: !3417, line: 18, baseType: !367, size: 16, offset: 16)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3416, file: !3417, line: 19, baseType: !367, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3416, file: !3417, line: 19, baseType: !367, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3416, file: !3417, line: 19, baseType: !367, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3416, file: !3417, line: 19, baseType: !367, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3416, file: !3417, line: 19, baseType: !367, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3416, file: !3417, line: 20, baseType: !367, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3416, file: !3417, line: 20, baseType: !367, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3416, file: !3417, line: 20, baseType: !367, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3416, file: !3417, line: 20, baseType: !367, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3416, file: !3417, line: 20, baseType: !367, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3416, file: !3417, line: 20, baseType: !367, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3411, file: !3412, line: 491, baseType: !426, size: 64, offset: 192)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3411, file: !3412, line: 495, baseType: !357, size: 16, offset: 256)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3411, file: !3412, line: 496, baseType: !357, size: 16, offset: 272)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3411, file: !3412, line: 497, baseType: !357, size: 16, offset: 288)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3411, file: !3412, line: 498, baseType: !357, size: 16, offset: 304)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3411, file: !3412, line: 502, baseType: !426, size: 64, offset: 320)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3411, file: !3412, line: 503, baseType: !426, size: 64, offset: 384)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3411, file: !3412, line: 514, baseType: !3440, size: 256, offset: 448)
!3440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3441, size: 256, elements: !1809)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3412, line: 483, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3411, file: !3412, line: 516, baseType: !426, size: 64, offset: 704)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3411, file: !3412, line: 518, baseType: !426, size: 64, offset: 768)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3411, file: !3412, line: 520, baseType: !426, size: 64, offset: 832)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3411, file: !3412, line: 521, baseType: !426, size: 64, offset: 896)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3411, file: !3412, line: 522, baseType: !426, size: 64, offset: 960)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3411, file: !3412, line: 528, baseType: !3449, size: 64, offset: 1024)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3412, line: 10, flags: DIFlagFwdDecl)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3411, file: !3412, line: 535, baseType: !426, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !3411, file: !3412, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3411, file: !3412, line: 540, baseType: !3454, size: 33280, offset: 1536)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3455, line: 317, size: 33280, elements: !3456)
!3455 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!3456 = !{!3457, !3458, !3459}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3454, file: !3455, line: 330, baseType: !7, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3454, file: !3455, line: 337, baseType: !426, size: 64, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3454, file: !3455, line: 348, baseType: !3460, size: 32768, offset: 512)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3455, line: 304, size: 32768, elements: !3461)
!3461 = !{!3462, !3477, !3514, !3564, !3577}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3460, file: !3455, line: 305, baseType: !3463, size: 896)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3455, line: 12, size: 896, elements: !3464)
!3464 = !{!3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3476}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3463, file: !3455, line: 13, baseType: !383, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3463, file: !3455, line: 14, baseType: !383, size: 32, offset: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3463, file: !3455, line: 15, baseType: !383, size: 32, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3463, file: !3455, line: 16, baseType: !383, size: 32, offset: 96)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3463, file: !3455, line: 17, baseType: !383, size: 32, offset: 128)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3463, file: !3455, line: 18, baseType: !383, size: 32, offset: 160)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3463, file: !3455, line: 19, baseType: !383, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3463, file: !3455, line: 22, baseType: !3473, size: 640, offset: 224)
!3473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 640, elements: !3474)
!3474 = !{!3475}
!3475 = !DISubrange(count: 20)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3463, file: !3455, line: 25, baseType: !383, size: 32, offset: 864)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3460, file: !3455, line: 306, baseType: !3478, size: 4096, align: 128)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3455, line: 34, size: 4096, align: 128, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3499, !3500, !3501, !3503, !3505, !3509}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3478, file: !3455, line: 35, baseType: !367, size: 16)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3478, file: !3455, line: 36, baseType: !367, size: 16, offset: 16)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3478, file: !3455, line: 37, baseType: !367, size: 16, offset: 32)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3478, file: !3455, line: 38, baseType: !367, size: 16, offset: 48)
!3484 = !DIDerivedType(tag: DW_TAG_member, scope: !3478, file: !3455, line: 39, baseType: !3485, size: 128, offset: 64)
!3485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3478, file: !3455, line: 39, size: 128, elements: !3486)
!3486 = !{!3487, !3492}
!3487 = !DIDerivedType(tag: DW_TAG_member, scope: !3485, file: !3455, line: 40, baseType: !3488, size: 128)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3485, file: !3455, line: 40, size: 128, elements: !3489)
!3489 = !{!3490, !3491}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3488, file: !3455, line: 41, baseType: !484, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3488, file: !3455, line: 42, baseType: !484, size: 64, offset: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, scope: !3485, file: !3455, line: 44, baseType: !3493, size: 128)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3485, file: !3455, line: 44, size: 128, elements: !3494)
!3494 = !{!3495, !3496, !3497, !3498}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3493, file: !3455, line: 45, baseType: !383, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3493, file: !3455, line: 46, baseType: !383, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3493, file: !3455, line: 47, baseType: !383, size: 32, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3493, file: !3455, line: 48, baseType: !383, size: 32, offset: 96)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3478, file: !3455, line: 51, baseType: !383, size: 32, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3478, file: !3455, line: 52, baseType: !383, size: 32, offset: 224)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3478, file: !3455, line: 55, baseType: !3502, size: 1024, offset: 256)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 1024, elements: !787)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3478, file: !3455, line: 58, baseType: !3504, size: 2048, offset: 1280)
!3504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 2048, elements: !2184)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3478, file: !3455, line: 60, baseType: !3506, size: 384, offset: 3328)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 384, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 12)
!3509 = !DIDerivedType(tag: DW_TAG_member, scope: !3478, file: !3455, line: 62, baseType: !3510, size: 384, offset: 3712)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3478, file: !3455, line: 62, size: 384, elements: !3511)
!3511 = !{!3512, !3513}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3510, file: !3455, line: 63, baseType: !3506, size: 384)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3510, file: !3455, line: 64, baseType: !3506, size: 384)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3460, file: !3455, line: 307, baseType: !3515, size: 1088)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3455, line: 79, size: 1088, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3563}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3515, file: !3455, line: 80, baseType: !383, size: 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3515, file: !3455, line: 81, baseType: !383, size: 32, offset: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3515, file: !3455, line: 82, baseType: !383, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3515, file: !3455, line: 83, baseType: !383, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3515, file: !3455, line: 84, baseType: !383, size: 32, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3515, file: !3455, line: 85, baseType: !383, size: 32, offset: 160)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3515, file: !3455, line: 86, baseType: !383, size: 32, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3515, file: !3455, line: 88, baseType: !3473, size: 640, offset: 224)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3515, file: !3455, line: 89, baseType: !326, size: 8, offset: 864)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3515, file: !3455, line: 90, baseType: !326, size: 8, offset: 872)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3515, file: !3455, line: 91, baseType: !326, size: 8, offset: 880)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3515, file: !3455, line: 92, baseType: !326, size: 8, offset: 888)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3515, file: !3455, line: 93, baseType: !326, size: 8, offset: 896)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3515, file: !3455, line: 94, baseType: !326, size: 8, offset: 904)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3515, file: !3455, line: 95, baseType: !3532, size: 64, offset: 960)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3534, line: 11, size: 128, elements: !3535)
!3534 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3533, file: !3534, line: 12, baseType: !443, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3533, file: !3534, line: 13, baseType: !3538, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3540, line: 56, size: 1344, elements: !3541)
!3540 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!3541 = !{!3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3539, file: !3540, line: 61, baseType: !426, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3539, file: !3540, line: 62, baseType: !426, size: 64, offset: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3539, file: !3540, line: 63, baseType: !426, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3539, file: !3540, line: 64, baseType: !426, size: 64, offset: 192)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3539, file: !3540, line: 65, baseType: !426, size: 64, offset: 256)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3539, file: !3540, line: 66, baseType: !426, size: 64, offset: 320)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3539, file: !3540, line: 68, baseType: !426, size: 64, offset: 384)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3539, file: !3540, line: 69, baseType: !426, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3539, file: !3540, line: 70, baseType: !426, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3539, file: !3540, line: 71, baseType: !426, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3539, file: !3540, line: 72, baseType: !426, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3539, file: !3540, line: 73, baseType: !426, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3539, file: !3540, line: 74, baseType: !426, size: 64, offset: 768)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3539, file: !3540, line: 75, baseType: !426, size: 64, offset: 832)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3539, file: !3540, line: 76, baseType: !426, size: 64, offset: 896)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3539, file: !3540, line: 81, baseType: !426, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3539, file: !3540, line: 83, baseType: !426, size: 64, offset: 1024)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3539, file: !3540, line: 84, baseType: !426, size: 64, offset: 1088)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3539, file: !3540, line: 85, baseType: !426, size: 64, offset: 1152)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3539, file: !3540, line: 86, baseType: !426, size: 64, offset: 1216)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3539, file: !3540, line: 87, baseType: !426, size: 64, offset: 1280)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3515, file: !3455, line: 96, baseType: !383, size: 32, offset: 1024)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3460, file: !3455, line: 308, baseType: !3565, size: 4608, align: 512)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3455, line: 289, size: 4608, align: 512, elements: !3566)
!3566 = !{!3567, !3568, !3575}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3565, file: !3455, line: 290, baseType: !3478, size: 4096, align: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3565, file: !3455, line: 291, baseType: !3569, size: 512, offset: 4096)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3455, line: 268, size: 512, elements: !3570)
!3570 = !{!3571, !3572, !3573}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3569, file: !3455, line: 269, baseType: !484, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3569, file: !3455, line: 270, baseType: !484, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3569, file: !3455, line: 271, baseType: !3574, size: 384, offset: 128)
!3574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 384, elements: !1909)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3565, file: !3455, line: 292, baseType: !3576, offset: 4608)
!3576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, elements: !2005)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3460, file: !3455, line: 309, baseType: !3578, size: 32768)
!3578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 32768, elements: !3579)
!3579 = !{!3580}
!3580 = !DISubrange(count: 4096)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !333, file: !334, line: 704, baseType: !401, size: 192, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !333, file: !334, line: 706, baseType: !350, size: 32, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !333, file: !334, line: 707, baseType: !350, size: 32, offset: 736)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !333, file: !334, line: 708, baseType: !3585, size: 5568, offset: 768)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !250, line: 461, size: 5568, elements: !3586)
!3586 = !{!3587, !3588, !3590, !3593, !3594, !3645, !3736, !3737, !3738, !3739, !3740, !3749, !3854, !3867, !4062, !4063, !4067, !4069, !4070, !4071, !4075, !4081, !4082, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4123, !4124, !4125, !4128, !4131, !4132, !4133, !4134}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3585, file: !250, line: 462, baseType: !2143, size: 512)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3585, file: !250, line: 463, baseType: !3589, size: 64, offset: 512)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3585, file: !250, line: 465, baseType: !3591, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !250, line: 36, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3585, file: !250, line: 467, baseType: !829, size: 64, offset: 640)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3585, file: !250, line: 468, baseType: !3595, size: 64, offset: 704)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3597)
!3597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !250, line: 87, size: 384, elements: !3598)
!3598 = !{!3599, !3600, !3601, !3605, !3610, !3614}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3597, file: !250, line: 88, baseType: !829, size: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3597, file: !250, line: 89, baseType: !2222, size: 64, offset: 64)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3597, file: !250, line: 90, baseType: !3602, size: 64, offset: 128)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!350, !3589, !2177}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3597, file: !250, line: 91, baseType: !3606, size: 64, offset: 192)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!854, !3589, !3609, !2292, !2293}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3597, file: !250, line: 93, baseType: !3611, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3589}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3597, file: !250, line: 95, baseType: !3615, size: 64, offset: 320)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3617)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !257, line: 278, size: 1472, elements: !3618)
!3618 = !{!3619, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3617, file: !257, line: 279, baseType: !3620, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!350, !3589}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3617, file: !257, line: 280, baseType: !3611, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3617, file: !257, line: 281, baseType: !3620, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3617, file: !257, line: 282, baseType: !3620, size: 64, offset: 192)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3617, file: !257, line: 283, baseType: !3620, size: 64, offset: 256)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3617, file: !257, line: 284, baseType: !3620, size: 64, offset: 320)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3617, file: !257, line: 285, baseType: !3620, size: 64, offset: 384)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3617, file: !257, line: 286, baseType: !3620, size: 64, offset: 448)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3617, file: !257, line: 287, baseType: !3620, size: 64, offset: 512)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3617, file: !257, line: 288, baseType: !3620, size: 64, offset: 576)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3617, file: !257, line: 289, baseType: !3620, size: 64, offset: 640)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3617, file: !257, line: 290, baseType: !3620, size: 64, offset: 704)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3617, file: !257, line: 291, baseType: !3620, size: 64, offset: 768)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3617, file: !257, line: 292, baseType: !3620, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3617, file: !257, line: 293, baseType: !3620, size: 64, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3617, file: !257, line: 294, baseType: !3620, size: 64, offset: 960)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3617, file: !257, line: 295, baseType: !3620, size: 64, offset: 1024)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3617, file: !257, line: 296, baseType: !3620, size: 64, offset: 1088)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3617, file: !257, line: 297, baseType: !3620, size: 64, offset: 1152)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3617, file: !257, line: 298, baseType: !3620, size: 64, offset: 1216)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3617, file: !257, line: 299, baseType: !3620, size: 64, offset: 1280)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3617, file: !257, line: 300, baseType: !3620, size: 64, offset: 1344)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3617, file: !257, line: 301, baseType: !3620, size: 64, offset: 1408)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3585, file: !250, line: 470, baseType: !3646, size: 64, offset: 768)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3648, line: 82, size: 1408, elements: !3649)
!3648 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3649 = !{!3650, !3651, !3652, !3653, !3654, !3655, !3656, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3731, !3734, !3735}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3647, file: !3648, line: 83, baseType: !829, size: 64)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3647, file: !3648, line: 84, baseType: !829, size: 64, offset: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3647, file: !3648, line: 85, baseType: !3589, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3647, file: !3648, line: 86, baseType: !2222, size: 64, offset: 192)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3647, file: !3648, line: 87, baseType: !2222, size: 64, offset: 256)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3647, file: !3648, line: 88, baseType: !2222, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3647, file: !3648, line: 90, baseType: !3657, size: 64, offset: 384)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!350, !3589, !3660}
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !244, line: 95, size: 1152, elements: !3662)
!3662 = !{!3663, !3664, !3665, !3666, !3667, !3668, !3669, !3682, !3695, !3696, !3697, !3698, !3699, !3707, !3708, !3709, !3710, !3711, !3712}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3661, file: !244, line: 96, baseType: !829, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3661, file: !244, line: 97, baseType: !3646, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3661, file: !244, line: 99, baseType: !337, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3661, file: !244, line: 100, baseType: !829, size: 64, offset: 192)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3661, file: !244, line: 102, baseType: !873, size: 8, offset: 256)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3661, file: !244, line: 103, baseType: !243, size: 32, offset: 288)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3661, file: !244, line: 105, baseType: !3670, size: 64, offset: 320)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3672)
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3673, line: 262, size: 1600, elements: !3674)
!3673 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3674 = !{!3675, !3676, !3677, !3681}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3672, file: !3673, line: 263, baseType: !1334, size: 256)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3672, file: !3673, line: 264, baseType: !1334, size: 256, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3672, file: !3673, line: 265, baseType: !3678, size: 1024, offset: 512)
!3678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 1024, elements: !3679)
!3679 = !{!3680}
!3680 = !DISubrange(count: 128)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3672, file: !3673, line: 266, baseType: !2275, size: 64, offset: 1536)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3661, file: !244, line: 106, baseType: !3683, size: 64, offset: 384)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3685)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3673, line: 210, size: 256, elements: !3686)
!3686 = !{!3687, !3691, !3693, !3694}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3685, file: !3673, line: 211, baseType: !3688, size: 72)
!3688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 72, elements: !3689)
!3689 = !{!3690}
!3690 = !DISubrange(count: 9)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3685, file: !3673, line: 212, baseType: !3692, size: 64, offset: 128)
!3692 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3673, line: 14, baseType: !426)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3685, file: !3673, line: 213, baseType: !384, size: 32, offset: 192)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3685, file: !3673, line: 214, baseType: !384, size: 32, offset: 224)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3661, file: !244, line: 108, baseType: !3620, size: 64, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3661, file: !244, line: 109, baseType: !3611, size: 64, offset: 512)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3661, file: !244, line: 110, baseType: !3620, size: 64, offset: 576)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3661, file: !244, line: 111, baseType: !3611, size: 64, offset: 640)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3661, file: !244, line: 112, baseType: !3700, size: 64, offset: 704)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!350, !3589, !3703}
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !257, line: 52, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !257, line: 50, size: 32, elements: !3705)
!3705 = !{!3706}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3704, file: !257, line: 51, baseType: !350, size: 32)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3661, file: !244, line: 113, baseType: !3620, size: 64, offset: 768)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3661, file: !244, line: 114, baseType: !2222, size: 64, offset: 832)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3661, file: !244, line: 115, baseType: !2222, size: 64, offset: 896)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3661, file: !244, line: 117, baseType: !3615, size: 64, offset: 960)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3661, file: !244, line: 118, baseType: !3611, size: 64, offset: 1024)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3661, file: !244, line: 120, baseType: !3713, size: 64, offset: 1088)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !244, line: 120, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3647, file: !3648, line: 91, baseType: !3602, size: 64, offset: 448)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3647, file: !3648, line: 92, baseType: !3620, size: 64, offset: 512)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3647, file: !3648, line: 93, baseType: !3611, size: 64, offset: 576)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3647, file: !3648, line: 94, baseType: !3620, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3647, file: !3648, line: 95, baseType: !3611, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3647, file: !3648, line: 97, baseType: !3620, size: 64, offset: 768)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3647, file: !3648, line: 98, baseType: !3620, size: 64, offset: 832)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3647, file: !3648, line: 100, baseType: !3700, size: 64, offset: 896)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3647, file: !3648, line: 101, baseType: !3620, size: 64, offset: 960)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3647, file: !3648, line: 103, baseType: !3620, size: 64, offset: 1024)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3647, file: !3648, line: 105, baseType: !3620, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3647, file: !3648, line: 107, baseType: !3615, size: 64, offset: 1152)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3647, file: !3648, line: 109, baseType: !3728, size: 64, offset: 1216)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3730)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3648, line: 109, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3647, file: !3648, line: 111, baseType: !3732, size: 64, offset: 1280)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3648, line: 111, flags: DIFlagFwdDecl)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3647, file: !3648, line: 112, baseType: !932, offset: 1344)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3647, file: !3648, line: 114, baseType: !873, size: 8, offset: 1344)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3585, file: !250, line: 471, baseType: !3660, size: 64, offset: 832)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3585, file: !250, line: 473, baseType: !317, size: 64, offset: 896)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3585, file: !250, line: 475, baseType: !317, size: 64, offset: 960)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3585, file: !250, line: 480, baseType: !1042, size: 192, offset: 1024)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3585, file: !250, line: 484, baseType: !3741, size: 576, offset: 1216)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !250, line: 361, size: 576, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3747, !3748}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3741, file: !250, line: 362, baseType: !477, size: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3741, file: !250, line: 363, baseType: !477, size: 128, offset: 128)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3741, file: !250, line: 364, baseType: !477, size: 128, offset: 256)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3741, file: !250, line: 365, baseType: !477, size: 128, offset: 384)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3741, file: !250, line: 366, baseType: !873, size: 8, offset: 512)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3741, file: !250, line: 367, baseType: !249, size: 32, offset: 544)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3585, file: !250, line: 485, baseType: !3750, size: 2304, offset: 1792)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !257, line: 565, size: 2304, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3822, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3837, !3847, !3851}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3750, file: !257, line: 566, baseType: !3703, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3750, file: !257, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3750, file: !257, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3750, file: !257, line: 569, baseType: !873, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3750, file: !257, line: 570, baseType: !873, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3750, file: !257, line: 571, baseType: !873, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3750, file: !257, line: 572, baseType: !873, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3750, file: !257, line: 573, baseType: !873, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3750, file: !257, line: 574, baseType: !873, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3750, file: !257, line: 575, baseType: !873, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3750, file: !257, line: 576, baseType: !873, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3750, file: !257, line: 577, baseType: !383, size: 32, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3750, file: !257, line: 578, baseType: !800, offset: 96)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3750, file: !257, line: 580, baseType: !477, size: 128, offset: 128)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3750, file: !257, line: 581, baseType: !2669, size: 192, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3750, file: !257, line: 582, baseType: !3768, size: 64, offset: 448)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3770, line: 43, size: 1472, elements: !3771)
!3770 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3771 = !{!3772, !3773, !3774, !3775, !3776, !3779, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3801, !3802, !3803, !3804}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3769, file: !3770, line: 44, baseType: !829, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3769, file: !3770, line: 45, baseType: !350, size: 32, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3769, file: !3770, line: 46, baseType: !477, size: 128, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3769, file: !3770, line: 47, baseType: !800, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3769, file: !3770, line: 48, baseType: !3777, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !257, line: 533, flags: DIFlagFwdDecl)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3769, file: !3770, line: 49, baseType: !3780, size: 320, offset: 320)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3781, line: 11, size: 320, elements: !3782)
!3781 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !{!3783, !3784, !3785, !3790}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3780, file: !3781, line: 16, baseType: !926, size: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3780, file: !3781, line: 17, baseType: !426, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3780, file: !3781, line: 18, baseType: !3786, size: 64, offset: 192)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3789}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3780, file: !3781, line: 19, baseType: !383, size: 32, offset: 256)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3769, file: !3770, line: 50, baseType: !426, size: 64, offset: 640)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3769, file: !3770, line: 51, baseType: !532, size: 64, offset: 704)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3769, file: !3770, line: 52, baseType: !532, size: 64, offset: 768)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3769, file: !3770, line: 53, baseType: !532, size: 64, offset: 832)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3769, file: !3770, line: 54, baseType: !532, size: 64, offset: 896)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3769, file: !3770, line: 55, baseType: !532, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3769, file: !3770, line: 56, baseType: !426, size: 64, offset: 1024)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3769, file: !3770, line: 57, baseType: !426, size: 64, offset: 1088)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3769, file: !3770, line: 58, baseType: !426, size: 64, offset: 1152)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3769, file: !3770, line: 59, baseType: !426, size: 64, offset: 1216)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3769, file: !3770, line: 60, baseType: !426, size: 64, offset: 1280)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3769, file: !3770, line: 61, baseType: !3589, size: 64, offset: 1344)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3769, file: !3770, line: 62, baseType: !873, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3769, file: !3770, line: 63, baseType: !873, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3750, file: !257, line: 583, baseType: !873, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3750, file: !257, line: 584, baseType: !873, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3750, file: !257, line: 585, baseType: !873, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3750, file: !257, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3750, file: !257, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3750, file: !257, line: 592, baseType: !524, size: 512, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3750, file: !257, line: 593, baseType: !484, size: 64, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3750, file: !257, line: 594, baseType: !1398, size: 256, offset: 1152)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3750, file: !257, line: 595, baseType: !1289, size: 128, offset: 1408)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3750, file: !257, line: 596, baseType: !3777, size: 64, offset: 1536)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3750, file: !257, line: 597, baseType: !451, size: 32, offset: 1600)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3750, file: !257, line: 598, baseType: !451, size: 32, offset: 1632)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3750, file: !257, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3750, file: !257, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3750, file: !257, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3750, file: !257, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3750, file: !257, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3750, file: !257, line: 604, baseType: !873, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3750, file: !257, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3750, file: !257, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3750, file: !257, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3750, file: !257, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3750, file: !257, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3750, file: !257, line: 610, baseType: !7, size: 32, offset: 1696)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3750, file: !257, line: 611, baseType: !256, size: 32, offset: 1728)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3750, file: !257, line: 612, baseType: !264, size: 32, offset: 1760)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3750, file: !257, line: 613, baseType: !350, size: 32, offset: 1792)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3750, file: !257, line: 614, baseType: !350, size: 32, offset: 1824)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3750, file: !257, line: 615, baseType: !484, size: 64, offset: 1856)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3750, file: !257, line: 616, baseType: !484, size: 64, offset: 1920)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3750, file: !257, line: 617, baseType: !484, size: 64, offset: 1984)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3750, file: !257, line: 618, baseType: !484, size: 64, offset: 2048)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3750, file: !257, line: 620, baseType: !3838, size: 64, offset: 2112)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !257, line: 536, size: 256, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3839, file: !257, line: 537, baseType: !800)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3839, file: !257, line: 538, baseType: !7, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3839, file: !257, line: 540, baseType: !477, size: 128, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3839, file: !257, line: 543, baseType: !3845, size: 64, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !257, line: 534, flags: DIFlagFwdDecl)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3750, file: !257, line: 621, baseType: !3848, size: 64, offset: 2176)
!3848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3849, size: 64)
!3849 = !DISubroutineType(types: !3850)
!3850 = !{null, !3589, !1865}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3750, file: !257, line: 622, baseType: !3852, size: 64, offset: 2240)
!3852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3853 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !257, line: 622, flags: DIFlagFwdDecl)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3585, file: !250, line: 486, baseType: !3855, size: 64, offset: 4096)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !257, line: 642, size: 1792, elements: !3857)
!3857 = !{!3858, !3859, !3860, !3864, !3865, !3866}
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3856, file: !257, line: 643, baseType: !3617, size: 1472)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3856, file: !257, line: 644, baseType: !3620, size: 64, offset: 1472)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3856, file: !257, line: 645, baseType: !3861, size: 64, offset: 1536)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3589, !873}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3856, file: !257, line: 646, baseType: !3620, size: 64, offset: 1600)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3856, file: !257, line: 647, baseType: !3611, size: 64, offset: 1664)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3856, file: !257, line: 648, baseType: !3611, size: 64, offset: 1728)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3585, file: !250, line: 493, baseType: !3868, size: 64, offset: 4160)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !271, line: 162, size: 1088, elements: !3870)
!3870 = !{!3871, !3872, !3873, !4046, !4047, !4048, !4049, !4050, !4051, !4054, !4055, !4056, !4057, !4058, !4059, !4060}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3869, file: !271, line: 163, baseType: !477, size: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3869, file: !271, line: 164, baseType: !829, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3869, file: !271, line: 165, baseType: !3874, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3876)
!3876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !271, line: 105, size: 640, elements: !3877)
!3877 = !{!3878, !3996, !4007, !4012, !4016, !4023, !4027, !4031, !4038, !4042}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3876, file: !271, line: 106, baseType: !3879, size: 64)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!350, !3868, !3882, !270}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3884, line: 51, size: 1344, elements: !3885)
!3884 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3885 = !{!3886, !3887, !3889, !3890, !3980, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3883, file: !3884, line: 52, baseType: !829, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3883, file: !3884, line: 53, baseType: !3888, size: 32, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3884, line: 28, baseType: !383)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3883, file: !3884, line: 54, baseType: !829, size: 64, offset: 128)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3883, file: !3884, line: 55, baseType: !3891, size: 192, offset: 192)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3892, line: 17, size: 192, elements: !3893)
!3892 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3893 = !{!3894, !3896, !3979}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3891, file: !3892, line: 18, baseType: !3895, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3891, file: !3892, line: 19, baseType: !3897, size: 64, offset: 64)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3899)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3892, line: 110, size: 1152, elements: !3900)
!3900 = !{!3901, !3905, !3909, !3915, !3921, !3925, !3929, !3934, !3938, !3939, !3943, !3947, !3951, !3962, !3963, !3964, !3965, !3975}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3899, file: !3892, line: 111, baseType: !3902, size: 64)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!3895, !3895}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3899, file: !3892, line: 112, baseType: !3906, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{null, !3895}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3899, file: !3892, line: 113, baseType: !3910, size: 64, offset: 128)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!873, !3913}
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3891)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3899, file: !3892, line: 114, baseType: !3916, size: 64, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!2275, !3913, !3919}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3585)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3899, file: !3892, line: 116, baseType: !3922, size: 64, offset: 256)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!873, !3913, !829}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3899, file: !3892, line: 118, baseType: !3926, size: 64, offset: 320)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!350, !3913, !829, !7, !317, !1538}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3899, file: !3892, line: 123, baseType: !3930, size: 64, offset: 384)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!350, !3913, !829, !3933, !1538}
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3899, file: !3892, line: 126, baseType: !3935, size: 64, offset: 448)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!829, !3913}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3899, file: !3892, line: 127, baseType: !3935, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3899, file: !3892, line: 128, baseType: !3940, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DISubroutineType(types: !3942)
!3942 = !{!3895, !3913}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3899, file: !3892, line: 130, baseType: !3944, size: 64, offset: 640)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!3895, !3913, !3895}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3899, file: !3892, line: 133, baseType: !3948, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!3895, !3913, !829}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3899, file: !3892, line: 135, baseType: !3952, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!350, !3913, !829, !829, !7, !7, !3955}
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3892, line: 43, size: 640, elements: !3957)
!3957 = !{!3958, !3959, !3960}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3956, file: !3892, line: 44, baseType: !3895, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3956, file: !3892, line: 45, baseType: !7, size: 32, offset: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3956, file: !3892, line: 46, baseType: !3961, size: 512, offset: 128)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !484, size: 512, elements: !562)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3899, file: !3892, line: 140, baseType: !3944, size: 64, offset: 832)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3899, file: !3892, line: 143, baseType: !3940, size: 64, offset: 896)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3899, file: !3892, line: 145, baseType: !3902, size: 64, offset: 960)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3899, file: !3892, line: 146, baseType: !3966, size: 64, offset: 1024)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{!350, !3913, !3969}
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3892, line: 29, size: 128, elements: !3971)
!3971 = !{!3972, !3973, !3974}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3970, file: !3892, line: 30, baseType: !7, size: 32)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3970, file: !3892, line: 31, baseType: !7, size: 32, offset: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3970, file: !3892, line: 32, baseType: !3913, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3899, file: !3892, line: 148, baseType: !3976, size: 64, offset: 1088)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!350, !3913, !3589}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3891, file: !3892, line: 20, baseType: !3589, size: 64, offset: 128)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3883, file: !3884, line: 57, baseType: !3981, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3884, line: 31, size: 704, elements: !3983)
!3983 = !{!3984, !3985, !3986, !3987, !3988}
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3982, file: !3884, line: 32, baseType: !854, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3982, file: !3884, line: 33, baseType: !350, size: 32, offset: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3982, file: !3884, line: 34, baseType: !317, size: 64, offset: 128)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3982, file: !3884, line: 35, baseType: !3981, size: 64, offset: 192)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3982, file: !3884, line: 43, baseType: !2237, size: 448, offset: 256)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3883, file: !3884, line: 58, baseType: !3981, size: 64, offset: 448)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3883, file: !3884, line: 59, baseType: !3882, size: 64, offset: 512)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3883, file: !3884, line: 60, baseType: !3882, size: 64, offset: 576)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3883, file: !3884, line: 61, baseType: !3882, size: 64, offset: 640)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3883, file: !3884, line: 63, baseType: !2143, size: 512, offset: 704)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3883, file: !3884, line: 65, baseType: !426, size: 64, offset: 1216)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3883, file: !3884, line: 66, baseType: !317, size: 64, offset: 1280)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3876, file: !271, line: 108, baseType: !3997, size: 64, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!350, !3868, !4000, !270}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !271, line: 63, size: 640, elements: !4002)
!4002 = !{!4003, !4004, !4005}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4001, file: !271, line: 64, baseType: !3895, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4001, file: !271, line: 65, baseType: !350, size: 32, offset: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4001, file: !271, line: 66, baseType: !4006, size: 512, offset: 96)
!4006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 512, elements: !1342)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3876, file: !271, line: 110, baseType: !4008, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!350, !3868, !7, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !452, line: 164, baseType: !426)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3876, file: !271, line: 111, baseType: !4013, size: 64, offset: 192)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3868, !7}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3876, file: !271, line: 112, baseType: !4017, size: 64, offset: 256)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DISubroutineType(types: !4019)
!4019 = !{!350, !3868, !3882, !4020, !7, !4022, !1317}
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3876, file: !271, line: 117, baseType: !4024, size: 64, offset: 320)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!350, !3868, !7, !7, !317}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3876, file: !271, line: 119, baseType: !4028, size: 64, offset: 384)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !3868, !7, !7}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3876, file: !271, line: 121, baseType: !4032, size: 64, offset: 448)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!350, !3868, !4035, !873}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4037, line: 11, flags: DIFlagFwdDecl)
!4037 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3876, file: !271, line: 122, baseType: !4039, size: 64, offset: 512)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{null, !3868, !4035}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3876, file: !271, line: 123, baseType: !4043, size: 64, offset: 576)
!4043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4044, size: 64)
!4044 = !DISubroutineType(types: !4045)
!4045 = !{!350, !3868, !4000, !4022, !1317}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3869, file: !271, line: 166, baseType: !317, size: 64, offset: 256)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3869, file: !271, line: 167, baseType: !7, size: 32, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3869, file: !271, line: 168, baseType: !7, size: 32, offset: 352)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3869, file: !271, line: 171, baseType: !3895, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3869, file: !271, line: 172, baseType: !270, size: 32, offset: 448)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3869, file: !271, line: 173, baseType: !4052, size: 64, offset: 512)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !271, line: 134, flags: DIFlagFwdDecl)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3869, file: !271, line: 175, baseType: !3868, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3869, file: !271, line: 182, baseType: !4011, size: 64, offset: 640)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3869, file: !271, line: 183, baseType: !7, size: 32, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3869, file: !271, line: 184, baseType: !7, size: 32, offset: 736)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3869, file: !271, line: 185, baseType: !2324, size: 128, offset: 768)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3869, file: !271, line: 186, baseType: !1042, size: 192, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3869, file: !271, line: 187, baseType: !4061, offset: 1088)
!4061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2881)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3585, file: !250, line: 499, baseType: !477, size: 128, offset: 4224)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3585, file: !250, line: 502, baseType: !4064, size: 64, offset: 4352)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4066)
!4066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !250, line: 502, flags: DIFlagFwdDecl)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3585, file: !250, line: 504, baseType: !4068, size: 64, offset: 4416)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3585, file: !250, line: 505, baseType: !484, size: 64, offset: 4480)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3585, file: !250, line: 510, baseType: !484, size: 64, offset: 4544)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3585, file: !250, line: 511, baseType: !4072, size: 64, offset: 4608)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4074)
!4074 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !250, line: 511, flags: DIFlagFwdDecl)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3585, file: !250, line: 513, baseType: !4076, size: 64, offset: 4672)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !250, line: 288, size: 128, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4077, file: !250, line: 293, baseType: !7, size: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4077, file: !250, line: 294, baseType: !426, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3585, file: !250, line: 515, baseType: !477, size: 128, offset: 4736)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3585, file: !250, line: 526, baseType: !4083, offset: 4864)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4084, line: 5, elements: !413)
!4084 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3585, file: !250, line: 528, baseType: !3882, size: 64, offset: 4864)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3585, file: !250, line: 529, baseType: !3895, size: 64, offset: 4928)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3585, file: !250, line: 534, baseType: !887, size: 32, offset: 4992)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3585, file: !250, line: 535, baseType: !383, size: 32, offset: 5024)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3585, file: !250, line: 537, baseType: !800, offset: 5056)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3585, file: !250, line: 538, baseType: !477, size: 128, offset: 5056)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3585, file: !250, line: 540, baseType: !4092, size: 64, offset: 5184)
!4092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4093, size: 64)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4094, line: 54, size: 960, elements: !4095)
!4094 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4095 = !{!4096, !4097, !4098, !4099, !4100, !4101, !4102, !4106, !4110, !4111, !4112, !4113, !4117, !4121, !4122}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4093, file: !4094, line: 55, baseType: !829, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4093, file: !4094, line: 56, baseType: !337, size: 64, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4093, file: !4094, line: 58, baseType: !2222, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4093, file: !4094, line: 59, baseType: !2222, size: 64, offset: 192)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4093, file: !4094, line: 60, baseType: !2149, size: 64, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4093, file: !4094, line: 62, baseType: !3602, size: 64, offset: 320)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4093, file: !4094, line: 63, baseType: !4103, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = !DISubroutineType(types: !4105)
!4105 = !{!854, !3589, !3609}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4093, file: !4094, line: 65, baseType: !4107, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4108, size: 64)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{null, !4092}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4093, file: !4094, line: 66, baseType: !3611, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4093, file: !4094, line: 68, baseType: !3620, size: 64, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4093, file: !4094, line: 70, baseType: !2258, size: 64, offset: 640)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4093, file: !4094, line: 71, baseType: !4114, size: 64, offset: 704)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DISubroutineType(types: !4116)
!4116 = !{!2275, !3589}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4093, file: !4094, line: 73, baseType: !4118, size: 64, offset: 768)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !3589, !2292, !2293}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4093, file: !4094, line: 75, baseType: !3615, size: 64, offset: 832)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4093, file: !4094, line: 77, baseType: !3732, size: 64, offset: 896)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3585, file: !250, line: 541, baseType: !2222, size: 64, offset: 5248)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3585, file: !250, line: 543, baseType: !3611, size: 64, offset: 5312)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3585, file: !250, line: 544, baseType: !4126, size: 64, offset: 5376)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !250, line: 45, flags: DIFlagFwdDecl)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3585, file: !250, line: 545, baseType: !4129, size: 64, offset: 5440)
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !250, line: 47, flags: DIFlagFwdDecl)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3585, file: !250, line: 547, baseType: !873, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3585, file: !250, line: 548, baseType: !873, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3585, file: !250, line: 549, baseType: !873, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3585, file: !250, line: 550, baseType: !873, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !333, file: !334, line: 709, baseType: !426, size: 64, offset: 6336)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !333, file: !334, line: 713, baseType: !350, size: 32, offset: 6400)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !333, file: !334, line: 714, baseType: !4138, size: 384, offset: 6432)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 384, elements: !4139)
!4139 = !{!4140}
!4140 = !DISubrange(count: 48)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !333, file: !334, line: 715, baseType: !2669, size: 192, offset: 6848)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !333, file: !334, line: 717, baseType: !1042, size: 192, offset: 7040)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !333, file: !334, line: 718, baseType: !477, size: 128, offset: 7232)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !333, file: !334, line: 720, baseType: !4145, size: 64, offset: 7360)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !334, line: 618, size: 832, elements: !4147)
!4147 = !{!4148, !4152, !4153, !4157, !4158, !4159, !4160, !4164, !4165, !4168, !4169, !4172, !4175}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4146, file: !334, line: 619, baseType: !4149, size: 64)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!350, !332}
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4146, file: !334, line: 621, baseType: !4149, size: 64, offset: 64)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4146, file: !334, line: 622, baseType: !4154, size: 64, offset: 128)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !332, !350}
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4146, file: !334, line: 623, baseType: !4149, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4146, file: !334, line: 624, baseType: !4154, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4146, file: !334, line: 625, baseType: !4149, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4146, file: !334, line: 627, baseType: !4161, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !332}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4146, file: !334, line: 628, baseType: !4161, size: 64, offset: 448)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4146, file: !334, line: 631, baseType: !4166, size: 64, offset: 512)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !334, line: 631, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4146, file: !334, line: 632, baseType: !4166, size: 64, offset: 576)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4146, file: !334, line: 633, baseType: !4170, size: 64, offset: 640)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !334, line: 633, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4146, file: !334, line: 634, baseType: !4173, size: 64, offset: 704)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !334, line: 634, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4146, file: !334, line: 635, baseType: !4173, size: 64, offset: 768)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !333, file: !334, line: 721, baseType: !4177, size: 64, offset: 7424)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4179)
!4179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !334, line: 664, size: 192, elements: !4180)
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4186}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4179, file: !334, line: 665, baseType: !484, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4179, file: !334, line: 666, baseType: !350, size: 32, offset: 64)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4179, file: !334, line: 667, baseType: !367, size: 16, offset: 96)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4179, file: !334, line: 668, baseType: !367, size: 16, offset: 112)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4179, file: !334, line: 669, baseType: !367, size: 16, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4179, file: !334, line: 670, baseType: !367, size: 16, offset: 144)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !333, file: !334, line: 723, baseType: !3868, size: 64, offset: 7488)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !322, file: !323, line: 20, baseType: !350, size: 32, offset: 128)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !322, file: !323, line: 21, baseType: !854, size: 64, offset: 192)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "hybrid_tuner_instance_list", scope: !319, file: !3, line: 33, baseType: !477, size: 128, offset: 256)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !319, file: !3, line: 35, baseType: !4192, size: 32, offset: 384)
!4192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 32, elements: !1809)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !319, file: !3, line: 36, baseType: !7, size: 32, offset: 416)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !319, file: !3, line: 37, baseType: !7, size: 32, offset: 448)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !319, file: !3, line: 38, baseType: !7, size: 32, offset: 480)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !319, file: !3, line: 39, baseType: !4197, size: 64, offset: 512)
!4197 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !309, line: 1260, baseType: !485)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !319, file: !3, line: 41, baseType: !873, size: 8, offset: 576)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !480)
!4201 = !{!4202, !4254, !4259, !4264, !4266, !4268, !4270, !4272, !4274, !4279, !4281, !4286, !4291, !4294, !0, !4296, !4301, !4303, !4305, !4307, !4310, !4312, !4317, !4319, !4321, !4323, !4646, !4655, !4657, !4662, !4669, !4672, !4674, !4676, !4679, !4681, !4685}
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 25, type: !4204, isLocal: true, isDefinition: true, align: 64)
!4204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4205)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !4206, line: 69, size: 320, elements: !4207)
!4206 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!4207 = !{!4208, !4209, !4210, !4226, !4228, !4232, !4233}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4205, file: !4206, line: 70, baseType: !829, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4205, file: !4206, line: 71, baseType: !337, size: 64, offset: 64)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4205, file: !4206, line: 72, baseType: !4211, size: 64, offset: 128)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4213)
!4213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !4206, line: 47, size: 256, elements: !4214)
!4214 = !{!4215, !4216, !4221, !4225}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4213, file: !4206, line: 49, baseType: !7, size: 32)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !4213, file: !4206, line: 51, baseType: !4217, size: 64, offset: 64)
!4217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4218, size: 64)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!350, !829, !4220}
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4213, file: !4206, line: 53, baseType: !4222, size: 64, offset: 128)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4223, size: 64)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!350, !854, !4220}
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !4213, file: !4206, line: 55, baseType: !1439, size: 64, offset: 192)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4205, file: !4206, line: 73, baseType: !4227, size: 16, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4205, file: !4206, line: 74, baseType: !4229, size: 8, offset: 208)
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !327, line: 16, baseType: !4230)
!4230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !329, line: 20, baseType: !4231)
!4231 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4205, file: !4206, line: 75, baseType: !326, size: 8, offset: 216)
!4233 = !DIDerivedType(tag: DW_TAG_member, scope: !4205, file: !4206, line: 76, baseType: !4234, size: 64, offset: 256)
!4234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4205, file: !4206, line: 76, size: 64, elements: !4235)
!4235 = !{!4236, !4237, !4244}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4234, file: !4206, line: 77, baseType: !317, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4234, file: !4206, line: 78, baseType: !4238, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4240)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !4206, line: 86, size: 128, elements: !4241)
!4241 = !{!4242, !4243}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !4240, file: !4206, line: 87, baseType: !7, size: 32)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4240, file: !4206, line: 88, baseType: !854, size: 64, offset: 64)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !4234, file: !4206, line: 79, baseType: !4245, size: 64)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4247)
!4247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !4206, line: 92, size: 256, elements: !4248)
!4248 = !{!4249, !4250, !4251, !4252, !4253}
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !4247, file: !4206, line: 94, baseType: !7, size: 32)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !4247, file: !4206, line: 95, baseType: !7, size: 32, offset: 32)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4247, file: !4206, line: 96, baseType: !1317, size: 64, offset: 64)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4247, file: !4206, line: 97, baseType: !4211, size: 64, offset: 128)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !4247, file: !4206, line: 98, baseType: !317, size: 64, offset: 192)
!4254 = !DIGlobalVariableExpression(var: !4255, expr: !DIExpression())
!4255 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype250", scope: !2, file: !3, line: 25, type: !4256, isLocal: true, isDefinition: true, align: 8)
!4256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 216, elements: !4257)
!4257 = !{!4258}
!4258 = !DISubrange(count: 27)
!4259 = !DIGlobalVariableExpression(var: !4260, expr: !DIExpression())
!4260 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug251", scope: !2, file: !3, line: 26, type: !4261, isLocal: true, isDefinition: true, align: 8)
!4261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 392, elements: !4262)
!4262 = !{!4263}
!4263 = !DISubrange(count: 49)
!4264 = !DIGlobalVariableExpression(var: !4265, expr: !DIExpression())
!4265 = distinct !DIGlobalVariable(name: "__param_port1", scope: !2, file: !3, line: 438, type: !4204, isLocal: true, isDefinition: true, align: 64)
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_port1type252", scope: !2, file: !3, line: 438, type: !4256, isLocal: true, isDefinition: true, align: 8)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "__param_port2", scope: !2, file: !3, line: 439, type: !4204, isLocal: true, isDefinition: true, align: 64)
!4270 = !DIGlobalVariableExpression(var: !4271, expr: !DIExpression())
!4271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_port2type253", scope: !2, file: !3, line: 439, type: !4256, isLocal: true, isDefinition: true, align: 8)
!4272 = !DIGlobalVariableExpression(var: !4273, expr: !DIExpression())
!4273 = distinct !DIGlobalVariable(name: "__param_qss", scope: !2, file: !3, line: 440, type: !4204, isLocal: true, isDefinition: true, align: 64)
!4274 = !DIGlobalVariableExpression(var: !4275, expr: !DIExpression())
!4275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_qsstype254", scope: !2, file: !3, line: 440, type: !4276, isLocal: true, isDefinition: true, align: 8)
!4276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 200, elements: !4277)
!4277 = !{!4278}
!4278 = !DISubrange(count: 25)
!4279 = !DIGlobalVariableExpression(var: !4280, expr: !DIExpression())
!4280 = distinct !DIGlobalVariable(name: "__param_adjust", scope: !2, file: !3, line: 441, type: !4204, isLocal: true, isDefinition: true, align: 64)
!4281 = !DIGlobalVariableExpression(var: !4282, expr: !DIExpression())
!4282 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_adjusttype255", scope: !2, file: !3, line: 441, type: !4283, isLocal: true, isDefinition: true, align: 8)
!4283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 224, elements: !4284)
!4284 = !{!4285}
!4285 = !DISubrange(count: 28)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file258", scope: !2, file: !3, line: 710, type: !4288, isLocal: true, isDefinition: true, align: 8)
!4288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 336, elements: !4289)
!4289 = !{!4290}
!4290 = !DISubrange(count: 42)
!4291 = !DIGlobalVariableExpression(var: !4292, expr: !DIExpression())
!4292 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license259", scope: !2, file: !3, line: 710, type: !4293, isLocal: true, isDefinition: true, align: 8)
!4293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 160, elements: !3474)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 24, type: !350, isLocal: true, isDefinition: true)
!4296 = !DIGlobalVariableExpression(var: !4297, expr: !DIExpression())
!4297 = distinct !DIGlobalVariable(name: "__param_str_port1", scope: !2, file: !3, line: 438, type: !4298, isLocal: true, isDefinition: true)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 112, elements: !4299)
!4299 = !{!4300}
!4300 = !DISubrange(count: 14)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "port1", scope: !2, file: !3, line: 433, type: !7, isLocal: true, isDefinition: true)
!4303 = !DIGlobalVariableExpression(var: !4304, expr: !DIExpression())
!4304 = distinct !DIGlobalVariable(name: "__param_str_port2", scope: !2, file: !3, line: 439, type: !4298, isLocal: true, isDefinition: true)
!4305 = !DIGlobalVariableExpression(var: !4306, expr: !DIExpression())
!4306 = distinct !DIGlobalVariable(name: "port2", scope: !2, file: !3, line: 434, type: !7, isLocal: true, isDefinition: true)
!4307 = !DIGlobalVariableExpression(var: !4308, expr: !DIExpression())
!4308 = distinct !DIGlobalVariable(name: "__param_str_qss", scope: !2, file: !3, line: 440, type: !4309, isLocal: true, isDefinition: true)
!4309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 96, elements: !3507)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "qss", scope: !2, file: !3, line: 435, type: !7, isLocal: true, isDefinition: true)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "__param_str_adjust", scope: !2, file: !3, line: 441, type: !4314, isLocal: true, isDefinition: true)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !830, size: 120, elements: !4315)
!4315 = !{!4316}
!4316 = !DISubrange(count: 15)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "adjust", scope: !2, file: !3, line: 436, type: !7, isLocal: true, isDefinition: true)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(name: "tda9887_list_mutex", scope: !2, file: !3, line: 28, type: !1042, isLocal: true, isDefinition: true)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "hybrid_tuner_instance_list", scope: !2, file: !3, line: 29, type: !477, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(name: "tda9887_ops", scope: !2, file: !3, line: 663, type: !4325, isLocal: true, isDefinition: true)
!4325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4326)
!4326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !4327)
!4327 = !{!4328, !4332, !4639, !4640, !4641, !4642, !4643, !4644, !4645}
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4326, file: !51, line: 304, baseType: !4329, size: 64)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !4330)
!4330 = !{!4331}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4329, file: !51, line: 277, baseType: !854, size: 64)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4326, file: !51, line: 306, baseType: !4333, size: 64, offset: 64)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{null, !4336, !4561}
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !4338)
!4338 = !{!4339, !4340, !4593, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4637, !4638}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4337, file: !51, line: 687, baseType: !2440, size: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4337, file: !51, line: 688, baseType: !4341, size: 6016, offset: 64)
!4341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !4342)
!4342 = !{!4343, !4355, !4357, !4361, !4362, !4363, !4367, !4368, !4374, !4379, !4383, !4384, !4394, !4471, !4475, !4479, !4484, !4485, !4486, !4487, !4497, !4508, !4512, !4516, !4520, !4524, !4528, !4532, !4533, !4534, !4538, !4592}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4341, file: !51, line: 436, baseType: !4344, size: 1280)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4344, file: !51, line: 339, baseType: !3678, size: 1024)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4344, file: !51, line: 340, baseType: !383, size: 32, offset: 1024)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4344, file: !51, line: 341, baseType: !383, size: 32, offset: 1056)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !4344, file: !51, line: 342, baseType: !383, size: 32, offset: 1088)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !4344, file: !51, line: 343, baseType: !383, size: 32, offset: 1120)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !4344, file: !51, line: 344, baseType: !383, size: 32, offset: 1152)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !4344, file: !51, line: 345, baseType: !383, size: 32, offset: 1184)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !4344, file: !51, line: 346, baseType: !383, size: 32, offset: 1216)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !4344, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !4341, file: !51, line: 438, baseType: !4356, size: 64, offset: 1280)
!4356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 64, elements: !562)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4341, file: !51, line: 440, baseType: !4358, size: 64, offset: 1344)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4359, size: 64)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{null, !4336}
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4341, file: !51, line: 441, baseType: !4358, size: 64, offset: 1408)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !4341, file: !51, line: 442, baseType: !4358, size: 64, offset: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4341, file: !51, line: 444, baseType: !4364, size: 64, offset: 1536)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!350, !4336}
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4341, file: !51, line: 445, baseType: !4364, size: 64, offset: 1600)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4341, file: !51, line: 447, baseType: !4369, size: 64, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!350, !4336, !4372, !350}
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !4341, file: !51, line: 450, baseType: !4375, size: 64, offset: 1728)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!350, !4336, !873, !7, !1317, !4378}
!4378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !4341, file: !51, line: 457, baseType: !4380, size: 64, offset: 1792)
!4380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4381, size: 64)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!50, !4336}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !4341, file: !51, line: 460, baseType: !4364, size: 64, offset: 1856)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !4341, file: !51, line: 461, baseType: !4385, size: 64, offset: 1920)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!350, !4336, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !4390)
!4390 = !{!4391, !4392, !4393}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !4389, file: !51, line: 70, baseType: !350, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !4389, file: !51, line: 71, baseType: !350, size: 32, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !4389, file: !51, line: 72, baseType: !350, size: 32, offset: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !4341, file: !51, line: 463, baseType: !4395, size: 64, offset: 1984)
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4396, size: 64)
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!350, !4336, !4398}
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4448, !4449, !4450, !4464, !4465, !4466, !4467, !4468, !4469, !4470}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4399, file: !51, line: 587, baseType: !383, size: 32)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4399, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !4399, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !4399, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !4399, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !4399, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !4399, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !4399, file: !51, line: 595, baseType: !383, size: 32, offset: 224)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !4399, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !4399, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !4399, file: !51, line: 598, baseType: !383, size: 32, offset: 320)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !4399, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !4399, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !4399, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !4399, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !4399, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4399, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !4399, file: !51, line: 610, baseType: !326, size: 8, offset: 544)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !4399, file: !51, line: 611, baseType: !326, size: 8, offset: 552)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !4399, file: !51, line: 612, baseType: !326, size: 8, offset: 560)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !4399, file: !51, line: 613, baseType: !383, size: 32, offset: 576)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !4399, file: !51, line: 614, baseType: !383, size: 32, offset: 608)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !4399, file: !51, line: 615, baseType: !326, size: 8, offset: 640)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !4399, file: !51, line: 621, baseType: !4425, size: 384, offset: 672)
!4425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4426, size: 384, elements: !938)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4399, file: !51, line: 616, size: 128, elements: !4427)
!4427 = !{!4428, !4429, !4430, !4431}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !4426, file: !51, line: 617, baseType: !326, size: 8)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !4426, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !4426, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !4426, file: !51, line: 620, baseType: !326, size: 8, offset: 96)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4399, file: !51, line: 624, baseType: !383, size: 32, offset: 1056)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !4399, file: !51, line: 627, baseType: !383, size: 32, offset: 1088)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !4399, file: !51, line: 630, baseType: !326, size: 8, offset: 1120)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !4399, file: !51, line: 631, baseType: !326, size: 8, offset: 1128)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !4399, file: !51, line: 632, baseType: !326, size: 8, offset: 1136)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !4399, file: !51, line: 633, baseType: !326, size: 8, offset: 1144)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !4399, file: !51, line: 634, baseType: !326, size: 8, offset: 1152)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !4399, file: !51, line: 635, baseType: !326, size: 8, offset: 1160)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !4399, file: !51, line: 637, baseType: !326, size: 8, offset: 1168)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !4399, file: !51, line: 638, baseType: !326, size: 8, offset: 1176)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !4399, file: !51, line: 639, baseType: !326, size: 8, offset: 1184)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !4399, file: !51, line: 640, baseType: !326, size: 8, offset: 1192)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !4399, file: !51, line: 641, baseType: !326, size: 8, offset: 1200)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !4399, file: !51, line: 642, baseType: !326, size: 8, offset: 1208)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !4399, file: !51, line: 643, baseType: !326, size: 8, offset: 1216)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !4399, file: !51, line: 644, baseType: !326, size: 8, offset: 1224)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !4399, file: !51, line: 645, baseType: !326, size: 8, offset: 1232)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !4399, file: !51, line: 647, baseType: !383, size: 32, offset: 1248)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !4399, file: !51, line: 650, baseType: !4451, size: 296, offset: 1280)
!4451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4451, file: !6, line: 826, baseType: !328, size: 8)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !4451, file: !6, line: 827, baseType: !4455, size: 288, offset: 8)
!4455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4456, size: 288, elements: !1809)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !4457)
!4457 = !{!4458, !4459}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !4456, file: !6, line: 804, baseType: !328, size: 8)
!4459 = !DIDerivedType(tag: DW_TAG_member, scope: !4456, file: !6, line: 805, baseType: !4460, size: 64, offset: 8)
!4460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4456, file: !6, line: 805, size: 64, elements: !4461)
!4461 = !{!4462, !4463}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4460, file: !6, line: 806, baseType: !485, size: 64)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4460, file: !6, line: 807, baseType: !515, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !4399, file: !51, line: 651, baseType: !4451, size: 296, offset: 1576)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !4399, file: !51, line: 652, baseType: !4451, size: 296, offset: 1872)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !4399, file: !51, line: 653, baseType: !4451, size: 296, offset: 2168)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !4399, file: !51, line: 654, baseType: !4451, size: 296, offset: 2464)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !4399, file: !51, line: 655, baseType: !4451, size: 296, offset: 2760)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !4399, file: !51, line: 656, baseType: !4451, size: 296, offset: 3056)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !4399, file: !51, line: 657, baseType: !4451, size: 296, offset: 3352)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !4341, file: !51, line: 466, baseType: !4472, size: 64, offset: 2048)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!350, !4336, !4378}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !4341, file: !51, line: 467, baseType: !4476, size: 64, offset: 2112)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!350, !4336, !2920}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !4341, file: !51, line: 468, baseType: !4480, size: 64, offset: 2176)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = !DISubroutineType(types: !4482)
!4482 = !{!350, !4336, !4483}
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !4341, file: !51, line: 469, baseType: !4480, size: 64, offset: 2240)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !4341, file: !51, line: 470, baseType: !4476, size: 64, offset: 2304)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !4341, file: !51, line: 472, baseType: !4364, size: 64, offset: 2368)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !4341, file: !51, line: 473, baseType: !4488, size: 64, offset: 2432)
!4488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4489, size: 64)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!350, !4336, !4491}
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !4493)
!4493 = !{!4494, !4496}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4492, file: !6, line: 174, baseType: !4495, size: 48)
!4495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 48, elements: !1909)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4492, file: !6, line: 175, baseType: !328, size: 8, offset: 48)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !4341, file: !51, line: 474, baseType: !4498, size: 64, offset: 2496)
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DISubroutineType(types: !4500)
!4500 = !{!350, !4336, !4501}
!4501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4502, size: 64)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !4503)
!4503 = !{!4504, !4506, !4507}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !4502, file: !6, line: 196, baseType: !4505, size: 32)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 32, elements: !1809)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !4502, file: !6, line: 197, baseType: !328, size: 8, offset: 32)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4502, file: !6, line: 198, baseType: !350, size: 32, offset: 64)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !4341, file: !51, line: 475, baseType: !4509, size: 64, offset: 2560)
!4509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4510, size: 64)
!4510 = !DISubroutineType(types: !4511)
!4511 = !{!350, !4336, !171}
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !4341, file: !51, line: 477, baseType: !4513, size: 64, offset: 2624)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!350, !4336, !78}
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !4341, file: !51, line: 478, baseType: !4517, size: 64, offset: 2688)
!4517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4518, size: 64)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!350, !4336, !73}
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !4341, file: !51, line: 480, baseType: !4521, size: 64, offset: 2752)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!350, !4336, !443}
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !4341, file: !51, line: 481, baseType: !4525, size: 64, offset: 2816)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{!350, !4336, !426}
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4341, file: !51, line: 482, baseType: !4529, size: 64, offset: 2880)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!350, !4336, !350}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !4341, file: !51, line: 483, baseType: !4529, size: 64, offset: 2944)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !4341, file: !51, line: 484, baseType: !4364, size: 64, offset: 3008)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !4341, file: !51, line: 490, baseType: !4535, size: 64, offset: 3072)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!175, !4336}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !4341, file: !51, line: 492, baseType: !4539, size: 2304, offset: 3136)
!4539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !4540)
!4540 = !{!4541, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4568, !4572, !4573, !4574, !4575, !4576, !4577, !4582, !4587, !4591}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4539, file: !51, line: 228, baseType: !4542, size: 1216)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !4543)
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4549, !4550}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4542, file: !51, line: 89, baseType: !3678, size: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !4542, file: !51, line: 91, baseType: !383, size: 32, offset: 1024)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !4542, file: !51, line: 92, baseType: !383, size: 32, offset: 1056)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !4542, file: !51, line: 93, baseType: !383, size: 32, offset: 1088)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !4542, file: !51, line: 95, baseType: !383, size: 32, offset: 1120)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !4542, file: !51, line: 96, baseType: !383, size: 32, offset: 1152)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !4542, file: !51, line: 97, baseType: !383, size: 32, offset: 1184)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4539, file: !51, line: 230, baseType: !4358, size: 64, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4539, file: !51, line: 231, baseType: !4364, size: 64, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4539, file: !51, line: 232, baseType: !4364, size: 64, offset: 1344)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4539, file: !51, line: 233, baseType: !4364, size: 64, offset: 1408)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4539, file: !51, line: 234, baseType: !4364, size: 64, offset: 1472)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !4539, file: !51, line: 237, baseType: !4364, size: 64, offset: 1536)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !4539, file: !51, line: 238, baseType: !4558, size: 64, offset: 1600)
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!350, !4336, !4561}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4562, size: 64)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4562, file: !51, line: 115, baseType: !7, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4562, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !4562, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4562, file: !51, line: 118, baseType: !484, size: 64, offset: 128)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4539, file: !51, line: 240, baseType: !4569, size: 64, offset: 1664)
!4569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4570, size: 64)
!4570 = !DISubroutineType(types: !4571)
!4571 = !{!350, !4336, !317}
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !4539, file: !51, line: 242, baseType: !4476, size: 64, offset: 1728)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !4539, file: !51, line: 243, baseType: !4476, size: 64, offset: 1792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !4539, file: !51, line: 244, baseType: !4476, size: 64, offset: 1856)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !4539, file: !51, line: 248, baseType: !4476, size: 64, offset: 1920)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !4539, file: !51, line: 249, baseType: !4480, size: 64, offset: 1984)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4539, file: !51, line: 250, baseType: !4578, size: 64, offset: 2048)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!350, !4336, !4581}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !4539, file: !51, line: 258, baseType: !4583, size: 64, offset: 2112)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!350, !4336, !4586, !350}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !4539, file: !51, line: 267, baseType: !4588, size: 64, offset: 2176)
!4588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4589, size: 64)
!4589 = !DISubroutineType(types: !4590)
!4590 = !{!350, !4336, !383}
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !4539, file: !51, line: 268, baseType: !4588, size: 64, offset: 2240)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !4341, file: !51, line: 493, baseType: !4326, size: 576, offset: 5440)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !4337, file: !51, line: 689, baseType: !4594, size: 64, offset: 6080)
!4594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4595, size: 64)
!4595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !285, line: 101, size: 960, elements: !4596)
!4596 = !{!4597, !4598, !4599, !4600, !4601, !4603, !4604, !4605, !4606, !4607, !4626}
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4595, file: !285, line: 102, baseType: !350, size: 32)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4595, file: !285, line: 103, baseType: !477, size: 128, offset: 64)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !4595, file: !285, line: 104, baseType: !477, size: 128, offset: 192)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4595, file: !285, line: 105, baseType: !829, size: 64, offset: 320)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !4595, file: !285, line: 106, baseType: !4602, size: 48, offset: 384)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 48, elements: !1909)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4595, file: !285, line: 107, baseType: !317, size: 64, offset: 448)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !4595, file: !285, line: 109, baseType: !3589, size: 64, offset: 512)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4595, file: !285, line: 111, baseType: !337, size: 64, offset: 576)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !4595, file: !285, line: 113, baseType: !350, size: 32, offset: 640)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !4595, file: !285, line: 114, baseType: !4608, size: 64, offset: 704)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !285, line: 157, size: 704, elements: !4610)
!4610 = !{!4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4625}
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4609, file: !285, line: 158, baseType: !477, size: 128)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4609, file: !285, line: 159, baseType: !1522, size: 64, offset: 128)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4609, file: !285, line: 160, baseType: !4594, size: 64, offset: 192)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4609, file: !285, line: 161, baseType: !284, size: 32, offset: 256)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4609, file: !285, line: 162, baseType: !350, size: 32, offset: 288)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4609, file: !285, line: 163, baseType: !383, size: 32, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4609, file: !285, line: 167, baseType: !350, size: 32, offset: 352)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4609, file: !285, line: 168, baseType: !350, size: 32, offset: 384)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4609, file: !285, line: 169, baseType: !350, size: 32, offset: 416)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4609, file: !285, line: 171, baseType: !1289, size: 128, offset: 448)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4609, file: !285, line: 173, baseType: !4622, size: 64, offset: 576)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!350, !1506, !7, !317}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4609, file: !285, line: 187, baseType: !317, size: 64, offset: 640)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !4595, file: !285, line: 115, baseType: !1042, size: 192, offset: 768)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !4337, file: !51, line: 690, baseType: !317, size: 64, offset: 6144)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !4337, file: !51, line: 691, baseType: !317, size: 64, offset: 6208)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !4337, file: !51, line: 692, baseType: !317, size: 64, offset: 6272)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !4337, file: !51, line: 693, baseType: !317, size: 64, offset: 6336)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !4337, file: !51, line: 694, baseType: !317, size: 64, offset: 6400)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !4337, file: !51, line: 695, baseType: !4399, size: 3648, offset: 6464)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4337, file: !51, line: 698, baseType: !4634, size: 64, offset: 10112)
!4634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4635, size: 64)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!350, !317, !350, !350, !350}
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4337, file: !51, line: 699, baseType: !350, size: 32, offset: 10176)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4337, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !4326, file: !51, line: 308, baseType: !4480, size: 64, offset: 128)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !4326, file: !51, line: 309, baseType: !4578, size: 64, offset: 192)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !4326, file: !51, line: 310, baseType: !4358, size: 64, offset: 256)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !4326, file: !51, line: 311, baseType: !4358, size: 64, offset: 320)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4326, file: !51, line: 312, baseType: !4358, size: 64, offset: 384)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !4326, file: !51, line: 313, baseType: !4529, size: 64, offset: 448)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !4326, file: !51, line: 316, baseType: !4569, size: 64, offset: 512)
!4646 = !DIGlobalVariableExpression(var: !4647, expr: !DIExpression())
!4647 = distinct !DIGlobalVariable(name: "radio_mono", scope: !2, file: !3, line: 257, type: !4648, isLocal: true, isDefinition: true)
!4648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tvnorm", file: !3, line: 48, size: 192, elements: !4649)
!4649 = !{!4650, !4651, !4652, !4653, !4654}
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !4648, file: !3, line: 49, baseType: !4197, size: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4648, file: !3, line: 50, baseType: !854, size: 64, offset: 64)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4648, file: !3, line: 51, baseType: !330, size: 8, offset: 128)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !4648, file: !3, line: 52, baseType: !330, size: 8, offset: 136)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !4648, file: !3, line: 53, baseType: !330, size: 8, offset: 144)
!4655 = !DIGlobalVariableExpression(var: !4656, expr: !DIExpression())
!4656 = distinct !DIGlobalVariable(name: "radio_stereo", scope: !2, file: !3, line: 245, type: !4648, isLocal: true, isDefinition: true)
!4657 = !DIGlobalVariableExpression(var: !4658, expr: !DIExpression())
!4658 = distinct !DIGlobalVariable(name: "tvnorms", scope: !2, file: !3, line: 137, type: !4659, isLocal: true, isDefinition: true)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4648, size: 1920, elements: !4660)
!4660 = !{!4661}
!4661 = !DISubrange(count: 10)
!4662 = !DIGlobalVariableExpression(var: !4663, expr: !DIExpression())
!4663 = distinct !DIGlobalVariable(name: "sound", scope: !4664, file: !3, line: 305, type: !4668, isLocal: true, isDefinition: true)
!4664 = distinct !DISubprogram(name: "dump_write_message", scope: !3, file: !3, line: 301, type: !4665, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4665 = !DISubroutineType(types: !4666)
!4666 = !{null, !4336, !4667}
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 256, elements: !1809)
!4669 = !DIGlobalVariableExpression(var: !4670, expr: !DIExpression())
!4670 = distinct !DIGlobalVariable(name: "adjust", scope: !4664, file: !3, line: 311, type: !4671, isLocal: true, isDefinition: true)
!4671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 2048, elements: !787)
!4672 = !DIGlobalVariableExpression(var: !4673, expr: !DIExpression())
!4673 = distinct !DIGlobalVariable(name: "deemph", scope: !4664, file: !3, line: 317, type: !4668, isLocal: true, isDefinition: true)
!4674 = !DIGlobalVariableExpression(var: !4675, expr: !DIExpression())
!4675 = distinct !DIGlobalVariable(name: "carrier", scope: !4664, file: !3, line: 320, type: !4668, isLocal: true, isDefinition: true)
!4676 = !DIGlobalVariableExpression(var: !4677, expr: !DIExpression())
!4677 = distinct !DIGlobalVariable(name: "vif", scope: !4664, file: !3, line: 326, type: !4678, isLocal: true, isDefinition: true)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 512, elements: !562)
!4679 = !DIGlobalVariableExpression(var: !4680, expr: !DIExpression())
!4680 = distinct !DIGlobalVariable(name: "rif", scope: !4664, file: !3, line: 336, type: !4668, isLocal: true, isDefinition: true)
!4681 = !DIGlobalVariableExpression(var: !4682, expr: !DIExpression())
!4682 = distinct !DIGlobalVariable(name: "afc", scope: !4683, file: !3, line: 275, type: !4684, isLocal: true, isDefinition: true)
!4683 = distinct !DISubprogram(name: "dump_read_message", scope: !3, file: !3, line: 271, type: !4665, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 1024, elements: !1342)
!4685 = !DIGlobalVariableExpression(var: !4686, expr: !DIExpression())
!4686 = distinct !DIGlobalVariable(name: "AFC_BITS_2_kHz", scope: !4687, file: !3, line: 603, type: !4688, isLocal: true, isDefinition: true)
!4687 = distinct !DISubprogram(name: "tda9887_get_afc", scope: !3, file: !3, line: 600, type: !4579, scopeLine: 601, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4689, size: 512, elements: !1342)
!4689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!4690 = !{i32 7, !"Dwarf Version", i32 4}
!4691 = !{i32 2, !"Debug Info Version", i32 3}
!4692 = !{i32 1, !"wchar_size", i32 2}
!4693 = !{i32 1, !"Code Model", i32 2}
!4694 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4695 = distinct !DISubprogram(name: "tda9887_attach", scope: !3, file: !3, line: 675, type: !4696, scopeLine: 678, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4696 = !DISubroutineType(types: !4697)
!4697 = !{!4336, !4336, !332, !326}
!4698 = !DILocalVariable(name: "fe", arg: 1, scope: !4695, file: !3, line: 675, type: !4336)
!4699 = !DILocation(line: 675, column: 58, scope: !4695)
!4700 = !DILocalVariable(name: "i2c_adap", arg: 2, scope: !4695, file: !3, line: 676, type: !332)
!4701 = !DILocation(line: 676, column: 29, scope: !4695)
!4702 = !DILocalVariable(name: "i2c_addr", arg: 3, scope: !4695, file: !3, line: 677, type: !326)
!4703 = !DILocation(line: 677, column: 12, scope: !4695)
!4704 = !DILocalVariable(name: "priv", scope: !4695, file: !3, line: 679, type: !318)
!4705 = !DILocation(line: 679, column: 23, scope: !4695)
!4706 = !DILocalVariable(name: "instance", scope: !4695, file: !3, line: 680, type: !350)
!4707 = !DILocation(line: 680, column: 6, scope: !4695)
!4708 = !DILocation(line: 682, column: 2, scope: !4695)
!4709 = !DILocalVariable(name: "__ret", scope: !4710, file: !3, line: 684, type: !350)
!4710 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 684, column: 13)
!4711 = !DILocation(line: 684, column: 13, scope: !4710)
!4712 = !DILocalVariable(name: "__mptr", scope: !4713, file: !3, line: 684, type: !317)
!4713 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 684, column: 13)
!4714 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 684, column: 13)
!4715 = !DILocation(line: 684, column: 13, scope: !4713)
!4716 = !DILocation(line: 684, column: 13, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 684, column: 13)
!4718 = !DILocation(line: 684, column: 13, scope: !4714)
!4719 = !DILocation(line: 684, column: 13, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 684, column: 13)
!4721 = !DILocation(line: 684, column: 13, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 684, column: 13)
!4723 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 684, column: 13)
!4724 = !DILocation(line: 684, column: 13, scope: !4723)
!4725 = !DILocation(line: 684, column: 13, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4722, file: !3, line: 684, column: 13)
!4727 = !DILocation(line: 684, column: 13, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4726, file: !3, line: 684, column: 13)
!4729 = !DILocation(line: 684, column: 13, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4728, file: !3, line: 684, column: 13)
!4731 = !DILocalVariable(name: "__mptr", scope: !4732, file: !3, line: 684, type: !317)
!4732 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 684, column: 13)
!4733 = !DILocation(line: 684, column: 13, scope: !4732)
!4734 = !DILocation(line: 684, column: 13, scope: !4735)
!4735 = distinct !DILexicalBlock(scope: !4732, file: !3, line: 684, column: 13)
!4736 = distinct !{!4736, !4718, !4718}
!4737 = !DILocation(line: 684, column: 13, scope: !4738)
!4738 = distinct !DILexicalBlock(scope: !4710, file: !3, line: 684, column: 13)
!4739 = !DILocation(line: 684, column: 13, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4738, file: !3, line: 684, column: 13)
!4741 = !DILocation(line: 684, column: 13, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 684, column: 13)
!4743 = !DILocation(line: 684, column: 13, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4740, file: !3, line: 684, column: 13)
!4745 = !DILocation(line: 684, column: 13, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 684, column: 13)
!4747 = !DILabel(scope: !4710, name: "__fail", file: !3, line: 684)
!4748 = !DILocation(line: 684, column: 11, scope: !4695)
!4749 = !DILocation(line: 687, column: 10, scope: !4695)
!4750 = !DILocation(line: 687, column: 2, scope: !4695)
!4751 = !DILocation(line: 689, column: 3, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 687, column: 20)
!4753 = !DILocation(line: 690, column: 3, scope: !4752)
!4754 = !DILocation(line: 692, column: 27, scope: !4752)
!4755 = !DILocation(line: 692, column: 3, scope: !4752)
!4756 = !DILocation(line: 692, column: 7, scope: !4752)
!4757 = !DILocation(line: 692, column: 25, scope: !4752)
!4758 = !DILocation(line: 693, column: 3, scope: !4752)
!4759 = !DILocation(line: 693, column: 9, scope: !4752)
!4760 = !DILocation(line: 693, column: 17, scope: !4752)
!4761 = !DILocation(line: 694, column: 3, scope: !4752)
!4762 = !DILocation(line: 694, column: 3, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 694, column: 3)
!4764 = !DILocation(line: 694, column: 3, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 694, column: 3)
!4766 = !DILocation(line: 695, column: 3, scope: !4752)
!4767 = !DILocation(line: 697, column: 27, scope: !4752)
!4768 = !DILocation(line: 697, column: 3, scope: !4752)
!4769 = !DILocation(line: 697, column: 7, scope: !4752)
!4770 = !DILocation(line: 697, column: 25, scope: !4752)
!4771 = !DILocation(line: 698, column: 3, scope: !4752)
!4772 = !DILocation(line: 701, column: 2, scope: !4695)
!4773 = !DILocation(line: 703, column: 10, scope: !4695)
!4774 = !DILocation(line: 703, column: 14, scope: !4695)
!4775 = !DILocation(line: 703, column: 18, scope: !4695)
!4776 = !DILocation(line: 703, column: 2, scope: !4695)
!4777 = !DILocation(line: 706, column: 9, scope: !4695)
!4778 = !DILocation(line: 706, column: 2, scope: !4695)
!4779 = !DILocation(line: 707, column: 1, scope: !4695)
!4780 = distinct !DISubprogram(name: "i2c_adapter_id", scope: !334, file: !334, line: 900, type: !4150, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4781 = !DILocalVariable(name: "adap", arg: 1, scope: !4780, file: !334, line: 900, type: !332)
!4782 = !DILocation(line: 900, column: 54, scope: !4780)
!4783 = !DILocation(line: 902, column: 9, scope: !4780)
!4784 = !DILocation(line: 902, column: 15, scope: !4780)
!4785 = !DILocation(line: 902, column: 2, scope: !4780)
!4786 = distinct !DISubprogram(name: "kzalloc", scope: !302, file: !302, line: 662, type: !4787, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!317, !1538, !679}
!4789 = !DILocalVariable(name: "s", arg: 1, scope: !4790, file: !302, line: 445, type: !2588)
!4790 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !302, file: !302, line: 445, type: !4791, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!317, !2588, !679, !1538}
!4793 = !DILocation(line: 445, column: 72, scope: !4790, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 552, column: 10, scope: !4795, inlinedAt: !4798)
!4795 = distinct !DILexicalBlock(scope: !4796, file: !302, line: 540, column: 34)
!4796 = distinct !DILexicalBlock(scope: !4797, file: !302, line: 540, column: 6)
!4797 = distinct !DISubprogram(name: "kmalloc", scope: !302, file: !302, line: 538, type: !4787, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4798 = distinct !DILocation(line: 664, column: 9, scope: !4786)
!4799 = !DILocalVariable(name: "flags", arg: 2, scope: !4790, file: !302, line: 446, type: !679)
!4800 = !DILocation(line: 446, column: 9, scope: !4790, inlinedAt: !4794)
!4801 = !DILocalVariable(name: "size", arg: 3, scope: !4790, file: !302, line: 446, type: !1538)
!4802 = !DILocation(line: 446, column: 23, scope: !4790, inlinedAt: !4794)
!4803 = !DILocalVariable(name: "ret", scope: !4790, file: !302, line: 448, type: !317)
!4804 = !DILocation(line: 448, column: 8, scope: !4790, inlinedAt: !4794)
!4805 = !DILocalVariable(name: "flags", arg: 1, scope: !4806, file: !302, line: 318, type: !679)
!4806 = distinct !DISubprogram(name: "kmalloc_type", scope: !302, file: !302, line: 318, type: !4807, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4807 = !DISubroutineType(types: !4808)
!4808 = !{!301, !679}
!4809 = !DILocation(line: 318, column: 67, scope: !4806, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 553, column: 20, scope: !4795, inlinedAt: !4798)
!4811 = !DILocalVariable(name: "size", arg: 1, scope: !4812, file: !302, line: 346, type: !1538)
!4812 = distinct !DISubprogram(name: "kmalloc_index", scope: !302, file: !302, line: 346, type: !4813, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4813 = !DISubroutineType(types: !4814)
!4814 = !{!7, !1538}
!4815 = !DILocation(line: 346, column: 58, scope: !4812, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 547, column: 11, scope: !4795, inlinedAt: !4798)
!4817 = !DILocalVariable(name: "size", arg: 1, scope: !4818, file: !302, line: 472, type: !1538)
!4818 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !302, file: !302, line: 472, type: !4819, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!317, !1538, !679, !7}
!4821 = !DILocation(line: 472, column: 28, scope: !4818, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 481, column: 9, scope: !4823, inlinedAt: !4824)
!4823 = distinct !DISubprogram(name: "kmalloc_large", scope: !302, file: !302, line: 478, type: !4787, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!4824 = distinct !DILocation(line: 545, column: 11, scope: !4825, inlinedAt: !4798)
!4825 = distinct !DILexicalBlock(scope: !4795, file: !302, line: 544, column: 7)
!4826 = !DILocalVariable(name: "flags", arg: 2, scope: !4818, file: !302, line: 472, type: !679)
!4827 = !DILocation(line: 472, column: 40, scope: !4818, inlinedAt: !4822)
!4828 = !DILocalVariable(name: "order", arg: 3, scope: !4818, file: !302, line: 472, type: !7)
!4829 = !DILocation(line: 472, column: 60, scope: !4818, inlinedAt: !4822)
!4830 = !DILocalVariable(name: "size", arg: 1, scope: !4823, file: !302, line: 478, type: !1538)
!4831 = !DILocation(line: 478, column: 51, scope: !4823, inlinedAt: !4824)
!4832 = !DILocalVariable(name: "flags", arg: 2, scope: !4823, file: !302, line: 478, type: !679)
!4833 = !DILocation(line: 478, column: 63, scope: !4823, inlinedAt: !4824)
!4834 = !DILocalVariable(name: "order", scope: !4823, file: !302, line: 480, type: !7)
!4835 = !DILocation(line: 480, column: 15, scope: !4823, inlinedAt: !4824)
!4836 = !DILocalVariable(name: "size", arg: 1, scope: !4797, file: !302, line: 538, type: !1538)
!4837 = !DILocation(line: 538, column: 45, scope: !4797, inlinedAt: !4798)
!4838 = !DILocalVariable(name: "flags", arg: 2, scope: !4797, file: !302, line: 538, type: !679)
!4839 = !DILocation(line: 538, column: 57, scope: !4797, inlinedAt: !4798)
!4840 = !DILocalVariable(name: "index", scope: !4795, file: !302, line: 542, type: !7)
!4841 = !DILocation(line: 542, column: 16, scope: !4795, inlinedAt: !4798)
!4842 = !DILocalVariable(name: "size", arg: 1, scope: !4786, file: !302, line: 662, type: !1538)
!4843 = !DILocation(line: 662, column: 36, scope: !4786)
!4844 = !DILocalVariable(name: "flags", arg: 2, scope: !4786, file: !302, line: 662, type: !679)
!4845 = !DILocation(line: 662, column: 48, scope: !4786)
!4846 = !DILocation(line: 664, column: 17, scope: !4786)
!4847 = !DILocation(line: 664, column: 23, scope: !4786)
!4848 = !DILocation(line: 664, column: 29, scope: !4786)
!4849 = !DILocation(line: 540, column: 27, scope: !4796, inlinedAt: !4798)
!4850 = !DILocation(line: 540, column: 6, scope: !4796, inlinedAt: !4798)
!4851 = !DILocation(line: 540, column: 6, scope: !4797, inlinedAt: !4798)
!4852 = !DILocation(line: 544, column: 7, scope: !4825, inlinedAt: !4798)
!4853 = !DILocation(line: 544, column: 12, scope: !4825, inlinedAt: !4798)
!4854 = !DILocation(line: 544, column: 7, scope: !4795, inlinedAt: !4798)
!4855 = !DILocation(line: 545, column: 25, scope: !4825, inlinedAt: !4798)
!4856 = !DILocation(line: 545, column: 31, scope: !4825, inlinedAt: !4798)
!4857 = !DILocation(line: 480, column: 33, scope: !4823, inlinedAt: !4824)
!4858 = !DILocation(line: 480, column: 23, scope: !4823, inlinedAt: !4824)
!4859 = !DILocation(line: 481, column: 29, scope: !4823, inlinedAt: !4824)
!4860 = !DILocation(line: 481, column: 35, scope: !4823, inlinedAt: !4824)
!4861 = !DILocation(line: 481, column: 42, scope: !4823, inlinedAt: !4824)
!4862 = !DILocation(line: 474, column: 23, scope: !4818, inlinedAt: !4822)
!4863 = !DILocation(line: 474, column: 29, scope: !4818, inlinedAt: !4822)
!4864 = !DILocation(line: 474, column: 36, scope: !4818, inlinedAt: !4822)
!4865 = !DILocation(line: 474, column: 9, scope: !4818, inlinedAt: !4822)
!4866 = !DILocation(line: 545, column: 4, scope: !4825, inlinedAt: !4798)
!4867 = !DILocation(line: 547, column: 25, scope: !4795, inlinedAt: !4798)
!4868 = !DILocation(line: 348, column: 7, scope: !4869, inlinedAt: !4816)
!4869 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 348, column: 6)
!4870 = !DILocation(line: 348, column: 6, scope: !4812, inlinedAt: !4816)
!4871 = !DILocation(line: 349, column: 3, scope: !4869, inlinedAt: !4816)
!4872 = !DILocation(line: 351, column: 6, scope: !4873, inlinedAt: !4816)
!4873 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 351, column: 6)
!4874 = !DILocation(line: 351, column: 11, scope: !4873, inlinedAt: !4816)
!4875 = !DILocation(line: 351, column: 6, scope: !4812, inlinedAt: !4816)
!4876 = !DILocation(line: 352, column: 3, scope: !4873, inlinedAt: !4816)
!4877 = !DILocation(line: 354, column: 32, scope: !4878, inlinedAt: !4816)
!4878 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 354, column: 6)
!4879 = !DILocation(line: 354, column: 37, scope: !4878, inlinedAt: !4816)
!4880 = !DILocation(line: 354, column: 42, scope: !4878, inlinedAt: !4816)
!4881 = !DILocation(line: 354, column: 45, scope: !4878, inlinedAt: !4816)
!4882 = !DILocation(line: 354, column: 50, scope: !4878, inlinedAt: !4816)
!4883 = !DILocation(line: 354, column: 6, scope: !4812, inlinedAt: !4816)
!4884 = !DILocation(line: 355, column: 3, scope: !4878, inlinedAt: !4816)
!4885 = !DILocation(line: 356, column: 32, scope: !4886, inlinedAt: !4816)
!4886 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 356, column: 6)
!4887 = !DILocation(line: 356, column: 37, scope: !4886, inlinedAt: !4816)
!4888 = !DILocation(line: 356, column: 43, scope: !4886, inlinedAt: !4816)
!4889 = !DILocation(line: 356, column: 46, scope: !4886, inlinedAt: !4816)
!4890 = !DILocation(line: 356, column: 51, scope: !4886, inlinedAt: !4816)
!4891 = !DILocation(line: 356, column: 6, scope: !4812, inlinedAt: !4816)
!4892 = !DILocation(line: 357, column: 3, scope: !4886, inlinedAt: !4816)
!4893 = !DILocation(line: 358, column: 6, scope: !4894, inlinedAt: !4816)
!4894 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 358, column: 6)
!4895 = !DILocation(line: 358, column: 11, scope: !4894, inlinedAt: !4816)
!4896 = !DILocation(line: 358, column: 6, scope: !4812, inlinedAt: !4816)
!4897 = !DILocation(line: 358, column: 26, scope: !4894, inlinedAt: !4816)
!4898 = !DILocation(line: 359, column: 6, scope: !4899, inlinedAt: !4816)
!4899 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 359, column: 6)
!4900 = !DILocation(line: 359, column: 11, scope: !4899, inlinedAt: !4816)
!4901 = !DILocation(line: 359, column: 6, scope: !4812, inlinedAt: !4816)
!4902 = !DILocation(line: 359, column: 26, scope: !4899, inlinedAt: !4816)
!4903 = !DILocation(line: 360, column: 6, scope: !4904, inlinedAt: !4816)
!4904 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 360, column: 6)
!4905 = !DILocation(line: 360, column: 11, scope: !4904, inlinedAt: !4816)
!4906 = !DILocation(line: 360, column: 6, scope: !4812, inlinedAt: !4816)
!4907 = !DILocation(line: 360, column: 26, scope: !4904, inlinedAt: !4816)
!4908 = !DILocation(line: 361, column: 6, scope: !4909, inlinedAt: !4816)
!4909 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 361, column: 6)
!4910 = !DILocation(line: 361, column: 11, scope: !4909, inlinedAt: !4816)
!4911 = !DILocation(line: 361, column: 6, scope: !4812, inlinedAt: !4816)
!4912 = !DILocation(line: 361, column: 26, scope: !4909, inlinedAt: !4816)
!4913 = !DILocation(line: 362, column: 6, scope: !4914, inlinedAt: !4816)
!4914 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 362, column: 6)
!4915 = !DILocation(line: 362, column: 11, scope: !4914, inlinedAt: !4816)
!4916 = !DILocation(line: 362, column: 6, scope: !4812, inlinedAt: !4816)
!4917 = !DILocation(line: 362, column: 26, scope: !4914, inlinedAt: !4816)
!4918 = !DILocation(line: 363, column: 6, scope: !4919, inlinedAt: !4816)
!4919 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 363, column: 6)
!4920 = !DILocation(line: 363, column: 11, scope: !4919, inlinedAt: !4816)
!4921 = !DILocation(line: 363, column: 6, scope: !4812, inlinedAt: !4816)
!4922 = !DILocation(line: 363, column: 26, scope: !4919, inlinedAt: !4816)
!4923 = !DILocation(line: 364, column: 6, scope: !4924, inlinedAt: !4816)
!4924 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 364, column: 6)
!4925 = !DILocation(line: 364, column: 11, scope: !4924, inlinedAt: !4816)
!4926 = !DILocation(line: 364, column: 6, scope: !4812, inlinedAt: !4816)
!4927 = !DILocation(line: 364, column: 26, scope: !4924, inlinedAt: !4816)
!4928 = !DILocation(line: 365, column: 6, scope: !4929, inlinedAt: !4816)
!4929 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 365, column: 6)
!4930 = !DILocation(line: 365, column: 11, scope: !4929, inlinedAt: !4816)
!4931 = !DILocation(line: 365, column: 6, scope: !4812, inlinedAt: !4816)
!4932 = !DILocation(line: 365, column: 26, scope: !4929, inlinedAt: !4816)
!4933 = !DILocation(line: 366, column: 6, scope: !4934, inlinedAt: !4816)
!4934 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 366, column: 6)
!4935 = !DILocation(line: 366, column: 11, scope: !4934, inlinedAt: !4816)
!4936 = !DILocation(line: 366, column: 6, scope: !4812, inlinedAt: !4816)
!4937 = !DILocation(line: 366, column: 26, scope: !4934, inlinedAt: !4816)
!4938 = !DILocation(line: 367, column: 6, scope: !4939, inlinedAt: !4816)
!4939 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 367, column: 6)
!4940 = !DILocation(line: 367, column: 11, scope: !4939, inlinedAt: !4816)
!4941 = !DILocation(line: 367, column: 6, scope: !4812, inlinedAt: !4816)
!4942 = !DILocation(line: 367, column: 26, scope: !4939, inlinedAt: !4816)
!4943 = !DILocation(line: 368, column: 6, scope: !4944, inlinedAt: !4816)
!4944 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 368, column: 6)
!4945 = !DILocation(line: 368, column: 11, scope: !4944, inlinedAt: !4816)
!4946 = !DILocation(line: 368, column: 6, scope: !4812, inlinedAt: !4816)
!4947 = !DILocation(line: 368, column: 26, scope: !4944, inlinedAt: !4816)
!4948 = !DILocation(line: 369, column: 6, scope: !4949, inlinedAt: !4816)
!4949 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 369, column: 6)
!4950 = !DILocation(line: 369, column: 11, scope: !4949, inlinedAt: !4816)
!4951 = !DILocation(line: 369, column: 6, scope: !4812, inlinedAt: !4816)
!4952 = !DILocation(line: 369, column: 26, scope: !4949, inlinedAt: !4816)
!4953 = !DILocation(line: 370, column: 6, scope: !4954, inlinedAt: !4816)
!4954 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 370, column: 6)
!4955 = !DILocation(line: 370, column: 11, scope: !4954, inlinedAt: !4816)
!4956 = !DILocation(line: 370, column: 6, scope: !4812, inlinedAt: !4816)
!4957 = !DILocation(line: 370, column: 26, scope: !4954, inlinedAt: !4816)
!4958 = !DILocation(line: 371, column: 6, scope: !4959, inlinedAt: !4816)
!4959 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 371, column: 6)
!4960 = !DILocation(line: 371, column: 11, scope: !4959, inlinedAt: !4816)
!4961 = !DILocation(line: 371, column: 6, scope: !4812, inlinedAt: !4816)
!4962 = !DILocation(line: 371, column: 26, scope: !4959, inlinedAt: !4816)
!4963 = !DILocation(line: 372, column: 6, scope: !4964, inlinedAt: !4816)
!4964 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 372, column: 6)
!4965 = !DILocation(line: 372, column: 11, scope: !4964, inlinedAt: !4816)
!4966 = !DILocation(line: 372, column: 6, scope: !4812, inlinedAt: !4816)
!4967 = !DILocation(line: 372, column: 26, scope: !4964, inlinedAt: !4816)
!4968 = !DILocation(line: 373, column: 6, scope: !4969, inlinedAt: !4816)
!4969 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 373, column: 6)
!4970 = !DILocation(line: 373, column: 11, scope: !4969, inlinedAt: !4816)
!4971 = !DILocation(line: 373, column: 6, scope: !4812, inlinedAt: !4816)
!4972 = !DILocation(line: 373, column: 26, scope: !4969, inlinedAt: !4816)
!4973 = !DILocation(line: 374, column: 6, scope: !4974, inlinedAt: !4816)
!4974 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 374, column: 6)
!4975 = !DILocation(line: 374, column: 11, scope: !4974, inlinedAt: !4816)
!4976 = !DILocation(line: 374, column: 6, scope: !4812, inlinedAt: !4816)
!4977 = !DILocation(line: 374, column: 26, scope: !4974, inlinedAt: !4816)
!4978 = !DILocation(line: 375, column: 6, scope: !4979, inlinedAt: !4816)
!4979 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 375, column: 6)
!4980 = !DILocation(line: 375, column: 11, scope: !4979, inlinedAt: !4816)
!4981 = !DILocation(line: 375, column: 6, scope: !4812, inlinedAt: !4816)
!4982 = !DILocation(line: 375, column: 27, scope: !4979, inlinedAt: !4816)
!4983 = !DILocation(line: 376, column: 6, scope: !4984, inlinedAt: !4816)
!4984 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 376, column: 6)
!4985 = !DILocation(line: 376, column: 11, scope: !4984, inlinedAt: !4816)
!4986 = !DILocation(line: 376, column: 6, scope: !4812, inlinedAt: !4816)
!4987 = !DILocation(line: 376, column: 32, scope: !4984, inlinedAt: !4816)
!4988 = !DILocation(line: 377, column: 6, scope: !4989, inlinedAt: !4816)
!4989 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 377, column: 6)
!4990 = !DILocation(line: 377, column: 11, scope: !4989, inlinedAt: !4816)
!4991 = !DILocation(line: 377, column: 6, scope: !4812, inlinedAt: !4816)
!4992 = !DILocation(line: 377, column: 32, scope: !4989, inlinedAt: !4816)
!4993 = !DILocation(line: 378, column: 6, scope: !4994, inlinedAt: !4816)
!4994 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 378, column: 6)
!4995 = !DILocation(line: 378, column: 11, scope: !4994, inlinedAt: !4816)
!4996 = !DILocation(line: 378, column: 6, scope: !4812, inlinedAt: !4816)
!4997 = !DILocation(line: 378, column: 32, scope: !4994, inlinedAt: !4816)
!4998 = !DILocation(line: 379, column: 6, scope: !4999, inlinedAt: !4816)
!4999 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 379, column: 6)
!5000 = !DILocation(line: 379, column: 11, scope: !4999, inlinedAt: !4816)
!5001 = !DILocation(line: 379, column: 6, scope: !4812, inlinedAt: !4816)
!5002 = !DILocation(line: 379, column: 33, scope: !4999, inlinedAt: !4816)
!5003 = !DILocation(line: 380, column: 6, scope: !5004, inlinedAt: !4816)
!5004 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 380, column: 6)
!5005 = !DILocation(line: 380, column: 11, scope: !5004, inlinedAt: !4816)
!5006 = !DILocation(line: 380, column: 6, scope: !4812, inlinedAt: !4816)
!5007 = !DILocation(line: 380, column: 33, scope: !5004, inlinedAt: !4816)
!5008 = !DILocation(line: 381, column: 6, scope: !5009, inlinedAt: !4816)
!5009 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 381, column: 6)
!5010 = !DILocation(line: 381, column: 11, scope: !5009, inlinedAt: !4816)
!5011 = !DILocation(line: 381, column: 6, scope: !4812, inlinedAt: !4816)
!5012 = !DILocation(line: 381, column: 33, scope: !5009, inlinedAt: !4816)
!5013 = !DILocation(line: 382, column: 2, scope: !5014, inlinedAt: !4816)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !302, line: 382, column: 2)
!5015 = distinct !DILexicalBlock(scope: !4812, file: !302, line: 382, column: 2)
!5016 = !{i32 -2144000972, i32 -2144000943, i32 -2144000897, i32 -2144000839, i32 -2144000785, i32 -2144000731, i32 -2144000676, i32 -2144000645}
!5017 = !DILocation(line: 382, column: 2, scope: !5018, inlinedAt: !4816)
!5018 = distinct !DILexicalBlock(scope: !5019, file: !302, line: 382, column: 2)
!5019 = distinct !DILexicalBlock(scope: !5015, file: !302, line: 382, column: 2)
!5020 = !{i32 -2144000202, i32 -2144000195, i32 -2144000141, i32 -2144000110, i32 -2144000080}
!5021 = !DILocation(line: 382, column: 2, scope: !5019, inlinedAt: !4816)
!5022 = !DILocation(line: 386, column: 1, scope: !4812, inlinedAt: !4816)
!5023 = !DILocation(line: 547, column: 9, scope: !4795, inlinedAt: !4798)
!5024 = !DILocation(line: 549, column: 8, scope: !5025, inlinedAt: !4798)
!5025 = distinct !DILexicalBlock(scope: !4795, file: !302, line: 549, column: 7)
!5026 = !DILocation(line: 549, column: 7, scope: !4795, inlinedAt: !4798)
!5027 = !DILocation(line: 550, column: 4, scope: !5025, inlinedAt: !4798)
!5028 = !DILocation(line: 553, column: 33, scope: !4795, inlinedAt: !4798)
!5029 = !DILocation(line: 325, column: 6, scope: !5030, inlinedAt: !4810)
!5030 = distinct !DILexicalBlock(scope: !4806, file: !302, line: 325, column: 6)
!5031 = !DILocation(line: 325, column: 6, scope: !4806, inlinedAt: !4810)
!5032 = !DILocation(line: 326, column: 3, scope: !5030, inlinedAt: !4810)
!5033 = !DILocation(line: 332, column: 9, scope: !4806, inlinedAt: !4810)
!5034 = !DILocation(line: 332, column: 15, scope: !4806, inlinedAt: !4810)
!5035 = !DILocation(line: 332, column: 2, scope: !4806, inlinedAt: !4810)
!5036 = !DILocation(line: 336, column: 1, scope: !4806, inlinedAt: !4810)
!5037 = !DILocation(line: 553, column: 5, scope: !4795, inlinedAt: !4798)
!5038 = !DILocation(line: 553, column: 41, scope: !4795, inlinedAt: !4798)
!5039 = !DILocation(line: 554, column: 5, scope: !4795, inlinedAt: !4798)
!5040 = !DILocation(line: 554, column: 12, scope: !4795, inlinedAt: !4798)
!5041 = !DILocation(line: 448, column: 31, scope: !4790, inlinedAt: !4794)
!5042 = !DILocation(line: 448, column: 34, scope: !4790, inlinedAt: !4794)
!5043 = !DILocation(line: 448, column: 14, scope: !4790, inlinedAt: !4794)
!5044 = !DILocation(line: 450, column: 22, scope: !4790, inlinedAt: !4794)
!5045 = !DILocation(line: 450, column: 25, scope: !4790, inlinedAt: !4794)
!5046 = !DILocation(line: 450, column: 30, scope: !4790, inlinedAt: !4794)
!5047 = !DILocation(line: 450, column: 36, scope: !4790, inlinedAt: !4794)
!5048 = !DILocation(line: 450, column: 8, scope: !4790, inlinedAt: !4794)
!5049 = !DILocation(line: 450, column: 6, scope: !4790, inlinedAt: !4794)
!5050 = !DILocation(line: 451, column: 9, scope: !4790, inlinedAt: !4794)
!5051 = !DILocation(line: 552, column: 3, scope: !4795, inlinedAt: !4798)
!5052 = !DILocation(line: 557, column: 19, scope: !4797, inlinedAt: !4798)
!5053 = !DILocation(line: 557, column: 25, scope: !4797, inlinedAt: !4798)
!5054 = !DILocation(line: 557, column: 9, scope: !4797, inlinedAt: !4798)
!5055 = !DILocation(line: 557, column: 2, scope: !4797, inlinedAt: !4798)
!5056 = !DILocation(line: 558, column: 1, scope: !4797, inlinedAt: !4798)
!5057 = !DILocation(line: 664, column: 2, scope: !4786)
!5058 = distinct !DISubprogram(name: "list_add_tail", scope: !5059, file: !5059, line: 98, type: !5060, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5059 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5060 = !DISubroutineType(types: !5061)
!5061 = !{null, !480, !480}
!5062 = !DILocalVariable(name: "new", arg: 1, scope: !5058, file: !5059, line: 98, type: !480)
!5063 = !DILocation(line: 98, column: 52, scope: !5058)
!5064 = !DILocalVariable(name: "head", arg: 2, scope: !5058, file: !5059, line: 98, type: !480)
!5065 = !DILocation(line: 98, column: 75, scope: !5058)
!5066 = !DILocation(line: 100, column: 13, scope: !5058)
!5067 = !DILocation(line: 100, column: 18, scope: !5058)
!5068 = !DILocation(line: 100, column: 24, scope: !5058)
!5069 = !DILocation(line: 100, column: 30, scope: !5058)
!5070 = !DILocation(line: 100, column: 2, scope: !5058)
!5071 = !DILocation(line: 101, column: 1, scope: !5058)
!5072 = distinct !DISubprogram(name: "get_order", scope: !5073, file: !5073, line: 29, type: !5074, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5073 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5074 = !DISubroutineType(types: !5075)
!5075 = !{!350, !426}
!5076 = !DILocalVariable(name: "x", arg: 1, scope: !5077, file: !5078, line: 366, type: !485)
!5077 = distinct !DISubprogram(name: "fls64", scope: !5078, file: !5078, line: 366, type: !5079, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5078 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!350, !485}
!5081 = !DILocation(line: 366, column: 40, scope: !5077, inlinedAt: !5082)
!5082 = distinct !DILocation(line: 46, column: 9, scope: !5072)
!5083 = !DILocalVariable(name: "bitpos", scope: !5077, file: !5078, line: 368, type: !350)
!5084 = !DILocation(line: 368, column: 6, scope: !5077, inlinedAt: !5082)
!5085 = !DILocalVariable(name: "size", arg: 1, scope: !5072, file: !5073, line: 29, type: !426)
!5086 = !DILocation(line: 29, column: 63, scope: !5072)
!5087 = !DILocation(line: 31, column: 27, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5072, file: !5073, line: 31, column: 6)
!5089 = !DILocation(line: 31, column: 6, scope: !5088)
!5090 = !DILocation(line: 31, column: 6, scope: !5072)
!5091 = !DILocation(line: 32, column: 8, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5093, file: !5073, line: 32, column: 7)
!5093 = distinct !DILexicalBlock(scope: !5088, file: !5073, line: 31, column: 34)
!5094 = !DILocation(line: 32, column: 7, scope: !5093)
!5095 = !DILocation(line: 33, column: 4, scope: !5092)
!5096 = !DILocation(line: 35, column: 7, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5093, file: !5073, line: 35, column: 7)
!5098 = !DILocation(line: 35, column: 12, scope: !5097)
!5099 = !DILocation(line: 35, column: 7, scope: !5093)
!5100 = !DILocation(line: 36, column: 4, scope: !5097)
!5101 = !DILocation(line: 38, column: 10, scope: !5093)
!5102 = !DILocation(line: 38, column: 28, scope: !5093)
!5103 = !DILocation(line: 38, column: 41, scope: !5093)
!5104 = !DILocation(line: 38, column: 3, scope: !5093)
!5105 = !DILocation(line: 41, column: 6, scope: !5072)
!5106 = !DILocation(line: 42, column: 7, scope: !5072)
!5107 = !DILocation(line: 46, column: 15, scope: !5072)
!5108 = !DILocation(line: 374, column: 2, scope: !5077, inlinedAt: !5082)
!5109 = !DILocation(line: 376, column: 14, scope: !5077, inlinedAt: !5082)
!5110 = !{i32 315018}
!5111 = !DILocation(line: 377, column: 9, scope: !5077, inlinedAt: !5082)
!5112 = !DILocation(line: 377, column: 16, scope: !5077, inlinedAt: !5082)
!5113 = !DILocation(line: 46, column: 2, scope: !5072)
!5114 = !DILocation(line: 48, column: 1, scope: !5072)
!5115 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5116, file: !5116, line: 30, type: !5117, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5116 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5117 = !DISubroutineType(types: !5118)
!5118 = !{!350, !484}
!5119 = !DILocation(line: 366, column: 40, scope: !5077, inlinedAt: !5120)
!5120 = distinct !DILocation(line: 32, column: 9, scope: !5115)
!5121 = !DILocation(line: 368, column: 6, scope: !5077, inlinedAt: !5120)
!5122 = !DILocalVariable(name: "n", arg: 1, scope: !5115, file: !5116, line: 30, type: !484)
!5123 = !DILocation(line: 30, column: 21, scope: !5115)
!5124 = !DILocation(line: 32, column: 15, scope: !5115)
!5125 = !DILocation(line: 374, column: 2, scope: !5077, inlinedAt: !5120)
!5126 = !DILocation(line: 376, column: 14, scope: !5077, inlinedAt: !5120)
!5127 = !DILocation(line: 377, column: 9, scope: !5077, inlinedAt: !5120)
!5128 = !DILocation(line: 377, column: 16, scope: !5077, inlinedAt: !5120)
!5129 = !DILocation(line: 32, column: 18, scope: !5115)
!5130 = !DILocation(line: 32, column: 2, scope: !5115)
!5131 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5132, file: !5132, line: 137, type: !5133, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5132 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5133 = !DISubroutineType(types: !5134)
!5134 = !{!317, !2588, !2275, !1538, !679}
!5135 = !DILocalVariable(name: "s", arg: 1, scope: !5131, file: !5132, line: 137, type: !2588)
!5136 = !DILocation(line: 137, column: 54, scope: !5131)
!5137 = !DILocalVariable(name: "object", arg: 2, scope: !5131, file: !5132, line: 137, type: !2275)
!5138 = !DILocation(line: 137, column: 69, scope: !5131)
!5139 = !DILocalVariable(name: "size", arg: 3, scope: !5131, file: !5132, line: 138, type: !1538)
!5140 = !DILocation(line: 138, column: 12, scope: !5131)
!5141 = !DILocalVariable(name: "flags", arg: 4, scope: !5131, file: !5132, line: 138, type: !679)
!5142 = !DILocation(line: 138, column: 24, scope: !5131)
!5143 = !DILocation(line: 140, column: 17, scope: !5131)
!5144 = !DILocation(line: 140, column: 2, scope: !5131)
!5145 = distinct !DISubprogram(name: "__list_add", scope: !5059, file: !5059, line: 63, type: !5146, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{null, !480, !480, !480}
!5148 = !DILocalVariable(name: "new", arg: 1, scope: !5145, file: !5059, line: 63, type: !480)
!5149 = !DILocation(line: 63, column: 49, scope: !5145)
!5150 = !DILocalVariable(name: "prev", arg: 2, scope: !5145, file: !5059, line: 64, type: !480)
!5151 = !DILocation(line: 64, column: 28, scope: !5145)
!5152 = !DILocalVariable(name: "next", arg: 3, scope: !5145, file: !5059, line: 65, type: !480)
!5153 = !DILocation(line: 65, column: 28, scope: !5145)
!5154 = !DILocation(line: 67, column: 24, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5145, file: !5059, line: 67, column: 6)
!5156 = !DILocation(line: 67, column: 29, scope: !5155)
!5157 = !DILocation(line: 67, column: 35, scope: !5155)
!5158 = !DILocation(line: 67, column: 7, scope: !5155)
!5159 = !DILocation(line: 67, column: 6, scope: !5145)
!5160 = !DILocation(line: 68, column: 3, scope: !5155)
!5161 = !DILocation(line: 70, column: 15, scope: !5145)
!5162 = !DILocation(line: 70, column: 2, scope: !5145)
!5163 = !DILocation(line: 70, column: 8, scope: !5145)
!5164 = !DILocation(line: 70, column: 13, scope: !5145)
!5165 = !DILocation(line: 71, column: 14, scope: !5145)
!5166 = !DILocation(line: 71, column: 2, scope: !5145)
!5167 = !DILocation(line: 71, column: 7, scope: !5145)
!5168 = !DILocation(line: 71, column: 12, scope: !5145)
!5169 = !DILocation(line: 72, column: 14, scope: !5145)
!5170 = !DILocation(line: 72, column: 2, scope: !5145)
!5171 = !DILocation(line: 72, column: 7, scope: !5145)
!5172 = !DILocation(line: 72, column: 12, scope: !5145)
!5173 = !DILocation(line: 73, column: 2, scope: !5145)
!5174 = !DILocation(line: 73, column: 2, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5145, file: !5059, line: 73, column: 2)
!5176 = !DILocation(line: 73, column: 2, scope: !5177)
!5177 = distinct !DILexicalBlock(scope: !5175, file: !5059, line: 73, column: 2)
!5178 = !DILocation(line: 73, column: 2, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5175, file: !5059, line: 73, column: 2)
!5180 = !DILocation(line: 74, column: 1, scope: !5145)
!5181 = distinct !DISubprogram(name: "__list_add_valid", scope: !5059, file: !5059, line: 45, type: !5182, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!873, !480, !480, !480}
!5184 = !DILocalVariable(name: "new", arg: 1, scope: !5181, file: !5059, line: 45, type: !480)
!5185 = !DILocation(line: 45, column: 55, scope: !5181)
!5186 = !DILocalVariable(name: "prev", arg: 2, scope: !5181, file: !5059, line: 46, type: !480)
!5187 = !DILocation(line: 46, column: 23, scope: !5181)
!5188 = !DILocalVariable(name: "next", arg: 3, scope: !5181, file: !5059, line: 47, type: !480)
!5189 = !DILocation(line: 47, column: 23, scope: !5181)
!5190 = !DILocation(line: 49, column: 2, scope: !5181)
!5191 = distinct !DISubprogram(name: "tda9887_set_params", scope: !3, file: !3, line: 627, type: !4334, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5192 = !DILocalVariable(name: "fe", arg: 1, scope: !5191, file: !3, line: 627, type: !4336)
!5193 = !DILocation(line: 627, column: 53, scope: !5191)
!5194 = !DILocalVariable(name: "params", arg: 2, scope: !5191, file: !3, line: 628, type: !4561)
!5195 = !DILocation(line: 628, column: 37, scope: !5191)
!5196 = !DILocalVariable(name: "priv", scope: !5191, file: !3, line: 630, type: !318)
!5197 = !DILocation(line: 630, column: 23, scope: !5191)
!5198 = !DILocation(line: 630, column: 30, scope: !5191)
!5199 = !DILocation(line: 630, column: 34, scope: !5191)
!5200 = !DILocation(line: 632, column: 2, scope: !5191)
!5201 = !DILocation(line: 632, column: 8, scope: !5191)
!5202 = !DILocation(line: 632, column: 16, scope: !5191)
!5203 = !DILocation(line: 633, column: 18, scope: !5191)
!5204 = !DILocation(line: 633, column: 26, scope: !5191)
!5205 = !DILocation(line: 633, column: 2, scope: !5191)
!5206 = !DILocation(line: 633, column: 8, scope: !5191)
!5207 = !DILocation(line: 633, column: 16, scope: !5191)
!5208 = !DILocation(line: 634, column: 18, scope: !5191)
!5209 = !DILocation(line: 634, column: 26, scope: !5191)
!5210 = !DILocation(line: 634, column: 2, scope: !5191)
!5211 = !DILocation(line: 634, column: 8, scope: !5191)
!5212 = !DILocation(line: 634, column: 16, scope: !5191)
!5213 = !DILocation(line: 635, column: 18, scope: !5191)
!5214 = !DILocation(line: 635, column: 26, scope: !5191)
!5215 = !DILocation(line: 635, column: 2, scope: !5191)
!5216 = !DILocation(line: 635, column: 8, scope: !5191)
!5217 = !DILocation(line: 635, column: 16, scope: !5191)
!5218 = !DILocation(line: 636, column: 20, scope: !5191)
!5219 = !DILocation(line: 636, column: 2, scope: !5191)
!5220 = !DILocation(line: 637, column: 1, scope: !5191)
!5221 = !DILocalVariable(name: "fe", arg: 1, scope: !4687, file: !3, line: 600, type: !4336)
!5222 = !DILocation(line: 600, column: 49, scope: !4687)
!5223 = !DILocalVariable(name: "afc", arg: 2, scope: !4687, file: !3, line: 600, type: !4581)
!5224 = !DILocation(line: 600, column: 58, scope: !4687)
!5225 = !DILocalVariable(name: "priv", scope: !4687, file: !3, line: 602, type: !318)
!5226 = !DILocation(line: 602, column: 23, scope: !4687)
!5227 = !DILocation(line: 602, column: 30, scope: !4687)
!5228 = !DILocation(line: 602, column: 34, scope: !4687)
!5229 = !DILocalVariable(name: "reg", scope: !4687, file: !3, line: 609, type: !328)
!5230 = !DILocation(line: 609, column: 7, scope: !4687)
!5231 = !DILocation(line: 611, column: 6, scope: !5232)
!5232 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 611, column: 6)
!5233 = !DILocation(line: 611, column: 12, scope: !5232)
!5234 = !DILocation(line: 611, column: 17, scope: !5232)
!5235 = !DILocation(line: 611, column: 6, scope: !4687)
!5236 = !DILocation(line: 612, column: 3, scope: !5232)
!5237 = !DILocation(line: 613, column: 32, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !4687, file: !3, line: 613, column: 6)
!5239 = !DILocation(line: 613, column: 38, scope: !5238)
!5240 = !DILocation(line: 613, column: 11, scope: !5238)
!5241 = !DILocation(line: 613, column: 8, scope: !5238)
!5242 = !DILocation(line: 613, column: 6, scope: !4687)
!5243 = !DILocation(line: 614, column: 26, scope: !5238)
!5244 = !DILocation(line: 614, column: 30, scope: !5238)
!5245 = !DILocation(line: 614, column: 36, scope: !5238)
!5246 = !DILocation(line: 614, column: 10, scope: !5238)
!5247 = !DILocation(line: 614, column: 4, scope: !5238)
!5248 = !DILocation(line: 614, column: 8, scope: !5238)
!5249 = !DILocation(line: 614, column: 3, scope: !5238)
!5250 = !DILocation(line: 615, column: 2, scope: !4687)
!5251 = !DILocation(line: 616, column: 1, scope: !4687)
!5252 = distinct !DISubprogram(name: "tda9887_tuner_status", scope: !3, file: !3, line: 593, type: !4359, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5253 = !DILocalVariable(name: "fe", arg: 1, scope: !5252, file: !3, line: 593, type: !4336)
!5254 = !DILocation(line: 593, column: 55, scope: !5252)
!5255 = !DILocalVariable(name: "priv", scope: !5252, file: !3, line: 595, type: !318)
!5256 = !DILocation(line: 595, column: 23, scope: !5252)
!5257 = !DILocation(line: 595, column: 30, scope: !5252)
!5258 = !DILocation(line: 595, column: 34, scope: !5252)
!5259 = !DILocation(line: 596, column: 2, scope: !5252)
!5260 = !DILocation(line: 596, column: 2, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5252, file: !3, line: 596, column: 2)
!5262 = !DILocation(line: 596, column: 2, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5261, file: !3, line: 596, column: 2)
!5264 = !DILocation(line: 598, column: 1, scope: !5252)
!5265 = distinct !DISubprogram(name: "tda9887_standby", scope: !3, file: !3, line: 618, type: !4359, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5266 = !DILocalVariable(name: "fe", arg: 1, scope: !5265, file: !3, line: 618, type: !4336)
!5267 = !DILocation(line: 618, column: 50, scope: !5265)
!5268 = !DILocalVariable(name: "priv", scope: !5265, file: !3, line: 620, type: !318)
!5269 = !DILocation(line: 620, column: 23, scope: !5265)
!5270 = !DILocation(line: 620, column: 30, scope: !5265)
!5271 = !DILocation(line: 620, column: 34, scope: !5265)
!5272 = !DILocation(line: 622, column: 2, scope: !5265)
!5273 = !DILocation(line: 622, column: 8, scope: !5265)
!5274 = !DILocation(line: 622, column: 16, scope: !5265)
!5275 = !DILocation(line: 624, column: 20, scope: !5265)
!5276 = !DILocation(line: 624, column: 2, scope: !5265)
!5277 = !DILocation(line: 625, column: 1, scope: !5265)
!5278 = distinct !DISubprogram(name: "tda9887_release", scope: !3, file: !3, line: 649, type: !4359, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5279 = !DILocalVariable(name: "fe", arg: 1, scope: !5278, file: !3, line: 649, type: !4336)
!5280 = !DILocation(line: 649, column: 50, scope: !5278)
!5281 = !DILocalVariable(name: "priv", scope: !5278, file: !3, line: 651, type: !318)
!5282 = !DILocation(line: 651, column: 23, scope: !5278)
!5283 = !DILocation(line: 651, column: 30, scope: !5278)
!5284 = !DILocation(line: 651, column: 34, scope: !5278)
!5285 = !DILocation(line: 653, column: 2, scope: !5278)
!5286 = !DILocation(line: 655, column: 6, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 655, column: 6)
!5288 = !DILocation(line: 655, column: 6, scope: !5278)
!5289 = !DILocalVariable(name: "__ret", scope: !5290, file: !3, line: 656, type: !350)
!5290 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 656, column: 3)
!5291 = !DILocation(line: 656, column: 3, scope: !5290)
!5292 = !DILocation(line: 656, column: 3, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 656, column: 3)
!5294 = !DILocation(line: 656, column: 3, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5293, file: !3, line: 656, column: 3)
!5296 = !DILocation(line: 656, column: 3, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 656, column: 3)
!5298 = !DILocation(line: 656, column: 3, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 656, column: 3)
!5300 = !DILocation(line: 656, column: 3, scope: !5287)
!5301 = !DILocation(line: 658, column: 2, scope: !5278)
!5302 = !DILocation(line: 660, column: 2, scope: !5278)
!5303 = !DILocation(line: 660, column: 6, scope: !5278)
!5304 = !DILocation(line: 660, column: 24, scope: !5278)
!5305 = !DILocation(line: 661, column: 1, scope: !5278)
!5306 = distinct !DISubprogram(name: "tda9887_set_config", scope: !3, file: !3, line: 639, type: !4570, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5307 = !DILocalVariable(name: "fe", arg: 1, scope: !5306, file: !3, line: 639, type: !4336)
!5308 = !DILocation(line: 639, column: 52, scope: !5306)
!5309 = !DILocalVariable(name: "priv_cfg", arg: 2, scope: !5306, file: !3, line: 639, type: !317)
!5310 = !DILocation(line: 639, column: 62, scope: !5306)
!5311 = !DILocalVariable(name: "priv", scope: !5306, file: !3, line: 641, type: !318)
!5312 = !DILocation(line: 641, column: 23, scope: !5306)
!5313 = !DILocation(line: 641, column: 30, scope: !5306)
!5314 = !DILocation(line: 641, column: 34, scope: !5306)
!5315 = !DILocation(line: 643, column: 34, scope: !5306)
!5316 = !DILocation(line: 643, column: 18, scope: !5306)
!5317 = !DILocation(line: 643, column: 17, scope: !5306)
!5318 = !DILocation(line: 643, column: 2, scope: !5306)
!5319 = !DILocation(line: 643, column: 8, scope: !5306)
!5320 = !DILocation(line: 643, column: 15, scope: !5306)
!5321 = !DILocation(line: 644, column: 20, scope: !5306)
!5322 = !DILocation(line: 644, column: 2, scope: !5306)
!5323 = !DILocation(line: 646, column: 2, scope: !5306)
!5324 = distinct !DISubprogram(name: "tda9887_configure", scope: !3, file: !3, line: 547, type: !4359, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5325 = !DILocalVariable(name: "fe", arg: 1, scope: !5324, file: !3, line: 547, type: !4336)
!5326 = !DILocation(line: 547, column: 52, scope: !5324)
!5327 = !DILocalVariable(name: "priv", scope: !5324, file: !3, line: 549, type: !318)
!5328 = !DILocation(line: 549, column: 23, scope: !5324)
!5329 = !DILocation(line: 549, column: 30, scope: !5324)
!5330 = !DILocation(line: 549, column: 34, scope: !5324)
!5331 = !DILocalVariable(name: "rc", scope: !5324, file: !3, line: 550, type: !350)
!5332 = !DILocation(line: 550, column: 6, scope: !5324)
!5333 = !DILocation(line: 552, column: 9, scope: !5324)
!5334 = !DILocation(line: 552, column: 15, scope: !5324)
!5335 = !DILocation(line: 552, column: 2, scope: !5324)
!5336 = !DILocation(line: 553, column: 21, scope: !5324)
!5337 = !DILocation(line: 553, column: 2, scope: !5324)
!5338 = !DILocation(line: 568, column: 2, scope: !5324)
!5339 = !DILocation(line: 568, column: 8, scope: !5324)
!5340 = !DILocation(line: 568, column: 16, scope: !5324)
!5341 = !DILocation(line: 569, column: 2, scope: !5324)
!5342 = !DILocation(line: 569, column: 8, scope: !5324)
!5343 = !DILocation(line: 569, column: 16, scope: !5324)
!5344 = !DILocation(line: 571, column: 20, scope: !5324)
!5345 = !DILocation(line: 571, column: 2, scope: !5324)
!5346 = !DILocation(line: 572, column: 21, scope: !5324)
!5347 = !DILocation(line: 572, column: 2, scope: !5324)
!5348 = !DILocation(line: 574, column: 6, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 574, column: 6)
!5350 = !DILocation(line: 574, column: 12, scope: !5349)
!5351 = !DILocation(line: 574, column: 6, scope: !5324)
!5352 = !DILocation(line: 575, column: 3, scope: !5349)
!5353 = !DILocation(line: 575, column: 9, scope: !5349)
!5354 = !DILocation(line: 575, column: 17, scope: !5349)
!5355 = !DILocation(line: 577, column: 2, scope: !5324)
!5356 = !DILocation(line: 577, column: 2, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 577, column: 2)
!5358 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 577, column: 2)
!5359 = !DILocation(line: 577, column: 2, scope: !5358)
!5360 = !DILocation(line: 577, column: 2, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 577, column: 2)
!5362 = !DILocation(line: 579, column: 6, scope: !5363)
!5363 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 579, column: 6)
!5364 = !DILocation(line: 579, column: 12, scope: !5363)
!5365 = !DILocation(line: 579, column: 6, scope: !5324)
!5366 = !DILocation(line: 580, column: 22, scope: !5363)
!5367 = !DILocation(line: 580, column: 26, scope: !5363)
!5368 = !DILocation(line: 580, column: 32, scope: !5363)
!5369 = !DILocation(line: 580, column: 3, scope: !5363)
!5370 = !DILocation(line: 582, column: 38, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 582, column: 6)
!5372 = !DILocation(line: 582, column: 44, scope: !5371)
!5373 = !DILocation(line: 582, column: 54, scope: !5371)
!5374 = !DILocation(line: 582, column: 60, scope: !5371)
!5375 = !DILocation(line: 582, column: 17, scope: !5371)
!5376 = !DILocation(line: 582, column: 15, scope: !5371)
!5377 = !DILocation(line: 582, column: 8, scope: !5371)
!5378 = !DILocation(line: 582, column: 6, scope: !5324)
!5379 = !DILocation(line: 583, column: 3, scope: !5371)
!5380 = !DILocation(line: 583, column: 3, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 583, column: 3)
!5382 = !DILocation(line: 583, column: 3, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5381, file: !3, line: 583, column: 3)
!5384 = !DILocation(line: 585, column: 6, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5324, file: !3, line: 585, column: 6)
!5386 = !DILocation(line: 585, column: 12, scope: !5385)
!5387 = !DILocation(line: 585, column: 6, scope: !5324)
!5388 = !DILocation(line: 586, column: 3, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 585, column: 17)
!5390 = !DILocation(line: 587, column: 18, scope: !5389)
!5391 = !DILocation(line: 587, column: 3, scope: !5389)
!5392 = !DILocation(line: 588, column: 2, scope: !5389)
!5393 = !DILocation(line: 589, column: 1, scope: !5324)
!5394 = distinct !DISubprogram(name: "tda9887_set_tvnorm", scope: !3, file: !3, line: 401, type: !4365, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5395 = !DILocalVariable(name: "fe", arg: 1, scope: !5394, file: !3, line: 401, type: !4336)
!5396 = !DILocation(line: 401, column: 52, scope: !5394)
!5397 = !DILocalVariable(name: "priv", scope: !5394, file: !3, line: 403, type: !318)
!5398 = !DILocation(line: 403, column: 23, scope: !5394)
!5399 = !DILocation(line: 403, column: 30, scope: !5394)
!5400 = !DILocation(line: 403, column: 34, scope: !5394)
!5401 = !DILocalVariable(name: "norm", scope: !5394, file: !3, line: 404, type: !5402)
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4648, size: 64)
!5403 = !DILocation(line: 404, column: 17, scope: !5394)
!5404 = !DILocalVariable(name: "buf", scope: !5394, file: !3, line: 405, type: !854)
!5405 = !DILocation(line: 405, column: 8, scope: !5394)
!5406 = !DILocation(line: 405, column: 14, scope: !5394)
!5407 = !DILocation(line: 405, column: 20, scope: !5394)
!5408 = !DILocalVariable(name: "i", scope: !5394, file: !3, line: 406, type: !350)
!5409 = !DILocation(line: 406, column: 6, scope: !5394)
!5410 = !DILocation(line: 408, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 408, column: 6)
!5412 = !DILocation(line: 408, column: 12, scope: !5411)
!5413 = !DILocation(line: 408, column: 17, scope: !5411)
!5414 = !DILocation(line: 408, column: 6, scope: !5394)
!5415 = !DILocation(line: 409, column: 7, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5417, file: !3, line: 409, column: 7)
!5417 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 408, column: 38)
!5418 = !DILocation(line: 409, column: 13, scope: !5416)
!5419 = !DILocation(line: 409, column: 21, scope: !5416)
!5420 = !DILocation(line: 409, column: 7, scope: !5417)
!5421 = !DILocation(line: 410, column: 9, scope: !5416)
!5422 = !DILocation(line: 410, column: 4, scope: !5416)
!5423 = !DILocation(line: 412, column: 9, scope: !5416)
!5424 = !DILocation(line: 413, column: 2, scope: !5417)
!5425 = !DILocation(line: 414, column: 10, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5427, file: !3, line: 414, column: 3)
!5427 = distinct !DILexicalBlock(scope: !5411, file: !3, line: 413, column: 9)
!5428 = !DILocation(line: 414, column: 8, scope: !5426)
!5429 = !DILocation(line: 414, column: 15, scope: !5430)
!5430 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 414, column: 3)
!5431 = !DILocation(line: 414, column: 17, scope: !5430)
!5432 = !DILocation(line: 414, column: 3, scope: !5426)
!5433 = !DILocation(line: 415, column: 16, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5435, file: !3, line: 415, column: 8)
!5435 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 414, column: 45)
!5436 = !DILocation(line: 415, column: 8, scope: !5434)
!5437 = !DILocation(line: 415, column: 19, scope: !5434)
!5438 = !DILocation(line: 415, column: 25, scope: !5434)
!5439 = !DILocation(line: 415, column: 31, scope: !5434)
!5440 = !DILocation(line: 415, column: 23, scope: !5434)
!5441 = !DILocation(line: 415, column: 8, scope: !5435)
!5442 = !DILocation(line: 416, column: 20, scope: !5443)
!5443 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 415, column: 36)
!5444 = !DILocation(line: 416, column: 19, scope: !5443)
!5445 = !DILocation(line: 416, column: 10, scope: !5443)
!5446 = !DILocation(line: 417, column: 5, scope: !5443)
!5447 = !DILocation(line: 419, column: 3, scope: !5435)
!5448 = !DILocation(line: 414, column: 41, scope: !5430)
!5449 = !DILocation(line: 414, column: 3, scope: !5430)
!5450 = distinct !{!5450, !5432, !5451}
!5451 = !DILocation(line: 419, column: 3, scope: !5426)
!5452 = !DILocation(line: 421, column: 14, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 421, column: 6)
!5454 = !DILocation(line: 421, column: 11, scope: !5453)
!5455 = !DILocation(line: 421, column: 6, scope: !5394)
!5456 = !DILocation(line: 422, column: 3, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !3, line: 421, column: 20)
!5458 = !DILocation(line: 422, column: 3, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5460, file: !3, line: 422, column: 3)
!5460 = distinct !DILexicalBlock(scope: !5457, file: !3, line: 422, column: 3)
!5461 = !DILocation(line: 422, column: 3, scope: !5460)
!5462 = !DILocation(line: 422, column: 3, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 422, column: 3)
!5464 = !DILocation(line: 423, column: 3, scope: !5457)
!5465 = !DILocation(line: 426, column: 2, scope: !5394)
!5466 = !DILocation(line: 426, column: 2, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 426, column: 2)
!5468 = distinct !DILexicalBlock(scope: !5394, file: !3, line: 426, column: 2)
!5469 = !DILocation(line: 426, column: 2, scope: !5468)
!5470 = !DILocation(line: 426, column: 2, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 426, column: 2)
!5472 = !DILocation(line: 427, column: 11, scope: !5394)
!5473 = !DILocation(line: 427, column: 17, scope: !5394)
!5474 = !DILocation(line: 427, column: 2, scope: !5394)
!5475 = !DILocation(line: 427, column: 9, scope: !5394)
!5476 = !DILocation(line: 428, column: 11, scope: !5394)
!5477 = !DILocation(line: 428, column: 17, scope: !5394)
!5478 = !DILocation(line: 428, column: 2, scope: !5394)
!5479 = !DILocation(line: 428, column: 9, scope: !5394)
!5480 = !DILocation(line: 429, column: 11, scope: !5394)
!5481 = !DILocation(line: 429, column: 17, scope: !5394)
!5482 = !DILocation(line: 429, column: 2, scope: !5394)
!5483 = !DILocation(line: 429, column: 9, scope: !5394)
!5484 = !DILocation(line: 430, column: 2, scope: !5394)
!5485 = !DILocation(line: 431, column: 1, scope: !5394)
!5486 = distinct !DISubprogram(name: "tda9887_do_config", scope: !3, file: !3, line: 475, type: !4365, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5487 = !DILocalVariable(name: "fe", arg: 1, scope: !5486, file: !3, line: 475, type: !4336)
!5488 = !DILocation(line: 475, column: 51, scope: !5486)
!5489 = !DILocalVariable(name: "priv", scope: !5486, file: !3, line: 477, type: !318)
!5490 = !DILocation(line: 477, column: 23, scope: !5486)
!5491 = !DILocation(line: 477, column: 30, scope: !5486)
!5492 = !DILocation(line: 477, column: 34, scope: !5486)
!5493 = !DILocalVariable(name: "buf", scope: !5486, file: !3, line: 478, type: !854)
!5494 = !DILocation(line: 478, column: 8, scope: !5486)
!5495 = !DILocation(line: 478, column: 14, scope: !5486)
!5496 = !DILocation(line: 478, column: 20, scope: !5486)
!5497 = !DILocation(line: 480, column: 6, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 480, column: 6)
!5499 = !DILocation(line: 480, column: 12, scope: !5498)
!5500 = !DILocation(line: 480, column: 19, scope: !5498)
!5501 = !DILocation(line: 480, column: 6, scope: !5486)
!5502 = !DILocation(line: 481, column: 3, scope: !5498)
!5503 = !DILocation(line: 481, column: 10, scope: !5498)
!5504 = !DILocation(line: 482, column: 6, scope: !5505)
!5505 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 482, column: 6)
!5506 = !DILocation(line: 482, column: 12, scope: !5505)
!5507 = !DILocation(line: 482, column: 19, scope: !5505)
!5508 = !DILocation(line: 482, column: 6, scope: !5486)
!5509 = !DILocation(line: 483, column: 3, scope: !5505)
!5510 = !DILocation(line: 483, column: 10, scope: !5505)
!5511 = !DILocation(line: 484, column: 6, scope: !5512)
!5512 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 484, column: 6)
!5513 = !DILocation(line: 484, column: 12, scope: !5512)
!5514 = !DILocation(line: 484, column: 19, scope: !5512)
!5515 = !DILocation(line: 484, column: 6, scope: !5486)
!5516 = !DILocation(line: 485, column: 3, scope: !5512)
!5517 = !DILocation(line: 485, column: 10, scope: !5512)
!5518 = !DILocation(line: 486, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 486, column: 6)
!5520 = !DILocation(line: 486, column: 12, scope: !5519)
!5521 = !DILocation(line: 486, column: 19, scope: !5519)
!5522 = !DILocation(line: 486, column: 6, scope: !5486)
!5523 = !DILocation(line: 487, column: 3, scope: !5519)
!5524 = !DILocation(line: 487, column: 10, scope: !5519)
!5525 = !DILocation(line: 489, column: 6, scope: !5526)
!5526 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 489, column: 6)
!5527 = !DILocation(line: 489, column: 12, scope: !5526)
!5528 = !DILocation(line: 489, column: 19, scope: !5526)
!5529 = !DILocation(line: 489, column: 6, scope: !5486)
!5530 = !DILocation(line: 490, column: 3, scope: !5526)
!5531 = !DILocation(line: 490, column: 10, scope: !5526)
!5532 = !DILocation(line: 491, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 491, column: 6)
!5534 = !DILocation(line: 491, column: 12, scope: !5533)
!5535 = !DILocation(line: 491, column: 19, scope: !5533)
!5536 = !DILocation(line: 491, column: 6, scope: !5486)
!5537 = !DILocation(line: 492, column: 3, scope: !5533)
!5538 = !DILocation(line: 492, column: 10, scope: !5533)
!5539 = !DILocation(line: 494, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 494, column: 6)
!5541 = !DILocation(line: 494, column: 12, scope: !5540)
!5542 = !DILocation(line: 494, column: 19, scope: !5540)
!5543 = !DILocation(line: 494, column: 6, scope: !5486)
!5544 = !DILocation(line: 495, column: 3, scope: !5540)
!5545 = !DILocation(line: 495, column: 10, scope: !5540)
!5546 = !DILocation(line: 496, column: 6, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 496, column: 6)
!5548 = !DILocation(line: 496, column: 12, scope: !5547)
!5549 = !DILocation(line: 496, column: 19, scope: !5547)
!5550 = !DILocation(line: 496, column: 6, scope: !5486)
!5551 = !DILocation(line: 497, column: 3, scope: !5552)
!5552 = distinct !DILexicalBlock(scope: !5547, file: !3, line: 496, column: 46)
!5553 = !DILocation(line: 497, column: 10, scope: !5552)
!5554 = !DILocation(line: 498, column: 11, scope: !5552)
!5555 = !DILocation(line: 498, column: 17, scope: !5552)
!5556 = !DILocation(line: 498, column: 24, scope: !5552)
!5557 = !DILocation(line: 498, column: 3, scope: !5552)
!5558 = !DILocation(line: 500, column: 4, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 498, column: 51)
!5560 = !DILocation(line: 500, column: 11, scope: !5559)
!5561 = !DILocation(line: 501, column: 4, scope: !5559)
!5562 = !DILocation(line: 503, column: 4, scope: !5559)
!5563 = !DILocation(line: 503, column: 11, scope: !5559)
!5564 = !DILocation(line: 504, column: 4, scope: !5559)
!5565 = !DILocation(line: 506, column: 4, scope: !5559)
!5566 = !DILocation(line: 506, column: 11, scope: !5559)
!5567 = !DILocation(line: 507, column: 4, scope: !5559)
!5568 = !DILocation(line: 509, column: 2, scope: !5552)
!5569 = !DILocation(line: 510, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 510, column: 6)
!5571 = !DILocation(line: 510, column: 12, scope: !5570)
!5572 = !DILocation(line: 510, column: 19, scope: !5570)
!5573 = !DILocation(line: 510, column: 6, scope: !5486)
!5574 = !DILocation(line: 511, column: 3, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 510, column: 38)
!5576 = !DILocation(line: 511, column: 10, scope: !5575)
!5577 = !DILocation(line: 512, column: 14, scope: !5575)
!5578 = !DILocation(line: 512, column: 20, scope: !5575)
!5579 = !DILocation(line: 512, column: 27, scope: !5575)
!5580 = !DILocation(line: 512, column: 33, scope: !5575)
!5581 = !DILocation(line: 512, column: 3, scope: !5575)
!5582 = !DILocation(line: 512, column: 10, scope: !5575)
!5583 = !DILocation(line: 513, column: 2, scope: !5575)
!5584 = !DILocation(line: 514, column: 7, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 514, column: 6)
!5586 = !DILocation(line: 514, column: 13, scope: !5585)
!5587 = !DILocation(line: 514, column: 20, scope: !5585)
!5588 = !DILocation(line: 514, column: 49, scope: !5585)
!5589 = !DILocation(line: 515, column: 7, scope: !5585)
!5590 = !DILocation(line: 515, column: 13, scope: !5585)
!5591 = !DILocation(line: 515, column: 17, scope: !5585)
!5592 = !DILocation(line: 514, column: 6, scope: !5486)
!5593 = !DILocation(line: 516, column: 3, scope: !5585)
!5594 = !DILocation(line: 516, column: 10, scope: !5585)
!5595 = !DILocation(line: 517, column: 6, scope: !5596)
!5596 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 517, column: 6)
!5597 = !DILocation(line: 517, column: 12, scope: !5596)
!5598 = !DILocation(line: 517, column: 19, scope: !5596)
!5599 = !DILocation(line: 517, column: 6, scope: !5486)
!5600 = !DILocation(line: 518, column: 3, scope: !5596)
!5601 = !DILocation(line: 518, column: 10, scope: !5596)
!5602 = !DILocation(line: 520, column: 6, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 520, column: 6)
!5604 = !DILocation(line: 520, column: 12, scope: !5603)
!5605 = !DILocation(line: 520, column: 17, scope: !5603)
!5606 = !DILocation(line: 520, column: 6, scope: !5486)
!5607 = !DILocation(line: 521, column: 7, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 521, column: 7)
!5609 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 520, column: 38)
!5610 = !DILocation(line: 521, column: 13, scope: !5608)
!5611 = !DILocation(line: 521, column: 20, scope: !5608)
!5612 = !DILocation(line: 521, column: 7, scope: !5609)
!5613 = !DILocation(line: 522, column: 4, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5608, file: !3, line: 521, column: 40)
!5615 = !DILocation(line: 522, column: 11, scope: !5614)
!5616 = !DILocation(line: 523, column: 4, scope: !5614)
!5617 = !DILocation(line: 523, column: 11, scope: !5614)
!5618 = !DILocation(line: 524, column: 3, scope: !5614)
!5619 = !DILocation(line: 525, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5609, file: !3, line: 525, column: 7)
!5621 = !DILocation(line: 525, column: 13, scope: !5620)
!5622 = !DILocation(line: 525, column: 20, scope: !5620)
!5623 = !DILocation(line: 525, column: 7, scope: !5609)
!5624 = !DILocation(line: 526, column: 4, scope: !5620)
!5625 = !DILocation(line: 526, column: 11, scope: !5620)
!5626 = !DILocation(line: 527, column: 2, scope: !5609)
!5627 = !DILocation(line: 529, column: 2, scope: !5486)
!5628 = distinct !DISubprogram(name: "tda9887_set_insmod", scope: !3, file: !3, line: 443, type: !4365, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5629 = !DILocalVariable(name: "fe", arg: 1, scope: !5628, file: !3, line: 443, type: !4336)
!5630 = !DILocation(line: 443, column: 52, scope: !5628)
!5631 = !DILocalVariable(name: "priv", scope: !5628, file: !3, line: 445, type: !318)
!5632 = !DILocation(line: 445, column: 23, scope: !5628)
!5633 = !DILocation(line: 445, column: 30, scope: !5628)
!5634 = !DILocation(line: 445, column: 34, scope: !5628)
!5635 = !DILocalVariable(name: "buf", scope: !5628, file: !3, line: 446, type: !854)
!5636 = !DILocation(line: 446, column: 8, scope: !5628)
!5637 = !DILocation(line: 446, column: 14, scope: !5628)
!5638 = !DILocation(line: 446, column: 20, scope: !5628)
!5639 = !DILocation(line: 448, column: 15, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 448, column: 6)
!5641 = !DILocation(line: 448, column: 12, scope: !5640)
!5642 = !DILocation(line: 448, column: 6, scope: !5628)
!5643 = !DILocation(line: 449, column: 7, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 449, column: 7)
!5645 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 448, column: 22)
!5646 = !DILocation(line: 449, column: 7, scope: !5645)
!5647 = !DILocation(line: 450, column: 4, scope: !5644)
!5648 = !DILocation(line: 450, column: 11, scope: !5644)
!5649 = !DILocation(line: 452, column: 4, scope: !5644)
!5650 = !DILocation(line: 452, column: 11, scope: !5644)
!5651 = !DILocation(line: 453, column: 2, scope: !5645)
!5652 = !DILocation(line: 454, column: 15, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 454, column: 6)
!5654 = !DILocation(line: 454, column: 12, scope: !5653)
!5655 = !DILocation(line: 454, column: 6, scope: !5628)
!5656 = !DILocation(line: 455, column: 7, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !3, line: 455, column: 7)
!5658 = distinct !DILexicalBlock(scope: !5653, file: !3, line: 454, column: 22)
!5659 = !DILocation(line: 455, column: 7, scope: !5658)
!5660 = !DILocation(line: 456, column: 4, scope: !5657)
!5661 = !DILocation(line: 456, column: 11, scope: !5657)
!5662 = !DILocation(line: 458, column: 4, scope: !5657)
!5663 = !DILocation(line: 458, column: 11, scope: !5657)
!5664 = !DILocation(line: 459, column: 2, scope: !5658)
!5665 = !DILocation(line: 461, column: 15, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 461, column: 6)
!5667 = !DILocation(line: 461, column: 12, scope: !5666)
!5668 = !DILocation(line: 461, column: 6, scope: !5628)
!5669 = !DILocation(line: 462, column: 7, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5671, file: !3, line: 462, column: 7)
!5671 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 461, column: 20)
!5672 = !DILocation(line: 462, column: 7, scope: !5671)
!5673 = !DILocation(line: 463, column: 4, scope: !5670)
!5674 = !DILocation(line: 463, column: 11, scope: !5670)
!5675 = !DILocation(line: 465, column: 4, scope: !5670)
!5676 = !DILocation(line: 465, column: 11, scope: !5670)
!5677 = !DILocation(line: 466, column: 2, scope: !5671)
!5678 = !DILocation(line: 468, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 468, column: 6)
!5680 = !DILocation(line: 468, column: 13, scope: !5679)
!5681 = !DILocation(line: 468, column: 6, scope: !5628)
!5682 = !DILocation(line: 469, column: 3, scope: !5683)
!5683 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 468, column: 21)
!5684 = !DILocation(line: 469, column: 10, scope: !5683)
!5685 = !DILocation(line: 470, column: 13, scope: !5683)
!5686 = !DILocation(line: 470, column: 3, scope: !5683)
!5687 = !DILocation(line: 470, column: 10, scope: !5683)
!5688 = !DILocation(line: 471, column: 2, scope: !5683)
!5689 = !DILocation(line: 472, column: 2, scope: !5628)
!5690 = !DILocalVariable(name: "fe", arg: 1, scope: !4664, file: !3, line: 301, type: !4336)
!5691 = !DILocation(line: 301, column: 53, scope: !4664)
!5692 = !DILocalVariable(name: "buf", arg: 2, scope: !4664, file: !3, line: 301, type: !4667)
!5693 = !DILocation(line: 301, column: 72, scope: !4664)
!5694 = !DILocalVariable(name: "priv", scope: !4664, file: !3, line: 303, type: !318)
!5695 = !DILocation(line: 303, column: 23, scope: !4664)
!5696 = !DILocation(line: 303, column: 30, scope: !4664)
!5697 = !DILocation(line: 303, column: 34, scope: !4664)
!5698 = !DILocation(line: 343, column: 2, scope: !4664)
!5699 = !DILocation(line: 343, column: 2, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 343, column: 2)
!5701 = !DILocation(line: 343, column: 2, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5700, file: !3, line: 343, column: 2)
!5703 = !DILocation(line: 344, column: 2, scope: !4664)
!5704 = !DILocation(line: 344, column: 2, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 344, column: 2)
!5706 = !DILocation(line: 344, column: 2, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 344, column: 2)
!5708 = !DILocation(line: 346, column: 2, scope: !4664)
!5709 = !DILocation(line: 346, column: 2, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 346, column: 2)
!5711 = !DILocation(line: 346, column: 2, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 346, column: 2)
!5713 = !DILocation(line: 348, column: 2, scope: !4664)
!5714 = !DILocation(line: 348, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 348, column: 2)
!5716 = !DILocation(line: 348, column: 2, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5715, file: !3, line: 348, column: 2)
!5718 = !DILocation(line: 350, column: 2, scope: !4664)
!5719 = !DILocation(line: 350, column: 2, scope: !5720)
!5720 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 350, column: 2)
!5721 = !DILocation(line: 350, column: 2, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 350, column: 2)
!5723 = !DILocation(line: 352, column: 2, scope: !4664)
!5724 = !DILocation(line: 352, column: 2, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 352, column: 2)
!5726 = !DILocation(line: 352, column: 2, scope: !5727)
!5727 = distinct !DILexicalBlock(scope: !5725, file: !3, line: 352, column: 2)
!5728 = !DILocation(line: 354, column: 2, scope: !4664)
!5729 = !DILocation(line: 354, column: 2, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 354, column: 2)
!5731 = !DILocation(line: 354, column: 2, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 354, column: 2)
!5733 = !DILocation(line: 356, column: 2, scope: !4664)
!5734 = !DILocation(line: 356, column: 2, scope: !5735)
!5735 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 356, column: 2)
!5736 = !DILocation(line: 356, column: 2, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5735, file: !3, line: 356, column: 2)
!5738 = !DILocation(line: 359, column: 2, scope: !4664)
!5739 = !DILocation(line: 359, column: 2, scope: !5740)
!5740 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 359, column: 2)
!5741 = !DILocation(line: 359, column: 2, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5740, file: !3, line: 359, column: 2)
!5743 = !DILocation(line: 360, column: 2, scope: !4664)
!5744 = !DILocation(line: 360, column: 2, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 360, column: 2)
!5746 = !DILocation(line: 360, column: 2, scope: !5747)
!5747 = distinct !DILexicalBlock(scope: !5745, file: !3, line: 360, column: 2)
!5748 = !DILocation(line: 362, column: 2, scope: !4664)
!5749 = !DILocation(line: 362, column: 2, scope: !5750)
!5750 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 362, column: 2)
!5751 = !DILocation(line: 362, column: 2, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5750, file: !3, line: 362, column: 2)
!5753 = !DILocation(line: 364, column: 2, scope: !4664)
!5754 = !DILocation(line: 364, column: 2, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 364, column: 2)
!5756 = !DILocation(line: 364, column: 2, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 364, column: 2)
!5758 = !DILocation(line: 367, column: 2, scope: !4664)
!5759 = !DILocation(line: 367, column: 2, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 367, column: 2)
!5761 = !DILocation(line: 367, column: 2, scope: !5762)
!5762 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 367, column: 2)
!5763 = !DILocation(line: 368, column: 2, scope: !4664)
!5764 = !DILocation(line: 368, column: 2, scope: !5765)
!5765 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 368, column: 2)
!5766 = !DILocation(line: 368, column: 2, scope: !5767)
!5767 = distinct !DILexicalBlock(scope: !5765, file: !3, line: 368, column: 2)
!5768 = !DILocation(line: 370, column: 2, scope: !4664)
!5769 = !DILocation(line: 370, column: 2, scope: !5770)
!5770 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 370, column: 2)
!5771 = !DILocation(line: 370, column: 2, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5770, file: !3, line: 370, column: 2)
!5773 = !DILocation(line: 373, column: 6, scope: !5774)
!5774 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 373, column: 6)
!5775 = !DILocation(line: 373, column: 13, scope: !5774)
!5776 = !DILocation(line: 373, column: 6, scope: !4664)
!5777 = !DILocation(line: 375, column: 3, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 373, column: 21)
!5779 = !DILocation(line: 375, column: 3, scope: !5780)
!5780 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 375, column: 3)
!5781 = !DILocation(line: 375, column: 3, scope: !5782)
!5782 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 375, column: 3)
!5783 = !DILocation(line: 377, column: 3, scope: !5778)
!5784 = !DILocation(line: 377, column: 3, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5778, file: !3, line: 377, column: 3)
!5786 = !DILocation(line: 377, column: 3, scope: !5787)
!5787 = distinct !DILexicalBlock(scope: !5785, file: !3, line: 377, column: 3)
!5788 = !DILocation(line: 382, column: 2, scope: !5778)
!5789 = !DILocation(line: 384, column: 3, scope: !5790)
!5790 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 382, column: 9)
!5791 = !DILocation(line: 384, column: 3, scope: !5792)
!5792 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 384, column: 3)
!5793 = !DILocation(line: 384, column: 3, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 384, column: 3)
!5795 = !DILocation(line: 386, column: 3, scope: !5790)
!5796 = !DILocation(line: 386, column: 3, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 386, column: 3)
!5798 = !DILocation(line: 386, column: 3, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 386, column: 3)
!5800 = !DILocation(line: 390, column: 3, scope: !5790)
!5801 = !DILocation(line: 390, column: 3, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 390, column: 3)
!5803 = !DILocation(line: 390, column: 3, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5802, file: !3, line: 390, column: 3)
!5805 = !DILocation(line: 396, column: 2, scope: !4664)
!5806 = !DILocation(line: 396, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 396, column: 2)
!5808 = !DILocation(line: 396, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5807, file: !3, line: 396, column: 2)
!5810 = !DILocation(line: 397, column: 1, scope: !4664)
!5811 = distinct !DISubprogram(name: "tuner_i2c_xfer_send", scope: !323, file: !323, line: 24, type: !5812, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5812 = !DISubroutineType(types: !5813)
!5813 = !{!350, !5814, !4667, !350}
!5814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!5815 = !DILocalVariable(name: "props", arg: 1, scope: !5811, file: !323, line: 24, type: !5814)
!5816 = !DILocation(line: 24, column: 63, scope: !5811)
!5817 = !DILocalVariable(name: "buf", arg: 2, scope: !5811, file: !323, line: 25, type: !4667)
!5818 = !DILocation(line: 25, column: 26, scope: !5811)
!5819 = !DILocalVariable(name: "len", arg: 3, scope: !5811, file: !323, line: 25, type: !350)
!5820 = !DILocation(line: 25, column: 35, scope: !5811)
!5821 = !DILocalVariable(name: "msg", scope: !5811, file: !323, line: 27, type: !352)
!5822 = !DILocation(line: 27, column: 17, scope: !5811)
!5823 = !DILocation(line: 27, column: 23, scope: !5811)
!5824 = !DILocation(line: 27, column: 33, scope: !5811)
!5825 = !DILocation(line: 27, column: 40, scope: !5811)
!5826 = !DILocation(line: 28, column: 30, scope: !5811)
!5827 = !DILocation(line: 28, column: 18, scope: !5811)
!5828 = !DILocalVariable(name: "ret", scope: !5811, file: !323, line: 29, type: !350)
!5829 = !DILocation(line: 29, column: 6, scope: !5811)
!5830 = !DILocation(line: 29, column: 25, scope: !5811)
!5831 = !DILocation(line: 29, column: 32, scope: !5811)
!5832 = !DILocation(line: 29, column: 12, scope: !5811)
!5833 = !DILocation(line: 31, column: 10, scope: !5811)
!5834 = !DILocation(line: 31, column: 14, scope: !5811)
!5835 = !DILocation(line: 31, column: 9, scope: !5811)
!5836 = !DILocation(line: 31, column: 22, scope: !5811)
!5837 = !DILocation(line: 31, column: 28, scope: !5811)
!5838 = !DILocation(line: 31, column: 2, scope: !5811)
!5839 = distinct !DISubprogram(name: "tda9887_status", scope: !3, file: !3, line: 534, type: !4365, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5840 = !DILocalVariable(name: "fe", arg: 1, scope: !5839, file: !3, line: 534, type: !4336)
!5841 = !DILocation(line: 534, column: 48, scope: !5839)
!5842 = !DILocalVariable(name: "priv", scope: !5839, file: !3, line: 536, type: !318)
!5843 = !DILocation(line: 536, column: 23, scope: !5839)
!5844 = !DILocation(line: 536, column: 30, scope: !5839)
!5845 = !DILocation(line: 536, column: 34, scope: !5839)
!5846 = !DILocalVariable(name: "buf", scope: !5839, file: !3, line: 537, type: !5847)
!5847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 8, elements: !607)
!5848 = !DILocation(line: 537, column: 16, scope: !5839)
!5849 = !DILocalVariable(name: "rc", scope: !5839, file: !3, line: 538, type: !350)
!5850 = !DILocation(line: 538, column: 6, scope: !5839)
!5851 = !DILocation(line: 540, column: 28, scope: !5839)
!5852 = !DILocation(line: 540, column: 34, scope: !5839)
!5853 = !DILocation(line: 540, column: 45, scope: !5839)
!5854 = !DILocation(line: 540, column: 7, scope: !5839)
!5855 = !DILocation(line: 540, column: 5, scope: !5839)
!5856 = !DILocation(line: 541, column: 6, scope: !5857)
!5857 = distinct !DILexicalBlock(scope: !5839, file: !3, line: 541, column: 6)
!5858 = !DILocation(line: 541, column: 9, scope: !5857)
!5859 = !DILocation(line: 541, column: 6, scope: !5839)
!5860 = !DILocation(line: 542, column: 3, scope: !5857)
!5861 = !DILocation(line: 542, column: 3, scope: !5862)
!5862 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 542, column: 3)
!5863 = !DILocation(line: 542, column: 3, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5862, file: !3, line: 542, column: 3)
!5865 = !DILocation(line: 543, column: 20, scope: !5839)
!5866 = !DILocation(line: 543, column: 24, scope: !5839)
!5867 = !DILocation(line: 543, column: 2, scope: !5839)
!5868 = !DILocation(line: 544, column: 2, scope: !5839)
!5869 = distinct !DISubprogram(name: "tuner_i2c_xfer_recv", scope: !323, file: !323, line: 34, type: !5812, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5870 = !DILocalVariable(name: "props", arg: 1, scope: !5869, file: !323, line: 34, type: !5814)
!5871 = !DILocation(line: 34, column: 63, scope: !5869)
!5872 = !DILocalVariable(name: "buf", arg: 2, scope: !5869, file: !323, line: 35, type: !4667)
!5873 = !DILocation(line: 35, column: 26, scope: !5869)
!5874 = !DILocalVariable(name: "len", arg: 3, scope: !5869, file: !323, line: 35, type: !350)
!5875 = !DILocation(line: 35, column: 35, scope: !5869)
!5876 = !DILocalVariable(name: "msg", scope: !5869, file: !323, line: 37, type: !352)
!5877 = !DILocation(line: 37, column: 17, scope: !5869)
!5878 = !DILocation(line: 37, column: 23, scope: !5869)
!5879 = !DILocation(line: 37, column: 33, scope: !5869)
!5880 = !DILocation(line: 37, column: 40, scope: !5869)
!5881 = !DILocation(line: 38, column: 30, scope: !5869)
!5882 = !DILocation(line: 38, column: 18, scope: !5869)
!5883 = !DILocalVariable(name: "ret", scope: !5869, file: !323, line: 39, type: !350)
!5884 = !DILocation(line: 39, column: 6, scope: !5869)
!5885 = !DILocation(line: 39, column: 25, scope: !5869)
!5886 = !DILocation(line: 39, column: 32, scope: !5869)
!5887 = !DILocation(line: 39, column: 12, scope: !5869)
!5888 = !DILocation(line: 41, column: 10, scope: !5869)
!5889 = !DILocation(line: 41, column: 14, scope: !5869)
!5890 = !DILocation(line: 41, column: 9, scope: !5869)
!5891 = !DILocation(line: 41, column: 22, scope: !5869)
!5892 = !DILocation(line: 41, column: 28, scope: !5869)
!5893 = !DILocation(line: 41, column: 2, scope: !5869)
!5894 = !DILocalVariable(name: "fe", arg: 1, scope: !4683, file: !3, line: 271, type: !4336)
!5895 = !DILocation(line: 271, column: 52, scope: !4683)
!5896 = !DILocalVariable(name: "buf", arg: 2, scope: !4683, file: !3, line: 271, type: !4667)
!5897 = !DILocation(line: 271, column: 71, scope: !4683)
!5898 = !DILocalVariable(name: "priv", scope: !4683, file: !3, line: 273, type: !318)
!5899 = !DILocation(line: 273, column: 23, scope: !4683)
!5900 = !DILocation(line: 273, column: 30, scope: !4683)
!5901 = !DILocation(line: 273, column: 34, scope: !4683)
!5902 = !DILocation(line: 293, column: 2, scope: !4683)
!5903 = !DILocation(line: 293, column: 2, scope: !5904)
!5904 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 293, column: 2)
!5905 = !DILocation(line: 293, column: 2, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5904, file: !3, line: 293, column: 2)
!5907 = !DILocation(line: 294, column: 2, scope: !4683)
!5908 = !DILocation(line: 294, column: 2, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 294, column: 2)
!5910 = !DILocation(line: 294, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5909, file: !3, line: 294, column: 2)
!5912 = !DILocation(line: 295, column: 2, scope: !4683)
!5913 = !DILocation(line: 295, column: 2, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 295, column: 2)
!5915 = !DILocation(line: 295, column: 2, scope: !5916)
!5916 = distinct !DILexicalBlock(scope: !5914, file: !3, line: 295, column: 2)
!5917 = !DILocation(line: 296, column: 2, scope: !4683)
!5918 = !DILocation(line: 296, column: 2, scope: !5919)
!5919 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 296, column: 2)
!5920 = !DILocation(line: 296, column: 2, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5919, file: !3, line: 296, column: 2)
!5922 = !DILocation(line: 297, column: 2, scope: !4683)
!5923 = !DILocation(line: 297, column: 2, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 297, column: 2)
!5925 = !DILocation(line: 297, column: 2, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5924, file: !3, line: 297, column: 2)
!5927 = !DILocation(line: 298, column: 2, scope: !4683)
!5928 = !DILocation(line: 298, column: 2, scope: !5929)
!5929 = distinct !DILexicalBlock(scope: !4683, file: !3, line: 298, column: 2)
!5930 = !DILocation(line: 298, column: 2, scope: !5931)
!5931 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 298, column: 2)
!5932 = !DILocation(line: 299, column: 1, scope: !4683)
!5933 = distinct !DISubprogram(name: "list_del", scope: !5059, file: !5059, line: 144, type: !5934, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5934 = !DISubroutineType(types: !5935)
!5935 = !{null, !480}
!5936 = !DILocalVariable(name: "entry", arg: 1, scope: !5933, file: !5059, line: 144, type: !480)
!5937 = !DILocation(line: 144, column: 47, scope: !5933)
!5938 = !DILocation(line: 146, column: 19, scope: !5933)
!5939 = !DILocation(line: 146, column: 2, scope: !5933)
!5940 = !DILocation(line: 147, column: 2, scope: !5933)
!5941 = !DILocation(line: 147, column: 9, scope: !5933)
!5942 = !DILocation(line: 147, column: 14, scope: !5933)
!5943 = !DILocation(line: 148, column: 2, scope: !5933)
!5944 = !DILocation(line: 148, column: 9, scope: !5933)
!5945 = !DILocation(line: 148, column: 14, scope: !5933)
!5946 = !DILocation(line: 149, column: 1, scope: !5933)
!5947 = distinct !DISubprogram(name: "__list_del_entry", scope: !5059, file: !5059, line: 130, type: !5934, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5948 = !DILocalVariable(name: "entry", arg: 1, scope: !5947, file: !5059, line: 130, type: !480)
!5949 = !DILocation(line: 130, column: 55, scope: !5947)
!5950 = !DILocation(line: 132, column: 30, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5947, file: !5059, line: 132, column: 6)
!5952 = !DILocation(line: 132, column: 7, scope: !5951)
!5953 = !DILocation(line: 132, column: 6, scope: !5947)
!5954 = !DILocation(line: 133, column: 3, scope: !5951)
!5955 = !DILocation(line: 135, column: 13, scope: !5947)
!5956 = !DILocation(line: 135, column: 20, scope: !5947)
!5957 = !DILocation(line: 135, column: 26, scope: !5947)
!5958 = !DILocation(line: 135, column: 33, scope: !5947)
!5959 = !DILocation(line: 135, column: 2, scope: !5947)
!5960 = !DILocation(line: 136, column: 1, scope: !5947)
!5961 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5059, file: !5059, line: 51, type: !5962, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5962 = !DISubroutineType(types: !5963)
!5963 = !{!873, !480}
!5964 = !DILocalVariable(name: "entry", arg: 1, scope: !5961, file: !5059, line: 51, type: !480)
!5965 = !DILocation(line: 51, column: 61, scope: !5961)
!5966 = !DILocation(line: 53, column: 2, scope: !5961)
!5967 = distinct !DISubprogram(name: "__list_del", scope: !5059, file: !5059, line: 110, type: !5060, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !413)
!5968 = !DILocalVariable(name: "prev", arg: 1, scope: !5967, file: !5059, line: 110, type: !480)
!5969 = !DILocation(line: 110, column: 50, scope: !5967)
!5970 = !DILocalVariable(name: "next", arg: 2, scope: !5967, file: !5059, line: 110, type: !480)
!5971 = !DILocation(line: 110, column: 75, scope: !5967)
!5972 = !DILocation(line: 112, column: 15, scope: !5967)
!5973 = !DILocation(line: 112, column: 2, scope: !5967)
!5974 = !DILocation(line: 112, column: 8, scope: !5967)
!5975 = !DILocation(line: 112, column: 13, scope: !5967)
!5976 = !DILocation(line: 113, column: 2, scope: !5967)
!5977 = !DILocation(line: 113, column: 2, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5967, file: !5059, line: 113, column: 2)
!5979 = !DILocation(line: 113, column: 2, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5978, file: !5059, line: 113, column: 2)
!5981 = !DILocation(line: 113, column: 2, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5978, file: !5059, line: 113, column: 2)
!5983 = !DILocation(line: 114, column: 1, scope: !5967)
