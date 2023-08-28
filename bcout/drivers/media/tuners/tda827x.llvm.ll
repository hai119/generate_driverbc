; ModuleID = '../bcout/drivers/media/tuners/tda827x.llvm.bc'
source_filename = "drivers/media/tuners/tda827x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i8*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)* }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, %struct.dvb_adapter*, i8*, i8*, i8*, i8*, i8*, %struct.dtv_frontend_properties, i32 (i8*, i32, i32, i32)*, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i8*, i32)*, i32 (%struct.dvb_frontend*, i1, i32, i32*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_frontend_tune_settings*)*, i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_master_cmd*)*, i32 (%struct.dvb_frontend*, %struct.dvb_diseqc_slave_reply*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i64)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, void (%struct.dvb_frontend*, %struct.analog_parameters*)*, i32 (%struct.dvb_frontend*, i16*)*, i32 (%struct.dvb_frontend*, i32*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, void (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i8*)* }
%struct.analog_demod_info = type { i8* }
%struct.analog_parameters = type { i32, i32, i32, i64 }
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
%struct.kmem_cache = type opaque
%struct.tda827xa_data = type { i32, i8, i8, i8, i8, i8 }
%struct.tda827x_data = type { i32, i8, i8, i8, i8, i8, i8 }
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
%struct.tda827x_config = type { i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)*, i32, i32, void (%struct.dvb_frontend*)* }
%struct.tda827x_priv = type { i32, %struct.i2c_adapter*, %struct.tda827x_config*, i32, i8, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"tda827x.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !420
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !315
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"tda827x.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !385
@__UNIQUE_ID_debug221 = internal constant [65 x i8] c"tda827x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1, !dbg !390
@.str = private unnamed_addr constant [16 x i8] c"\017tda827x: %s:\0A\00", align 1
@__func__.tda827x_attach = private unnamed_addr constant [15 x i8] c"tda827x_attach\00", align 1
@tda827xo_tuner_ops = internal constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 55000000, i32 860000000, i32 250000, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @tda827x_release, i32 (%struct.dvb_frontend*)* @tda827x_initial_init, i32 (%struct.dvb_frontend*)* @tda827x_initial_sleep, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda827xo_set_params, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda827xo_set_analog_params, i32 (%struct.dvb_frontend*, i8*)* null, i32 (%struct.dvb_frontend*, i32*)* @tda827x_get_frequency, i32 (%struct.dvb_frontend*, i32*)* @tda827x_get_bandwidth, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !422
@.str.1 = private unnamed_addr constant [27 x i8] c"\017tda827x: type set to %s\0A\00", align 1
@__UNIQUE_ID_description222 = internal constant [39 x i8] c"tda827x.description=DVB TDA827x driver\00", section ".modinfo", align 1, !dbg !395
@__UNIQUE_ID_author223 = internal constant [63 x i8] c"tda827x.author=Hartmut Hackmann <hartmut.hackmann@t-online.de>\00", section ".modinfo", align 1, !dbg !400
@__UNIQUE_ID_author224 = internal constant [52 x i8] c"tda827x.author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1, !dbg !405
@__UNIQUE_ID_file225 = internal constant [42 x i8] c"tda827x.file=drivers/media/tuners/tda827x\00", section ".modinfo", align 1, !dbg !410
@__UNIQUE_ID_license226 = internal constant [20 x i8] c"tda827x.license=GPL\00", section ".modinfo", align 1, !dbg !415
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"%s: could not read from tuner at addr: 0x%02x\0A\00", align 1
@__func__.tda827x_probe_version = private unnamed_addr constant [22 x i8] c"tda827x_probe_version\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\017tda827x: tda827x tuner found\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"\017tda827x: tda827xa tuner found\0A\00", align 1
@tda827xa_tuner_ops = internal constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827XA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 906000000, i32 62500, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @tda827x_release, i32 (%struct.dvb_frontend*)* @tda827x_init, i32 (%struct.dvb_frontend*)* @tda827xa_sleep, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tda827xa_set_params, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @tda827xa_set_analog_params, i32 (%struct.dvb_frontend*, i8*)* null, i32 (%struct.dvb_frontend*, i32*)* @tda827x_get_frequency, i32 (%struct.dvb_frontend*, i32*)* @tda827x_get_bandwidth, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i16*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !4321
@__func__.tda827x_init = private unnamed_addr constant [13 x i8] c"tda827x_init\00", align 1
@tda827xo_sleep.buf = internal global [2 x i8] c"0\D0", align 1, !dbg !4317
@__func__.tda827xo_sleep = private unnamed_addr constant [15 x i8] c"tda827xo_sleep\00", align 1
@__const.tda827xo_agcf.data = private unnamed_addr constant [2 x i8] c"\80\0C", align 1
@tda827xa_sleep.buf = internal global [2 x i8] c"0\90", align 1, !dbg !4323
@__func__.tda827xa_sleep = private unnamed_addr constant [15 x i8] c"tda827xa_sleep\00", align 1
@tda827xa_dvbt = internal global [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 290000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 550000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], align 16, !dbg !4326
@__func__.tda827xa_set_params = private unnamed_addr constant [20 x i8] c"tda827xa_set_params\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"\017tda827x: %s select tda827xa_dvbc\0A\00", align 1
@tda827xa_dvbc = internal global [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 50125000, i8 2, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 58500000, i8 3, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 69250000, i8 0, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 83625000, i8 1, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 100250000, i8 2, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 117000000, i8 3, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 138500000, i8 0, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 167250000, i8 1, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 187000000, i8 2, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 200500000, i8 2, i8 2, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 234000000, i8 3, i8 2, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 277000000, i8 0, i8 1, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 334500000, i8 1, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 401000000, i8 2, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 468000000, i8 3, i8 1, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 535000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 0, i8 0, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 638000000, i8 1, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 669000000, i8 1, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 720000000, i8 2, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 802000000, i8 2, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 835000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 885000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data zeroinitializer], align 16, !dbg !4337
@.str.7 = private unnamed_addr constant [38 x i8] c"\017tda827x: tda8275a AGC2 gain is: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"\013%s: could not write to tuner at addr: 0x%02x\0A\00", align 1
@__const.tda827xa_lna_gain.buf = private unnamed_addr constant [2 x i8] c"\22\01", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"\017tda827x: tda827x_config not defined, cannot set LNA gain!\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\017tda827x: setting LNA to high gain\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"\017tda827x: setting LNA to low gain\0A\00", align 1
@tda827xa_analog = internal global [26 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], align 16, !dbg !4339
@.str.12 = private unnamed_addr constant [29 x i8] c"\017tda827x: AGC2 gain is: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"\017tda827x: setting tda827x to radio FM\0A\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"\017tda827x: setting tda827x to system %s\0A\00", align 1
@__const.tda827xa_agcf.data = private unnamed_addr constant [2 x i8] c"\80,", align 1
@__func__.tda827xo_set_params = private unnamed_addr constant [20 x i8] c"tda827xo_set_params\00", align 1
@tda827x_table = internal constant [29 x %struct.tda827x_data] [%struct.tda827x_data { i32 62000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 66000000, i8 3, i8 3, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 76000000, i8 3, i8 1, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 84000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 93000000, i8 3, i8 2, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 98000000, i8 3, i8 3, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 109000000, i8 3, i8 3, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 123000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 133000000, i8 2, i8 3, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 151000000, i8 2, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 154000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 181000000, i8 2, i8 2, i8 1, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 185000000, i8 2, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 217000000, i8 2, i8 3, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 244000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 265000000, i8 1, i8 3, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 302000000, i8 1, i8 1, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 324000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 370000000, i8 1, i8 2, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 454000000, i8 1, i8 3, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 493000000, i8 0, i8 2, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 530000000, i8 0, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 554000000, i8 0, i8 1, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 604000000, i8 0, i8 1, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 696000000, i8 0, i8 2, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 740000000, i8 0, i8 2, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data { i32 820000000, i8 0, i8 3, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 865000000, i8 0, i8 3, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data zeroinitializer], align 16, !dbg !4344
@llvm.used = appending global [8 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([65 x i8], [65 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_author224, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file225, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license226, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tda827x_attach(%struct.dvb_frontend* %fe, i32 %addr, %struct.i2c_adapter* %i2c, %struct.tda827x_config* %cfg) #0 !dbg !4367 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %addr.addr = alloca i32, align 4
  %i2c.addr = alloca %struct.i2c_adapter*, align 8
  %cfg.addr = alloca %struct.tda827x_config*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4501, metadata !DIExpression()), !dbg !4502
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !4503, metadata !DIExpression()), !dbg !4504
  store %struct.i2c_adapter* %i2c, %struct.i2c_adapter** %i2c.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c.addr, metadata !4505, metadata !DIExpression()), !dbg !4506
  store %struct.tda827x_config* %cfg, %struct.tda827x_config** %cfg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tda827x_config** %cfg.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !4509, metadata !DIExpression()), !dbg !4520
  store %struct.tda827x_priv* null, %struct.tda827x_priv** %priv, align 8, !dbg !4520
  br label %do.body, !dbg !4521

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @debug, align 4, !dbg !4522
  %tobool = icmp ne i32 %0, 0, !dbg !4522
  br i1 %tobool, label %if.then, label %if.end, !dbg !4525

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tda827x_attach, i64 0, i64 0)) #8, !dbg !4522
  br label %if.end, !dbg !4522

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4525

do.end:                                           ; preds = %if.end
  %call1 = call i8* @kzalloc(i64 40, i32 3264) #9, !dbg !4526
  %1 = bitcast i8* %call1 to %struct.tda827x_priv*, !dbg !4526
  store %struct.tda827x_priv* %1, %struct.tda827x_priv** %priv, align 8, !dbg !4527
  %2 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4528
  %cmp = icmp eq %struct.tda827x_priv* %2, null, !dbg !4530
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4531

if.then2:                                         ; preds = %do.end
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4532
  br label %return, !dbg !4532

if.end3:                                          ; preds = %do.end
  %3 = load i32, i32* %addr.addr, align 4, !dbg !4533
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4534
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 0, !dbg !4535
  store i32 %3, i32* %i2c_addr, align 8, !dbg !4536
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c.addr, align 8, !dbg !4537
  %6 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4538
  %i2c_adap = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %6, i32 0, i32 1, !dbg !4539
  store %struct.i2c_adapter* %5, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !4540
  %7 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg.addr, align 8, !dbg !4541
  %8 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4542
  %cfg4 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %8, i32 0, i32 2, !dbg !4543
  store %struct.tda827x_config* %7, %struct.tda827x_config** %cfg4, align 8, !dbg !4544
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4545
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 1, !dbg !4546
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4547
  %10 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !4548
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @tda827xo_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !4548
  %11 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4549
  %12 = bitcast %struct.tda827x_priv* %11 to i8*, !dbg !4549
  %13 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4550
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %13, i32 0, i32 4, !dbg !4551
  store i8* %12, i8** %tuner_priv, align 8, !dbg !4552
  br label %do.body5, !dbg !4553

do.body5:                                         ; preds = %if.end3
  %14 = load i32, i32* @debug, align 4, !dbg !4554
  %tobool6 = icmp ne i32 %14, 0, !dbg !4554
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !4557

if.then7:                                         ; preds = %do.body5
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4554
  %ops8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1, !dbg !4554
  %tuner_ops9 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops8, i32 0, i32 30, !dbg !4554
  %info = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops9, i32 0, i32 0, !dbg !4554
  %name = getelementptr inbounds %struct.dvb_tuner_info, %struct.dvb_tuner_info* %info, i32 0, i32 0, !dbg !4554
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %name, i64 0, i64 0, !dbg !4554
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %arraydecay) #8, !dbg !4554
  br label %if.end11, !dbg !4554

if.end11:                                         ; preds = %if.then7, %do.body5
  br label %do.end12, !dbg !4557

do.end12:                                         ; preds = %if.end11
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4558
  store %struct.dvb_frontend* %16, %struct.dvb_frontend** %retval, align 8, !dbg !4559
  br label %return, !dbg !4559

return:                                           ; preds = %do.end12, %if.then2
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4560
  ret %struct.dvb_frontend* %17, !dbg !4560
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4561 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4564, metadata !DIExpression()), !dbg !4568
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4574, metadata !DIExpression()), !dbg !4575
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4576, metadata !DIExpression()), !dbg !4577
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4578, metadata !DIExpression()), !dbg !4579
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4580, metadata !DIExpression()), !dbg !4584
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4586, metadata !DIExpression()), !dbg !4590
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4592, metadata !DIExpression()), !dbg !4596
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4601, metadata !DIExpression()), !dbg !4602
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4603, metadata !DIExpression()), !dbg !4604
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4605, metadata !DIExpression()), !dbg !4606
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4607, metadata !DIExpression()), !dbg !4608
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4609, metadata !DIExpression()), !dbg !4610
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4611, metadata !DIExpression()), !dbg !4612
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4613, metadata !DIExpression()), !dbg !4614
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4615, metadata !DIExpression()), !dbg !4616
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4617, metadata !DIExpression()), !dbg !4618
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load i64, i64* %size.addr, align 8, !dbg !4621
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4622
  %or = or i32 %1, 256, !dbg !4623
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4624
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4625
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4626

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4627
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4628
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4629

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4630
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4631
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4632
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4633
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4610
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4634
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4635
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4636
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4637
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4638
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4639
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4640
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4640
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4640
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4640
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4640
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4641
  br label %kmalloc.exit, !dbg !4641

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4642
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4643
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4643
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4645

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4646
  br label %kmalloc_index.exit.i, !dbg !4646

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4647
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4649
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4650

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4651
  br label %kmalloc_index.exit.i, !dbg !4651

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4652
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4654
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4655

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4656
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4657
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4658

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4659
  br label %kmalloc_index.exit.i, !dbg !4659

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4660
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4662
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4663

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4664
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4665
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4666

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4667
  br label %kmalloc_index.exit.i, !dbg !4667

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4668
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4670
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4671

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4672
  br label %kmalloc_index.exit.i, !dbg !4672

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4673
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4675
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4676

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4677
  br label %kmalloc_index.exit.i, !dbg !4677

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4678
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4680
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4681

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4682
  br label %kmalloc_index.exit.i, !dbg !4682

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4683
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4685
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4686

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4687
  br label %kmalloc_index.exit.i, !dbg !4687

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4688
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4690
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4691

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4692
  br label %kmalloc_index.exit.i, !dbg !4692

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4693
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4695
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4696

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4697
  br label %kmalloc_index.exit.i, !dbg !4697

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4698
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4700
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4701

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4702
  br label %kmalloc_index.exit.i, !dbg !4702

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4703
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4705
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4706

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4707
  br label %kmalloc_index.exit.i, !dbg !4707

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4708
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4710
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4711

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4712
  br label %kmalloc_index.exit.i, !dbg !4712

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4713
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4715
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4716

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4717
  br label %kmalloc_index.exit.i, !dbg !4717

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4718
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4720
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4721

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4722
  br label %kmalloc_index.exit.i, !dbg !4722

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4725
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4726

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4727
  br label %kmalloc_index.exit.i, !dbg !4727

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4728
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4730
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4731

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4732
  br label %kmalloc_index.exit.i, !dbg !4732

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4733
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4735
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4736

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4737
  br label %kmalloc_index.exit.i, !dbg !4737

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4738
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4740
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4741

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4742
  br label %kmalloc_index.exit.i, !dbg !4742

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4743
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4745
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4746

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4747
  br label %kmalloc_index.exit.i, !dbg !4747

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4748
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4750
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4751

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4752
  br label %kmalloc_index.exit.i, !dbg !4752

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4753
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4755
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4756

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4757
  br label %kmalloc_index.exit.i, !dbg !4757

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4758
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4760
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4761

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4762
  br label %kmalloc_index.exit.i, !dbg !4762

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4763
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4765
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4766

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4767
  br label %kmalloc_index.exit.i, !dbg !4767

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4768
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4770
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4771

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4772
  br label %kmalloc_index.exit.i, !dbg !4772

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4773
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4775
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4776

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4777
  br label %kmalloc_index.exit.i, !dbg !4777

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4778
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4780
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4781

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4782
  br label %kmalloc_index.exit.i, !dbg !4782

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4783
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4785
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4786

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4787
  br label %kmalloc_index.exit.i, !dbg !4787

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4788, !srcloc !4791
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4792, !srcloc !4795
  unreachable, !dbg !4796

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4797
  store i32 %45, i32* %index.i, align 4, !dbg !4798
  %46 = load i32, i32* %index.i, align 4, !dbg !4799
  %tobool.i = icmp ne i32 %46, 0, !dbg !4799
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4801

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4802
  br label %kmalloc.exit, !dbg !4802

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4803
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4804
  %and.i.i = and i32 %48, 17, !dbg !4804
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4804
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4804
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4804
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4804
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4806

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4807
  br label %kmalloc_type.exit.i, !dbg !4807

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4808
  %and2.i.i = and i32 %49, 1, !dbg !4809
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4808
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4808
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4808
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4810
  br label %kmalloc_type.exit.i, !dbg !4810

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4811
  %idxprom.i = zext i32 %51 to i64, !dbg !4812
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4812
  %52 = load i32, i32* %index.i, align 4, !dbg !4813
  %idxprom6.i = zext i32 %52 to i64, !dbg !4812
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4812
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4812
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4814
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4815
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4816
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4817
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4818
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4818
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4818
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4818
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4818
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4579
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4819
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4820
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4821
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4822
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4823
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4824
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4825
  store i8* %62, i8** %retval.i, align 8, !dbg !4826
  br label %kmalloc.exit, !dbg !4826

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4827
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4828
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4829
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4829
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4829
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4829
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4829
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4830
  br label %kmalloc.exit, !dbg !4830

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4831
  ret i8* %65, !dbg !4832
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #5

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4833 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4837, metadata !DIExpression()), !dbg !4842
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4844, metadata !DIExpression()), !dbg !4845
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4846, metadata !DIExpression()), !dbg !4847
  %0 = load i64, i64* %size.addr, align 8, !dbg !4848
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4850
  br i1 %1, label %if.then, label %if.end447, !dbg !4851

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4852
  %tobool = icmp ne i64 %2, 0, !dbg !4852
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4855

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4856
  br label %return, !dbg !4856

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4857
  %cmp = icmp ult i64 %3, 4096, !dbg !4859
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4860

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4861
  br label %return, !dbg !4861

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub = sub i64 %4, 1, !dbg !4862
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4862
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4862

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub4 = sub i64 %6, 1, !dbg !4862
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4862
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4862

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub6 = sub i64 %8, 1, !dbg !4862
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4862
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4862

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4862

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub9 = sub i64 %9, 1, !dbg !4862
  %and = and i64 %sub9, -9223372036854775808, !dbg !4862
  %tobool10 = icmp ne i64 %and, 0, !dbg !4862
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4862

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4862

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub13 = sub i64 %10, 1, !dbg !4862
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4862
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4862
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4862

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4862

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub18 = sub i64 %11, 1, !dbg !4862
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4862
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4862
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4862

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4862

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub23 = sub i64 %12, 1, !dbg !4862
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4862
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4862
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4862

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4862

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub28 = sub i64 %13, 1, !dbg !4862
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4862
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4862
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4862

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4862

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub33 = sub i64 %14, 1, !dbg !4862
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4862
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4862
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4862

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4862

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub38 = sub i64 %15, 1, !dbg !4862
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4862
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4862
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4862

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4862

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub43 = sub i64 %16, 1, !dbg !4862
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4862
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4862
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4862

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4862

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub48 = sub i64 %17, 1, !dbg !4862
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4862
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4862
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4862

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4862

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub53 = sub i64 %18, 1, !dbg !4862
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4862
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4862
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4862

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4862

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub58 = sub i64 %19, 1, !dbg !4862
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4862
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4862
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4862

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4862

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub63 = sub i64 %20, 1, !dbg !4862
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4862
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4862
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4862

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4862

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub68 = sub i64 %21, 1, !dbg !4862
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4862
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4862
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4862

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4862

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub73 = sub i64 %22, 1, !dbg !4862
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4862
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4862
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4862

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4862

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub78 = sub i64 %23, 1, !dbg !4862
  %and79 = and i64 %sub78, 562949953421312, !dbg !4862
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4862
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4862

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4862

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub83 = sub i64 %24, 1, !dbg !4862
  %and84 = and i64 %sub83, 281474976710656, !dbg !4862
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4862
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4862

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4862

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub88 = sub i64 %25, 1, !dbg !4862
  %and89 = and i64 %sub88, 140737488355328, !dbg !4862
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4862
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4862

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4862

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub93 = sub i64 %26, 1, !dbg !4862
  %and94 = and i64 %sub93, 70368744177664, !dbg !4862
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4862
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4862

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4862

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub98 = sub i64 %27, 1, !dbg !4862
  %and99 = and i64 %sub98, 35184372088832, !dbg !4862
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4862
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4862

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4862

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub103 = sub i64 %28, 1, !dbg !4862
  %and104 = and i64 %sub103, 17592186044416, !dbg !4862
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4862
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4862

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4862

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub108 = sub i64 %29, 1, !dbg !4862
  %and109 = and i64 %sub108, 8796093022208, !dbg !4862
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4862
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4862

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4862

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub113 = sub i64 %30, 1, !dbg !4862
  %and114 = and i64 %sub113, 4398046511104, !dbg !4862
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4862
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4862

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4862

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub118 = sub i64 %31, 1, !dbg !4862
  %and119 = and i64 %sub118, 2199023255552, !dbg !4862
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4862
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4862

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4862

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub123 = sub i64 %32, 1, !dbg !4862
  %and124 = and i64 %sub123, 1099511627776, !dbg !4862
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4862
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4862

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4862

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub128 = sub i64 %33, 1, !dbg !4862
  %and129 = and i64 %sub128, 549755813888, !dbg !4862
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4862
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4862

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4862

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub133 = sub i64 %34, 1, !dbg !4862
  %and134 = and i64 %sub133, 274877906944, !dbg !4862
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4862
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4862

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4862

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub138 = sub i64 %35, 1, !dbg !4862
  %and139 = and i64 %sub138, 137438953472, !dbg !4862
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4862
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4862

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4862

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub143 = sub i64 %36, 1, !dbg !4862
  %and144 = and i64 %sub143, 68719476736, !dbg !4862
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4862
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4862

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4862

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub148 = sub i64 %37, 1, !dbg !4862
  %and149 = and i64 %sub148, 34359738368, !dbg !4862
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4862
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4862

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4862

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub153 = sub i64 %38, 1, !dbg !4862
  %and154 = and i64 %sub153, 17179869184, !dbg !4862
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4862
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4862

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4862

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub158 = sub i64 %39, 1, !dbg !4862
  %and159 = and i64 %sub158, 8589934592, !dbg !4862
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4862
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4862

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4862

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub163 = sub i64 %40, 1, !dbg !4862
  %and164 = and i64 %sub163, 4294967296, !dbg !4862
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4862
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4862

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4862

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub168 = sub i64 %41, 1, !dbg !4862
  %and169 = and i64 %sub168, 2147483648, !dbg !4862
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4862
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4862

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4862

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub173 = sub i64 %42, 1, !dbg !4862
  %and174 = and i64 %sub173, 1073741824, !dbg !4862
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4862
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4862

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4862

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub178 = sub i64 %43, 1, !dbg !4862
  %and179 = and i64 %sub178, 536870912, !dbg !4862
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4862
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4862

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4862

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub183 = sub i64 %44, 1, !dbg !4862
  %and184 = and i64 %sub183, 268435456, !dbg !4862
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4862
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4862

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4862

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub188 = sub i64 %45, 1, !dbg !4862
  %and189 = and i64 %sub188, 134217728, !dbg !4862
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4862
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4862

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4862

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub193 = sub i64 %46, 1, !dbg !4862
  %and194 = and i64 %sub193, 67108864, !dbg !4862
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4862
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4862

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4862

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub198 = sub i64 %47, 1, !dbg !4862
  %and199 = and i64 %sub198, 33554432, !dbg !4862
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4862
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4862

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4862

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub203 = sub i64 %48, 1, !dbg !4862
  %and204 = and i64 %sub203, 16777216, !dbg !4862
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4862
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4862

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4862

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub208 = sub i64 %49, 1, !dbg !4862
  %and209 = and i64 %sub208, 8388608, !dbg !4862
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4862
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4862

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4862

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub213 = sub i64 %50, 1, !dbg !4862
  %and214 = and i64 %sub213, 4194304, !dbg !4862
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4862
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4862

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4862

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub218 = sub i64 %51, 1, !dbg !4862
  %and219 = and i64 %sub218, 2097152, !dbg !4862
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4862
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4862

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4862

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub223 = sub i64 %52, 1, !dbg !4862
  %and224 = and i64 %sub223, 1048576, !dbg !4862
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4862
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4862

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4862

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub228 = sub i64 %53, 1, !dbg !4862
  %and229 = and i64 %sub228, 524288, !dbg !4862
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4862
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4862

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4862

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub233 = sub i64 %54, 1, !dbg !4862
  %and234 = and i64 %sub233, 262144, !dbg !4862
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4862
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4862

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4862

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub238 = sub i64 %55, 1, !dbg !4862
  %and239 = and i64 %sub238, 131072, !dbg !4862
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4862
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4862

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4862

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub243 = sub i64 %56, 1, !dbg !4862
  %and244 = and i64 %sub243, 65536, !dbg !4862
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4862
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4862

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4862

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub248 = sub i64 %57, 1, !dbg !4862
  %and249 = and i64 %sub248, 32768, !dbg !4862
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4862
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4862

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4862

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub253 = sub i64 %58, 1, !dbg !4862
  %and254 = and i64 %sub253, 16384, !dbg !4862
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4862
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4862

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4862

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub258 = sub i64 %59, 1, !dbg !4862
  %and259 = and i64 %sub258, 8192, !dbg !4862
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4862
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4862

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4862

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub263 = sub i64 %60, 1, !dbg !4862
  %and264 = and i64 %sub263, 4096, !dbg !4862
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4862
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4862

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4862

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub268 = sub i64 %61, 1, !dbg !4862
  %and269 = and i64 %sub268, 2048, !dbg !4862
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4862
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4862

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4862

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub273 = sub i64 %62, 1, !dbg !4862
  %and274 = and i64 %sub273, 1024, !dbg !4862
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4862
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4862

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4862

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub278 = sub i64 %63, 1, !dbg !4862
  %and279 = and i64 %sub278, 512, !dbg !4862
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4862
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4862

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4862

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub283 = sub i64 %64, 1, !dbg !4862
  %and284 = and i64 %sub283, 256, !dbg !4862
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4862
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4862

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4862

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub288 = sub i64 %65, 1, !dbg !4862
  %and289 = and i64 %sub288, 128, !dbg !4862
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4862
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4862

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4862

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub293 = sub i64 %66, 1, !dbg !4862
  %and294 = and i64 %sub293, 64, !dbg !4862
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4862
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4862

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4862

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub298 = sub i64 %67, 1, !dbg !4862
  %and299 = and i64 %sub298, 32, !dbg !4862
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4862
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4862

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4862

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub303 = sub i64 %68, 1, !dbg !4862
  %and304 = and i64 %sub303, 16, !dbg !4862
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4862
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4862

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4862

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub308 = sub i64 %69, 1, !dbg !4862
  %and309 = and i64 %sub308, 8, !dbg !4862
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4862
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4862

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4862

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub313 = sub i64 %70, 1, !dbg !4862
  %and314 = and i64 %sub313, 4, !dbg !4862
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4862
  %71 = zext i1 %tobool315 to i64, !dbg !4862
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4862
  br label %cond.end, !dbg !4862

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4862
  br label %cond.end317, !dbg !4862

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4862
  br label %cond.end319, !dbg !4862

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4862
  br label %cond.end321, !dbg !4862

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4862
  br label %cond.end323, !dbg !4862

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4862
  br label %cond.end325, !dbg !4862

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4862
  br label %cond.end327, !dbg !4862

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4862
  br label %cond.end329, !dbg !4862

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4862
  br label %cond.end331, !dbg !4862

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4862
  br label %cond.end333, !dbg !4862

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4862
  br label %cond.end335, !dbg !4862

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4862
  br label %cond.end337, !dbg !4862

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4862
  br label %cond.end339, !dbg !4862

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4862
  br label %cond.end341, !dbg !4862

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4862
  br label %cond.end343, !dbg !4862

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4862
  br label %cond.end345, !dbg !4862

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4862
  br label %cond.end347, !dbg !4862

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4862
  br label %cond.end349, !dbg !4862

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4862
  br label %cond.end351, !dbg !4862

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4862
  br label %cond.end353, !dbg !4862

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4862
  br label %cond.end355, !dbg !4862

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4862
  br label %cond.end357, !dbg !4862

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4862
  br label %cond.end359, !dbg !4862

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4862
  br label %cond.end361, !dbg !4862

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4862
  br label %cond.end363, !dbg !4862

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4862
  br label %cond.end365, !dbg !4862

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4862
  br label %cond.end367, !dbg !4862

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4862
  br label %cond.end369, !dbg !4862

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4862
  br label %cond.end371, !dbg !4862

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4862
  br label %cond.end373, !dbg !4862

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4862
  br label %cond.end375, !dbg !4862

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4862
  br label %cond.end377, !dbg !4862

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4862
  br label %cond.end379, !dbg !4862

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4862
  br label %cond.end381, !dbg !4862

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4862
  br label %cond.end383, !dbg !4862

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4862
  br label %cond.end385, !dbg !4862

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4862
  br label %cond.end387, !dbg !4862

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4862
  br label %cond.end389, !dbg !4862

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4862
  br label %cond.end391, !dbg !4862

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4862
  br label %cond.end393, !dbg !4862

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4862
  br label %cond.end395, !dbg !4862

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4862
  br label %cond.end397, !dbg !4862

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4862
  br label %cond.end399, !dbg !4862

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4862
  br label %cond.end401, !dbg !4862

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4862
  br label %cond.end403, !dbg !4862

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4862
  br label %cond.end405, !dbg !4862

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4862
  br label %cond.end407, !dbg !4862

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4862
  br label %cond.end409, !dbg !4862

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4862
  br label %cond.end411, !dbg !4862

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4862
  br label %cond.end413, !dbg !4862

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4862
  br label %cond.end415, !dbg !4862

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4862
  br label %cond.end417, !dbg !4862

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4862
  br label %cond.end419, !dbg !4862

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4862
  br label %cond.end421, !dbg !4862

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4862
  br label %cond.end423, !dbg !4862

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4862
  br label %cond.end425, !dbg !4862

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4862
  br label %cond.end427, !dbg !4862

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4862
  br label %cond.end429, !dbg !4862

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4862
  br label %cond.end431, !dbg !4862

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4862
  br label %cond.end433, !dbg !4862

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4862
  br label %cond.end435, !dbg !4862

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4862
  br label %cond.end437, !dbg !4862

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4862
  br label %cond.end440, !dbg !4862

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4862

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4862
  br label %cond.end444, !dbg !4862

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4862
  %sub443 = sub i64 %72, 1, !dbg !4862
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4862
  br label %cond.end444, !dbg !4862

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4862
  %sub446 = sub i32 %cond445, 12, !dbg !4863
  %add = add i32 %sub446, 1, !dbg !4864
  store i32 %add, i32* %retval, align 4, !dbg !4865
  br label %return, !dbg !4865

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4866
  %dec = add i64 %73, -1, !dbg !4866
  store i64 %dec, i64* %size.addr, align 8, !dbg !4866
  %74 = load i64, i64* %size.addr, align 8, !dbg !4867
  %shr = lshr i64 %74, 12, !dbg !4867
  store i64 %shr, i64* %size.addr, align 8, !dbg !4867
  %75 = load i64, i64* %size.addr, align 8, !dbg !4868
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4845
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4869
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4870
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4869, !srcloc !4871
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4869
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4872
  %add.i = add i32 %79, 1, !dbg !4873
  store i32 %add.i, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4875
  ret i32 %80, !dbg !4875
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4876 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4837, metadata !DIExpression()), !dbg !4880
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4844, metadata !DIExpression()), !dbg !4882
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4883, metadata !DIExpression()), !dbg !4884
  %0 = load i64, i64* %n.addr, align 8, !dbg !4885
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4882
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4886
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4887
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4886, !srcloc !4871
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4886
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4888
  %add.i = add i32 %4, 1, !dbg !4889
  %sub = sub i32 %add.i, 1, !dbg !4890
  ret i32 %sub, !dbg !4891
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4892 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4896, metadata !DIExpression()), !dbg !4897
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4902, metadata !DIExpression()), !dbg !4903
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4904
  ret i8* %0, !dbg !4905
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda827x_release(%struct.dvb_frontend* %fe) #0 !dbg !4906 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4909
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4910
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4910
  call void @kfree(i8* %1) #9, !dbg !4911
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4912
  %tuner_priv1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 4, !dbg !4913
  store i8* null, i8** %tuner_priv1, align 8, !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_initial_init(%struct.dvb_frontend* %fe) #0 !dbg !4916 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4917, metadata !DIExpression()), !dbg !4918
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4919, metadata !DIExpression()), !dbg !4920
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4921
  %call = call i32 @tda827x_probe_version(%struct.dvb_frontend* %0) #9, !dbg !4922
  store i32 %call, i32* %ret, align 4, !dbg !4923
  %1 = load i32, i32* %ret, align 4, !dbg !4924
  %tobool = icmp ne i32 %1, 0, !dbg !4924
  br i1 %tobool, label %if.then, label %if.end, !dbg !4926

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4927
  store i32 %2, i32* %retval, align 4, !dbg !4928
  br label %return, !dbg !4928

if.end:                                           ; preds = %entry
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4929
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !4930
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4931
  %init = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 2, !dbg !4932
  %4 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %init, align 8, !dbg !4932
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4933
  %call1 = call i32 %4(%struct.dvb_frontend* %5) #9, !dbg !4929
  store i32 %call1, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4935
  ret i32 %6, !dbg !4935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_initial_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4936 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %ret = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4939, metadata !DIExpression()), !dbg !4940
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4941
  %call = call i32 @tda827x_probe_version(%struct.dvb_frontend* %0) #9, !dbg !4942
  store i32 %call, i32* %ret, align 4, !dbg !4943
  %1 = load i32, i32* %ret, align 4, !dbg !4944
  %tobool = icmp ne i32 %1, 0, !dbg !4944
  br i1 %tobool, label %if.then, label %if.end, !dbg !4946

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4947
  store i32 %2, i32* %retval, align 4, !dbg !4948
  br label %return, !dbg !4948

if.end:                                           ; preds = %entry
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4949
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !4950
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4951
  %sleep = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 3, !dbg !4952
  %4 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %sleep, align 8, !dbg !4952
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4953
  %call1 = call i32 %4(%struct.dvb_frontend* %5) #9, !dbg !4949
  store i32 %call1, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !4955
  ret i32 %6, !dbg !4955
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xo_set_params(%struct.dvb_frontend* %fe) #0 !dbg !4956 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %buf = alloca [14 x i8], align 1
  %rc = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %i = alloca i32, align 4
  %tuner_freq = alloca i32, align 4
  %if_freq = alloca i32, align 4
  %N = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !4959, metadata !DIExpression()), !dbg !4960
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4961
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !4962
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !4960
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !4963, metadata !DIExpression()), !dbg !4964
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4965
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !4966
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !4966
  %3 = bitcast i8* %2 to %struct.tda827x_priv*, !dbg !4965
  store %struct.tda827x_priv* %3, %struct.tda827x_priv** %priv, align 8, !dbg !4964
  call void @llvm.dbg.declare(metadata [14 x i8]* %buf, metadata !4967, metadata !DIExpression()), !dbg !4969
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4970, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4972, metadata !DIExpression()), !dbg !4973
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4974
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !4975
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 0, !dbg !4976
  %5 = load i32, i32* %i2c_addr, align 8, !dbg !4976
  %conv = trunc i32 %5 to i16, !dbg !4975
  store i16 %conv, i16* %addr, align 8, !dbg !4974
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4974
  store i16 0, i16* %flags, align 2, !dbg !4974
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4974
  store i16 14, i16* %len, align 4, !dbg !4974
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4974
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %buf, i64 0, i64 0, !dbg !4977
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !4974
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4978, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.declare(metadata i32* %tuner_freq, metadata !4980, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.declare(metadata i32* %if_freq, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata i32* %N, metadata !4984, metadata !DIExpression()), !dbg !4985
  br label %do.body, !dbg !4986

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !4987
  %tobool = icmp ne i32 %6, 0, !dbg !4987
  br i1 %tobool, label %if.then, label %if.end, !dbg !4990

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda827xo_set_params, i64 0, i64 0)) #8, !dbg !4987
  br label %if.end, !dbg !4987

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !4990

do.end:                                           ; preds = %if.end
  %7 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !4991
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %7, i32 0, i32 7, !dbg !4993
  %8 = load i32, i32* %bandwidth_hz, align 4, !dbg !4993
  %cmp = icmp eq i32 %8, 0, !dbg !4994
  br i1 %cmp, label %if.then3, label %if.else, !dbg !4995

if.then3:                                         ; preds = %do.end
  store i32 5000000, i32* %if_freq, align 4, !dbg !4996
  br label %if.end16, !dbg !4998

if.else:                                          ; preds = %do.end
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !4999
  %bandwidth_hz4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 7, !dbg !5001
  %10 = load i32, i32* %bandwidth_hz4, align 4, !dbg !5001
  %cmp5 = icmp ule i32 %10, 6000000, !dbg !5002
  br i1 %cmp5, label %if.then7, label %if.else8, !dbg !5003

if.then7:                                         ; preds = %if.else
  store i32 4000000, i32* %if_freq, align 4, !dbg !5004
  br label %if.end15, !dbg !5006

if.else8:                                         ; preds = %if.else
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5007
  %bandwidth_hz9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 7, !dbg !5009
  %12 = load i32, i32* %bandwidth_hz9, align 4, !dbg !5009
  %cmp10 = icmp ule i32 %12, 7000000, !dbg !5010
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !5011

if.then12:                                        ; preds = %if.else8
  store i32 4500000, i32* %if_freq, align 4, !dbg !5012
  br label %if.end14, !dbg !5014

if.else13:                                        ; preds = %if.else8
  store i32 5000000, i32* %if_freq, align 4, !dbg !5015
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  %13 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5017
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %13, i32 0, i32 0, !dbg !5018
  %14 = load i32, i32* %frequency, align 4, !dbg !5018
  store i32 %14, i32* %tuner_freq, align 4, !dbg !5019
  store i32 0, i32* %i, align 4, !dbg !5020
  br label %while.cond, !dbg !5021

while.cond:                                       ; preds = %if.end25, %if.end16
  %15 = load i32, i32* %i, align 4, !dbg !5022
  %idxprom = sext i32 %15 to i64, !dbg !5023
  %arrayidx = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom, !dbg !5023
  %lomax = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx, i32 0, i32 0, !dbg !5024
  %16 = load i32, i32* %lomax, align 4, !dbg !5024
  %17 = load i32, i32* %tuner_freq, align 4, !dbg !5025
  %cmp17 = icmp ult i32 %16, %17, !dbg !5026
  br i1 %cmp17, label %while.body, label %while.end, !dbg !5021

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %i, align 4, !dbg !5027
  %add = add i32 %18, 1, !dbg !5030
  %idxprom19 = sext i32 %add to i64, !dbg !5031
  %arrayidx20 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom19, !dbg !5031
  %lomax21 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx20, i32 0, i32 0, !dbg !5032
  %19 = load i32, i32* %lomax21, align 4, !dbg !5032
  %cmp22 = icmp eq i32 %19, 0, !dbg !5033
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !5034

if.then24:                                        ; preds = %while.body
  br label %while.end, !dbg !5035

if.end25:                                         ; preds = %while.body
  %20 = load i32, i32* %i, align 4, !dbg !5036
  %inc = add i32 %20, 1, !dbg !5036
  store i32 %inc, i32* %i, align 4, !dbg !5036
  br label %while.cond, !dbg !5021, !llvm.loop !5037

while.end:                                        ; preds = %if.then24, %while.cond
  %21 = load i32, i32* %if_freq, align 4, !dbg !5039
  %22 = load i32, i32* %tuner_freq, align 4, !dbg !5040
  %add26 = add i32 %22, %21, !dbg !5040
  store i32 %add26, i32* %tuner_freq, align 4, !dbg !5040
  %23 = load i32, i32* %tuner_freq, align 4, !dbg !5041
  %add27 = add i32 %23, 125000, !dbg !5042
  %div = sdiv i32 %add27, 250000, !dbg !5043
  %24 = load i32, i32* %i, align 4, !dbg !5044
  %idxprom28 = sext i32 %24 to i64, !dbg !5045
  %arrayidx29 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom28, !dbg !5045
  %spd = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx29, i32 0, i32 1, !dbg !5046
  %25 = load i8, i8* %spd, align 4, !dbg !5046
  %conv30 = zext i8 %25 to i32, !dbg !5045
  %add31 = add i32 %conv30, 2, !dbg !5047
  %shl = shl i32 %div, %add31, !dbg !5048
  store i32 %shl, i32* %N, align 4, !dbg !5049
  %arrayidx32 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 0, !dbg !5050
  store i8 0, i8* %arrayidx32, align 1, !dbg !5051
  %26 = load i32, i32* %N, align 4, !dbg !5052
  %shr = lshr i32 %26, 8, !dbg !5053
  %or = or i32 %shr, 64, !dbg !5054
  %conv33 = trunc i32 %or to i8, !dbg !5055
  %arrayidx34 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 1, !dbg !5056
  store i8 %conv33, i8* %arrayidx34, align 1, !dbg !5057
  %27 = load i32, i32* %N, align 4, !dbg !5058
  %and = and i32 %27, 255, !dbg !5059
  %conv35 = trunc i32 %and to i8, !dbg !5058
  %arrayidx36 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 2, !dbg !5060
  store i8 %conv35, i8* %arrayidx36, align 1, !dbg !5061
  %arrayidx37 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 3, !dbg !5062
  store i8 0, i8* %arrayidx37, align 1, !dbg !5063
  %arrayidx38 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 4, !dbg !5064
  store i8 82, i8* %arrayidx38, align 1, !dbg !5065
  %28 = load i32, i32* %i, align 4, !dbg !5066
  %idxprom39 = sext i32 %28 to i64, !dbg !5067
  %arrayidx40 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom39, !dbg !5067
  %spd41 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx40, i32 0, i32 1, !dbg !5068
  %29 = load i8, i8* %spd41, align 4, !dbg !5068
  %conv42 = zext i8 %29 to i32, !dbg !5067
  %shl43 = shl i32 %conv42, 6, !dbg !5069
  %30 = load i32, i32* %i, align 4, !dbg !5070
  %idxprom44 = sext i32 %30 to i64, !dbg !5071
  %arrayidx45 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom44, !dbg !5071
  %div1p5 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx45, i32 0, i32 6, !dbg !5072
  %31 = load i8, i8* %div1p5, align 1, !dbg !5072
  %conv46 = zext i8 %31 to i32, !dbg !5071
  %shl47 = shl i32 %conv46, 5, !dbg !5073
  %add48 = add i32 %shl43, %shl47, !dbg !5074
  %32 = load i32, i32* %i, align 4, !dbg !5075
  %idxprom49 = sext i32 %32 to i64, !dbg !5076
  %arrayidx50 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom49, !dbg !5076
  %bs = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx50, i32 0, i32 2, !dbg !5077
  %33 = load i8, i8* %bs, align 1, !dbg !5077
  %conv51 = zext i8 %33 to i32, !dbg !5076
  %shl52 = shl i32 %conv51, 3, !dbg !5078
  %add53 = add i32 %add48, %shl52, !dbg !5079
  %34 = load i32, i32* %i, align 4, !dbg !5080
  %idxprom54 = sext i32 %34 to i64, !dbg !5081
  %arrayidx55 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom54, !dbg !5081
  %bp = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx55, i32 0, i32 3, !dbg !5082
  %35 = load i8, i8* %bp, align 2, !dbg !5082
  %conv56 = zext i8 %35 to i32, !dbg !5081
  %add57 = add i32 %add53, %conv56, !dbg !5083
  %conv58 = trunc i32 %add57 to i8, !dbg !5084
  %arrayidx59 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 5, !dbg !5085
  store i8 %conv58, i8* %arrayidx59, align 1, !dbg !5086
  %36 = load i32, i32* %i, align 4, !dbg !5087
  %idxprom60 = sext i32 %36 to i64, !dbg !5088
  %arrayidx61 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom60, !dbg !5088
  %gc3 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx61, i32 0, i32 5, !dbg !5089
  %37 = load i8, i8* %gc3, align 4, !dbg !5089
  %conv62 = zext i8 %37 to i32, !dbg !5088
  %shl63 = shl i32 %conv62, 4, !dbg !5090
  %add64 = add i32 %shl63, 143, !dbg !5091
  %conv65 = trunc i32 %add64 to i8, !dbg !5092
  %arrayidx66 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 6, !dbg !5093
  store i8 %conv65, i8* %arrayidx66, align 1, !dbg !5094
  %arrayidx67 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 7, !dbg !5095
  store i8 -65, i8* %arrayidx67, align 1, !dbg !5096
  %arrayidx68 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 8, !dbg !5097
  store i8 42, i8* %arrayidx68, align 1, !dbg !5098
  %arrayidx69 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 9, !dbg !5099
  store i8 5, i8* %arrayidx69, align 1, !dbg !5100
  %arrayidx70 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 10, !dbg !5101
  store i8 -1, i8* %arrayidx70, align 1, !dbg !5102
  %arrayidx71 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 11, !dbg !5103
  store i8 0, i8* %arrayidx71, align 1, !dbg !5104
  %arrayidx72 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 12, !dbg !5105
  store i8 0, i8* %arrayidx72, align 1, !dbg !5106
  %arrayidx73 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 13, !dbg !5107
  store i8 64, i8* %arrayidx73, align 1, !dbg !5108
  %len74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5109
  store i16 14, i16* %len74, align 4, !dbg !5110
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5111
  %call75 = call i32 @tuner_transfer(%struct.dvb_frontend* %38, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5112
  store i32 %call75, i32* %rc, align 4, !dbg !5113
  %39 = load i32, i32* %rc, align 4, !dbg !5114
  %cmp76 = icmp slt i32 %39, 0, !dbg !5116
  br i1 %cmp76, label %if.then78, label %if.end79, !dbg !5117

if.then78:                                        ; preds = %while.end
  br label %err, !dbg !5118

if.end79:                                         ; preds = %while.end
  call void @msleep(i32 500) #9, !dbg !5119
  %arrayidx80 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 0, !dbg !5120
  store i8 48, i8* %arrayidx80, align 1, !dbg !5121
  %40 = load i32, i32* %i, align 4, !dbg !5122
  %idxprom81 = sext i32 %40 to i64, !dbg !5123
  %arrayidx82 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom81, !dbg !5123
  %cp = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx82, i32 0, i32 4, !dbg !5124
  %41 = load i8, i8* %cp, align 1, !dbg !5124
  %conv83 = zext i8 %41 to i32, !dbg !5123
  %add84 = add i32 80, %conv83, !dbg !5125
  %conv85 = trunc i32 %add84 to i8, !dbg !5126
  %arrayidx86 = getelementptr [14 x i8], [14 x i8]* %buf, i64 0, i64 1, !dbg !5127
  store i8 %conv85, i8* %arrayidx86, align 1, !dbg !5128
  %len87 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5129
  store i16 2, i16* %len87, align 4, !dbg !5130
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5131
  %call88 = call i32 @tuner_transfer(%struct.dvb_frontend* %42, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5132
  store i32 %call88, i32* %rc, align 4, !dbg !5133
  %43 = load i32, i32* %rc, align 4, !dbg !5134
  %cmp89 = icmp slt i32 %43, 0, !dbg !5136
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !5137

if.then91:                                        ; preds = %if.end79
  br label %err, !dbg !5138

if.end92:                                         ; preds = %if.end79
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5139
  %frequency93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0, !dbg !5140
  %45 = load i32, i32* %frequency93, align 4, !dbg !5140
  %46 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5141
  %frequency94 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %46, i32 0, i32 5, !dbg !5142
  store i32 %45, i32* %frequency94, align 8, !dbg !5143
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5144
  %bandwidth_hz95 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 7, !dbg !5145
  %48 = load i32, i32* %bandwidth_hz95, align 4, !dbg !5145
  %49 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5146
  %bandwidth = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %49, i32 0, i32 6, !dbg !5147
  store i32 %48, i32* %bandwidth, align 4, !dbg !5148
  store i32 0, i32* %retval, align 4, !dbg !5149
  br label %return, !dbg !5149

err:                                              ; preds = %if.then91, %if.then78
  call void @llvm.dbg.label(metadata !5150), !dbg !5151
  %50 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5152
  %i2c_addr96 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %50, i32 0, i32 0, !dbg !5153
  %51 = load i32, i32* %i2c_addr96, align 8, !dbg !5153
  %shl97 = shl i32 %51, 1, !dbg !5154
  %call98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda827xo_set_params, i64 0, i64 0), i32 %shl97) #8, !dbg !5155
  %52 = load i32, i32* %rc, align 4, !dbg !5156
  store i32 %52, i32* %retval, align 4, !dbg !5157
  br label %return, !dbg !5157

return:                                           ; preds = %err, %if.end92
  %53 = load i32, i32* %retval, align 4, !dbg !5158
  ret i32 %53, !dbg !5158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xo_set_analog_params(%struct.dvb_frontend* %fe, %struct.analog_parameters* %params) #0 !dbg !5159 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %params.addr = alloca %struct.analog_parameters*, align 8
  %tuner_reg = alloca [8 x i8], align 1
  %reg2 = alloca [2 x i8], align 1
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %priv = alloca %struct.tda827x_priv*, align 8
  %msg = alloca %struct.i2c_msg, align 8
  %freq = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5160, metadata !DIExpression()), !dbg !5161
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !5162, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata [8 x i8]* %tuner_reg, metadata !5164, metadata !DIExpression()), !dbg !5166
  call void @llvm.dbg.declare(metadata [2 x i8]* %reg2, metadata !5167, metadata !DIExpression()), !dbg !5169
  call void @llvm.dbg.declare(metadata i32* %N, metadata !5170, metadata !DIExpression()), !dbg !5171
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5172, metadata !DIExpression()), !dbg !5173
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5174, metadata !DIExpression()), !dbg !5175
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5176
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5177
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5177
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5176
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5175
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5178, metadata !DIExpression()), !dbg !5179
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5180
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5181
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 0, !dbg !5182
  %4 = load i32, i32* %i2c_addr, align 8, !dbg !5182
  %conv = trunc i32 %4 to i16, !dbg !5181
  store i16 %conv, i16* %addr, align 8, !dbg !5180
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5180
  store i16 0, i16* %flags, align 2, !dbg !5180
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5180
  store i16 0, i16* %len, align 4, !dbg !5180
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5180
  store i8* null, i8** %buf, align 8, !dbg !5180
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !5183, metadata !DIExpression()), !dbg !5184
  %5 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5185
  %frequency = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %5, i32 0, i32 0, !dbg !5186
  %6 = load i32, i32* %frequency, align 8, !dbg !5186
  store i32 %6, i32* %freq, align 4, !dbg !5184
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5187
  %8 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5188
  call void @tda827x_set_std(%struct.dvb_frontend* %7, %struct.analog_parameters* %8) #9, !dbg !5189
  %9 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5190
  %mode = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %9, i32 0, i32 1, !dbg !5192
  %10 = load i32, i32* %mode, align 4, !dbg !5192
  %cmp = icmp eq i32 %10, 1, !dbg !5193
  br i1 %cmp, label %if.then, label %if.end, !dbg !5194

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %freq, align 4, !dbg !5195
  %div = udiv i32 %11, 1000, !dbg !5196
  store i32 %div, i32* %freq, align 4, !dbg !5197
  br label %if.end, !dbg !5198

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32, i32* %freq, align 4, !dbg !5199
  %13 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5200
  %sgIF = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %13, i32 0, i32 3, !dbg !5201
  %14 = load i32, i32* %sgIF, align 8, !dbg !5201
  %add = add i32 %12, %14, !dbg !5202
  store i32 %add, i32* %N, align 4, !dbg !5203
  store i32 0, i32* %i, align 4, !dbg !5204
  br label %while.cond, !dbg !5205

while.cond:                                       ; preds = %if.end11, %if.end
  %15 = load i32, i32* %i, align 4, !dbg !5206
  %idxprom = sext i32 %15 to i64, !dbg !5207
  %arrayidx = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom, !dbg !5207
  %lomax = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx, i32 0, i32 0, !dbg !5208
  %16 = load i32, i32* %lomax, align 4, !dbg !5208
  %17 = load i32, i32* %N, align 4, !dbg !5209
  %mul = mul i32 %17, 62500, !dbg !5210
  %cmp2 = icmp ult i32 %16, %mul, !dbg !5211
  br i1 %cmp2, label %while.body, label %while.end, !dbg !5205

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %i, align 4, !dbg !5212
  %add4 = add i32 %18, 1, !dbg !5215
  %idxprom5 = sext i32 %add4 to i64, !dbg !5216
  %arrayidx6 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom5, !dbg !5216
  %lomax7 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx6, i32 0, i32 0, !dbg !5217
  %19 = load i32, i32* %lomax7, align 4, !dbg !5217
  %cmp8 = icmp eq i32 %19, 0, !dbg !5218
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5219

if.then10:                                        ; preds = %while.body
  br label %while.end, !dbg !5220

if.end11:                                         ; preds = %while.body
  %20 = load i32, i32* %i, align 4, !dbg !5221
  %inc = add i32 %20, 1, !dbg !5221
  store i32 %inc, i32* %i, align 4, !dbg !5221
  br label %while.cond, !dbg !5205, !llvm.loop !5222

while.end:                                        ; preds = %if.then10, %while.cond
  %21 = load i32, i32* %N, align 4, !dbg !5224
  %22 = load i32, i32* %i, align 4, !dbg !5225
  %idxprom12 = sext i32 %22 to i64, !dbg !5226
  %arrayidx13 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom12, !dbg !5226
  %spd = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx13, i32 0, i32 1, !dbg !5227
  %23 = load i8, i8* %spd, align 4, !dbg !5227
  %conv14 = zext i8 %23 to i32, !dbg !5226
  %shl = shl i32 %21, %conv14, !dbg !5228
  store i32 %shl, i32* %N, align 4, !dbg !5229
  %arrayidx15 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 0, !dbg !5230
  store i8 0, i8* %arrayidx15, align 1, !dbg !5231
  %24 = load i32, i32* %N, align 4, !dbg !5232
  %shr = lshr i32 %24, 8, !dbg !5233
  %conv16 = trunc i32 %shr to i8, !dbg !5234
  %arrayidx17 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 1, !dbg !5235
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !5236
  %25 = load i32, i32* %N, align 4, !dbg !5237
  %conv18 = trunc i32 %25 to i8, !dbg !5238
  %arrayidx19 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 2, !dbg !5239
  store i8 %conv18, i8* %arrayidx19, align 1, !dbg !5240
  %arrayidx20 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 3, !dbg !5241
  store i8 64, i8* %arrayidx20, align 1, !dbg !5242
  %26 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5243
  %lpsel = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %26, i32 0, i32 4, !dbg !5244
  %27 = load i8, i8* %lpsel, align 4, !dbg !5244
  %conv21 = zext i8 %27 to i32, !dbg !5243
  %shl22 = shl i32 %conv21, 5, !dbg !5245
  %add23 = add i32 82, %shl22, !dbg !5246
  %conv24 = trunc i32 %add23 to i8, !dbg !5247
  %arrayidx25 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 4, !dbg !5248
  store i8 %conv24, i8* %arrayidx25, align 1, !dbg !5249
  %28 = load i32, i32* %i, align 4, !dbg !5250
  %idxprom26 = sext i32 %28 to i64, !dbg !5251
  %arrayidx27 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom26, !dbg !5251
  %spd28 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx27, i32 0, i32 1, !dbg !5252
  %29 = load i8, i8* %spd28, align 4, !dbg !5252
  %conv29 = zext i8 %29 to i32, !dbg !5251
  %shl30 = shl i32 %conv29, 6, !dbg !5253
  %30 = load i32, i32* %i, align 4, !dbg !5254
  %idxprom31 = sext i32 %30 to i64, !dbg !5255
  %arrayidx32 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom31, !dbg !5255
  %div1p5 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx32, i32 0, i32 6, !dbg !5256
  %31 = load i8, i8* %div1p5, align 1, !dbg !5256
  %conv33 = zext i8 %31 to i32, !dbg !5255
  %shl34 = shl i32 %conv33, 5, !dbg !5257
  %add35 = add i32 %shl30, %shl34, !dbg !5258
  %32 = load i32, i32* %i, align 4, !dbg !5259
  %idxprom36 = sext i32 %32 to i64, !dbg !5260
  %arrayidx37 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom36, !dbg !5260
  %bs = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx37, i32 0, i32 2, !dbg !5261
  %33 = load i8, i8* %bs, align 1, !dbg !5261
  %conv38 = zext i8 %33 to i32, !dbg !5260
  %shl39 = shl i32 %conv38, 3, !dbg !5262
  %add40 = add i32 %add35, %shl39, !dbg !5263
  %34 = load i32, i32* %i, align 4, !dbg !5264
  %idxprom41 = sext i32 %34 to i64, !dbg !5265
  %arrayidx42 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom41, !dbg !5265
  %bp = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx42, i32 0, i32 3, !dbg !5266
  %35 = load i8, i8* %bp, align 2, !dbg !5266
  %conv43 = zext i8 %35 to i32, !dbg !5265
  %add44 = add i32 %add40, %conv43, !dbg !5267
  %conv45 = trunc i32 %add44 to i8, !dbg !5268
  %arrayidx46 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 5, !dbg !5269
  store i8 %conv45, i8* %arrayidx46, align 1, !dbg !5270
  %36 = load i32, i32* %i, align 4, !dbg !5271
  %idxprom47 = sext i32 %36 to i64, !dbg !5272
  %arrayidx48 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom47, !dbg !5272
  %gc3 = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx48, i32 0, i32 5, !dbg !5273
  %37 = load i8, i8* %gc3, align 4, !dbg !5273
  %conv49 = zext i8 %37 to i32, !dbg !5272
  %shl50 = shl i32 %conv49, 4, !dbg !5274
  %add51 = add i32 143, %shl50, !dbg !5275
  %conv52 = trunc i32 %add51 to i8, !dbg !5276
  %arrayidx53 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 6, !dbg !5277
  store i8 %conv52, i8* %arrayidx53, align 1, !dbg !5278
  %arrayidx54 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 7, !dbg !5279
  store i8 -113, i8* %arrayidx54, align 1, !dbg !5280
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 0, !dbg !5281
  %buf55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5282
  store i8* %arraydecay, i8** %buf55, align 8, !dbg !5283
  %len56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5284
  store i16 8, i16* %len56, align 4, !dbg !5285
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5286
  %call = call i32 @tuner_transfer(%struct.dvb_frontend* %38, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5287
  %arraydecay57 = getelementptr inbounds [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5288
  %buf58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5289
  store i8* %arraydecay57, i8** %buf58, align 8, !dbg !5290
  %len59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5291
  store i16 2, i16* %len59, align 4, !dbg !5292
  %arrayidx60 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5293
  store i8 -128, i8* %arrayidx60, align 1, !dbg !5294
  %arrayidx61 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5295
  store i8 0, i8* %arrayidx61, align 1, !dbg !5296
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5297
  %call62 = call i32 @tuner_transfer(%struct.dvb_frontend* %39, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5298
  %arrayidx63 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5299
  store i8 96, i8* %arrayidx63, align 1, !dbg !5300
  %arrayidx64 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5301
  store i8 -65, i8* %arrayidx64, align 1, !dbg !5302
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5303
  %call65 = call i32 @tuner_transfer(%struct.dvb_frontend* %40, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5304
  %arrayidx66 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5305
  store i8 48, i8* %arrayidx66, align 1, !dbg !5306
  %arrayidx67 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 4, !dbg !5307
  %41 = load i8, i8* %arrayidx67, align 1, !dbg !5307
  %conv68 = zext i8 %41 to i32, !dbg !5307
  %add69 = add i32 %conv68, 128, !dbg !5308
  %conv70 = trunc i32 %add69 to i8, !dbg !5307
  %arrayidx71 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5309
  store i8 %conv70, i8* %arrayidx71, align 1, !dbg !5310
  %42 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5311
  %call72 = call i32 @tuner_transfer(%struct.dvb_frontend* %42, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5312
  call void @msleep(i32 1) #9, !dbg !5313
  %arrayidx73 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5314
  store i8 48, i8* %arrayidx73, align 1, !dbg !5315
  %arrayidx74 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 4, !dbg !5316
  %43 = load i8, i8* %arrayidx74, align 1, !dbg !5316
  %conv75 = zext i8 %43 to i32, !dbg !5316
  %add76 = add i32 %conv75, 4, !dbg !5317
  %conv77 = trunc i32 %add76 to i8, !dbg !5316
  %arrayidx78 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5318
  store i8 %conv77, i8* %arrayidx78, align 1, !dbg !5319
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5320
  %call79 = call i32 @tuner_transfer(%struct.dvb_frontend* %44, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5321
  call void @msleep(i32 1) #9, !dbg !5322
  %arrayidx80 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5323
  store i8 48, i8* %arrayidx80, align 1, !dbg !5324
  %arrayidx81 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 4, !dbg !5325
  %45 = load i8, i8* %arrayidx81, align 1, !dbg !5325
  %arrayidx82 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5326
  store i8 %45, i8* %arrayidx82, align 1, !dbg !5327
  %46 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5328
  %call83 = call i32 @tuner_transfer(%struct.dvb_frontend* %46, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5329
  call void @msleep(i32 550) #9, !dbg !5330
  %arrayidx84 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5331
  store i8 48, i8* %arrayidx84, align 1, !dbg !5332
  %arrayidx85 = getelementptr [8 x i8], [8 x i8]* %tuner_reg, i64 0, i64 4, !dbg !5333
  %47 = load i8, i8* %arrayidx85, align 1, !dbg !5333
  %conv86 = zext i8 %47 to i32, !dbg !5333
  %and = and i32 %conv86, 252, !dbg !5334
  %48 = load i32, i32* %i, align 4, !dbg !5335
  %idxprom87 = sext i32 %48 to i64, !dbg !5336
  %arrayidx88 = getelementptr [29 x %struct.tda827x_data], [29 x %struct.tda827x_data]* @tda827x_table, i64 0, i64 %idxprom87, !dbg !5336
  %cp = getelementptr inbounds %struct.tda827x_data, %struct.tda827x_data* %arrayidx88, i32 0, i32 4, !dbg !5337
  %49 = load i8, i8* %cp, align 1, !dbg !5337
  %conv89 = zext i8 %49 to i32, !dbg !5336
  %add90 = add i32 %and, %conv89, !dbg !5338
  %conv91 = trunc i32 %add90 to i8, !dbg !5339
  %arrayidx92 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5340
  store i8 %conv91, i8* %arrayidx92, align 1, !dbg !5341
  %50 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5342
  %call93 = call i32 @tuner_transfer(%struct.dvb_frontend* %50, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5343
  %arrayidx94 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5344
  store i8 96, i8* %arrayidx94, align 1, !dbg !5345
  %arrayidx95 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5346
  store i8 63, i8* %arrayidx95, align 1, !dbg !5347
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5348
  %call96 = call i32 @tuner_transfer(%struct.dvb_frontend* %51, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5349
  %arrayidx97 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 0, !dbg !5350
  store i8 -128, i8* %arrayidx97, align 1, !dbg !5351
  %arrayidx98 = getelementptr [2 x i8], [2 x i8]* %reg2, i64 0, i64 1, !dbg !5352
  store i8 8, i8* %arrayidx98, align 1, !dbg !5353
  %52 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5354
  %call99 = call i32 @tuner_transfer(%struct.dvb_frontend* %52, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5355
  %53 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5356
  %frequency100 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %53, i32 0, i32 0, !dbg !5357
  %54 = load i32, i32* %frequency100, align 8, !dbg !5357
  %55 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5358
  %frequency101 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %55, i32 0, i32 5, !dbg !5359
  store i32 %54, i32* %frequency101, align 8, !dbg !5360
  ret i32 0, !dbg !5361
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_get_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !5362 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5367, metadata !DIExpression()), !dbg !5368
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5369
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5370
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5370
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5369
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5368
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5371
  %frequency1 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 5, !dbg !5372
  %4 = load i32, i32* %frequency1, align 8, !dbg !5372
  %5 = load i32*, i32** %frequency.addr, align 8, !dbg !5373
  store i32 %4, i32* %5, align 4, !dbg !5374
  ret i32 0, !dbg !5375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_get_bandwidth(%struct.dvb_frontend* %fe, i32* %bandwidth) #0 !dbg !5376 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %bandwidth.addr = alloca i32*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  store i32* %bandwidth, i32** %bandwidth.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %bandwidth.addr, metadata !5379, metadata !DIExpression()), !dbg !5380
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5381, metadata !DIExpression()), !dbg !5382
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5383
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5384
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5384
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5383
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5382
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5385
  %bandwidth1 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 6, !dbg !5386
  %4 = load i32, i32* %bandwidth1, align 4, !dbg !5386
  %5 = load i32*, i32** %bandwidth.addr, align 8, !dbg !5387
  store i32 %4, i32* %5, align 4, !dbg !5388
  ret i32 0, !dbg !5389
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_probe_version(%struct.dvb_frontend* %fe) #0 !dbg !5390 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %data = alloca i8, align 1
  %rc = alloca i32, align 4
  %priv = alloca %struct.tda827x_priv*, align 8
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5391, metadata !DIExpression()), !dbg !5392
  call void @llvm.dbg.declare(metadata i8* %data, metadata !5393, metadata !DIExpression()), !dbg !5394
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5395, metadata !DIExpression()), !dbg !5396
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5397, metadata !DIExpression()), !dbg !5398
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5399
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5400
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5400
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5399
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5398
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5401, metadata !DIExpression()), !dbg !5402
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5403
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5404
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 0, !dbg !5405
  %4 = load i32, i32* %i2c_addr, align 8, !dbg !5405
  %conv = trunc i32 %4 to i16, !dbg !5404
  store i16 %conv, i16* %addr, align 8, !dbg !5403
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5403
  store i16 1, i16* %flags, align 2, !dbg !5403
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5403
  store i16 1, i16* %len, align 4, !dbg !5403
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5403
  store i8* %data, i8** %buf, align 8, !dbg !5403
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5406
  %call = call i32 @tuner_transfer(%struct.dvb_frontend* %5, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5407
  store i32 %call, i32* %rc, align 4, !dbg !5408
  %6 = load i32, i32* %rc, align 4, !dbg !5409
  %cmp = icmp slt i32 %6, 0, !dbg !5411
  br i1 %cmp, label %if.then, label %if.end, !dbg !5412

if.then:                                          ; preds = %entry
  %addr2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5413
  %7 = load i16, i16* %addr2, align 8, !dbg !5413
  %conv3 = zext i16 %7 to i32, !dbg !5415
  %shl = shl i32 %conv3, 1, !dbg !5416
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.tda827x_probe_version, i64 0, i64 0), i32 %shl) #8, !dbg !5417
  %8 = load i32, i32* %rc, align 4, !dbg !5418
  store i32 %8, i32* %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end:                                           ; preds = %entry
  %9 = load i8, i8* %data, align 1, !dbg !5420
  %conv5 = zext i8 %9 to i32, !dbg !5420
  %and = and i32 %conv5, 60, !dbg !5422
  %cmp6 = icmp eq i32 %and, 0, !dbg !5423
  br i1 %cmp6, label %if.then8, label %if.else, !dbg !5424

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !5425

do.body:                                          ; preds = %if.then8
  %10 = load i32, i32* @debug, align 4, !dbg !5427
  %tobool = icmp ne i32 %10, 0, !dbg !5427
  br i1 %tobool, label %if.then9, label %if.end11, !dbg !5430

if.then9:                                         ; preds = %do.body
  %call10 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !5427
  br label %if.end11, !dbg !5427

if.end11:                                         ; preds = %if.then9, %do.body
  br label %do.end, !dbg !5430

do.end:                                           ; preds = %if.end11
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5431
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 1, !dbg !5432
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !5433
  %init = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops, i32 0, i32 2, !dbg !5434
  store i32 (%struct.dvb_frontend*)* @tda827x_init, i32 (%struct.dvb_frontend*)** %init, align 8, !dbg !5435
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5436
  %ops12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5437
  %tuner_ops13 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops12, i32 0, i32 30, !dbg !5438
  %sleep = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %tuner_ops13, i32 0, i32 3, !dbg !5439
  store i32 (%struct.dvb_frontend*)* @tda827xo_sleep, i32 (%struct.dvb_frontend*)** %sleep, align 8, !dbg !5440
  %13 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5441
  %cfg = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %13, i32 0, i32 2, !dbg !5443
  %14 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg, align 8, !dbg !5443
  %tobool14 = icmp ne %struct.tda827x_config* %14, null, !dbg !5441
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !5444

if.then15:                                        ; preds = %do.end
  %15 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5445
  %cfg16 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %15, i32 0, i32 2, !dbg !5446
  %16 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg16, align 8, !dbg !5446
  %agcf = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %16, i32 0, i32 4, !dbg !5447
  store void (%struct.dvb_frontend*)* @tda827xo_agcf, void (%struct.dvb_frontend*)** %agcf, align 8, !dbg !5448
  br label %if.end17, !dbg !5445

if.end17:                                         ; preds = %if.then15, %do.end
  br label %if.end32, !dbg !5449

if.else:                                          ; preds = %if.end
  br label %do.body18, !dbg !5450

do.body18:                                        ; preds = %if.else
  %17 = load i32, i32* @debug, align 4, !dbg !5452
  %tobool19 = icmp ne i32 %17, 0, !dbg !5452
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !5455

if.then20:                                        ; preds = %do.body18
  %call21 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !5452
  br label %if.end22, !dbg !5452

if.end22:                                         ; preds = %if.then20, %do.body18
  br label %do.end23, !dbg !5455

do.end23:                                         ; preds = %if.end22
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5456
  %ops24 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1, !dbg !5457
  %tuner_ops25 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops24, i32 0, i32 30, !dbg !5458
  %19 = bitcast %struct.dvb_tuner_ops* %tuner_ops25 to i8*, !dbg !5459
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @tda827xa_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !5459
  %20 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5460
  %cfg26 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %20, i32 0, i32 2, !dbg !5462
  %21 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg26, align 8, !dbg !5462
  %tobool27 = icmp ne %struct.tda827x_config* %21, null, !dbg !5460
  br i1 %tobool27, label %if.then28, label %if.end31, !dbg !5463

if.then28:                                        ; preds = %do.end23
  %22 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5464
  %cfg29 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %22, i32 0, i32 2, !dbg !5465
  %23 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg29, align 8, !dbg !5465
  %agcf30 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %23, i32 0, i32 4, !dbg !5466
  store void (%struct.dvb_frontend*)* @tda827xa_agcf, void (%struct.dvb_frontend*)** %agcf30, align 8, !dbg !5467
  br label %if.end31, !dbg !5464

if.end31:                                         ; preds = %if.then28, %do.end23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end17
  store i32 0, i32* %retval, align 4, !dbg !5468
  br label %return, !dbg !5468

return:                                           ; preds = %if.end32, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !5469
  ret i32 %24, !dbg !5469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tuner_transfer(%struct.dvb_frontend* %fe, %struct.i2c_msg* %msg, i32 %size) #0 !dbg !5470 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %size.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %priv = alloca %struct.tda827x_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !5476, metadata !DIExpression()), !dbg !5477
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5478, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5480, metadata !DIExpression()), !dbg !5481
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5484
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5485
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5485
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5484
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5483
  %3 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5486
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %3, i32 0, i32 1, !dbg !5488
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 26, !dbg !5489
  %4 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl, align 8, !dbg !5489
  %tobool = icmp ne i32 (%struct.dvb_frontend*, i32)* %4, null, !dbg !5486
  br i1 %tobool, label %if.then, label %if.end, !dbg !5490

if.then:                                          ; preds = %entry
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5491
  %ops1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1, !dbg !5492
  %i2c_gate_ctrl2 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops1, i32 0, i32 26, !dbg !5493
  %6 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl2, align 8, !dbg !5493
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5494
  %call = call i32 %6(%struct.dvb_frontend* %7, i32 1) #9, !dbg !5491
  br label %if.end, !dbg !5491

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5495
  %i2c_adap = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %8, i32 0, i32 1, !dbg !5496
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !5496
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !5497
  %11 = load i32, i32* %size.addr, align 4, !dbg !5498
  %call3 = call i32 @i2c_transfer(%struct.i2c_adapter* %9, %struct.i2c_msg* %10, i32 %11) #9, !dbg !5499
  store i32 %call3, i32* %rc, align 4, !dbg !5500
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5501
  %ops4 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1, !dbg !5503
  %i2c_gate_ctrl5 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops4, i32 0, i32 26, !dbg !5504
  %13 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl5, align 8, !dbg !5504
  %tobool6 = icmp ne i32 (%struct.dvb_frontend*, i32)* %13, null, !dbg !5501
  br i1 %tobool6, label %if.then7, label %if.end11, !dbg !5505

if.then7:                                         ; preds = %if.end
  %14 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5506
  %ops8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %14, i32 0, i32 1, !dbg !5507
  %i2c_gate_ctrl9 = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops8, i32 0, i32 26, !dbg !5508
  %15 = load i32 (%struct.dvb_frontend*, i32)*, i32 (%struct.dvb_frontend*, i32)** %i2c_gate_ctrl9, align 8, !dbg !5508
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5509
  %call10 = call i32 %15(%struct.dvb_frontend* %16, i32 0) #9, !dbg !5506
  br label %if.end11, !dbg !5506

if.end11:                                         ; preds = %if.then7, %if.end
  %17 = load i32, i32* %rc, align 4, !dbg !5510
  %cmp = icmp sge i32 %17, 0, !dbg !5512
  br i1 %cmp, label %land.lhs.true, label %if.end14, !dbg !5513

land.lhs.true:                                    ; preds = %if.end11
  %18 = load i32, i32* %rc, align 4, !dbg !5514
  %19 = load i32, i32* %size.addr, align 4, !dbg !5515
  %cmp12 = icmp ne i32 %18, %19, !dbg !5516
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5517

if.then13:                                        ; preds = %land.lhs.true
  store i32 -5, i32* %retval, align 4, !dbg !5518
  br label %return, !dbg !5518

if.end14:                                         ; preds = %land.lhs.true, %if.end11
  %20 = load i32, i32* %rc, align 4, !dbg !5519
  store i32 %20, i32* %retval, align 4, !dbg !5520
  br label %return, !dbg !5520

return:                                           ; preds = %if.end14, %if.then13
  %21 = load i32, i32* %retval, align 4, !dbg !5521
  ret i32 %21, !dbg !5521
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827x_init(%struct.dvb_frontend* %fe) #0 !dbg !5522 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5523, metadata !DIExpression()), !dbg !5524
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5525, metadata !DIExpression()), !dbg !5526
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5527
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5528
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5528
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5527
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5526
  br label %do.body, !dbg !5529

do.body:                                          ; preds = %entry
  %3 = load i32, i32* @debug, align 4, !dbg !5530
  %tobool = icmp ne i32 %3, 0, !dbg !5530
  br i1 %tobool, label %if.then, label %if.end, !dbg !5533

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.tda827x_init, i64 0, i64 0)) #8, !dbg !5530
  br label %if.end, !dbg !5530

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5533

do.end:                                           ; preds = %if.end
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5534
  %cfg = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 2, !dbg !5536
  %5 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg, align 8, !dbg !5536
  %tobool1 = icmp ne %struct.tda827x_config* %5, null, !dbg !5534
  br i1 %tobool1, label %land.lhs.true, label %if.end8, !dbg !5537

land.lhs.true:                                    ; preds = %do.end
  %6 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5538
  %cfg2 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %6, i32 0, i32 2, !dbg !5539
  %7 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg2, align 8, !dbg !5539
  %init = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %7, i32 0, i32 0, !dbg !5540
  %8 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %init, align 8, !dbg !5540
  %tobool3 = icmp ne i32 (%struct.dvb_frontend*)* %8, null, !dbg !5538
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !5541

if.then4:                                         ; preds = %land.lhs.true
  %9 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5542
  %cfg5 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %9, i32 0, i32 2, !dbg !5543
  %10 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg5, align 8, !dbg !5543
  %init6 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %10, i32 0, i32 0, !dbg !5544
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %init6, align 8, !dbg !5544
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5545
  %call7 = call i32 %11(%struct.dvb_frontend* %12) #9, !dbg !5542
  br label %if.end8, !dbg !5542

if.end8:                                          ; preds = %if.then4, %land.lhs.true, %do.end
  ret i32 0, !dbg !5546
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xo_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4319 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5549, metadata !DIExpression()), !dbg !5550
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5551
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5552
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5552
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5551
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5550
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5553, metadata !DIExpression()), !dbg !5554
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5555
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5556
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 0, !dbg !5557
  %4 = load i32, i32* %i2c_addr, align 8, !dbg !5557
  %conv = trunc i32 %4 to i16, !dbg !5556
  store i16 %conv, i16* %addr, align 8, !dbg !5555
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5555
  store i16 0, i16* %flags, align 2, !dbg !5555
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5555
  store i16 2, i16* %len, align 4, !dbg !5555
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5555
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda827xo_sleep.buf, i64 0, i64 0), i8** %buf, align 8, !dbg !5555
  br label %do.body, !dbg !5558

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5559
  %tobool = icmp ne i32 %5, 0, !dbg !5559
  br i1 %tobool, label %if.then, label %if.end, !dbg !5562

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tda827xo_sleep, i64 0, i64 0)) #8, !dbg !5559
  br label %if.end, !dbg !5559

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5562

do.end:                                           ; preds = %if.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5563
  %call1 = call i32 @tuner_transfer(%struct.dvb_frontend* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5564
  %7 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5565
  %cfg = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %7, i32 0, i32 2, !dbg !5567
  %8 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg, align 8, !dbg !5567
  %tobool2 = icmp ne %struct.tda827x_config* %8, null, !dbg !5565
  br i1 %tobool2, label %land.lhs.true, label %if.end9, !dbg !5568

land.lhs.true:                                    ; preds = %do.end
  %9 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5569
  %cfg3 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %9, i32 0, i32 2, !dbg !5570
  %10 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg3, align 8, !dbg !5570
  %sleep = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %10, i32 0, i32 1, !dbg !5571
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %sleep, align 8, !dbg !5571
  %tobool4 = icmp ne i32 (%struct.dvb_frontend*)* %11, null, !dbg !5569
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !5572

if.then5:                                         ; preds = %land.lhs.true
  %12 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5573
  %cfg6 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %12, i32 0, i32 2, !dbg !5574
  %13 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg6, align 8, !dbg !5574
  %sleep7 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %13, i32 0, i32 1, !dbg !5575
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %sleep7, align 8, !dbg !5575
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5576
  %call8 = call i32 %14(%struct.dvb_frontend* %15) #9, !dbg !5573
  br label %if.end9, !dbg !5573

if.end9:                                          ; preds = %if.then5, %land.lhs.true, %do.end
  ret i32 0, !dbg !5577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda827xo_agcf(%struct.dvb_frontend* %fe) #0 !dbg !5578 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %data = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5579, metadata !DIExpression()), !dbg !5580
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5581, metadata !DIExpression()), !dbg !5582
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5583
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5584
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5584
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5583
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5582
  call void @llvm.dbg.declare(metadata [2 x i8]* %data, metadata !5585, metadata !DIExpression()), !dbg !5586
  %3 = bitcast [2 x i8]* %data to i8*, !dbg !5586
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda827xo_agcf.data, i32 0, i32 0), i64 2, i1 false), !dbg !5586
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5587, metadata !DIExpression()), !dbg !5588
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5589
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5590
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 0, !dbg !5591
  %5 = load i32, i32* %i2c_addr, align 8, !dbg !5591
  %conv = trunc i32 %5 to i16, !dbg !5590
  store i16 %conv, i16* %addr, align 8, !dbg !5589
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5589
  store i16 0, i16* %flags, align 2, !dbg !5589
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5589
  store i16 2, i16* %len, align 4, !dbg !5589
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5589
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %data, i64 0, i64 0, !dbg !5592
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5589
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5593
  %call = call i32 @tuner_transfer(%struct.dvb_frontend* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5594
  ret void, !dbg !5595
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda827xa_agcf(%struct.dvb_frontend* %fe) #0 !dbg !5596 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %data = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5597, metadata !DIExpression()), !dbg !5598
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5599, metadata !DIExpression()), !dbg !5600
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5601
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5602
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5602
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5601
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5600
  call void @llvm.dbg.declare(metadata [2 x i8]* %data, metadata !5603, metadata !DIExpression()), !dbg !5604
  %3 = bitcast [2 x i8]* %data to i8*, !dbg !5604
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda827xa_agcf.data, i32 0, i32 0), i64 2, i1 false), !dbg !5604
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5605, metadata !DIExpression()), !dbg !5606
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5607
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5608
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 0, !dbg !5609
  %5 = load i32, i32* %i2c_addr, align 8, !dbg !5609
  %conv = trunc i32 %5 to i16, !dbg !5608
  store i16 %conv, i16* %addr, align 8, !dbg !5607
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5607
  store i16 0, i16* %flags, align 2, !dbg !5607
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5607
  store i16 2, i16* %len, align 4, !dbg !5607
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5607
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %data, i64 0, i64 0, !dbg !5610
  store i8* %arraydecay, i8** %buf, align 8, !dbg !5607
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5611
  %call = call i32 @tuner_transfer(%struct.dvb_frontend* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5612
  ret void, !dbg !5613
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xa_sleep(%struct.dvb_frontend* %fe) #0 !dbg !4325 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5616, metadata !DIExpression()), !dbg !5617
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5618
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5619
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5619
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5618
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5617
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5620, metadata !DIExpression()), !dbg !5621
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5622
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5623
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 0, !dbg !5624
  %4 = load i32, i32* %i2c_addr, align 8, !dbg !5624
  %conv = trunc i32 %4 to i16, !dbg !5623
  store i16 %conv, i16* %addr, align 8, !dbg !5622
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5622
  store i16 0, i16* %flags, align 2, !dbg !5622
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5622
  store i16 2, i16* %len, align 4, !dbg !5622
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5622
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @tda827xa_sleep.buf, i64 0, i64 0), i8** %buf, align 8, !dbg !5622
  br label %do.body, !dbg !5625

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5626
  %tobool = icmp ne i32 %5, 0, !dbg !5626
  br i1 %tobool, label %if.then, label %if.end, !dbg !5629

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.tda827xa_sleep, i64 0, i64 0)) #8, !dbg !5626
  br label %if.end, !dbg !5626

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5629

do.end:                                           ; preds = %if.end
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5630
  %call1 = call i32 @tuner_transfer(%struct.dvb_frontend* %6, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5631
  %7 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5632
  %cfg = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %7, i32 0, i32 2, !dbg !5634
  %8 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg, align 8, !dbg !5634
  %tobool2 = icmp ne %struct.tda827x_config* %8, null, !dbg !5632
  br i1 %tobool2, label %land.lhs.true, label %if.end9, !dbg !5635

land.lhs.true:                                    ; preds = %do.end
  %9 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5636
  %cfg3 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %9, i32 0, i32 2, !dbg !5637
  %10 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg3, align 8, !dbg !5637
  %sleep = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %10, i32 0, i32 1, !dbg !5638
  %11 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %sleep, align 8, !dbg !5638
  %tobool4 = icmp ne i32 (%struct.dvb_frontend*)* %11, null, !dbg !5636
  br i1 %tobool4, label %if.then5, label %if.end9, !dbg !5639

if.then5:                                         ; preds = %land.lhs.true
  %12 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5640
  %cfg6 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %12, i32 0, i32 2, !dbg !5641
  %13 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg6, align 8, !dbg !5641
  %sleep7 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %13, i32 0, i32 1, !dbg !5642
  %14 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %sleep7, align 8, !dbg !5642
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5643
  %call8 = call i32 %14(%struct.dvb_frontend* %15) #9, !dbg !5640
  br label %if.end9, !dbg !5640

if.end9:                                          ; preds = %if.then5, %land.lhs.true, %do.end
  ret i32 0, !dbg !5644
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xa_set_params(%struct.dvb_frontend* %fe) #0 !dbg !5645 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %c = alloca %struct.dtv_frontend_properties*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %frequency_map = alloca %struct.tda827xa_data*, align 8
  %buf = alloca [11 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 8
  %i = alloca i32, align 4
  %tuner_freq = alloca i32, align 4
  %if_freq = alloca i32, align 4
  %rc = alloca i32, align 4
  %N = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  call void @llvm.dbg.declare(metadata %struct.dtv_frontend_properties** %c, metadata !5648, metadata !DIExpression()), !dbg !5649
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5650
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 8, !dbg !5651
  store %struct.dtv_frontend_properties* %dtv_property_cache, %struct.dtv_frontend_properties** %c, align 8, !dbg !5649
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5652, metadata !DIExpression()), !dbg !5653
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5654
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %1, i32 0, i32 4, !dbg !5655
  %2 = load i8*, i8** %tuner_priv, align 8, !dbg !5655
  %3 = bitcast i8* %2 to %struct.tda827x_priv*, !dbg !5654
  store %struct.tda827x_priv* %3, %struct.tda827x_priv** %priv, align 8, !dbg !5653
  call void @llvm.dbg.declare(metadata %struct.tda827xa_data** %frequency_map, metadata !5656, metadata !DIExpression()), !dbg !5658
  store %struct.tda827xa_data* getelementptr inbounds ([27 x %struct.tda827xa_data], [27 x %struct.tda827xa_data]* @tda827xa_dvbt, i64 0, i64 0), %struct.tda827xa_data** %frequency_map, align 8, !dbg !5658
  call void @llvm.dbg.declare(metadata [11 x i8]* %buf, metadata !5659, metadata !DIExpression()), !dbg !5663
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5664, metadata !DIExpression()), !dbg !5665
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5666
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5667
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 0, !dbg !5668
  %5 = load i32, i32* %i2c_addr, align 8, !dbg !5668
  %conv = trunc i32 %5 to i16, !dbg !5667
  store i16 %conv, i16* %addr, align 8, !dbg !5666
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5666
  store i16 0, i16* %flags, align 2, !dbg !5666
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5666
  store i16 11, i16* %len, align 4, !dbg !5666
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5666
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5669
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !5666
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5670, metadata !DIExpression()), !dbg !5671
  call void @llvm.dbg.declare(metadata i32* %tuner_freq, metadata !5672, metadata !DIExpression()), !dbg !5673
  call void @llvm.dbg.declare(metadata i32* %if_freq, metadata !5674, metadata !DIExpression()), !dbg !5675
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5676, metadata !DIExpression()), !dbg !5677
  call void @llvm.dbg.declare(metadata i32* %N, metadata !5678, metadata !DIExpression()), !dbg !5679
  br label %do.body, !dbg !5680

do.body:                                          ; preds = %entry
  %6 = load i32, i32* @debug, align 4, !dbg !5681
  %tobool = icmp ne i32 %6, 0, !dbg !5681
  br i1 %tobool, label %if.then, label %if.end, !dbg !5684

if.then:                                          ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda827xa_set_params, i64 0, i64 0)) #8, !dbg !5681
  br label %if.end, !dbg !5681

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end, !dbg !5684

do.end:                                           ; preds = %if.end
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5685
  call void @tda827xa_lna_gain(%struct.dvb_frontend* %7, i32 1, %struct.analog_parameters* null) #9, !dbg !5686
  call void @msleep(i32 20) #9, !dbg !5687
  %8 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5688
  %bandwidth_hz = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %8, i32 0, i32 7, !dbg !5690
  %9 = load i32, i32* %bandwidth_hz, align 4, !dbg !5690
  %cmp = icmp eq i32 %9, 0, !dbg !5691
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5692

if.then3:                                         ; preds = %do.end
  store i32 5000000, i32* %if_freq, align 4, !dbg !5693
  br label %if.end16, !dbg !5695

if.else:                                          ; preds = %do.end
  %10 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5696
  %bandwidth_hz4 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %10, i32 0, i32 7, !dbg !5698
  %11 = load i32, i32* %bandwidth_hz4, align 4, !dbg !5698
  %cmp5 = icmp ule i32 %11, 6000000, !dbg !5699
  br i1 %cmp5, label %if.then7, label %if.else8, !dbg !5700

if.then7:                                         ; preds = %if.else
  store i32 4000000, i32* %if_freq, align 4, !dbg !5701
  br label %if.end15, !dbg !5703

if.else8:                                         ; preds = %if.else
  %12 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5704
  %bandwidth_hz9 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %12, i32 0, i32 7, !dbg !5706
  %13 = load i32, i32* %bandwidth_hz9, align 4, !dbg !5706
  %cmp10 = icmp ule i32 %13, 7000000, !dbg !5707
  br i1 %cmp10, label %if.then12, label %if.else13, !dbg !5708

if.then12:                                        ; preds = %if.else8
  store i32 4500000, i32* %if_freq, align 4, !dbg !5709
  br label %if.end14, !dbg !5711

if.else13:                                        ; preds = %if.else8
  store i32 5000000, i32* %if_freq, align 4, !dbg !5712
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then7
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then3
  %14 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5714
  %frequency = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %14, i32 0, i32 0, !dbg !5715
  %15 = load i32, i32* %frequency, align 4, !dbg !5715
  store i32 %15, i32* %tuner_freq, align 4, !dbg !5716
  %16 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5717
  %delivery_system = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %16, i32 0, i32 15, !dbg !5718
  %17 = load i32, i32* %delivery_system, align 4, !dbg !5718
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 18, label %sw.bb
  ], !dbg !5719

sw.bb:                                            ; preds = %if.end16, %if.end16
  br label %do.body17, !dbg !5720

do.body17:                                        ; preds = %sw.bb
  %18 = load i32, i32* @debug, align 4, !dbg !5722
  %tobool18 = icmp ne i32 %18, 0, !dbg !5722
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !5725

if.then19:                                        ; preds = %do.body17
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda827xa_set_params, i64 0, i64 0)) #8, !dbg !5722
  br label %if.end21, !dbg !5722

if.end21:                                         ; preds = %if.then19, %do.body17
  br label %do.end22, !dbg !5725

do.end22:                                         ; preds = %if.end21
  store %struct.tda827xa_data* getelementptr inbounds ([27 x %struct.tda827xa_data], [27 x %struct.tda827xa_data]* @tda827xa_dvbc, i64 0, i64 0), %struct.tda827xa_data** %frequency_map, align 8, !dbg !5726
  br label %sw.epilog, !dbg !5727

sw.default:                                       ; preds = %if.end16
  br label %sw.epilog, !dbg !5728

sw.epilog:                                        ; preds = %sw.default, %do.end22
  store i32 0, i32* %i, align 4, !dbg !5729
  br label %while.cond, !dbg !5730

while.cond:                                       ; preds = %if.end31, %sw.epilog
  %19 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5731
  %20 = load i32, i32* %i, align 4, !dbg !5732
  %idxprom = sext i32 %20 to i64, !dbg !5731
  %arrayidx = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %19, i64 %idxprom, !dbg !5731
  %lomax = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx, i32 0, i32 0, !dbg !5733
  %21 = load i32, i32* %lomax, align 4, !dbg !5733
  %22 = load i32, i32* %tuner_freq, align 4, !dbg !5734
  %cmp23 = icmp ult i32 %21, %22, !dbg !5735
  br i1 %cmp23, label %while.body, label %while.end, !dbg !5730

while.body:                                       ; preds = %while.cond
  %23 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5736
  %24 = load i32, i32* %i, align 4, !dbg !5739
  %add = add i32 %24, 1, !dbg !5740
  %idxprom25 = sext i32 %add to i64, !dbg !5736
  %arrayidx26 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %23, i64 %idxprom25, !dbg !5736
  %lomax27 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx26, i32 0, i32 0, !dbg !5741
  %25 = load i32, i32* %lomax27, align 4, !dbg !5741
  %cmp28 = icmp eq i32 %25, 0, !dbg !5742
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !5743

if.then30:                                        ; preds = %while.body
  br label %while.end, !dbg !5744

if.end31:                                         ; preds = %while.body
  %26 = load i32, i32* %i, align 4, !dbg !5745
  %inc = add i32 %26, 1, !dbg !5745
  store i32 %inc, i32* %i, align 4, !dbg !5745
  br label %while.cond, !dbg !5730, !llvm.loop !5746

while.end:                                        ; preds = %if.then30, %while.cond
  %27 = load i32, i32* %if_freq, align 4, !dbg !5748
  %28 = load i32, i32* %tuner_freq, align 4, !dbg !5749
  %add32 = add i32 %28, %27, !dbg !5749
  store i32 %add32, i32* %tuner_freq, align 4, !dbg !5749
  %29 = load i32, i32* %tuner_freq, align 4, !dbg !5750
  %add33 = add i32 %29, 31250, !dbg !5751
  %div = sdiv i32 %add33, 62500, !dbg !5752
  %30 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5753
  %31 = load i32, i32* %i, align 4, !dbg !5754
  %idxprom34 = sext i32 %31 to i64, !dbg !5753
  %arrayidx35 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %30, i64 %idxprom34, !dbg !5753
  %spd = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx35, i32 0, i32 2, !dbg !5755
  %32 = load i8, i8* %spd, align 1, !dbg !5755
  %conv36 = zext i8 %32 to i32, !dbg !5753
  %shl = shl i32 %div, %conv36, !dbg !5756
  store i32 %shl, i32* %N, align 4, !dbg !5757
  %arrayidx37 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5758
  store i8 0, i8* %arrayidx37, align 1, !dbg !5759
  %33 = load i32, i32* %N, align 4, !dbg !5760
  %shr = lshr i32 %33, 8, !dbg !5761
  %conv38 = trunc i32 %shr to i8, !dbg !5760
  %arrayidx39 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5762
  store i8 %conv38, i8* %arrayidx39, align 1, !dbg !5763
  %34 = load i32, i32* %N, align 4, !dbg !5764
  %and = and i32 %34, 255, !dbg !5765
  %conv40 = trunc i32 %and to i8, !dbg !5764
  %arrayidx41 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 2, !dbg !5766
  store i8 %conv40, i8* %arrayidx41, align 1, !dbg !5767
  %arrayidx42 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 3, !dbg !5768
  store i8 0, i8* %arrayidx42, align 1, !dbg !5769
  %arrayidx43 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 4, !dbg !5770
  store i8 22, i8* %arrayidx43, align 1, !dbg !5771
  %35 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5772
  %36 = load i32, i32* %i, align 4, !dbg !5773
  %idxprom44 = sext i32 %36 to i64, !dbg !5772
  %arrayidx45 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %35, i64 %idxprom44, !dbg !5772
  %spd46 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx45, i32 0, i32 2, !dbg !5774
  %37 = load i8, i8* %spd46, align 1, !dbg !5774
  %conv47 = zext i8 %37 to i32, !dbg !5772
  %shl48 = shl i32 %conv47, 5, !dbg !5775
  %38 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5776
  %39 = load i32, i32* %i, align 4, !dbg !5777
  %idxprom49 = sext i32 %39 to i64, !dbg !5776
  %arrayidx50 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %38, i64 %idxprom49, !dbg !5776
  %svco = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx50, i32 0, i32 1, !dbg !5778
  %40 = load i8, i8* %svco, align 4, !dbg !5778
  %conv51 = zext i8 %40 to i32, !dbg !5776
  %shl52 = shl i32 %conv51, 3, !dbg !5779
  %add53 = add i32 %shl48, %shl52, !dbg !5780
  %41 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5781
  %42 = load i32, i32* %i, align 4, !dbg !5782
  %idxprom54 = sext i32 %42 to i64, !dbg !5781
  %arrayidx55 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %41, i64 %idxprom54, !dbg !5781
  %sbs = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx55, i32 0, i32 4, !dbg !5783
  %43 = load i8, i8* %sbs, align 1, !dbg !5783
  %conv56 = zext i8 %43 to i32, !dbg !5781
  %add57 = add i32 %add53, %conv56, !dbg !5784
  %conv58 = trunc i32 %add57 to i8, !dbg !5785
  %arrayidx59 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 5, !dbg !5786
  store i8 %conv58, i8* %arrayidx59, align 1, !dbg !5787
  %44 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5788
  %45 = load i32, i32* %i, align 4, !dbg !5789
  %idxprom60 = sext i32 %45 to i64, !dbg !5788
  %arrayidx61 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %44, i64 %idxprom60, !dbg !5788
  %gc3 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx61, i32 0, i32 5, !dbg !5790
  %46 = load i8, i8* %gc3, align 4, !dbg !5790
  %conv62 = zext i8 %46 to i32, !dbg !5788
  %shl63 = shl i32 %conv62, 4, !dbg !5791
  %add64 = add i32 75, %shl63, !dbg !5792
  %conv65 = trunc i32 %add64 to i8, !dbg !5793
  %arrayidx66 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 6, !dbg !5794
  store i8 %conv65, i8* %arrayidx66, align 1, !dbg !5795
  %arrayidx67 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 7, !dbg !5796
  store i8 28, i8* %arrayidx67, align 1, !dbg !5797
  %arrayidx68 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 8, !dbg !5798
  store i8 6, i8* %arrayidx68, align 1, !dbg !5799
  %arrayidx69 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 9, !dbg !5800
  store i8 36, i8* %arrayidx69, align 1, !dbg !5801
  %arrayidx70 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 10, !dbg !5802
  store i8 0, i8* %arrayidx70, align 1, !dbg !5803
  %len71 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5804
  store i16 11, i16* %len71, align 4, !dbg !5805
  %47 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5806
  %call72 = call i32 @tuner_transfer(%struct.dvb_frontend* %47, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5807
  store i32 %call72, i32* %rc, align 4, !dbg !5808
  %48 = load i32, i32* %rc, align 4, !dbg !5809
  %cmp73 = icmp slt i32 %48, 0, !dbg !5811
  br i1 %cmp73, label %if.then75, label %if.end76, !dbg !5812

if.then75:                                        ; preds = %while.end
  br label %err, !dbg !5813

if.end76:                                         ; preds = %while.end
  %arrayidx77 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5814
  store i8 -112, i8* %arrayidx77, align 1, !dbg !5815
  %arrayidx78 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5816
  store i8 -1, i8* %arrayidx78, align 1, !dbg !5817
  %arrayidx79 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 2, !dbg !5818
  store i8 96, i8* %arrayidx79, align 1, !dbg !5819
  %arrayidx80 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 3, !dbg !5820
  store i8 0, i8* %arrayidx80, align 1, !dbg !5821
  %arrayidx81 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 4, !dbg !5822
  store i8 89, i8* %arrayidx81, align 1, !dbg !5823
  %len82 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5824
  store i16 5, i16* %len82, align 4, !dbg !5825
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5826
  %call83 = call i32 @tuner_transfer(%struct.dvb_frontend* %49, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5827
  store i32 %call83, i32* %rc, align 4, !dbg !5828
  %50 = load i32, i32* %rc, align 4, !dbg !5829
  %cmp84 = icmp slt i32 %50, 0, !dbg !5831
  br i1 %cmp84, label %if.then86, label %if.end87, !dbg !5832

if.then86:                                        ; preds = %if.end76
  br label %err, !dbg !5833

if.end87:                                         ; preds = %if.end76
  %arrayidx88 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5834
  store i8 -96, i8* %arrayidx88, align 1, !dbg !5835
  %arrayidx89 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5836
  store i8 64, i8* %arrayidx89, align 1, !dbg !5837
  %len90 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5838
  store i16 2, i16* %len90, align 4, !dbg !5839
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5840
  %call91 = call i32 @tuner_transfer(%struct.dvb_frontend* %51, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5841
  store i32 %call91, i32* %rc, align 4, !dbg !5842
  %52 = load i32, i32* %rc, align 4, !dbg !5843
  %cmp92 = icmp slt i32 %52, 0, !dbg !5845
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !5846

if.then94:                                        ; preds = %if.end87
  br label %err, !dbg !5847

if.end95:                                         ; preds = %if.end87
  call void @msleep(i32 11) #9, !dbg !5848
  %flags96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5849
  store i16 1, i16* %flags96, align 2, !dbg !5850
  %53 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5851
  %call97 = call i32 @tuner_transfer(%struct.dvb_frontend* %53, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5852
  store i32 %call97, i32* %rc, align 4, !dbg !5853
  %54 = load i32, i32* %rc, align 4, !dbg !5854
  %cmp98 = icmp slt i32 %54, 0, !dbg !5856
  br i1 %cmp98, label %if.then100, label %if.end101, !dbg !5857

if.then100:                                       ; preds = %if.end95
  br label %err, !dbg !5858

if.end101:                                        ; preds = %if.end95
  %flags102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5859
  store i16 0, i16* %flags102, align 2, !dbg !5860
  %arrayidx103 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5861
  %55 = load i8, i8* %arrayidx103, align 1, !dbg !5862
  %conv104 = zext i8 %55 to i32, !dbg !5862
  %shr105 = ashr i32 %conv104, 4, !dbg !5862
  %conv106 = trunc i32 %shr105 to i8, !dbg !5862
  store i8 %conv106, i8* %arrayidx103, align 1, !dbg !5862
  br label %do.body107, !dbg !5863

do.body107:                                       ; preds = %if.end101
  %56 = load i32, i32* @debug, align 4, !dbg !5864
  %tobool108 = icmp ne i32 %56, 0, !dbg !5864
  br i1 %tobool108, label %if.then109, label %if.end113, !dbg !5867

if.then109:                                       ; preds = %do.body107
  %arrayidx110 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5864
  %57 = load i8, i8* %arrayidx110, align 1, !dbg !5864
  %conv111 = zext i8 %57 to i32, !dbg !5864
  %call112 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %conv111) #8, !dbg !5864
  br label %if.end113, !dbg !5864

if.end113:                                        ; preds = %if.then109, %do.body107
  br label %do.end114, !dbg !5867

do.end114:                                        ; preds = %if.end113
  %arrayidx115 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5868
  %58 = load i8, i8* %arrayidx115, align 1, !dbg !5868
  %conv116 = zext i8 %58 to i32, !dbg !5870
  %cmp117 = icmp slt i32 %conv116, 2, !dbg !5871
  br i1 %cmp117, label %if.then119, label %if.end127, !dbg !5872

if.then119:                                       ; preds = %do.end114
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5873
  call void @tda827xa_lna_gain(%struct.dvb_frontend* %59, i32 0, %struct.analog_parameters* null) #9, !dbg !5875
  %arrayidx120 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5876
  store i8 96, i8* %arrayidx120, align 1, !dbg !5877
  %arrayidx121 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5878
  store i8 12, i8* %arrayidx121, align 1, !dbg !5879
  %60 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5880
  %call122 = call i32 @tuner_transfer(%struct.dvb_frontend* %60, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5881
  store i32 %call122, i32* %rc, align 4, !dbg !5882
  %61 = load i32, i32* %rc, align 4, !dbg !5883
  %cmp123 = icmp slt i32 %61, 0, !dbg !5885
  br i1 %cmp123, label %if.then125, label %if.end126, !dbg !5886

if.then125:                                       ; preds = %if.then119
  br label %err, !dbg !5887

if.end126:                                        ; preds = %if.then119
  br label %if.end127, !dbg !5888

if.end127:                                        ; preds = %if.end126, %do.end114
  %arrayidx128 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5889
  store i8 -64, i8* %arrayidx128, align 1, !dbg !5890
  %arrayidx129 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5891
  store i8 -103, i8* %arrayidx129, align 1, !dbg !5892
  %62 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5893
  %call130 = call i32 @tuner_transfer(%struct.dvb_frontend* %62, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5894
  store i32 %call130, i32* %rc, align 4, !dbg !5895
  %63 = load i32, i32* %rc, align 4, !dbg !5896
  %cmp131 = icmp slt i32 %63, 0, !dbg !5898
  br i1 %cmp131, label %if.then133, label %if.end134, !dbg !5899

if.then133:                                       ; preds = %if.end127
  br label %err, !dbg !5900

if.end134:                                        ; preds = %if.end127
  %arrayidx135 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5901
  store i8 96, i8* %arrayidx135, align 1, !dbg !5902
  %arrayidx136 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5903
  store i8 60, i8* %arrayidx136, align 1, !dbg !5904
  %64 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5905
  %call137 = call i32 @tuner_transfer(%struct.dvb_frontend* %64, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5906
  store i32 %call137, i32* %rc, align 4, !dbg !5907
  %65 = load i32, i32* %rc, align 4, !dbg !5908
  %cmp138 = icmp slt i32 %65, 0, !dbg !5910
  br i1 %cmp138, label %if.then140, label %if.end141, !dbg !5911

if.then140:                                       ; preds = %if.end134
  br label %err, !dbg !5912

if.end141:                                        ; preds = %if.end134
  %arrayidx142 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5913
  store i8 48, i8* %arrayidx142, align 1, !dbg !5914
  %66 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5915
  %67 = load i32, i32* %i, align 4, !dbg !5916
  %idxprom143 = sext i32 %67 to i64, !dbg !5915
  %arrayidx144 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %66, i64 %idxprom143, !dbg !5915
  %scr = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx144, i32 0, i32 3, !dbg !5917
  %68 = load i8, i8* %scr, align 2, !dbg !5917
  %conv145 = zext i8 %68 to i32, !dbg !5915
  %add146 = add i32 16, %conv145, !dbg !5918
  %conv147 = trunc i32 %add146 to i8, !dbg !5919
  %arrayidx148 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5920
  store i8 %conv147, i8* %arrayidx148, align 1, !dbg !5921
  %69 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5922
  %call149 = call i32 @tuner_transfer(%struct.dvb_frontend* %69, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5923
  store i32 %call149, i32* %rc, align 4, !dbg !5924
  %70 = load i32, i32* %rc, align 4, !dbg !5925
  %cmp150 = icmp slt i32 %70, 0, !dbg !5927
  br i1 %cmp150, label %if.then152, label %if.end153, !dbg !5928

if.then152:                                       ; preds = %if.end141
  br label %err, !dbg !5929

if.end153:                                        ; preds = %if.end141
  call void @msleep(i32 163) #9, !dbg !5930
  %arrayidx154 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5931
  store i8 -64, i8* %arrayidx154, align 1, !dbg !5932
  %arrayidx155 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5933
  store i8 57, i8* %arrayidx155, align 1, !dbg !5934
  %71 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5935
  %call156 = call i32 @tuner_transfer(%struct.dvb_frontend* %71, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5936
  store i32 %call156, i32* %rc, align 4, !dbg !5937
  %72 = load i32, i32* %rc, align 4, !dbg !5938
  %cmp157 = icmp slt i32 %72, 0, !dbg !5940
  br i1 %cmp157, label %if.then159, label %if.end160, !dbg !5941

if.then159:                                       ; preds = %if.end153
  br label %err, !dbg !5942

if.end160:                                        ; preds = %if.end153
  call void @msleep(i32 3) #9, !dbg !5943
  %arrayidx161 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 0, !dbg !5944
  store i8 80, i8* %arrayidx161, align 1, !dbg !5945
  %73 = load %struct.tda827xa_data*, %struct.tda827xa_data** %frequency_map, align 8, !dbg !5946
  %74 = load i32, i32* %i, align 4, !dbg !5947
  %idxprom162 = sext i32 %74 to i64, !dbg !5946
  %arrayidx163 = getelementptr %struct.tda827xa_data, %struct.tda827xa_data* %73, i64 %idxprom162, !dbg !5946
  %gc3164 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx163, i32 0, i32 5, !dbg !5948
  %75 = load i8, i8* %gc3164, align 4, !dbg !5948
  %conv165 = zext i8 %75 to i32, !dbg !5946
  %shl166 = shl i32 %conv165, 4, !dbg !5949
  %add167 = add i32 79, %shl166, !dbg !5950
  %conv168 = trunc i32 %add167 to i8, !dbg !5951
  %arrayidx169 = getelementptr [11 x i8], [11 x i8]* %buf, i64 0, i64 1, !dbg !5952
  store i8 %conv168, i8* %arrayidx169, align 1, !dbg !5953
  %76 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5954
  %call170 = call i32 @tuner_transfer(%struct.dvb_frontend* %76, %struct.i2c_msg* %msg, i32 1) #9, !dbg !5955
  store i32 %call170, i32* %rc, align 4, !dbg !5956
  %77 = load i32, i32* %rc, align 4, !dbg !5957
  %cmp171 = icmp slt i32 %77, 0, !dbg !5959
  br i1 %cmp171, label %if.then173, label %if.end174, !dbg !5960

if.then173:                                       ; preds = %if.end160
  br label %err, !dbg !5961

if.end174:                                        ; preds = %if.end160
  %78 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5962
  %frequency175 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %78, i32 0, i32 0, !dbg !5963
  %79 = load i32, i32* %frequency175, align 4, !dbg !5963
  %80 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5964
  %frequency176 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %80, i32 0, i32 5, !dbg !5965
  store i32 %79, i32* %frequency176, align 8, !dbg !5966
  %81 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %c, align 8, !dbg !5967
  %bandwidth_hz177 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %81, i32 0, i32 7, !dbg !5968
  %82 = load i32, i32* %bandwidth_hz177, align 4, !dbg !5968
  %83 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5969
  %bandwidth = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %83, i32 0, i32 6, !dbg !5970
  store i32 %82, i32* %bandwidth, align 4, !dbg !5971
  store i32 0, i32* %retval, align 4, !dbg !5972
  br label %return, !dbg !5972

err:                                              ; preds = %if.then173, %if.then159, %if.then152, %if.then140, %if.then133, %if.then125, %if.then100, %if.then94, %if.then86, %if.then75
  call void @llvm.dbg.label(metadata !5973), !dbg !5974
  %84 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !5975
  %i2c_addr178 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %84, i32 0, i32 0, !dbg !5976
  %85 = load i32, i32* %i2c_addr178, align 8, !dbg !5976
  %shl179 = shl i32 %85, 1, !dbg !5977
  %call180 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.tda827xa_set_params, i64 0, i64 0), i32 %shl179) #8, !dbg !5978
  %86 = load i32, i32* %rc, align 4, !dbg !5979
  store i32 %86, i32* %retval, align 4, !dbg !5980
  br label %return, !dbg !5980

return:                                           ; preds = %err, %if.end174
  %87 = load i32, i32* %retval, align 4, !dbg !5981
  ret i32 %87, !dbg !5981
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tda827xa_set_analog_params(%struct.dvb_frontend* %fe, %struct.analog_parameters* %params) #0 !dbg !5982 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %params.addr = alloca %struct.analog_parameters*, align 8
  %tuner_reg = alloca [11 x i8], align 1
  %N = alloca i32, align 4
  %i = alloca i32, align 4
  %priv = alloca %struct.tda827x_priv*, align 8
  %msg = alloca %struct.i2c_msg, align 8
  %freq = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5983, metadata !DIExpression()), !dbg !5984
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !5985, metadata !DIExpression()), !dbg !5986
  call void @llvm.dbg.declare(metadata [11 x i8]* %tuner_reg, metadata !5987, metadata !DIExpression()), !dbg !5989
  call void @llvm.dbg.declare(metadata i32* %N, metadata !5990, metadata !DIExpression()), !dbg !5991
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5992, metadata !DIExpression()), !dbg !5993
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !5994, metadata !DIExpression()), !dbg !5995
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5996
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5997
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5997
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !5996
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !5995
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5998, metadata !DIExpression()), !dbg !5999
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6000
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6001
  %i2c_addr = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 0, !dbg !6002
  %4 = load i32, i32* %i2c_addr, align 8, !dbg !6002
  %conv = trunc i32 %4 to i16, !dbg !6001
  store i16 %conv, i16* %addr, align 8, !dbg !6000
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6000
  store i16 0, i16* %flags, align 2, !dbg !6000
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6000
  store i16 11, i16* %len, align 4, !dbg !6000
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6000
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6003
  store i8* %arraydecay, i8** %buf, align 8, !dbg !6000
  call void @llvm.dbg.declare(metadata i32* %freq, metadata !6004, metadata !DIExpression()), !dbg !6005
  %5 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6006
  %frequency = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %5, i32 0, i32 0, !dbg !6007
  %6 = load i32, i32* %frequency, align 8, !dbg !6007
  store i32 %6, i32* %freq, align 4, !dbg !6005
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6008
  %8 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6009
  call void @tda827x_set_std(%struct.dvb_frontend* %7, %struct.analog_parameters* %8) #9, !dbg !6010
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6011
  %10 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6012
  call void @tda827xa_lna_gain(%struct.dvb_frontend* %9, i32 1, %struct.analog_parameters* %10) #9, !dbg !6013
  call void @msleep(i32 10) #9, !dbg !6014
  %11 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6015
  %mode = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %11, i32 0, i32 1, !dbg !6017
  %12 = load i32, i32* %mode, align 4, !dbg !6017
  %cmp = icmp eq i32 %12, 1, !dbg !6018
  br i1 %cmp, label %if.then, label %if.end, !dbg !6019

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %freq, align 4, !dbg !6020
  %div = udiv i32 %13, 1000, !dbg !6021
  store i32 %div, i32* %freq, align 4, !dbg !6022
  br label %if.end, !dbg !6023

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %freq, align 4, !dbg !6024
  %15 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6025
  %sgIF = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %15, i32 0, i32 3, !dbg !6026
  %16 = load i32, i32* %sgIF, align 8, !dbg !6026
  %add = add i32 %14, %16, !dbg !6027
  store i32 %add, i32* %N, align 4, !dbg !6028
  store i32 0, i32* %i, align 4, !dbg !6029
  br label %while.cond, !dbg !6030

while.cond:                                       ; preds = %if.end11, %if.end
  %17 = load i32, i32* %i, align 4, !dbg !6031
  %idxprom = sext i32 %17 to i64, !dbg !6032
  %arrayidx = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom, !dbg !6032
  %lomax = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx, i32 0, i32 0, !dbg !6033
  %18 = load i32, i32* %lomax, align 4, !dbg !6033
  %19 = load i32, i32* %N, align 4, !dbg !6034
  %mul = mul i32 %19, 62500, !dbg !6035
  %cmp2 = icmp ult i32 %18, %mul, !dbg !6036
  br i1 %cmp2, label %while.body, label %while.end, !dbg !6030

while.body:                                       ; preds = %while.cond
  %20 = load i32, i32* %i, align 4, !dbg !6037
  %add4 = add i32 %20, 1, !dbg !6040
  %idxprom5 = sext i32 %add4 to i64, !dbg !6041
  %arrayidx6 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom5, !dbg !6041
  %lomax7 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx6, i32 0, i32 0, !dbg !6042
  %21 = load i32, i32* %lomax7, align 4, !dbg !6042
  %cmp8 = icmp eq i32 %21, 0, !dbg !6043
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6044

if.then10:                                        ; preds = %while.body
  br label %while.end, !dbg !6045

if.end11:                                         ; preds = %while.body
  %22 = load i32, i32* %i, align 4, !dbg !6046
  %inc = add i32 %22, 1, !dbg !6046
  store i32 %inc, i32* %i, align 4, !dbg !6046
  br label %while.cond, !dbg !6030, !llvm.loop !6047

while.end:                                        ; preds = %if.then10, %while.cond
  %23 = load i32, i32* %N, align 4, !dbg !6049
  %24 = load i32, i32* %i, align 4, !dbg !6050
  %idxprom12 = sext i32 %24 to i64, !dbg !6051
  %arrayidx13 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom12, !dbg !6051
  %spd = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx13, i32 0, i32 2, !dbg !6052
  %25 = load i8, i8* %spd, align 1, !dbg !6052
  %conv14 = zext i8 %25 to i32, !dbg !6051
  %shl = shl i32 %23, %conv14, !dbg !6053
  store i32 %shl, i32* %N, align 4, !dbg !6054
  %arrayidx15 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6055
  store i8 0, i8* %arrayidx15, align 1, !dbg !6056
  %26 = load i32, i32* %N, align 4, !dbg !6057
  %shr = lshr i32 %26, 8, !dbg !6058
  %conv16 = trunc i32 %shr to i8, !dbg !6059
  %arrayidx17 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6060
  store i8 %conv16, i8* %arrayidx17, align 1, !dbg !6061
  %27 = load i32, i32* %N, align 4, !dbg !6062
  %conv18 = trunc i32 %27 to i8, !dbg !6063
  %arrayidx19 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 2, !dbg !6064
  store i8 %conv18, i8* %arrayidx19, align 1, !dbg !6065
  %arrayidx20 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 3, !dbg !6066
  store i8 0, i8* %arrayidx20, align 1, !dbg !6067
  %arrayidx21 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 4, !dbg !6068
  store i8 22, i8* %arrayidx21, align 1, !dbg !6069
  %28 = load i32, i32* %i, align 4, !dbg !6070
  %idxprom22 = sext i32 %28 to i64, !dbg !6071
  %arrayidx23 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom22, !dbg !6071
  %spd24 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx23, i32 0, i32 2, !dbg !6072
  %29 = load i8, i8* %spd24, align 1, !dbg !6072
  %conv25 = zext i8 %29 to i32, !dbg !6071
  %shl26 = shl i32 %conv25, 5, !dbg !6073
  %30 = load i32, i32* %i, align 4, !dbg !6074
  %idxprom27 = sext i32 %30 to i64, !dbg !6075
  %arrayidx28 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom27, !dbg !6075
  %svco = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx28, i32 0, i32 1, !dbg !6076
  %31 = load i8, i8* %svco, align 4, !dbg !6076
  %conv29 = zext i8 %31 to i32, !dbg !6075
  %shl30 = shl i32 %conv29, 3, !dbg !6077
  %add31 = add i32 %shl26, %shl30, !dbg !6078
  %32 = load i32, i32* %i, align 4, !dbg !6079
  %idxprom32 = sext i32 %32 to i64, !dbg !6080
  %arrayidx33 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom32, !dbg !6080
  %sbs = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx33, i32 0, i32 4, !dbg !6081
  %33 = load i8, i8* %sbs, align 1, !dbg !6081
  %conv34 = zext i8 %33 to i32, !dbg !6080
  %add35 = add i32 %add31, %conv34, !dbg !6082
  %conv36 = trunc i32 %add35 to i8, !dbg !6083
  %arrayidx37 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 5, !dbg !6084
  store i8 %conv36, i8* %arrayidx37, align 1, !dbg !6085
  %34 = load i32, i32* %i, align 4, !dbg !6086
  %idxprom38 = sext i32 %34 to i64, !dbg !6087
  %arrayidx39 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom38, !dbg !6087
  %gc3 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx39, i32 0, i32 5, !dbg !6088
  %35 = load i8, i8* %gc3, align 4, !dbg !6088
  %conv40 = zext i8 %35 to i32, !dbg !6087
  %shl41 = shl i32 %conv40, 4, !dbg !6089
  %add42 = add i32 139, %shl41, !dbg !6090
  %conv43 = trunc i32 %add42 to i8, !dbg !6091
  %arrayidx44 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 6, !dbg !6092
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !6093
  %arrayidx45 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 7, !dbg !6094
  store i8 28, i8* %arrayidx45, align 1, !dbg !6095
  %arrayidx46 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 8, !dbg !6096
  store i8 4, i8* %arrayidx46, align 1, !dbg !6097
  %arrayidx47 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 9, !dbg !6098
  store i8 32, i8* %arrayidx47, align 1, !dbg !6099
  %arrayidx48 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 10, !dbg !6100
  store i8 0, i8* %arrayidx48, align 1, !dbg !6101
  %len49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6102
  store i16 11, i16* %len49, align 4, !dbg !6103
  %36 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6104
  %call = call i32 @tuner_transfer(%struct.dvb_frontend* %36, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6105
  %arrayidx50 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6106
  store i8 -112, i8* %arrayidx50, align 1, !dbg !6107
  %arrayidx51 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6108
  store i8 -1, i8* %arrayidx51, align 1, !dbg !6109
  %arrayidx52 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 2, !dbg !6110
  store i8 -32, i8* %arrayidx52, align 1, !dbg !6111
  %arrayidx53 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 3, !dbg !6112
  store i8 0, i8* %arrayidx53, align 1, !dbg !6113
  %37 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6114
  %lpsel = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %37, i32 0, i32 4, !dbg !6115
  %38 = load i8, i8* %lpsel, align 4, !dbg !6115
  %conv54 = zext i8 %38 to i32, !dbg !6114
  %shl55 = shl i32 %conv54, 1, !dbg !6116
  %add56 = add i32 153, %shl55, !dbg !6117
  %conv57 = trunc i32 %add56 to i8, !dbg !6118
  %arrayidx58 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 4, !dbg !6119
  store i8 %conv57, i8* %arrayidx58, align 1, !dbg !6120
  %len59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6121
  store i16 5, i16* %len59, align 4, !dbg !6122
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6123
  %call60 = call i32 @tuner_transfer(%struct.dvb_frontend* %39, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6124
  %arrayidx61 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6125
  store i8 -96, i8* %arrayidx61, align 1, !dbg !6126
  %arrayidx62 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6127
  store i8 -64, i8* %arrayidx62, align 1, !dbg !6128
  %len63 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6129
  store i16 2, i16* %len63, align 4, !dbg !6130
  %40 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6131
  %call64 = call i32 @tuner_transfer(%struct.dvb_frontend* %40, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6132
  %arrayidx65 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6133
  store i8 48, i8* %arrayidx65, align 1, !dbg !6134
  %41 = load i32, i32* %i, align 4, !dbg !6135
  %idxprom66 = sext i32 %41 to i64, !dbg !6136
  %arrayidx67 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom66, !dbg !6136
  %scr = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx67, i32 0, i32 3, !dbg !6137
  %42 = load i8, i8* %scr, align 2, !dbg !6137
  %conv68 = zext i8 %42 to i32, !dbg !6136
  %add69 = add i32 16, %conv68, !dbg !6138
  %conv70 = trunc i32 %add69 to i8, !dbg !6139
  %arrayidx71 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6140
  store i8 %conv70, i8* %arrayidx71, align 1, !dbg !6141
  %43 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6142
  %call72 = call i32 @tuner_transfer(%struct.dvb_frontend* %43, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6143
  %flags73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6144
  store i16 1, i16* %flags73, align 2, !dbg !6145
  %44 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6146
  %call74 = call i32 @tuner_transfer(%struct.dvb_frontend* %44, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6147
  %flags75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6148
  store i16 0, i16* %flags75, align 2, !dbg !6149
  %arrayidx76 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6150
  %45 = load i8, i8* %arrayidx76, align 1, !dbg !6151
  %conv77 = zext i8 %45 to i32, !dbg !6151
  %shr78 = ashr i32 %conv77, 4, !dbg !6151
  %conv79 = trunc i32 %shr78 to i8, !dbg !6151
  store i8 %conv79, i8* %arrayidx76, align 1, !dbg !6151
  br label %do.body, !dbg !6152

do.body:                                          ; preds = %while.end
  %46 = load i32, i32* @debug, align 4, !dbg !6153
  %tobool = icmp ne i32 %46, 0, !dbg !6153
  br i1 %tobool, label %if.then80, label %if.end84, !dbg !6156

if.then80:                                        ; preds = %do.body
  %arrayidx81 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6153
  %47 = load i8, i8* %arrayidx81, align 1, !dbg !6153
  %conv82 = zext i8 %47 to i32, !dbg !6153
  %call83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %conv82) #8, !dbg !6153
  br label %if.end84, !dbg !6153

if.end84:                                         ; preds = %if.then80, %do.body
  br label %do.end, !dbg !6156

do.end:                                           ; preds = %if.end84
  %arrayidx85 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6157
  %48 = load i8, i8* %arrayidx85, align 1, !dbg !6157
  %conv86 = zext i8 %48 to i32, !dbg !6157
  %cmp87 = icmp slt i32 %conv86, 1, !dbg !6159
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !6160

if.then89:                                        ; preds = %do.end
  %49 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6161
  %50 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6162
  call void @tda827xa_lna_gain(%struct.dvb_frontend* %49, i32 0, %struct.analog_parameters* %50) #9, !dbg !6163
  br label %if.end90, !dbg !6163

if.end90:                                         ; preds = %if.then89, %do.end
  call void @msleep(i32 100) #9, !dbg !6164
  %arrayidx91 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6165
  store i8 96, i8* %arrayidx91, align 1, !dbg !6166
  %arrayidx92 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6167
  store i8 60, i8* %arrayidx92, align 1, !dbg !6168
  %51 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6169
  %call93 = call i32 @tuner_transfer(%struct.dvb_frontend* %51, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6170
  call void @msleep(i32 163) #9, !dbg !6171
  %arrayidx94 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6172
  store i8 80, i8* %arrayidx94, align 1, !dbg !6173
  %52 = load i32, i32* %i, align 4, !dbg !6174
  %idxprom95 = sext i32 %52 to i64, !dbg !6175
  %arrayidx96 = getelementptr [26 x %struct.tda827xa_data], [26 x %struct.tda827xa_data]* @tda827xa_analog, i64 0, i64 %idxprom95, !dbg !6175
  %gc397 = getelementptr inbounds %struct.tda827xa_data, %struct.tda827xa_data* %arrayidx96, i32 0, i32 5, !dbg !6176
  %53 = load i8, i8* %gc397, align 4, !dbg !6176
  %conv98 = zext i8 %53 to i32, !dbg !6175
  %shl99 = shl i32 %conv98, 4, !dbg !6177
  %add100 = add i32 143, %shl99, !dbg !6178
  %conv101 = trunc i32 %add100 to i8, !dbg !6179
  %arrayidx102 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6180
  store i8 %conv101, i8* %arrayidx102, align 1, !dbg !6181
  %54 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6182
  %call103 = call i32 @tuner_transfer(%struct.dvb_frontend* %54, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6183
  %arrayidx104 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6184
  store i8 -128, i8* %arrayidx104, align 1, !dbg !6185
  %arrayidx105 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6186
  store i8 40, i8* %arrayidx105, align 1, !dbg !6187
  %55 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6188
  %call106 = call i32 @tuner_transfer(%struct.dvb_frontend* %55, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6189
  %arrayidx107 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6190
  store i8 -80, i8* %arrayidx107, align 1, !dbg !6191
  %arrayidx108 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6192
  store i8 1, i8* %arrayidx108, align 1, !dbg !6193
  %56 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6194
  %call109 = call i32 @tuner_transfer(%struct.dvb_frontend* %56, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6195
  %arrayidx110 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 0, !dbg !6196
  store i8 -64, i8* %arrayidx110, align 1, !dbg !6197
  %57 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6198
  %lpsel111 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %57, i32 0, i32 4, !dbg !6199
  %58 = load i8, i8* %lpsel111, align 4, !dbg !6199
  %conv112 = zext i8 %58 to i32, !dbg !6198
  %shl113 = shl i32 %conv112, 1, !dbg !6200
  %add114 = add i32 25, %shl113, !dbg !6201
  %conv115 = trunc i32 %add114 to i8, !dbg !6202
  %arrayidx116 = getelementptr [11 x i8], [11 x i8]* %tuner_reg, i64 0, i64 1, !dbg !6203
  store i8 %conv115, i8* %arrayidx116, align 1, !dbg !6204
  %59 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6205
  %call117 = call i32 @tuner_transfer(%struct.dvb_frontend* %59, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6206
  %60 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6207
  %frequency118 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %60, i32 0, i32 0, !dbg !6208
  %61 = load i32, i32* %frequency118, align 8, !dbg !6208
  %62 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6209
  %frequency119 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %62, i32 0, i32 5, !dbg !6210
  store i32 %61, i32* %frequency119, align 8, !dbg !6211
  ret i32 0, !dbg !6212
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda827xa_lna_gain(%struct.dvb_frontend* %fe, i32 %high, %struct.analog_parameters* %params) #0 !dbg !6213 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %high.addr = alloca i32, align 4
  %params.addr = alloca %struct.analog_parameters*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %buf = alloca [2 x i8], align 1
  %arg = alloca i32, align 4
  %gp_func = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6216, metadata !DIExpression()), !dbg !6217
  store i32 %high, i32* %high.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %high.addr, metadata !6218, metadata !DIExpression()), !dbg !6219
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !6220, metadata !DIExpression()), !dbg !6221
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !6222, metadata !DIExpression()), !dbg !6223
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6224
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6225
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6225
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !6224
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !6223
  call void @llvm.dbg.declare(metadata [2 x i8]* %buf, metadata !6226, metadata !DIExpression()), !dbg !6227
  %3 = bitcast [2 x i8]* %buf to i8*, !dbg !6227
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.tda827xa_lna_gain.buf, i32 0, i32 0), i64 2, i1 false), !dbg !6227
  call void @llvm.dbg.declare(metadata i32* %arg, metadata !6228, metadata !DIExpression()), !dbg !6229
  call void @llvm.dbg.declare(metadata i32* %gp_func, metadata !6230, metadata !DIExpression()), !dbg !6231
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !6232, metadata !DIExpression()), !dbg !6233
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6234
  store i16 0, i16* %addr, align 8, !dbg !6234
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !6234
  store i16 0, i16* %flags, align 2, !dbg !6234
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !6234
  store i16 2, i16* %len, align 4, !dbg !6234
  %buf1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !6234
  %arraydecay = getelementptr inbounds [2 x i8], [2 x i8]* %buf, i64 0, i64 0, !dbg !6235
  store i8* %arraydecay, i8** %buf1, align 8, !dbg !6234
  %4 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6236
  %cfg = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %4, i32 0, i32 2, !dbg !6238
  %5 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg, align 8, !dbg !6238
  %cmp = icmp eq %struct.tda827x_config* null, %5, !dbg !6239
  br i1 %cmp, label %if.then, label %if.end3, !dbg !6240

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6241

do.body:                                          ; preds = %if.then
  %6 = load i32, i32* @debug, align 4, !dbg !6243
  %tobool = icmp ne i32 %6, 0, !dbg !6243
  br i1 %tobool, label %if.then2, label %if.end, !dbg !6246

if.then2:                                         ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !6243
  br label %if.end, !dbg !6243

if.end:                                           ; preds = %if.then2, %do.body
  br label %do.end, !dbg !6246

do.end:                                           ; preds = %if.end
  br label %sw.epilog, !dbg !6247

if.end3:                                          ; preds = %entry
  %7 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6248
  %cfg4 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %7, i32 0, i32 2, !dbg !6249
  %8 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg4, align 8, !dbg !6249
  %switch_addr = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %8, i32 0, i32 3, !dbg !6250
  %9 = load i32, i32* %switch_addr, align 4, !dbg !6250
  %conv = trunc i32 %9 to i16, !dbg !6248
  %addr5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !6251
  store i16 %conv, i16* %addr5, align 8, !dbg !6252
  %10 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6253
  %cfg6 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %10, i32 0, i32 2, !dbg !6255
  %11 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg6, align 8, !dbg !6255
  %config = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %11, i32 0, i32 2, !dbg !6256
  %12 = load i32, i32* %config, align 8, !dbg !6256
  %tobool7 = icmp ne i32 %12, 0, !dbg !6253
  br i1 %tobool7, label %if.then8, label %if.end24, !dbg !6257

if.then8:                                         ; preds = %if.end3
  %13 = load i32, i32* %high.addr, align 4, !dbg !6258
  %tobool9 = icmp ne i32 %13, 0, !dbg !6258
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !6261

if.then10:                                        ; preds = %if.then8
  br label %do.body11, !dbg !6262

do.body11:                                        ; preds = %if.then10
  %14 = load i32, i32* @debug, align 4, !dbg !6263
  %tobool12 = icmp ne i32 %14, 0, !dbg !6263
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6266

if.then13:                                        ; preds = %do.body11
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !6263
  br label %if.end15, !dbg !6263

if.end15:                                         ; preds = %if.then13, %do.body11
  br label %do.end16, !dbg !6266

do.end16:                                         ; preds = %if.end15
  br label %if.end23, !dbg !6266

if.else:                                          ; preds = %if.then8
  br label %do.body17, !dbg !6267

do.body17:                                        ; preds = %if.else
  %15 = load i32, i32* @debug, align 4, !dbg !6268
  %tobool18 = icmp ne i32 %15, 0, !dbg !6268
  br i1 %tobool18, label %if.then19, label %if.end21, !dbg !6271

if.then19:                                        ; preds = %do.body17
  %call20 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0)) #8, !dbg !6268
  br label %if.end21, !dbg !6268

if.end21:                                         ; preds = %if.then19, %do.body17
  br label %do.end22, !dbg !6271

do.end22:                                         ; preds = %if.end21
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %do.end16
  br label %if.end24, !dbg !6272

if.end24:                                         ; preds = %if.end23, %if.end3
  %16 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6273
  %cfg25 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %16, i32 0, i32 2, !dbg !6274
  %17 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg25, align 8, !dbg !6274
  %config26 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %17, i32 0, i32 2, !dbg !6275
  %18 = load i32, i32* %config26, align 8, !dbg !6275
  switch i32 %18, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb27
    i32 2, label %sw.bb27
    i32 3, label %sw.bb55
  ], !dbg !6276

sw.bb:                                            ; preds = %if.end24
  br label %sw.epilog, !dbg !6277

sw.bb27:                                          ; preds = %if.end24, %if.end24
  %19 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6279
  %cmp28 = icmp eq %struct.analog_parameters* %19, null, !dbg !6281
  br i1 %cmp28, label %if.then30, label %if.else31, !dbg !6282

if.then30:                                        ; preds = %sw.bb27
  store i32 0, i32* %gp_func, align 4, !dbg !6283
  store i32 0, i32* %arg, align 4, !dbg !6285
  br label %if.end36, !dbg !6286

if.else31:                                        ; preds = %sw.bb27
  store i32 1, i32* %gp_func, align 4, !dbg !6287
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6289
  %std = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 3, !dbg !6291
  %21 = load i64, i64* %std, align 8, !dbg !6291
  %and = and i64 %21, 46848, !dbg !6292
  %tobool32 = icmp ne i64 %and, 0, !dbg !6292
  br i1 %tobool32, label %if.then33, label %if.else34, !dbg !6293

if.then33:                                        ; preds = %if.else31
  store i32 1, i32* %arg, align 4, !dbg !6294
  br label %if.end35, !dbg !6295

if.else34:                                        ; preds = %if.else31
  store i32 0, i32* %arg, align 4, !dbg !6296
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then30
  %22 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6297
  %callback = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %22, i32 0, i32 9, !dbg !6299
  %23 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %callback, align 8, !dbg !6299
  %tobool37 = icmp ne i32 (i8*, i32, i32, i32)* %23, null, !dbg !6297
  br i1 %tobool37, label %if.then38, label %if.end41, !dbg !6300

if.then38:                                        ; preds = %if.end36
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6301
  %callback39 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 9, !dbg !6302
  %25 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %callback39, align 8, !dbg !6302
  %26 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6303
  %i2c_adap = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %26, i32 0, i32 1, !dbg !6304
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !6304
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %27, i32 0, i32 3, !dbg !6305
  %28 = load i8*, i8** %algo_data, align 8, !dbg !6305
  %29 = load i32, i32* %gp_func, align 4, !dbg !6306
  %30 = load i32, i32* %arg, align 4, !dbg !6307
  %call40 = call i32 %25(i8* %28, i32 0, i32 %29, i32 %30) #9, !dbg !6301
  br label %if.end41, !dbg !6301

if.end41:                                         ; preds = %if.then38, %if.end36
  %31 = load i32, i32* %high.addr, align 4, !dbg !6308
  %tobool42 = icmp ne i32 %31, 0, !dbg !6308
  %32 = zext i1 %tobool42 to i64, !dbg !6308
  %cond = select i1 %tobool42, i32 0, i32 1, !dbg !6308
  %conv43 = trunc i32 %cond to i8, !dbg !6308
  %arrayidx = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6309
  store i8 %conv43, i8* %arrayidx, align 1, !dbg !6310
  %33 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6311
  %cfg44 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %33, i32 0, i32 2, !dbg !6313
  %34 = load %struct.tda827x_config*, %struct.tda827x_config** %cfg44, align 8, !dbg !6313
  %config45 = getelementptr inbounds %struct.tda827x_config, %struct.tda827x_config* %34, i32 0, i32 2, !dbg !6314
  %35 = load i32, i32* %config45, align 8, !dbg !6314
  %cmp46 = icmp eq i32 %35, 2, !dbg !6315
  br i1 %cmp46, label %if.then48, label %if.end53, !dbg !6316

if.then48:                                        ; preds = %if.end41
  %36 = load i32, i32* %high.addr, align 4, !dbg !6317
  %tobool49 = icmp ne i32 %36, 0, !dbg !6317
  %37 = zext i1 %tobool49 to i64, !dbg !6317
  %cond50 = select i1 %tobool49, i32 1, i32 0, !dbg !6317
  %conv51 = trunc i32 %cond50 to i8, !dbg !6317
  %arrayidx52 = getelementptr [2 x i8], [2 x i8]* %buf, i64 0, i64 1, !dbg !6318
  store i8 %conv51, i8* %arrayidx52, align 1, !dbg !6319
  br label %if.end53, !dbg !6318

if.end53:                                         ; preds = %if.then48, %if.end41
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6320
  %call54 = call i32 @tuner_transfer(%struct.dvb_frontend* %38, %struct.i2c_msg* %msg, i32 1) #9, !dbg !6321
  br label %sw.epilog, !dbg !6322

sw.bb55:                                          ; preds = %if.end24
  %39 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6323
  %callback56 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %39, i32 0, i32 9, !dbg !6325
  %40 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %callback56, align 8, !dbg !6325
  %tobool57 = icmp ne i32 (i8*, i32, i32, i32)* %40, null, !dbg !6323
  br i1 %tobool57, label %if.then58, label %if.end63, !dbg !6326

if.then58:                                        ; preds = %sw.bb55
  %41 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6327
  %callback59 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %41, i32 0, i32 9, !dbg !6328
  %42 = load i32 (i8*, i32, i32, i32)*, i32 (i8*, i32, i32, i32)** %callback59, align 8, !dbg !6328
  %43 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6329
  %i2c_adap60 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %43, i32 0, i32 1, !dbg !6330
  %44 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap60, align 8, !dbg !6330
  %algo_data61 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %44, i32 0, i32 3, !dbg !6331
  %45 = load i8*, i8** %algo_data61, align 8, !dbg !6331
  %46 = load i32, i32* %high.addr, align 4, !dbg !6332
  %call62 = call i32 %42(i8* %45, i32 0, i32 0, i32 %46) #9, !dbg !6327
  br label %if.end63, !dbg !6327

if.end63:                                         ; preds = %if.then58, %sw.bb55
  br label %sw.epilog, !dbg !6333

sw.epilog:                                        ; preds = %do.end, %if.end24, %if.end63, %if.end53, %sw.bb
  ret void, !dbg !6334
}

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tda827x_set_std(%struct.dvb_frontend* %fe, %struct.analog_parameters* %params) #0 !dbg !6335 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %params.addr = alloca %struct.analog_parameters*, align 8
  %priv = alloca %struct.tda827x_priv*, align 8
  %mode = alloca i8*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !6336, metadata !DIExpression()), !dbg !6337
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !6338, metadata !DIExpression()), !dbg !6339
  call void @llvm.dbg.declare(metadata %struct.tda827x_priv** %priv, metadata !6340, metadata !DIExpression()), !dbg !6341
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !6342
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !6343
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !6343
  %2 = bitcast i8* %1 to %struct.tda827x_priv*, !dbg !6342
  store %struct.tda827x_priv* %2, %struct.tda827x_priv** %priv, align 8, !dbg !6341
  call void @llvm.dbg.declare(metadata i8** %mode, metadata !6344, metadata !DIExpression()), !dbg !6345
  %3 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6346
  %lpsel = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %3, i32 0, i32 4, !dbg !6347
  store i8 0, i8* %lpsel, align 4, !dbg !6348
  %4 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6349
  %std = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %4, i32 0, i32 3, !dbg !6351
  %5 = load i64, i64* %std, align 8, !dbg !6351
  %and = and i64 %5, 46848, !dbg !6352
  %tobool = icmp ne i64 %and, 0, !dbg !6352
  br i1 %tobool, label %if.then, label %if.else, !dbg !6353

if.then:                                          ; preds = %entry
  %6 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6354
  %sgIF = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %6, i32 0, i32 3, !dbg !6356
  store i32 92, i32* %sgIF, align 8, !dbg !6357
  %7 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6358
  %lpsel1 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %7, i32 0, i32 4, !dbg !6359
  store i8 1, i8* %lpsel1, align 4, !dbg !6360
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %mode, align 8, !dbg !6361
  br label %if.end44, !dbg !6362

if.else:                                          ; preds = %entry
  %8 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6363
  %std2 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %8, i32 0, i32 3, !dbg !6365
  %9 = load i64, i64* %std2, align 8, !dbg !6365
  %and3 = and i64 %9, 65539, !dbg !6366
  %tobool4 = icmp ne i64 %and3, 0, !dbg !6366
  br i1 %tobool4, label %if.then5, label %if.else7, !dbg !6367

if.then5:                                         ; preds = %if.else
  %10 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6368
  %sgIF6 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %10, i32 0, i32 3, !dbg !6370
  store i32 108, i32* %sgIF6, align 8, !dbg !6371
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8** %mode, align 8, !dbg !6372
  br label %if.end43, !dbg !6373

if.else7:                                         ; preds = %if.else
  %11 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6374
  %std8 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %11, i32 0, i32 3, !dbg !6376
  %12 = load i64, i64* %std8, align 8, !dbg !6376
  %and9 = and i64 %12, 786444, !dbg !6377
  %tobool10 = icmp ne i64 %and9, 0, !dbg !6377
  br i1 %tobool10, label %if.then11, label %if.else13, !dbg !6378

if.then11:                                        ; preds = %if.else7
  %13 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6379
  %sgIF12 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %13, i32 0, i32 3, !dbg !6381
  store i32 124, i32* %sgIF12, align 8, !dbg !6382
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %mode, align 8, !dbg !6383
  br label %if.end42, !dbg !6384

if.else13:                                        ; preds = %if.else7
  %14 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6385
  %std14 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %14, i32 0, i32 3, !dbg !6387
  %15 = load i64, i64* %std14, align 8, !dbg !6387
  %and15 = and i64 %15, 16, !dbg !6388
  %tobool16 = icmp ne i64 %and15, 0, !dbg !6388
  br i1 %tobool16, label %if.then17, label %if.else19, !dbg !6389

if.then17:                                        ; preds = %if.else13
  %16 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6390
  %sgIF18 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %16, i32 0, i32 3, !dbg !6392
  store i32 124, i32* %sgIF18, align 8, !dbg !6393
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0), i8** %mode, align 8, !dbg !6394
  br label %if.end41, !dbg !6395

if.else19:                                        ; preds = %if.else13
  %17 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6396
  %std20 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %17, i32 0, i32 3, !dbg !6398
  %18 = load i64, i64* %std20, align 8, !dbg !6398
  %and21 = and i64 %18, 3277024, !dbg !6399
  %tobool22 = icmp ne i64 %and21, 0, !dbg !6399
  br i1 %tobool22, label %if.then23, label %if.else25, !dbg !6400

if.then23:                                        ; preds = %if.else19
  %19 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6401
  %sgIF24 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %19, i32 0, i32 3, !dbg !6403
  store i32 124, i32* %sgIF24, align 8, !dbg !6404
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8** %mode, align 8, !dbg !6405
  br label %if.end40, !dbg !6406

if.else25:                                        ; preds = %if.else19
  %20 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6407
  %std26 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %20, i32 0, i32 3, !dbg !6409
  %21 = load i64, i64* %std26, align 8, !dbg !6409
  %and27 = and i64 %21, 4194304, !dbg !6410
  %tobool28 = icmp ne i64 %and27, 0, !dbg !6410
  br i1 %tobool28, label %if.then29, label %if.else31, !dbg !6411

if.then29:                                        ; preds = %if.else25
  %22 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6412
  %sgIF30 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %22, i32 0, i32 3, !dbg !6414
  store i32 124, i32* %sgIF30, align 8, !dbg !6415
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8** %mode, align 8, !dbg !6416
  br label %if.end39, !dbg !6417

if.else31:                                        ; preds = %if.else25
  %23 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6418
  %std32 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %23, i32 0, i32 3, !dbg !6420
  %24 = load i64, i64* %std32, align 8, !dbg !6420
  %and33 = and i64 %24, 8388608, !dbg !6421
  %tobool34 = icmp ne i64 %and33, 0, !dbg !6421
  br i1 %tobool34, label %if.then35, label %if.else37, !dbg !6422

if.then35:                                        ; preds = %if.else31
  %25 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6423
  %sgIF36 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %25, i32 0, i32 3, !dbg !6425
  store i32 20, i32* %sgIF36, align 8, !dbg !6426
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8** %mode, align 8, !dbg !6427
  br label %if.end, !dbg !6428

if.else37:                                        ; preds = %if.else31
  %26 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6429
  %sgIF38 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %26, i32 0, i32 3, !dbg !6431
  store i32 124, i32* %sgIF38, align 8, !dbg !6432
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8** %mode, align 8, !dbg !6433
  br label %if.end

if.end:                                           ; preds = %if.else37, %if.then35
  br label %if.end39

if.end39:                                         ; preds = %if.end, %if.then29
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then23
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.then17
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then11
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then5
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then
  %27 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !6434
  %mode45 = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %27, i32 0, i32 1, !dbg !6436
  %28 = load i32, i32* %mode45, align 4, !dbg !6436
  %cmp = icmp eq i32 %28, 1, !dbg !6437
  br i1 %cmp, label %if.then46, label %if.else51, !dbg !6438

if.then46:                                        ; preds = %if.end44
  %29 = load %struct.tda827x_priv*, %struct.tda827x_priv** %priv, align 8, !dbg !6439
  %sgIF47 = getelementptr inbounds %struct.tda827x_priv, %struct.tda827x_priv* %29, i32 0, i32 3, !dbg !6441
  store i32 88, i32* %sgIF47, align 8, !dbg !6442
  br label %do.body, !dbg !6443

do.body:                                          ; preds = %if.then46
  %30 = load i32, i32* @debug, align 4, !dbg !6444
  %tobool48 = icmp ne i32 %30, 0, !dbg !6444
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !6447

if.then49:                                        ; preds = %do.body
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !6444
  br label %if.end50, !dbg !6444

if.end50:                                         ; preds = %if.then49, %do.body
  br label %do.end, !dbg !6447

do.end:                                           ; preds = %if.end50
  br label %if.end58, !dbg !6448

if.else51:                                        ; preds = %if.end44
  br label %do.body52, !dbg !6449

do.body52:                                        ; preds = %if.else51
  %31 = load i32, i32* @debug, align 4, !dbg !6450
  %tobool53 = icmp ne i32 %31, 0, !dbg !6450
  br i1 %tobool53, label %if.then54, label %if.end56, !dbg !6453

if.then54:                                        ; preds = %do.body52
  %32 = load i8*, i8** %mode, align 8, !dbg !6450
  %call55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i8* %32) #8, !dbg !6450
  br label %if.end56, !dbg !6450

if.end56:                                         ; preds = %if.then54, %do.body52
  br label %do.end57, !dbg !6453

do.end57:                                         ; preds = %if.end56
  br label %if.end58

if.end58:                                         ; preds = %do.end57, %do.end
  ret void, !dbg !6454
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4362, !4363, !4364, !4365}
!llvm.ident = !{!4366}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 17, type: !4359, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !305, globals: !314, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/tuners/tda827x.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !40, !50, !57, !73, !78, !82, !87, !102, !113, !126, !133, !138, !144, !165, !171, !175, !183, !190, !195, !201, !207, !216, !224, !230, !236, !243, !251, !257, !271, !283, !290, !297}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tda8290_lna", file: !284, line: 12, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/tuners/tda8290.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "TDA8290_LNA_OFF", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "TDA8290_LNA_GP0_HIGH_ON", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "TDA8290_LNA_GP0_HIGH_OFF", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "TDA8290_LNA_ON_BRIDGE", value: 3, isUnsigned: true)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !291, line: 305, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !295, !296}
!293 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!295 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!296 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!297 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "v4l2_tuner_type", file: !298, line: 176, baseType: !7, size: 32, elements: !299)
!298 = !DIFile(filename: "./include/uapi/linux/videodev2.h", directory: "/home/lizy2001/genbc/linux")
!299 = !{!300, !301, !302, !303, !304}
!300 = !DIEnumerator(name: "V4L2_TUNER_RADIO", value: 1, isUnsigned: true)
!301 = !DIEnumerator(name: "V4L2_TUNER_ANALOG_TV", value: 2, isUnsigned: true)
!302 = !DIEnumerator(name: "V4L2_TUNER_DIGITAL_TV", value: 3, isUnsigned: true)
!303 = !DIEnumerator(name: "V4L2_TUNER_SDR", value: 4, isUnsigned: true)
!304 = !DIEnumerator(name: "V4L2_TUNER_RF", value: 5, isUnsigned: true)
!305 = !{!306, !308, !309, !313}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !307, line: 148, baseType: !7)
!307 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "v4l2_std_id", file: !298, line: 1260, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !311, line: 31, baseType: !312)
!311 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!312 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!313 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!314 = !{!315, !385, !390, !395, !400, !405, !410, !415, !420, !0, !422, !4317, !4321, !4323, !4326, !4337, !4339, !4344}
!315 = !DIGlobalVariableExpression(var: !316, expr: !DIExpression())
!316 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 17, type: !317, isLocal: true, isDefinition: true, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !319, line: 69, size: 320, elements: !320)
!319 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !325, !329, !350, !356, !360, !363}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !319, line: 70, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !318, file: !319, line: 71, baseType: !326, size: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !328, line: 76, flags: DIFlagFwdDecl)
!328 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !318, file: !319, line: 72, baseType: !330, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !319, line: 47, size: 256, elements: !333)
!333 = !{!334, !335, !341, !346}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !332, file: !319, line: 49, baseType: !7, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !332, file: !319, line: 51, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !322, !340}
!339 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !332, file: !319, line: 53, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!339, !345, !340}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !332, file: !319, line: 55, baseType: !347, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !308}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !318, file: !319, line: 73, baseType: !351, size: 16, offset: 192)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !353, line: 19, baseType: !354)
!353 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !311, line: 24, baseType: !355)
!355 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !318, file: !319, line: 74, baseType: !357, size: 8, offset: 208)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !353, line: 16, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !311, line: 20, baseType: !359)
!359 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !319, line: 75, baseType: !361, size: 8, offset: 216)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !353, line: 17, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !311, line: 21, baseType: !313)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !319, line: 76, baseType: !364, size: 64, offset: 256)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !318, file: !319, line: 76, size: 64, elements: !365)
!365 = !{!366, !367, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !364, file: !319, line: 77, baseType: !308, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !364, file: !319, line: 78, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !319, line: 86, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !370, file: !319, line: 87, baseType: !7, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !370, file: !319, line: 88, baseType: !345, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !364, file: !319, line: 79, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !319, line: 92, size: 256, elements: !378)
!378 = !{!379, !380, !381, !383, !384}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !377, file: !319, line: 94, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !377, file: !319, line: 95, baseType: !7, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !377, file: !319, line: 96, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !377, file: !319, line: 97, baseType: !330, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !377, file: !319, line: 98, baseType: !308, size: 64, offset: 192)
!385 = !DIGlobalVariableExpression(var: !386, expr: !DIExpression())
!386 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 17, type: !387, isLocal: true, isDefinition: true, align: 8)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 216, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 27)
!390 = !DIGlobalVariableExpression(var: !391, expr: !DIExpression())
!391 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 18, type: !392, isLocal: true, isDefinition: true, align: 8)
!392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 520, elements: !393)
!393 = !{!394}
!394 = !DISubrange(count: 65)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 892, type: !397, isLocal: true, isDefinition: true, align: 8)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 312, elements: !398)
!398 = !{!399}
!399 = !DISubrange(count: 39)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 893, type: !402, isLocal: true, isDefinition: true, align: 8)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 504, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 63)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author224", scope: !2, file: !3, line: 894, type: !407, isLocal: true, isDefinition: true, align: 8)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 416, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 52)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file225", scope: !2, file: !3, line: 895, type: !412, isLocal: true, isDefinition: true, align: 8)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 336, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 42)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license226", scope: !2, file: !3, line: 895, type: !417, isLocal: true, isDefinition: true, align: 8)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 160, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 20)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 16, type: !339, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "tda827xo_tuner_ops", scope: !2, file: !3, line: 807, type: !424, isLocal: true, isDefinition: true)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !51, line: 226, size: 2304, elements: !426)
!426 = !{!427, !442, !4291, !4292, !4293, !4294, !4295, !4296, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4312, !4316}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !425, file: !51, line: 228, baseType: !428, size: 1216)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !51, line: 88, size: 1216, elements: !429)
!429 = !{!430, !434, !437, !438, !439, !440, !441}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !428, file: !51, line: 89, baseType: !431, size: 1024)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 1024, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !428, file: !51, line: 91, baseType: !435, size: 32, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !353, line: 21, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !311, line: 27, baseType: !7)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !428, file: !51, line: 92, baseType: !435, size: 32, offset: 1056)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !428, file: !51, line: 93, baseType: !435, size: 32, offset: 1088)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !428, file: !51, line: 95, baseType: !435, size: 32, offset: 1120)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !428, file: !51, line: 96, baseType: !435, size: 32, offset: 1152)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !428, file: !51, line: 97, baseType: !435, size: 32, offset: 1184)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !425, file: !51, line: 230, baseType: !443, size: 64, offset: 1216)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{null, !446}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !51, line: 686, size: 10240, elements: !448)
!448 = !{!449, !463, !709, !4279, !4280, !4281, !4282, !4283, !4284, !4285, !4289, !4290}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !447, file: !51, line: 687, baseType: !450, size: 32)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !451, line: 19, size: 32, elements: !452)
!451 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !450, file: !451, line: 20, baseType: !454, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !455, line: 113, baseType: !456)
!455 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !455, line: 111, size: 32, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !456, file: !455, line: 112, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !307, line: 168, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 166, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !460, file: !307, line: 167, baseType: !339, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !447, file: !51, line: 688, baseType: !464, size: 6016, offset: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !51, line: 435, size: 6016, elements: !465)
!465 = !{!466, !478, !482, !483, !484, !485, !489, !490, !496, !503, !507, !508, !518, !601, !605, !610, !615, !616, !617, !618, !630, !641, !645, !649, !653, !658, !663, !667, !668, !669, !673, !674}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !464, file: !51, line: 436, baseType: !467, size: 1280)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !51, line: 338, size: 1280, elements: !468)
!468 = !{!469, !470, !471, !472, !473, !474, !475, !476, !477}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !51, line: 339, baseType: !431, size: 1024)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !467, file: !51, line: 340, baseType: !435, size: 32, offset: 1024)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !467, file: !51, line: 341, baseType: !435, size: 32, offset: 1056)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !467, file: !51, line: 342, baseType: !435, size: 32, offset: 1088)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !467, file: !51, line: 343, baseType: !435, size: 32, offset: 1120)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !467, file: !51, line: 344, baseType: !435, size: 32, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !467, file: !51, line: 345, baseType: !435, size: 32, offset: 1184)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !467, file: !51, line: 346, baseType: !435, size: 32, offset: 1216)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !467, file: !51, line: 347, baseType: !5, size: 32, offset: 1248)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !464, file: !51, line: 438, baseType: !479, size: 64, offset: 1280)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 64, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 8)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !464, file: !51, line: 440, baseType: !443, size: 64, offset: 1344)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !464, file: !51, line: 441, baseType: !443, size: 64, offset: 1408)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !464, file: !51, line: 442, baseType: !443, size: 64, offset: 1472)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !464, file: !51, line: 444, baseType: !486, size: 64, offset: 1536)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!339, !446}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !464, file: !51, line: 445, baseType: !486, size: 64, offset: 1600)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !464, file: !51, line: 447, baseType: !491, size: 64, offset: 1664)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!339, !446, !494, !339}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !464, file: !51, line: 450, baseType: !497, size: 64, offset: 1728)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!339, !446, !500, !7, !382, !502}
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !307, line: 30, baseType: !501)
!501 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !464, file: !51, line: 457, baseType: !504, size: 64, offset: 1792)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!50, !446}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !464, file: !51, line: 460, baseType: !486, size: 64, offset: 1856)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !464, file: !51, line: 461, baseType: !509, size: 64, offset: 1920)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!339, !446, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !51, line: 69, size: 96, elements: !514)
!514 = !{!515, !516, !517}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !513, file: !51, line: 70, baseType: !339, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !513, file: !51, line: 71, baseType: !339, size: 32, offset: 32)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !513, file: !51, line: 72, baseType: !339, size: 32, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !464, file: !51, line: 463, baseType: !519, size: 64, offset: 1984)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{!339, !446, !522}
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !51, line: 586, size: 3648, elements: !524)
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !594, !595, !596, !597, !598, !599, !600}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !523, file: !51, line: 587, baseType: !435, size: 32)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !523, file: !51, line: 588, baseType: !57, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !523, file: !51, line: 590, baseType: !73, size: 32, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !523, file: !51, line: 591, baseType: !78, size: 32, offset: 96)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !523, file: !51, line: 592, baseType: !82, size: 32, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !523, file: !51, line: 593, baseType: !87, size: 32, offset: 160)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !523, file: !51, line: 594, baseType: !102, size: 32, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !523, file: !51, line: 595, baseType: !435, size: 32, offset: 224)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !523, file: !51, line: 596, baseType: !113, size: 32, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !523, file: !51, line: 597, baseType: !126, size: 32, offset: 288)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !523, file: !51, line: 598, baseType: !435, size: 32, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !523, file: !51, line: 599, baseType: !87, size: 32, offset: 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !523, file: !51, line: 600, baseType: !87, size: 32, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !523, file: !51, line: 602, baseType: !133, size: 32, offset: 416)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !523, file: !51, line: 603, baseType: !138, size: 32, offset: 448)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !523, file: !51, line: 605, baseType: !144, size: 32, offset: 480)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !523, file: !51, line: 607, baseType: !165, size: 32, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !523, file: !51, line: 610, baseType: !361, size: 8, offset: 544)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !523, file: !51, line: 611, baseType: !361, size: 8, offset: 552)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !523, file: !51, line: 612, baseType: !361, size: 8, offset: 560)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !523, file: !51, line: 613, baseType: !435, size: 32, offset: 576)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !523, file: !51, line: 614, baseType: !435, size: 32, offset: 608)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !523, file: !51, line: 615, baseType: !361, size: 8, offset: 640)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !523, file: !51, line: 621, baseType: !549, size: 384, offset: 672)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 384, elements: !556)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !523, file: !51, line: 616, size: 128, elements: !551)
!551 = !{!552, !553, !554, !555}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !550, file: !51, line: 617, baseType: !361, size: 8)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !550, file: !51, line: 618, baseType: !87, size: 32, offset: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !550, file: !51, line: 619, baseType: !57, size: 32, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !550, file: !51, line: 620, baseType: !361, size: 8, offset: 96)
!556 = !{!557}
!557 = !DISubrange(count: 3)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !523, file: !51, line: 624, baseType: !435, size: 32, offset: 1056)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !523, file: !51, line: 627, baseType: !435, size: 32, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !523, file: !51, line: 630, baseType: !361, size: 8, offset: 1120)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !523, file: !51, line: 631, baseType: !361, size: 8, offset: 1128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !523, file: !51, line: 632, baseType: !361, size: 8, offset: 1136)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !523, file: !51, line: 633, baseType: !361, size: 8, offset: 1144)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !523, file: !51, line: 634, baseType: !361, size: 8, offset: 1152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !523, file: !51, line: 635, baseType: !361, size: 8, offset: 1160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !523, file: !51, line: 637, baseType: !361, size: 8, offset: 1168)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !523, file: !51, line: 638, baseType: !361, size: 8, offset: 1176)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !523, file: !51, line: 639, baseType: !361, size: 8, offset: 1184)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !523, file: !51, line: 640, baseType: !361, size: 8, offset: 1192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !523, file: !51, line: 641, baseType: !361, size: 8, offset: 1200)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !523, file: !51, line: 642, baseType: !361, size: 8, offset: 1208)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !523, file: !51, line: 643, baseType: !361, size: 8, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !523, file: !51, line: 644, baseType: !361, size: 8, offset: 1224)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !523, file: !51, line: 645, baseType: !361, size: 8, offset: 1232)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !523, file: !51, line: 647, baseType: !435, size: 32, offset: 1248)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !523, file: !51, line: 650, baseType: !577, size: 296, offset: 1280)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !6, line: 825, size: 296, elements: !578)
!578 = !{!579, !580}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !577, file: !6, line: 826, baseType: !362, size: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !577, file: !6, line: 827, baseType: !581, size: 288, offset: 8)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !582, size: 288, elements: !592)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !6, line: 803, size: 72, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !582, file: !6, line: 804, baseType: !362, size: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !582, file: !6, line: 805, baseType: !586, size: 64, offset: 8)
!586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !582, file: !6, line: 805, size: 64, elements: !587)
!587 = !{!588, !589}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !586, file: !6, line: 806, baseType: !310, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !586, file: !6, line: 807, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !311, line: 30, baseType: !591)
!591 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!592 = !{!593}
!593 = !DISubrange(count: 4)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !523, file: !51, line: 651, baseType: !577, size: 296, offset: 1576)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !523, file: !51, line: 652, baseType: !577, size: 296, offset: 1872)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !523, file: !51, line: 653, baseType: !577, size: 296, offset: 2168)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !523, file: !51, line: 654, baseType: !577, size: 296, offset: 2464)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !523, file: !51, line: 655, baseType: !577, size: 296, offset: 2760)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !523, file: !51, line: 656, baseType: !577, size: 296, offset: 3056)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !523, file: !51, line: 657, baseType: !577, size: 296, offset: 3352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !464, file: !51, line: 466, baseType: !602, size: 64, offset: 2048)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{!339, !446, !502}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !464, file: !51, line: 467, baseType: !606, size: 64, offset: 2112)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!339, !446, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !464, file: !51, line: 468, baseType: !611, size: 64, offset: 2176)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!339, !446, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !464, file: !51, line: 469, baseType: !611, size: 64, offset: 2240)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !464, file: !51, line: 470, baseType: !606, size: 64, offset: 2304)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !464, file: !51, line: 472, baseType: !486, size: 64, offset: 2368)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !464, file: !51, line: 473, baseType: !619, size: 64, offset: 2432)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!339, !446, !622}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !6, line: 173, size: 56, elements: !624)
!624 = !{!625, !629}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !623, file: !6, line: 174, baseType: !626, size: 48)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 48, elements: !627)
!627 = !{!628}
!628 = !DISubrange(count: 6)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !623, file: !6, line: 175, baseType: !362, size: 8, offset: 48)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !464, file: !51, line: 474, baseType: !631, size: 64, offset: 2496)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!339, !446, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !6, line: 195, size: 96, elements: !636)
!636 = !{!637, !639, !640}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !635, file: !6, line: 196, baseType: !638, size: 32)
!638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 32, elements: !592)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !635, file: !6, line: 197, baseType: !362, size: 8, offset: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !635, file: !6, line: 198, baseType: !339, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !464, file: !51, line: 475, baseType: !642, size: 64, offset: 2560)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!339, !446, !171}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !464, file: !51, line: 477, baseType: !646, size: 64, offset: 2624)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!339, !446, !78}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !464, file: !51, line: 478, baseType: !650, size: 64, offset: 2688)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!339, !446, !73}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !464, file: !51, line: 480, baseType: !654, size: 64, offset: 2752)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!339, !446, !657}
!657 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !464, file: !51, line: 481, baseType: !659, size: 64, offset: 2816)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!339, !446, !662}
!662 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !464, file: !51, line: 482, baseType: !664, size: 64, offset: 2880)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!339, !446, !339}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !464, file: !51, line: 483, baseType: !664, size: 64, offset: 2944)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !464, file: !51, line: 484, baseType: !486, size: 64, offset: 3008)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !464, file: !51, line: 490, baseType: !670, size: 64, offset: 3072)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!175, !446}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !464, file: !51, line: 492, baseType: !425, size: 2304, offset: 3136)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !464, file: !51, line: 493, baseType: !675, size: 576, offset: 5440)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !51, line: 302, size: 576, elements: !676)
!676 = !{!677, !681, !693, !694, !701, !702, !703, !704, !705}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !675, file: !51, line: 304, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !51, line: 276, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !51, line: 277, baseType: !345, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !675, file: !51, line: 306, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{null, !446, !685}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !51, line: 114, size: 192, elements: !687)
!687 = !{!688, !689, !690, !691}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !686, file: !51, line: 115, baseType: !7, size: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !686, file: !51, line: 116, baseType: !7, size: 32, offset: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !686, file: !51, line: 117, baseType: !7, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !686, file: !51, line: 118, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !353, line: 23, baseType: !310)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !675, file: !51, line: 308, baseType: !611, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !675, file: !51, line: 309, baseType: !695, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!339, !446, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !353, line: 20, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !311, line: 26, baseType: !339)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !675, file: !51, line: 310, baseType: !443, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !675, file: !51, line: 311, baseType: !443, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !675, file: !51, line: 312, baseType: !443, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !675, file: !51, line: 313, baseType: !664, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !675, file: !51, line: 316, baseType: !706, size: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!339, !446, !308}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !447, file: !51, line: 689, baseType: !710, size: 64, offset: 6080)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !712)
!712 = !{!713, !714, !720, !721, !722, !724, !725, !4257, !4258, !4259, !4278}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !711, file: !272, line: 102, baseType: !339, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !711, file: !272, line: 103, baseType: !715, size: 128, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !307, line: 178, size: 128, elements: !716)
!716 = !{!717, !719}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !307, line: 179, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !715, file: !307, line: 179, baseType: !718, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !711, file: !272, line: 104, baseType: !715, size: 128, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !711, file: !272, line: 105, baseType: !322, size: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !711, file: !272, line: 106, baseType: !723, size: 48, offset: 384)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 48, elements: !627)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !711, file: !272, line: 107, baseType: !308, size: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !711, file: !272, line: 109, baseType: !726, size: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !237, line: 461, size: 5568, elements: !728)
!728 = !{!729, !3714, !3715, !3718, !3719, !3770, !3858, !3859, !3860, !3861, !3862, !3871, !3976, !3989, !4184, !4185, !4189, !4191, !4192, !4193, !4197, !4203, !4204, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4245, !4246, !4247, !4250, !4253, !4254, !4255, !4256}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !727, file: !237, line: 462, baseType: !730, size: 512)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !731, line: 64, size: 512, elements: !732)
!731 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !734, !735, !737, !794, !3569, !3708, !3709, !3710, !3711, !3712, !3713}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !730, file: !731, line: 65, baseType: !322, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !730, file: !731, line: 66, baseType: !715, size: 128, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !730, file: !731, line: 67, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !730, file: !731, line: 68, baseType: !738, size: 64, offset: 256)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !731, line: 192, size: 704, elements: !740)
!740 = !{!741, !742, !758, !759}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !731, line: 193, baseType: !715, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !739, file: !731, line: 194, baseType: !743, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !744, line: 83, baseType: !745)
!744 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !744, line: 71, elements: !746)
!746 = !{!747}
!747 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !744, line: 72, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !744, line: 72, elements: !749)
!749 = !{!750}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !748, file: !744, line: 73, baseType: !751)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !744, line: 20, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !751, file: !744, line: 21, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !755, line: 25, baseType: !756)
!755 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 25, elements: !757)
!757 = !{}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !739, file: !731, line: 195, baseType: !730, size: 512, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !739, file: !731, line: 196, baseType: !760, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !731, line: 156, size: 192, elements: !763)
!763 = !{!764, !769, !774}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !762, file: !731, line: 157, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !766)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!339, !738, !736}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !762, file: !731, line: 158, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!322, !738, !736}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !762, file: !731, line: 159, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!339, !738, !736, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !731, line: 148, size: 20736, elements: !781)
!781 = !{!782, !784, !788, !789, !793}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !780, file: !731, line: 149, baseType: !783, size: 192)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 192, elements: !556)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !780, file: !731, line: 150, baseType: !785, size: 4096, offset: 192)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 4096, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !780, file: !731, line: 151, baseType: !339, size: 32, offset: 4288)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !780, file: !731, line: 152, baseType: !790, size: 16384, offset: 4320)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 16384, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 2048)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !780, file: !731, line: 153, baseType: !339, size: 32, offset: 20704)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !730, file: !731, line: 69, baseType: !795, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !731, line: 138, size: 448, elements: !797)
!797 = !{!798, !802, !829, !831, !3531, !3559, !3563}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !796, file: !731, line: 139, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !736}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !796, file: !731, line: 140, baseType: !803, size: 64, offset: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !806, line: 230, size: 128, elements: !807)
!806 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!807 = !{!808, !822}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !805, file: !806, line: 231, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!812, !736, !816, !345}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !307, line: 60, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !814, line: 73, baseType: !815)
!814 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !814, line: 15, baseType: !657)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !806, line: 30, size: 128, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !817, file: !806, line: 31, baseType: !322, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !817, file: !806, line: 32, baseType: !821, size: 16, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !307, line: 19, baseType: !355)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !805, file: !806, line: 232, baseType: !823, size: 64, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DISubroutineType(types: !825)
!825 = !{!812, !736, !816, !322, !826}
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !307, line: 55, baseType: !827)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !814, line: 72, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !814, line: 16, baseType: !662)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !796, file: !731, line: 141, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !796, file: !731, line: 142, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !806, line: 84, size: 320, elements: !836)
!836 = !{!837, !838, !842, !3528, !3529}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !835, file: !806, line: 85, baseType: !322, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !835, file: !806, line: 86, baseType: !839, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!821, !736, !816, !339}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !835, file: !806, line: 88, baseType: !843, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!821, !736, !846, !339}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !806, line: 168, size: 448, elements: !848)
!848 = !{!849, !850, !851, !852, !3523, !3524}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !847, file: !806, line: 169, baseType: !817, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !847, file: !806, line: 170, baseType: !826, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !847, file: !806, line: 171, baseType: !308, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !847, file: !806, line: 172, baseType: !853, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!812, !856, !736, !846, !345, !1022, !826}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !208, line: 916, size: 1856, align: 32, elements: !858)
!858 = !{!859, !877, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3506, !3507, !3516, !3517, !3518, !3519, !3520, !3521, !3522}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !857, file: !208, line: 920, baseType: !860, size: 128)
!860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !857, file: !208, line: 917, size: 128, elements: !861)
!861 = !{!862, !868}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !860, file: !208, line: 918, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !864, line: 58, size: 64, elements: !865)
!864 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !864, line: 59, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !860, file: !208, line: 919, baseType: !869, size: 128, align: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !307, line: 216, size: 128, align: 64, elements: !870)
!870 = !{!871, !873}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !869, file: !307, line: 217, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !869, file: !307, line: 218, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !872}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !857, file: !208, line: 921, baseType: !878, size: 128, offset: 128)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !879, line: 8, size: 128, elements: !880)
!879 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!880 = !{!881, !885}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !878, file: !879, line: 9, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !884, line: 18, flags: DIFlagFwdDecl)
!884 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !878, file: !879, line: 10, baseType: !886, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !884, line: 89, size: 1536, elements: !888)
!888 = !{!889, !890, !900, !908, !909, !924, !3457, !3459, !3471, !3472, !3473, !3474, !3475, !3480, !3481, !3482}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !887, file: !884, line: 91, baseType: !7, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !887, file: !884, line: 92, baseType: !891, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !892, line: 277, baseType: !893)
!892 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !892, line: 277, size: 32, elements: !894)
!894 = !{!895}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !893, file: !892, line: 277, baseType: !896, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !892, line: 70, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !892, line: 65, size: 32, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !897, file: !892, line: 66, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !887, file: !884, line: 93, baseType: !901, size: 128, offset: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !902, line: 38, size: 128, elements: !903)
!902 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !901, file: !902, line: 39, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !901, file: !902, line: 39, baseType: !907, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !887, file: !884, line: 94, baseType: !886, size: 64, offset: 192)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !887, file: !884, line: 95, baseType: !910, size: 128, offset: 256)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !884, line: 47, size: 128, elements: !911)
!911 = !{!912, !921}
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !910, file: !884, line: 48, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !910, file: !884, line: 48, size: 64, elements: !914)
!914 = !{!915, !920}
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !913, file: !884, line: 49, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !913, file: !884, line: 49, size: 64, elements: !917)
!917 = !{!918, !919}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !916, file: !884, line: 50, baseType: !435, size: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !916, file: !884, line: 50, baseType: !435, size: 32, offset: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !913, file: !884, line: 52, baseType: !692, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !910, file: !884, line: 54, baseType: !922, size: 64, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !887, file: !884, line: 96, baseType: !925, size: 64, offset: 384)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !208, line: 610, size: 4224, elements: !927)
!927 = !{!928, !929, !930, !938, !945, !946, !1087, !3151, !3152, !3153, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3425, !3433, !3434, !3435, !3453, !3454, !3455, !3456}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !926, file: !208, line: 611, baseType: !821, size: 16)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !926, file: !208, line: 612, baseType: !355, size: 16, offset: 16)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !926, file: !208, line: 613, baseType: !931, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !932, line: 23, baseType: !933)
!932 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !932, line: 21, size: 32, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !933, file: !932, line: 22, baseType: !936, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !307, line: 32, baseType: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !814, line: 49, baseType: !7)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !926, file: !208, line: 614, baseType: !939, size: 32, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !932, line: 28, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !932, line: 26, size: 32, elements: !941)
!941 = !{!942}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !940, file: !932, line: 27, baseType: !943, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !307, line: 33, baseType: !944)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !814, line: 50, baseType: !7)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !926, file: !208, line: 615, baseType: !7, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !926, file: !208, line: 622, baseType: !947, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !949)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !208, line: 1864, size: 1536, align: 512, elements: !950)
!950 = !{!951, !955, !965, !969, !975, !979, !983, !987, !991, !995, !999, !1000, !1006, !1010, !1034, !1063, !1067, !1073, !1078, !1082, !1083}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !949, file: !208, line: 1865, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!886, !925, !886, !7}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !949, file: !208, line: 1866, baseType: !956, size: 64, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!322, !886, !925, !959}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !961, line: 10, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !960, file: !961, line: 11, baseType: !347, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !960, file: !961, line: 12, baseType: !308, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !949, file: !208, line: 1867, baseType: !966, size: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!339, !925, !339}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !949, file: !208, line: 1868, baseType: !970, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!973, !925, !339}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !208, line: 581, flags: DIFlagFwdDecl)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !949, file: !208, line: 1870, baseType: !976, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!339, !886, !345, !339}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !949, file: !208, line: 1872, baseType: !980, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!339, !925, !886, !821, !500}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !949, file: !208, line: 1873, baseType: !984, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!339, !886, !925, !886}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !949, file: !208, line: 1874, baseType: !988, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!339, !925, !886}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !949, file: !208, line: 1875, baseType: !992, size: 64, offset: 512)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!339, !925, !886, !322}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !949, file: !208, line: 1876, baseType: !996, size: 64, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!339, !925, !886, !821}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !949, file: !208, line: 1877, baseType: !988, size: 64, offset: 640)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !949, file: !208, line: 1878, baseType: !1001, size: 64, offset: 704)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!339, !925, !886, !821, !1004}
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !307, line: 16, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !307, line: 13, baseType: !435)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !949, file: !208, line: 1879, baseType: !1007, size: 64, offset: 768)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!339, !925, !886, !925, !886, !7}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !949, file: !208, line: 1881, baseType: !1011, size: 64, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!339, !886, !1014}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !208, line: 219, size: 640, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1021, !1024, !1031, !1032, !1033}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1015, file: !208, line: 220, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1015, file: !208, line: 221, baseType: !821, size: 16, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1015, file: !208, line: 222, baseType: !931, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1015, file: !208, line: 223, baseType: !939, size: 32, offset: 96)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1015, file: !208, line: 224, baseType: !1022, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !307, line: 46, baseType: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !814, line: 88, baseType: !591)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1015, file: !208, line: 225, baseType: !1025, size: 128, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1026, line: 13, size: 128, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1027 = !{!1028, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1025, file: !1026, line: 14, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1026, line: 8, baseType: !590)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1025, file: !1026, line: 15, baseType: !657, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1015, file: !208, line: 226, baseType: !1025, size: 128, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1015, file: !208, line: 227, baseType: !1025, size: 128, offset: 448)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1015, file: !208, line: 234, baseType: !856, size: 64, offset: 576)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !949, file: !208, line: 1882, baseType: !1035, size: 64, offset: 896)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!339, !1038, !1040, !435, !7}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1042, line: 22, size: 1152, elements: !1043)
!1042 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !{!1044, !1045, !1046, !1047, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1041, file: !1042, line: 23, baseType: !435, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1041, file: !1042, line: 24, baseType: !821, size: 16, offset: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1041, file: !1042, line: 25, baseType: !7, size: 32, offset: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1041, file: !1042, line: 26, baseType: !1048, size: 32, offset: 96)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !307, line: 104, baseType: !435)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1041, file: !1042, line: 27, baseType: !692, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1041, file: !1042, line: 28, baseType: !692, size: 64, offset: 192)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1041, file: !1042, line: 37, baseType: !692, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1041, file: !1042, line: 38, baseType: !1004, size: 32, offset: 320)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1041, file: !1042, line: 39, baseType: !1004, size: 32, offset: 352)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1041, file: !1042, line: 40, baseType: !931, size: 32, offset: 384)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1041, file: !1042, line: 41, baseType: !939, size: 32, offset: 416)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1041, file: !1042, line: 42, baseType: !1022, size: 64, offset: 448)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1041, file: !1042, line: 43, baseType: !1025, size: 128, offset: 512)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1041, file: !1042, line: 44, baseType: !1025, size: 128, offset: 640)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1041, file: !1042, line: 45, baseType: !1025, size: 128, offset: 768)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1041, file: !1042, line: 46, baseType: !1025, size: 128, offset: 896)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1041, file: !1042, line: 47, baseType: !692, size: 64, offset: 1024)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1041, file: !1042, line: 48, baseType: !692, size: 64, offset: 1088)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !949, file: !208, line: 1883, baseType: !1064, size: 64, offset: 960)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!812, !886, !345, !826}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !949, file: !208, line: 1884, baseType: !1068, size: 64, offset: 1024)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!339, !925, !1071, !692, !692}
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !208, line: 50, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !949, file: !208, line: 1886, baseType: !1074, size: 64, offset: 1088)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!339, !925, !1077, !339}
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !949, file: !208, line: 1887, baseType: !1079, size: 64, offset: 1152)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!339, !925, !886, !856, !7, !821}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !949, file: !208, line: 1890, baseType: !996, size: 64, offset: 1216)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !949, file: !208, line: 1891, baseType: !1084, size: 64, offset: 1280)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!339, !925, !973, !339}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !926, file: !208, line: 623, baseType: !1088, size: 64, offset: 192)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !208, line: 1416, size: 9472, elements: !1090)
!1090 = !{!1091, !1092, !1093, !1094, !1095, !1096, !1143, !2759, !2841, !2924, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2940, !2944, !2945, !2948, !2949, !2952, !2953, !2954, !2995, !3021, !3022, !3023, !3024, !3025, !3026, !3029, !3031, !3038, !3039, !3041, !3042, !3043, !3102, !3103, !3118, !3119, !3120, !3121, !3122, !3125, !3126, !3127, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1089, file: !208, line: 1417, baseType: !715, size: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1089, file: !208, line: 1418, baseType: !1004, size: 32, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1089, file: !208, line: 1419, baseType: !313, size: 8, offset: 160)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1089, file: !208, line: 1420, baseType: !662, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1089, file: !208, line: 1421, baseType: !1022, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1089, file: !208, line: 1422, baseType: !1097, size: 64, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !208, line: 2228, size: 576, elements: !1099)
!1099 = !{!1100, !1101, !1102, !1109, !1113, !1117, !1121, !1122, !1123, !1133, !1136, !1137, !1138, !1140, !1141, !1142}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1098, file: !208, line: 2229, baseType: !322, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1098, file: !208, line: 2230, baseType: !339, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1098, file: !208, line: 2238, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!339, !1106}
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1108, line: 28, flags: DIFlagFwdDecl)
!1108 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1098, file: !208, line: 2239, baseType: !1110, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1112)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !208, line: 70, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1098, file: !208, line: 2240, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!886, !1097, !339, !322, !308}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1098, file: !208, line: 2242, baseType: !1118, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !1088}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1098, file: !208, line: 2243, baseType: !326, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1098, file: !208, line: 2244, baseType: !1097, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1098, file: !208, line: 2245, baseType: !1124, size: 64, offset: 512)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !307, line: 182, size: 64, elements: !1125)
!1125 = !{!1126}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1124, file: !307, line: 183, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !307, line: 186, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1128, file: !307, line: 187, baseType: !1127, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1128, file: !307, line: 187, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1098, file: !208, line: 2247, baseType: !1134, offset: 576)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1135, line: 187, elements: !757)
!1135 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1098, file: !208, line: 2248, baseType: !1134, offset: 576)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1098, file: !208, line: 2249, baseType: !1134, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1098, file: !208, line: 2250, baseType: !1139, offset: 576)
!1139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1134, elements: !556)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1098, file: !208, line: 2252, baseType: !1134, offset: 576)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1098, file: !208, line: 2253, baseType: !1134, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1098, file: !208, line: 2254, baseType: !1134, offset: 576)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1089, file: !208, line: 1423, baseType: !1144, size: 64, offset: 384)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !208, line: 1935, size: 1472, elements: !1147)
!1147 = !{!1148, !1152, !1156, !1157, !1161, !1167, !1171, !1172, !1173, !1177, !1181, !1182, !1183, !1184, !1190, !1195, !1196, !1203, !1204, !1205, !1206, !2743, !2758}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1146, file: !208, line: 1936, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!925, !1088}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1146, file: !208, line: 1937, baseType: !1153, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !925}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1146, file: !208, line: 1938, baseType: !1153, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1146, file: !208, line: 1940, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !925, !339}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1146, file: !208, line: 1941, baseType: !1162, size: 64, offset: 256)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!339, !925, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !208, line: 289, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1146, file: !208, line: 1942, baseType: !1168, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!339, !925}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1146, file: !208, line: 1943, baseType: !1153, size: 64, offset: 384)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1146, file: !208, line: 1944, baseType: !1118, size: 64, offset: 448)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1146, file: !208, line: 1945, baseType: !1174, size: 64, offset: 512)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!339, !1088, !339}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1146, file: !208, line: 1946, baseType: !1178, size: 64, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!339, !1088}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1146, file: !208, line: 1947, baseType: !1178, size: 64, offset: 640)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1146, file: !208, line: 1948, baseType: !1178, size: 64, offset: 704)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1146, file: !208, line: 1949, baseType: !1178, size: 64, offset: 768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1146, file: !208, line: 1950, baseType: !1185, size: 64, offset: 832)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!339, !886, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !208, line: 57, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1146, file: !208, line: 1951, baseType: !1191, size: 64, offset: 896)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!339, !1088, !1194, !345}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1146, file: !208, line: 1952, baseType: !1118, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1146, file: !208, line: 1954, baseType: !1197, size: 64, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!339, !1200, !886}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1202, line: 539, flags: DIFlagFwdDecl)
!1202 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1146, file: !208, line: 1955, baseType: !1197, size: 64, offset: 1088)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1146, file: !208, line: 1956, baseType: !1197, size: 64, offset: 1152)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1146, file: !208, line: 1957, baseType: !1197, size: 64, offset: 1216)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1146, file: !208, line: 1963, baseType: !1207, size: 64, offset: 1280)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DISubroutineType(types: !1209)
!1209 = !{!339, !1088, !1210, !306}
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1212, line: 68, size: 512, align: 128, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !2735, !2742}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1211, file: !1212, line: 69, baseType: !662, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1212, line: 77, baseType: !1216, size: 320, offset: 64)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 77, size: 320, elements: !1217)
!1217 = !{!1218, !1399, !1404, !1432, !1440, !1446, !2727, !2734}
!1218 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 78, baseType: !1219, size: 320)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 78, size: 320, elements: !1220)
!1220 = !{!1221, !1222, !1397, !1398}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1219, file: !1212, line: 84, baseType: !715, size: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1219, file: !1212, line: 86, baseType: !1223, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !208, line: 451, size: 1216, align: 64, elements: !1225)
!1225 = !{!1226, !1227, !1234, !1235, !1236, !1251, !1267, !1268, !1269, !1270, !1390, !1391, !1394, !1395, !1396}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1224, file: !208, line: 452, baseType: !925, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1224, file: !208, line: 453, baseType: !1228, size: 128, offset: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1229, line: 292, size: 128, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1228, file: !1229, line: 293, baseType: !743)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1228, file: !1229, line: 295, baseType: !306, size: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1228, file: !1229, line: 296, baseType: !308, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1224, file: !208, line: 454, baseType: !306, size: 32, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1224, file: !208, line: 455, baseType: !459, size: 32, offset: 224)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1224, file: !208, line: 460, baseType: !1237, size: 128, offset: 256)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1238, line: 125, size: 128, elements: !1239)
!1238 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1239 = !{!1240, !1250}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1237, file: !1238, line: 126, baseType: !1241, size: 64)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1238, line: 31, size: 64, elements: !1242)
!1242 = !{!1243}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1241, file: !1238, line: 32, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1238, line: 24, size: 192, align: 64, elements: !1246)
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1245, file: !1238, line: 25, baseType: !662, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1245, file: !1238, line: 26, baseType: !1244, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1245, file: !1238, line: 27, baseType: !1244, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1237, file: !1238, line: 127, baseType: !1244, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1224, file: !208, line: 461, baseType: !1252, size: 256, offset: 384)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1253, line: 35, size: 256, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1254 = !{!1255, !1263, !1264, !1266}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1252, file: !1253, line: 36, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1257, line: 13, baseType: !1258)
!1257 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !307, line: 175, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !307, line: 173, size: 64, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1259, file: !307, line: 174, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !353, line: 22, baseType: !590)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1252, file: !1253, line: 42, baseType: !1256, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1252, file: !1253, line: 46, baseType: !1265, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !744, line: 29, baseType: !751)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1252, file: !1253, line: 47, baseType: !715, size: 128, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1224, file: !208, line: 462, baseType: !662, size: 64, offset: 640)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1224, file: !208, line: 463, baseType: !662, size: 64, offset: 704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1224, file: !208, line: 464, baseType: !662, size: 64, offset: 768)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1224, file: !208, line: 465, baseType: !1271, size: 64, offset: 832)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !208, line: 367, size: 1408, elements: !1274)
!1274 = !{!1275, !1279, !1283, !1287, !1291, !1295, !1301, !1307, !1311, !1316, !1320, !1324, !1328, !1354, !1358, !1364, !1365, !1366, !1370, !1375, !1379, !1386}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1273, file: !208, line: 368, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DISubroutineType(types: !1278)
!1278 = !{!339, !1210, !1165}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1273, file: !208, line: 369, baseType: !1280, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{!339, !856, !1210}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1273, file: !208, line: 372, baseType: !1284, size: 64, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!339, !1223, !1165}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1273, file: !208, line: 375, baseType: !1288, size: 64, offset: 192)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!339, !1210}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1273, file: !208, line: 381, baseType: !1292, size: 64, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!339, !856, !1223, !718, !7}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1273, file: !208, line: 383, baseType: !1296, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{null, !1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !208, line: 290, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1273, file: !208, line: 385, baseType: !1302, size: 64, offset: 384)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!339, !856, !1223, !1022, !7, !7, !1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1273, file: !208, line: 388, baseType: !1308, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!339, !856, !1223, !1022, !7, !7, !1210, !308}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1273, file: !208, line: 393, baseType: !1312, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{!1315, !1223, !1315}
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !307, line: 125, baseType: !692)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1273, file: !208, line: 394, baseType: !1317, size: 64, offset: 576)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{null, !1210, !7, !7}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1273, file: !208, line: 395, baseType: !1321, size: 64, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!339, !1210, !306}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1273, file: !208, line: 396, baseType: !1325, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1210}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1273, file: !208, line: 397, baseType: !1329, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{!812, !1332, !1352}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !208, line: 320, size: 384, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1341, !1342, !1343, !1344, !1345}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1333, file: !208, line: 321, baseType: !856, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1333, file: !208, line: 326, baseType: !1022, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1333, file: !208, line: 327, baseType: !1338, size: 64, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{null, !1332, !657, !657}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1333, file: !208, line: 328, baseType: !308, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1333, file: !208, line: 329, baseType: !339, size: 32, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1333, file: !208, line: 330, baseType: !352, size: 16, offset: 288)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1333, file: !208, line: 331, baseType: !352, size: 16, offset: 304)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !208, line: 332, baseType: !1346, size: 64, offset: 320)
!1346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !208, line: 332, size: 64, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1346, file: !208, line: 333, baseType: !7, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1346, file: !208, line: 334, baseType: !1350, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !208, line: 334, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !208, line: 64, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1273, file: !208, line: 402, baseType: !1355, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!339, !1223, !1210, !1210, !183}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1273, file: !208, line: 404, baseType: !1359, size: 64, offset: 896)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!500, !1210, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1363, line: 305, baseType: !7)
!1363 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1273, file: !208, line: 405, baseType: !1325, size: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1273, file: !208, line: 406, baseType: !1288, size: 64, offset: 1024)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1273, file: !208, line: 407, baseType: !1367, size: 64, offset: 1088)
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{!339, !1210, !662, !662}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1273, file: !208, line: 409, baseType: !1371, size: 64, offset: 1152)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{null, !1210, !1374, !1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1273, file: !208, line: 410, baseType: !1376, size: 64, offset: 1216)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = !DISubroutineType(types: !1378)
!1378 = !{!339, !1223, !1210}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1273, file: !208, line: 413, baseType: !1380, size: 64, offset: 1280)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!339, !1383, !856, !1385}
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !208, line: 61, flags: DIFlagFwdDecl)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1273, file: !208, line: 415, baseType: !1387, size: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{null, !856}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !208, line: 466, baseType: !662, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1224, file: !208, line: 467, baseType: !1392, size: 32, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1393, line: 8, baseType: !435)
!1393 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1224, file: !208, line: 468, baseType: !743, offset: 992)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1224, file: !208, line: 469, baseType: !715, size: 128, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1224, file: !208, line: 470, baseType: !308, size: 64, offset: 1152)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1219, file: !1212, line: 87, baseType: !662, size: 64, offset: 192)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1219, file: !1212, line: 94, baseType: !662, size: 64, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 96, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 96, size: 64, elements: !1401)
!1401 = !{!1402}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1400, file: !1212, line: 101, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !307, line: 143, baseType: !692)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 103, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 103, size: 320, elements: !1406)
!1406 = !{!1407, !1417, !1420, !1421}
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1212, line: 104, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1212, line: 104, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1408, file: !1212, line: 105, baseType: !715, size: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1212, line: 106, baseType: !1412, size: 128)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1212, line: 106, size: 128, elements: !1413)
!1413 = !{!1414, !1415, !1416}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1412, file: !1212, line: 107, baseType: !1210, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1412, file: !1212, line: 109, baseType: !339, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1412, file: !1212, line: 110, baseType: !339, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1405, file: !1212, line: 117, baseType: !1418, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1212, line: 117, flags: DIFlagFwdDecl)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1405, file: !1212, line: 119, baseType: !308, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1212, line: 120, baseType: !1422, size: 64, offset: 256)
!1422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1212, line: 120, size: 64, elements: !1423)
!1423 = !{!1424, !1425, !1426}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1422, file: !1212, line: 121, baseType: !308, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1422, file: !1212, line: 122, baseType: !662, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1422, file: !1212, line: 123, baseType: !1427, size: 32)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1422, file: !1212, line: 123, size: 32, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1427, file: !1212, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1427, file: !1212, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1427, file: !1212, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 130, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 130, size: 192, elements: !1434)
!1434 = !{!1435, !1436, !1437, !1438, !1439}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1433, file: !1212, line: 131, baseType: !662, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1433, file: !1212, line: 134, baseType: !313, size: 8, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1433, file: !1212, line: 135, baseType: !313, size: 8, offset: 72)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1433, file: !1212, line: 136, baseType: !459, size: 32, offset: 96)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1433, file: !1212, line: 137, baseType: !7, size: 32, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 139, baseType: !1441, size: 256)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 139, size: 256, elements: !1442)
!1442 = !{!1443, !1444, !1445}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1441, file: !1212, line: 140, baseType: !662, size: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1441, file: !1212, line: 141, baseType: !459, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1441, file: !1212, line: 143, baseType: !715, size: 128, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 145, baseType: !1447, size: 256)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 145, size: 256, elements: !1448)
!1448 = !{!1449, !1450, !1452, !1453, !2726}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1447, file: !1212, line: 146, baseType: !662, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1447, file: !1212, line: 147, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1202, line: 509, baseType: !1210)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1447, file: !1212, line: 148, baseType: !662, size: 64, offset: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1212, line: 149, baseType: !1454, size: 64, offset: 192)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1447, file: !1212, line: 149, size: 64, elements: !1455)
!1455 = !{!1456, !2725}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1454, file: !1212, line: 150, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1212, line: 388, size: 7296, elements: !1459)
!1459 = !{!1460, !2721}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1458, file: !1212, line: 389, baseType: !1461, size: 7296)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1458, file: !1212, line: 389, size: 7296, elements: !1462)
!1462 = !{!1463, !1501, !1502, !1503, !1507, !1508, !1509, !1510, !1511, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1552, !1558, !1561, !1607, !1608, !2705, !2706, !2709, !2710, !2711, !2714, !2715, !2716, !2719, !2720}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1461, file: !1212, line: 390, baseType: !1464, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1212, line: 305, size: 1472, elements: !1466)
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1481, !1482, !1487, !1488, !1491, !1495, !1496, !1497, !1498, !1499}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1465, file: !1212, line: 308, baseType: !662, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1465, file: !1212, line: 309, baseType: !662, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1465, file: !1212, line: 313, baseType: !1464, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1465, file: !1212, line: 313, baseType: !1464, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1465, file: !1212, line: 315, baseType: !1245, size: 192, align: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1465, file: !1212, line: 323, baseType: !662, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1465, file: !1212, line: 327, baseType: !1457, size: 64, offset: 512)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1465, file: !1212, line: 333, baseType: !1475, size: 64, offset: 576)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1202, line: 284, baseType: !1476)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1202, line: 284, size: 64, elements: !1477)
!1477 = !{!1478}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1476, file: !1202, line: 284, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1480, line: 19, baseType: !662)
!1480 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1465, file: !1212, line: 334, baseType: !662, size: 64, offset: 640)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1465, file: !1212, line: 343, baseType: !1483, size: 256, offset: 704)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1212, line: 340, size: 256, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1483, file: !1212, line: 341, baseType: !1245, size: 192, align: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1483, file: !1212, line: 342, baseType: !662, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1465, file: !1212, line: 351, baseType: !715, size: 128, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1465, file: !1212, line: 353, baseType: !1489, size: 64, offset: 1088)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1212, line: 353, flags: DIFlagFwdDecl)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1465, file: !1212, line: 356, baseType: !1492, size: 64, offset: 1152)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1494)
!1494 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1212, line: 356, flags: DIFlagFwdDecl)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1465, file: !1212, line: 359, baseType: !662, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1465, file: !1212, line: 361, baseType: !856, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1465, file: !1212, line: 362, baseType: !308, size: 64, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1465, file: !1212, line: 365, baseType: !1256, size: 64, offset: 1408)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1465, file: !1212, line: 373, baseType: !1500, offset: 1472)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1212, line: 296, elements: !757)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1461, file: !1212, line: 391, baseType: !1241, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1461, file: !1212, line: 392, baseType: !692, size: 64, offset: 128)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1461, file: !1212, line: 394, baseType: !1504, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!662, !856, !662, !662, !662, !662}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1461, file: !1212, line: 398, baseType: !662, size: 64, offset: 256)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1461, file: !1212, line: 399, baseType: !662, size: 64, offset: 320)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1461, file: !1212, line: 405, baseType: !662, size: 64, offset: 384)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1461, file: !1212, line: 406, baseType: !662, size: 64, offset: 448)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1461, file: !1212, line: 407, baseType: !1512, size: 64, offset: 512)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1202, line: 286, baseType: !1514)
!1514 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1202, line: 286, size: 64, elements: !1515)
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1514, file: !1202, line: 286, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1480, line: 18, baseType: !662)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1461, file: !1212, line: 416, baseType: !459, size: 32, offset: 576)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1461, file: !1212, line: 428, baseType: !459, size: 32, offset: 608)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1461, file: !1212, line: 437, baseType: !459, size: 32, offset: 640)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1461, file: !1212, line: 447, baseType: !459, size: 32, offset: 672)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1461, file: !1212, line: 450, baseType: !1256, size: 64, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1461, file: !1212, line: 452, baseType: !339, size: 32, offset: 768)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1461, file: !1212, line: 454, baseType: !743, offset: 800)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1461, file: !1212, line: 457, baseType: !1252, size: 256, offset: 832)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1461, file: !1212, line: 459, baseType: !715, size: 128, offset: 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1461, file: !1212, line: 466, baseType: !662, size: 64, offset: 1216)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1461, file: !1212, line: 467, baseType: !662, size: 64, offset: 1280)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1461, file: !1212, line: 469, baseType: !662, size: 64, offset: 1344)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1461, file: !1212, line: 470, baseType: !662, size: 64, offset: 1408)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1461, file: !1212, line: 471, baseType: !1258, size: 64, offset: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1461, file: !1212, line: 472, baseType: !662, size: 64, offset: 1536)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1461, file: !1212, line: 473, baseType: !662, size: 64, offset: 1600)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1461, file: !1212, line: 474, baseType: !662, size: 64, offset: 1664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1461, file: !1212, line: 475, baseType: !662, size: 64, offset: 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1461, file: !1212, line: 477, baseType: !743, offset: 1792)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1461, file: !1212, line: 478, baseType: !662, size: 64, offset: 1792)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1461, file: !1212, line: 478, baseType: !662, size: 64, offset: 1856)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1461, file: !1212, line: 478, baseType: !662, size: 64, offset: 1920)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1461, file: !1212, line: 478, baseType: !662, size: 64, offset: 1984)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1461, file: !1212, line: 479, baseType: !662, size: 64, offset: 2048)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1461, file: !1212, line: 479, baseType: !662, size: 64, offset: 2112)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1461, file: !1212, line: 479, baseType: !662, size: 64, offset: 2176)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1461, file: !1212, line: 480, baseType: !662, size: 64, offset: 2240)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1461, file: !1212, line: 480, baseType: !662, size: 64, offset: 2304)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1461, file: !1212, line: 480, baseType: !662, size: 64, offset: 2368)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1461, file: !1212, line: 480, baseType: !662, size: 64, offset: 2432)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1461, file: !1212, line: 482, baseType: !1549, size: 2816, offset: 2496)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 2816, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 44)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1461, file: !1212, line: 488, baseType: !1553, size: 256, offset: 5312)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1554, line: 60, size: 256, elements: !1555)
!1554 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1553, file: !1554, line: 61, baseType: !1557, size: 256)
!1557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1256, size: 256, elements: !592)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1461, file: !1212, line: 490, baseType: !1559, size: 64, offset: 5568)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1212, line: 490, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1461, file: !1212, line: 493, baseType: !1562, size: 896, offset: 5632)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1563, line: 53, baseType: !1564)
!1563 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1563, line: 13, size: 896, elements: !1565)
!1565 = !{!1566, !1567, !1568, !1569, !1572, !1573, !1580, !1581, !1601, !1602, !1603}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1564, file: !1563, line: 18, baseType: !692, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1564, file: !1563, line: 28, baseType: !1258, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1564, file: !1563, line: 31, baseType: !1252, size: 256, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1564, file: !1563, line: 32, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1563, line: 32, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1564, file: !1563, line: 37, baseType: !355, size: 16, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1564, file: !1563, line: 40, baseType: !1574, size: 192, offset: 512)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1575, line: 53, size: 192, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !{!1577, !1578, !1579}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1574, file: !1575, line: 54, baseType: !1256, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1574, file: !1575, line: 55, baseType: !743, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1574, file: !1575, line: 59, baseType: !715, size: 128, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1564, file: !1563, line: 41, baseType: !308, size: 64, offset: 704)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1564, file: !1563, line: 42, baseType: !1582, size: 64, offset: 768)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1585, line: 13, size: 896, elements: !1586)
!1585 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1586 = !{!1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1584, file: !1585, line: 14, baseType: !308, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1584, file: !1585, line: 15, baseType: !662, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1584, file: !1585, line: 17, baseType: !662, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1584, file: !1585, line: 17, baseType: !662, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1584, file: !1585, line: 19, baseType: !657, size: 64, offset: 256)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1584, file: !1585, line: 21, baseType: !657, size: 64, offset: 320)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1584, file: !1585, line: 22, baseType: !657, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1584, file: !1585, line: 23, baseType: !657, size: 64, offset: 448)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1584, file: !1585, line: 24, baseType: !657, size: 64, offset: 512)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1584, file: !1585, line: 25, baseType: !657, size: 64, offset: 576)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1584, file: !1585, line: 26, baseType: !657, size: 64, offset: 640)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1584, file: !1585, line: 27, baseType: !657, size: 64, offset: 704)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1584, file: !1585, line: 28, baseType: !657, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1584, file: !1585, line: 29, baseType: !657, size: 64, offset: 832)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1564, file: !1563, line: 44, baseType: !459, size: 32, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1564, file: !1563, line: 50, baseType: !352, size: 16, offset: 864)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1564, file: !1563, line: 51, baseType: !1604, size: 16, offset: 880)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !353, line: 18, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !311, line: 23, baseType: !1606)
!1606 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1212, line: 495, baseType: !662, size: 64, offset: 6528)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1461, file: !1212, line: 497, baseType: !1609, size: 64, offset: 6592)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1212, line: 381, size: 384, elements: !1611)
!1611 = !{!1612, !1613, !2704}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1610, file: !1212, line: 382, baseType: !459, size: 32)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1610, file: !1212, line: 383, baseType: !1614, size: 128, offset: 64)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1212, line: 376, size: 128, elements: !1615)
!1615 = !{!1616, !2702}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1614, file: !1212, line: 377, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1619, line: 640, size: 48640, elements: !1620)
!1619 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1620 = !{!1621, !1627, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1642, !1660, !1671, !1752, !1753, !1754, !1765, !1766, !1768, !1769, !1770, !1771, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1852, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1890, !1892, !1893, !1894, !1906, !1907, !1908, !1909, !1910, !1911, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1935, !1940, !2122, !2123, !2124, !2125, !2129, !2132, !2135, !2138, !2141, !2145, !2246, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2292, !2293, !2294, !2295, !2296, !2301, !2302, !2303, !2306, !2307, !2310, !2313, !2316, !2319, !2362, !2365, !2366, !2445, !2446, !2449, !2450, !2453, !2454, !2455, !2459, !2460, !2461, !2474, !2475, !2476, !2486, !2491, !2494, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1618, file: !1619, line: 646, baseType: !1622, size: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1623, line: 56, size: 128, elements: !1624)
!1623 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1624 = !{!1625, !1626}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1622, file: !1623, line: 57, baseType: !662, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1622, file: !1623, line: 58, baseType: !435, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1618, file: !1619, line: 649, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !657)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1618, file: !1619, line: 657, baseType: !308, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1618, file: !1619, line: 658, baseType: !454, size: 32, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1618, file: !1619, line: 660, baseType: !7, size: 32, offset: 288)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1618, file: !1619, line: 661, baseType: !7, size: 32, offset: 320)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1618, file: !1619, line: 684, baseType: !339, size: 32, offset: 352)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1618, file: !1619, line: 686, baseType: !339, size: 32, offset: 384)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1618, file: !1619, line: 687, baseType: !339, size: 32, offset: 416)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1618, file: !1619, line: 688, baseType: !339, size: 32, offset: 448)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1618, file: !1619, line: 689, baseType: !7, size: 32, offset: 480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1618, file: !1619, line: 691, baseType: !1639, size: 64, offset: 512)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1619, line: 691, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1618, file: !1619, line: 692, baseType: !1643, size: 832, offset: 576)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1619, line: 451, size: 832, elements: !1644)
!1644 = !{!1645, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1643, file: !1619, line: 453, baseType: !1646, size: 128)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1619, line: 325, size: 128, elements: !1647)
!1647 = !{!1648, !1649}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1646, file: !1619, line: 326, baseType: !662, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1646, file: !1619, line: 327, baseType: !435, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1643, file: !1619, line: 454, baseType: !1245, size: 192, align: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1643, file: !1619, line: 455, baseType: !715, size: 128, offset: 320)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1643, file: !1619, line: 456, baseType: !7, size: 32, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1643, file: !1619, line: 458, baseType: !692, size: 64, offset: 512)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1643, file: !1619, line: 459, baseType: !692, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1643, file: !1619, line: 460, baseType: !692, size: 64, offset: 640)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1643, file: !1619, line: 461, baseType: !692, size: 64, offset: 704)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1643, file: !1619, line: 463, baseType: !692, size: 64, offset: 768)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1643, file: !1619, line: 465, baseType: !1659, offset: 832)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1619, line: 415, elements: !757)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1618, file: !1619, line: 693, baseType: !1661, size: 384, offset: 1408)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1619, line: 489, size: 384, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666, !1667, !1668, !1669}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1661, file: !1619, line: 490, baseType: !715, size: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1661, file: !1619, line: 491, baseType: !662, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1661, file: !1619, line: 492, baseType: !662, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1661, file: !1619, line: 493, baseType: !7, size: 32, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1661, file: !1619, line: 494, baseType: !355, size: 16, offset: 288)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1661, file: !1619, line: 495, baseType: !355, size: 16, offset: 304)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1661, file: !1619, line: 497, baseType: !1670, size: 64, offset: 320)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1618, file: !1619, line: 697, baseType: !1672, size: 1792, offset: 1792)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1619, line: 507, size: 1792, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1749, !1750}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1672, file: !1619, line: 508, baseType: !1245, size: 192, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1672, file: !1619, line: 515, baseType: !692, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1672, file: !1619, line: 516, baseType: !692, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1672, file: !1619, line: 517, baseType: !692, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1672, file: !1619, line: 518, baseType: !692, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1672, file: !1619, line: 519, baseType: !692, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1672, file: !1619, line: 526, baseType: !1262, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1672, file: !1619, line: 527, baseType: !692, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1672, file: !1619, line: 528, baseType: !7, size: 32, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1672, file: !1619, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1672, file: !1619, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1672, file: !1619, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1672, file: !1619, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1672, file: !1619, line: 563, baseType: !1688, size: 512, offset: 704)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !191, line: 118, size: 512, elements: !1689)
!1689 = !{!1690, !1698, !1699, !1704, !1745, !1746, !1747, !1748}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1688, file: !191, line: 119, baseType: !1691, size: 256)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1692, line: 9, size: 256, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1691, file: !1692, line: 10, baseType: !1245, size: 192, align: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1691, file: !1692, line: 11, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1697, line: 29, baseType: !1262)
!1697 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1688, file: !191, line: 120, baseType: !1696, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1688, file: !191, line: 121, baseType: !1700, size: 64, offset: 320)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!190, !1703}
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1688, file: !191, line: 122, baseType: !1705, size: 64, offset: 384)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !191, line: 159, size: 512, align: 512, elements: !1707)
!1707 = !{!1708, !1726, !1727, !1730, !1735, !1736, !1740, !1744}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1706, file: !191, line: 160, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !191, line: 214, size: 4608, align: 512, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1710, file: !191, line: 215, baseType: !1265)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1710, file: !191, line: 216, baseType: !7, size: 32)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1710, file: !191, line: 217, baseType: !7, size: 32, offset: 32)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1710, file: !191, line: 218, baseType: !7, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1710, file: !191, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1710, file: !191, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1710, file: !191, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1710, file: !191, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1710, file: !191, line: 233, baseType: !1696, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1710, file: !191, line: 234, baseType: !1703, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1710, file: !191, line: 235, baseType: !1696, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1710, file: !191, line: 236, baseType: !1703, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1710, file: !191, line: 237, baseType: !1725, size: 4096, offset: 512)
!1725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1706, size: 4096, elements: !480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1706, file: !191, line: 161, baseType: !7, size: 32, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1706, file: !191, line: 162, baseType: !1728, size: 32, offset: 96)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !307, line: 27, baseType: !1729)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !814, line: 96, baseType: !339)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1706, file: !191, line: 163, baseType: !1731, size: 32, offset: 128)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !892, line: 276, baseType: !1732)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !892, line: 276, size: 32, elements: !1733)
!1733 = !{!1734}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1732, file: !892, line: 276, baseType: !896, size: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1706, file: !191, line: 164, baseType: !1703, size: 64, offset: 192)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1706, file: !191, line: 165, baseType: !1737, size: 128, offset: 256)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1692, line: 14, size: 128, elements: !1738)
!1738 = !{!1739}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1737, file: !1692, line: 15, baseType: !1237, size: 128)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1706, file: !191, line: 166, baseType: !1741, size: 64, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!1696}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1706, file: !191, line: 167, baseType: !1696, size: 64, offset: 448)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1688, file: !191, line: 123, baseType: !361, size: 8, offset: 448)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1688, file: !191, line: 124, baseType: !361, size: 8, offset: 456)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1688, file: !191, line: 125, baseType: !361, size: 8, offset: 464)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1688, file: !191, line: 126, baseType: !361, size: 8, offset: 472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1672, file: !1619, line: 572, baseType: !1688, size: 512, offset: 1216)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1672, file: !1619, line: 580, baseType: !1751, size: 64, offset: 1728)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1618, file: !1619, line: 721, baseType: !7, size: 32, offset: 3584)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1618, file: !1619, line: 722, baseType: !339, size: 32, offset: 3616)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1618, file: !1619, line: 723, baseType: !1755, size: 64, offset: 3648)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1758, line: 17, baseType: !1759)
!1758 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1758, line: 17, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1759, file: !1758, line: 17, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, size: 64, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 1)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1618, file: !1619, line: 724, baseType: !1757, size: 64, offset: 3712)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1618, file: !1619, line: 749, baseType: !1767, offset: 3776)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1619, line: 290, elements: !757)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1618, file: !1619, line: 751, baseType: !715, size: 128, offset: 3776)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1618, file: !1619, line: 757, baseType: !1457, size: 64, offset: 3904)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1618, file: !1619, line: 758, baseType: !1457, size: 64, offset: 3968)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1618, file: !1619, line: 761, baseType: !1772, size: 320, offset: 4032)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1554, line: 34, size: 320, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1772, file: !1554, line: 35, baseType: !692, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1772, file: !1554, line: 36, baseType: !1776, size: 256, offset: 64)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1464, size: 256, elements: !592)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1618, file: !1619, line: 766, baseType: !339, size: 32, offset: 4352)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1618, file: !1619, line: 767, baseType: !339, size: 32, offset: 4384)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1618, file: !1619, line: 768, baseType: !339, size: 32, offset: 4416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1618, file: !1619, line: 770, baseType: !339, size: 32, offset: 4448)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1618, file: !1619, line: 772, baseType: !662, size: 64, offset: 4480)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1618, file: !1619, line: 775, baseType: !7, size: 32, offset: 4544)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1618, file: !1619, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1618, file: !1619, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1618, file: !1619, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1618, file: !1619, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1618, file: !1619, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1618, file: !1619, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1618, file: !1619, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1618, file: !1619, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1618, file: !1619, line: 831, baseType: !662, size: 64, offset: 4672)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1618, file: !1619, line: 833, baseType: !1793, size: 384, offset: 4736)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !196, line: 25, size: 384, elements: !1794)
!1794 = !{!1795, !1800}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1793, file: !196, line: 26, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!657, !1799}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1793, file: !196, line: 27, baseType: !1801, size: 320, offset: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1793, file: !196, line: 27, size: 320, elements: !1802)
!1802 = !{!1803, !1812, !1837}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1801, file: !196, line: 36, baseType: !1804, size: 320)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !196, line: 29, size: 320, elements: !1805)
!1805 = !{!1806, !1807, !1808, !1809, !1810, !1811}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1804, file: !196, line: 30, baseType: !609, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1804, file: !196, line: 31, baseType: !435, size: 32, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !196, line: 32, baseType: !435, size: 32, offset: 96)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1804, file: !196, line: 33, baseType: !435, size: 32, offset: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1804, file: !196, line: 34, baseType: !692, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1804, file: !196, line: 35, baseType: !609, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1801, file: !196, line: 46, baseType: !1813, size: 192)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !196, line: 38, size: 192, elements: !1814)
!1814 = !{!1815, !1816, !1817, !1836}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1813, file: !196, line: 39, baseType: !1728, size: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1813, file: !196, line: 40, baseType: !195, size: 32, offset: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, scope: !1813, file: !196, line: 41, baseType: !1818, size: 64, offset: 64)
!1818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1813, file: !196, line: 41, size: 64, elements: !1819)
!1819 = !{!1820, !1828}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1818, file: !196, line: 42, baseType: !1821, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1823, line: 7, size: 128, elements: !1824)
!1823 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1824 = !{!1825, !1827}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1822, file: !1823, line: 8, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !814, line: 93, baseType: !591)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1822, file: !1823, line: 9, baseType: !591, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1818, file: !196, line: 43, baseType: !1829, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1831, line: 7, size: 64, elements: !1832)
!1831 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1832 = !{!1833, !1835}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1830, file: !1831, line: 8, baseType: !1834, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1831, line: 5, baseType: !699)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1830, file: !1831, line: 9, baseType: !699, size: 32, offset: 32)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1813, file: !196, line: 45, baseType: !692, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1801, file: !196, line: 54, baseType: !1838, size: 256)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1801, file: !196, line: 48, size: 256, elements: !1839)
!1839 = !{!1840, !1848, !1849, !1850, !1851}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1838, file: !196, line: 49, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1843, line: 36, size: 64, elements: !1844)
!1843 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1846, !1847}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1842, file: !1843, line: 37, baseType: !339, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1842, file: !1843, line: 38, baseType: !1606, size: 16, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1842, file: !1843, line: 39, baseType: !1606, size: 16, offset: 48)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1838, file: !196, line: 50, baseType: !339, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1838, file: !196, line: 51, baseType: !339, size: 32, offset: 96)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1838, file: !196, line: 52, baseType: !662, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1838, file: !196, line: 53, baseType: !662, size: 64, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1618, file: !1619, line: 835, baseType: !1853, size: 32, offset: 5120)
!1853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !307, line: 22, baseType: !1854)
!1854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !814, line: 28, baseType: !339)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1618, file: !1619, line: 836, baseType: !1853, size: 32, offset: 5152)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1618, file: !1619, line: 840, baseType: !662, size: 64, offset: 5184)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1618, file: !1619, line: 849, baseType: !1617, size: 64, offset: 5248)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1618, file: !1619, line: 852, baseType: !1617, size: 64, offset: 5312)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1618, file: !1619, line: 857, baseType: !715, size: 128, offset: 5376)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1618, file: !1619, line: 858, baseType: !715, size: 128, offset: 5504)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1618, file: !1619, line: 859, baseType: !1617, size: 64, offset: 5632)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1618, file: !1619, line: 867, baseType: !715, size: 128, offset: 5696)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1618, file: !1619, line: 868, baseType: !715, size: 128, offset: 5824)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1618, file: !1619, line: 871, baseType: !1865, size: 64, offset: 5952)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !217, line: 59, size: 768, elements: !1867)
!1867 = !{!1868, !1869, !1870, !1871, !1873, !1874, !1881, !1882}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1866, file: !217, line: 61, baseType: !454, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1866, file: !217, line: 62, baseType: !7, size: 32, offset: 32)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1866, file: !217, line: 63, baseType: !743, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1866, file: !217, line: 65, baseType: !1872, size: 256, offset: 64)
!1872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 256, elements: !592)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1866, file: !217, line: 66, baseType: !1124, size: 64, offset: 320)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1866, file: !217, line: 68, baseType: !1875, size: 128, offset: 384)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1876, line: 40, baseType: !1877)
!1876 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1876, line: 36, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1877, file: !1876, line: 37, baseType: !743)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1877, file: !1876, line: 38, baseType: !715, size: 128)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1866, file: !217, line: 69, baseType: !869, size: 128, align: 64, offset: 512)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1866, file: !217, line: 70, baseType: !1883, size: 128, offset: 640)
!1883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1884, size: 128, elements: !1763)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !217, line: 54, size: 128, elements: !1885)
!1885 = !{!1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1884, file: !217, line: 55, baseType: !339, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1884, file: !217, line: 56, baseType: !1888, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !217, line: 56, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1618, file: !1619, line: 872, baseType: !1891, size: 512, offset: 6016)
!1891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1128, size: 512, elements: !592)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1618, file: !1619, line: 873, baseType: !715, size: 128, offset: 6528)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1618, file: !1619, line: 874, baseType: !715, size: 128, offset: 6656)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1618, file: !1619, line: 876, baseType: !1895, size: 64, offset: 6784)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1897, line: 26, size: 192, elements: !1898)
!1897 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1896, file: !1897, line: 27, baseType: !7, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1896, file: !1897, line: 28, baseType: !1901, size: 128, offset: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1902, line: 43, size: 128, elements: !1903)
!1902 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1901, file: !1902, line: 44, baseType: !1265)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1901, file: !1902, line: 45, baseType: !715, size: 128)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1618, file: !1619, line: 879, baseType: !1194, size: 64, offset: 6848)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1618, file: !1619, line: 882, baseType: !1194, size: 64, offset: 6912)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1618, file: !1619, line: 884, baseType: !692, size: 64, offset: 6976)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1618, file: !1619, line: 885, baseType: !692, size: 64, offset: 7040)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1618, file: !1619, line: 890, baseType: !692, size: 64, offset: 7104)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1618, file: !1619, line: 891, baseType: !1912, size: 128, offset: 7168)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1619, line: 242, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1912, file: !1619, line: 244, baseType: !692, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1912, file: !1619, line: 245, baseType: !692, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1912, file: !1619, line: 246, baseType: !1265, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1618, file: !1619, line: 900, baseType: !662, size: 64, offset: 7296)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1618, file: !1619, line: 901, baseType: !662, size: 64, offset: 7360)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1618, file: !1619, line: 904, baseType: !692, size: 64, offset: 7424)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1618, file: !1619, line: 907, baseType: !692, size: 64, offset: 7488)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1618, file: !1619, line: 910, baseType: !662, size: 64, offset: 7552)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1618, file: !1619, line: 911, baseType: !662, size: 64, offset: 7616)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1618, file: !1619, line: 914, baseType: !1924, size: 640, offset: 7680)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1925, line: 123, size: 640, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1926 = !{!1927, !1933, !1934}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1924, file: !1925, line: 124, baseType: !1928, size: 576)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 576, elements: !556)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1925, line: 108, size: 192, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1929, file: !1925, line: 109, baseType: !692, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1929, file: !1925, line: 110, baseType: !1737, size: 128, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1924, file: !1925, line: 125, baseType: !7, size: 32, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1924, file: !1925, line: 126, baseType: !7, size: 32, offset: 608)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1618, file: !1619, line: 917, baseType: !1936, size: 192, offset: 8320)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1925, line: 134, size: 192, elements: !1937)
!1937 = !{!1938, !1939}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1936, file: !1925, line: 135, baseType: !869, size: 128, align: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1936, file: !1925, line: 136, baseType: !7, size: 32, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1618, file: !1619, line: 923, baseType: !1941, size: 64, offset: 8512)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1943)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1944, line: 111, size: 1280, elements: !1945)
!1944 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1945 = !{!1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1965, !1966, !1967, !1968, !1969, !1970, !2075, !2076, !2077, !2078, !2104, !2107, !2117}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1943, file: !1944, line: 112, baseType: !459, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1943, file: !1944, line: 120, baseType: !931, size: 32, offset: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1943, file: !1944, line: 121, baseType: !939, size: 32, offset: 64)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1943, file: !1944, line: 122, baseType: !931, size: 32, offset: 96)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1943, file: !1944, line: 123, baseType: !939, size: 32, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1943, file: !1944, line: 124, baseType: !931, size: 32, offset: 160)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1943, file: !1944, line: 125, baseType: !939, size: 32, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1943, file: !1944, line: 126, baseType: !931, size: 32, offset: 224)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1943, file: !1944, line: 127, baseType: !939, size: 32, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1943, file: !1944, line: 128, baseType: !7, size: 32, offset: 288)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1943, file: !1944, line: 129, baseType: !1957, size: 64, offset: 320)
!1957 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1958, line: 26, baseType: !1959)
!1958 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1958, line: 24, size: 64, elements: !1960)
!1960 = !{!1961}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1959, file: !1958, line: 25, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !436, size: 64, elements: !1963)
!1963 = !{!1964}
!1964 = !DISubrange(count: 2)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1943, file: !1944, line: 130, baseType: !1957, size: 64, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1943, file: !1944, line: 131, baseType: !1957, size: 64, offset: 448)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1943, file: !1944, line: 132, baseType: !1957, size: 64, offset: 512)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1943, file: !1944, line: 133, baseType: !1957, size: 64, offset: 576)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1943, file: !1944, line: 135, baseType: !313, size: 8, offset: 640)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1943, file: !1944, line: 137, baseType: !1971, size: 64, offset: 704)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1973, line: 189, size: 1664, elements: !1974)
!1973 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1974 = !{!1975, !1976, !1979, !1984, !1985, !1988, !1989, !1994, !1995, !1996, !1997, !1999, !2000, !2001, !2002, !2003, !2039, !2060}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1972, file: !1973, line: 190, baseType: !454, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1972, file: !1973, line: 191, baseType: !1977, size: 32, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1973, line: 28, baseType: !1978)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !307, line: 98, baseType: !699)
!1979 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 192, baseType: !1980, size: 192, offset: 64)
!1980 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 192, size: 192, elements: !1981)
!1981 = !{!1982, !1983}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1980, file: !1973, line: 193, baseType: !715, size: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1980, file: !1973, line: 194, baseType: !1245, size: 192, align: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1972, file: !1973, line: 199, baseType: !1252, size: 256, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1972, file: !1973, line: 200, baseType: !1986, size: 64, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1973, line: 200, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1972, file: !1973, line: 201, baseType: !308, size: 64, offset: 576)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 202, baseType: !1990, size: 64, offset: 640)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 202, size: 64, elements: !1991)
!1991 = !{!1992, !1993}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1990, file: !1973, line: 203, baseType: !1029, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1990, file: !1973, line: 204, baseType: !1029, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1972, file: !1973, line: 206, baseType: !1029, size: 64, offset: 704)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1972, file: !1973, line: 207, baseType: !931, size: 32, offset: 768)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1972, file: !1973, line: 208, baseType: !939, size: 32, offset: 800)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1972, file: !1973, line: 209, baseType: !1998, size: 32, offset: 832)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1973, line: 31, baseType: !1048)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1972, file: !1973, line: 210, baseType: !355, size: 16, offset: 864)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1972, file: !1973, line: 211, baseType: !355, size: 16, offset: 880)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1972, file: !1973, line: 215, baseType: !1606, size: 16, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1972, file: !1973, line: 222, baseType: !662, size: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 239, baseType: !2004, size: 320, offset: 1024)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 239, size: 320, elements: !2005)
!2005 = !{!2006, !2031}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2004, file: !1973, line: 240, baseType: !2007, size: 320)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1973, line: 108, size: 320, elements: !2008)
!2008 = !{!2009, !2010, !2020, !2023, !2030}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2007, file: !1973, line: 110, baseType: !662, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, scope: !2007, file: !1973, line: 111, baseType: !2011, size: 64, offset: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2007, file: !1973, line: 111, size: 64, elements: !2012)
!2012 = !{!2013, !2019}
!2013 = !DIDerivedType(tag: DW_TAG_member, scope: !2011, file: !1973, line: 112, baseType: !2014, size: 64)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2011, file: !1973, line: 112, size: 64, elements: !2015)
!2015 = !{!2016, !2017}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2014, file: !1973, line: 114, baseType: !352, size: 16)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2014, file: !1973, line: 115, baseType: !2018, size: 48, offset: 16)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 48, elements: !627)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2011, file: !1973, line: 121, baseType: !662, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2007, file: !1973, line: 123, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1973, line: 96, flags: DIFlagFwdDecl)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2007, file: !1973, line: 124, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1973, line: 102, size: 192, elements: !2026)
!2026 = !{!2027, !2028, !2029}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2025, file: !1973, line: 103, baseType: !869, size: 128, align: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2025, file: !1973, line: 104, baseType: !454, size: 32, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2025, file: !1973, line: 105, baseType: !500, size: 8, offset: 160)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2007, file: !1973, line: 125, baseType: !322, size: 64, offset: 256)
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2004, file: !1973, line: 241, baseType: !2032, size: 320)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2004, file: !1973, line: 241, size: 320, elements: !2033)
!2033 = !{!2034, !2035, !2036, !2037, !2038}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2032, file: !1973, line: 242, baseType: !662, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2032, file: !1973, line: 243, baseType: !662, size: 64, offset: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2032, file: !1973, line: 244, baseType: !2021, size: 64, offset: 128)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2032, file: !1973, line: 245, baseType: !2024, size: 64, offset: 192)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2032, file: !1973, line: 246, baseType: !345, size: 64, offset: 256)
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1973, line: 254, baseType: !2040, size: 256, offset: 1344)
!2040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1973, line: 254, size: 256, elements: !2041)
!2041 = !{!2042, !2048}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2040, file: !1973, line: 255, baseType: !2043, size: 256)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1973, line: 128, size: 256, elements: !2044)
!2044 = !{!2045, !2046}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2043, file: !1973, line: 129, baseType: !308, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2043, file: !1973, line: 130, baseType: !2047, size: 256)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 256, elements: !592)
!2048 = !DIDerivedType(tag: DW_TAG_member, scope: !2040, file: !1973, line: 256, baseType: !2049, size: 256)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2040, file: !1973, line: 256, size: 256, elements: !2050)
!2050 = !{!2051, !2052}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2049, file: !1973, line: 258, baseType: !715, size: 128)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2049, file: !1973, line: 259, baseType: !2053, size: 128, offset: 128)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2054, line: 22, size: 128, elements: !2055)
!2054 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2055 = !{!2056, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2053, file: !2054, line: 23, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2054, line: 23, flags: DIFlagFwdDecl)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2053, file: !2054, line: 24, baseType: !662, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1972, file: !1973, line: 274, baseType: !2061, size: 64, offset: 1600)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1973, line: 170, size: 192, elements: !2063)
!2063 = !{!2064, !2073, !2074}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2062, file: !1973, line: 171, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1973, line: 165, baseType: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!339, !1971, !2069, !2071, !1971}
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2022)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2043)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2062, file: !1973, line: 172, baseType: !1971, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2062, file: !1973, line: 173, baseType: !2021, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1943, file: !1944, line: 138, baseType: !1971, size: 64, offset: 768)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1943, file: !1944, line: 139, baseType: !1971, size: 64, offset: 832)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1943, file: !1944, line: 140, baseType: !1971, size: 64, offset: 896)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1943, file: !1944, line: 145, baseType: !2079, size: 64, offset: 960)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2081, line: 13, size: 896, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2080, file: !2081, line: 14, baseType: !454, size: 32)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2080, file: !2081, line: 15, baseType: !459, size: 32, offset: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2080, file: !2081, line: 16, baseType: !459, size: 32, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2080, file: !2081, line: 21, baseType: !1256, size: 64, offset: 128)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2080, file: !2081, line: 27, baseType: !662, size: 64, offset: 192)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2080, file: !2081, line: 28, baseType: !662, size: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2080, file: !2081, line: 29, baseType: !1256, size: 64, offset: 320)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2080, file: !2081, line: 32, baseType: !1128, size: 128, offset: 384)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2080, file: !2081, line: 33, baseType: !931, size: 32, offset: 512)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2080, file: !2081, line: 37, baseType: !1256, size: 64, offset: 576)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2080, file: !2081, line: 44, baseType: !2094, size: 256, offset: 640)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2095, line: 15, size: 256, elements: !2096)
!2095 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2096 = !{!2097, !2098, !2099, !2100, !2101, !2102, !2103}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2094, file: !2095, line: 16, baseType: !1265)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2094, file: !2095, line: 18, baseType: !339, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2094, file: !2095, line: 19, baseType: !339, size: 32, offset: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2094, file: !2095, line: 20, baseType: !339, size: 32, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2094, file: !2095, line: 21, baseType: !339, size: 32, offset: 96)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2094, file: !2095, line: 22, baseType: !662, size: 64, offset: 128)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2094, file: !2095, line: 23, baseType: !662, size: 64, offset: 192)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1943, file: !1944, line: 146, baseType: !2105, size: 64, offset: 1024)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !932, line: 18, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1943, file: !1944, line: 147, baseType: !2108, size: 64, offset: 1088)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1944, line: 25, size: 64, elements: !2110)
!2110 = !{!2111, !2112, !2113}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2109, file: !1944, line: 26, baseType: !459, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2109, file: !1944, line: 27, baseType: !339, size: 32, offset: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2109, file: !1944, line: 28, baseType: !2114, offset: 64)
!2114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, elements: !2115)
!2115 = !{!2116}
!2116 = !DISubrange(count: 0)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !1943, file: !1944, line: 149, baseType: !2118, size: 128, offset: 1152)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1943, file: !1944, line: 149, size: 128, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2118, file: !1944, line: 150, baseType: !339, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2118, file: !1944, line: 151, baseType: !869, size: 128, align: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1618, file: !1619, line: 926, baseType: !1941, size: 64, offset: 8576)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1618, file: !1619, line: 929, baseType: !1941, size: 64, offset: 8640)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1618, file: !1619, line: 933, baseType: !1971, size: 64, offset: 8704)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1618, file: !1619, line: 943, baseType: !2126, size: 128, offset: 8768)
!2126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !2127)
!2127 = !{!2128}
!2128 = !DISubrange(count: 16)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1618, file: !1619, line: 945, baseType: !2130, size: 64, offset: 8896)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1619, line: 49, flags: DIFlagFwdDecl)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1618, file: !1619, line: 956, baseType: !2133, size: 64, offset: 8960)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1619, line: 45, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1618, file: !1619, line: 959, baseType: !2136, size: 64, offset: 9024)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1619, line: 959, flags: DIFlagFwdDecl)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1618, file: !1619, line: 962, baseType: !2139, size: 64, offset: 9088)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1619, line: 66, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1618, file: !1619, line: 966, baseType: !2142, size: 64, offset: 9152)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2144, line: 35, flags: DIFlagFwdDecl)
!2144 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1618, file: !1619, line: 969, baseType: !2146, size: 64, offset: 9216)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2148, line: 82, size: 7296, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2149 = !{!2150, !2151, !2152, !2153, !2154, !2155, !2156, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2185, !2194, !2195, !2197, !2198, !2199, !2202, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2232, !2233, !2240, !2241, !2242, !2243, !2244, !2245}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2147, file: !2148, line: 83, baseType: !454, size: 32)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2147, file: !2148, line: 84, baseType: !459, size: 32, offset: 32)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2147, file: !2148, line: 85, baseType: !339, size: 32, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2147, file: !2148, line: 86, baseType: !715, size: 128, offset: 128)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2147, file: !2148, line: 88, baseType: !1875, size: 128, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2147, file: !2148, line: 91, baseType: !1617, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2147, file: !2148, line: 94, baseType: !2157, size: 192, offset: 448)
!2157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2158, line: 30, size: 192, elements: !2159)
!2158 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2159 = !{!2160, !2161}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2157, file: !2158, line: 31, baseType: !715, size: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2157, file: !2158, line: 32, baseType: !2162, size: 64, offset: 128)
!2162 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2163, line: 25, baseType: !2164)
!2163 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2163, line: 23, size: 64, elements: !2165)
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2164, file: !2163, line: 24, baseType: !1762, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2147, file: !2148, line: 97, baseType: !1124, size: 64, offset: 640)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2147, file: !2148, line: 100, baseType: !339, size: 32, offset: 704)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2147, file: !2148, line: 106, baseType: !339, size: 32, offset: 736)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2147, file: !2148, line: 107, baseType: !1617, size: 64, offset: 768)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2147, file: !2148, line: 110, baseType: !339, size: 32, offset: 832)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2147, file: !2148, line: 111, baseType: !7, size: 32, offset: 864)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2147, file: !2148, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2147, file: !2148, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2147, file: !2148, line: 128, baseType: !339, size: 32, offset: 928)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2147, file: !2148, line: 129, baseType: !715, size: 128, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2147, file: !2148, line: 132, baseType: !1688, size: 512, offset: 1088)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2147, file: !2148, line: 133, baseType: !1696, size: 64, offset: 1600)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2147, file: !2148, line: 140, baseType: !2180, size: 256, offset: 1664)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2181, size: 256, elements: !1963)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2148, line: 38, size: 128, elements: !2182)
!2182 = !{!2183, !2184}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2181, file: !2148, line: 39, baseType: !692, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2181, file: !2148, line: 40, baseType: !692, size: 64, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2147, file: !2148, line: 146, baseType: !2186, size: 192, offset: 1920)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2148, line: 66, size: 192, elements: !2187)
!2187 = !{!2188}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2186, file: !2148, line: 67, baseType: !2189, size: 192)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2148, line: 47, size: 192, elements: !2190)
!2190 = !{!2191, !2192, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2189, file: !2148, line: 48, baseType: !1258, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2189, file: !2148, line: 49, baseType: !1258, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2189, file: !2148, line: 50, baseType: !1258, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2147, file: !2148, line: 150, baseType: !1924, size: 640, offset: 2112)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2147, file: !2148, line: 153, baseType: !2196, size: 256, offset: 2752)
!2196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1865, size: 256, elements: !592)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2147, file: !2148, line: 159, baseType: !1865, size: 64, offset: 3008)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2147, file: !2148, line: 162, baseType: !339, size: 32, offset: 3072)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2147, file: !2148, line: 164, baseType: !2200, size: 64, offset: 3136)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2148, line: 164, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2147, file: !2148, line: 175, baseType: !2203, size: 32, offset: 3200)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !892, line: 805, baseType: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !892, line: 798, size: 32, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2204, file: !892, line: 803, baseType: !891, size: 32)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2204, file: !892, line: 804, baseType: !743, offset: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2147, file: !2148, line: 176, baseType: !692, size: 64, offset: 3264)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2147, file: !2148, line: 176, baseType: !692, size: 64, offset: 3328)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2147, file: !2148, line: 176, baseType: !692, size: 64, offset: 3392)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2147, file: !2148, line: 176, baseType: !692, size: 64, offset: 3456)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2147, file: !2148, line: 177, baseType: !692, size: 64, offset: 3520)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2147, file: !2148, line: 178, baseType: !692, size: 64, offset: 3584)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2147, file: !2148, line: 179, baseType: !1912, size: 128, offset: 3648)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2147, file: !2148, line: 180, baseType: !662, size: 64, offset: 3776)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2147, file: !2148, line: 180, baseType: !662, size: 64, offset: 3840)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2147, file: !2148, line: 180, baseType: !662, size: 64, offset: 3904)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2147, file: !2148, line: 180, baseType: !662, size: 64, offset: 3968)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2147, file: !2148, line: 181, baseType: !662, size: 64, offset: 4032)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2147, file: !2148, line: 181, baseType: !662, size: 64, offset: 4096)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2147, file: !2148, line: 181, baseType: !662, size: 64, offset: 4160)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2147, file: !2148, line: 181, baseType: !662, size: 64, offset: 4224)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2147, file: !2148, line: 182, baseType: !662, size: 64, offset: 4288)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2147, file: !2148, line: 182, baseType: !662, size: 64, offset: 4352)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2147, file: !2148, line: 182, baseType: !662, size: 64, offset: 4416)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2147, file: !2148, line: 182, baseType: !662, size: 64, offset: 4480)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2147, file: !2148, line: 183, baseType: !662, size: 64, offset: 4544)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2147, file: !2148, line: 183, baseType: !662, size: 64, offset: 4608)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2147, file: !2148, line: 184, baseType: !2230, offset: 4672)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2231, line: 12, elements: !757)
!2231 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2147, file: !2148, line: 192, baseType: !312, size: 64, offset: 4672)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2147, file: !2148, line: 203, baseType: !2234, size: 2048, offset: 4736)
!2234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2235, size: 2048, elements: !2127)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2236, line: 43, size: 128, elements: !2237)
!2236 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2235, file: !2236, line: 44, baseType: !828, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2235, file: !2236, line: 45, baseType: !828, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2147, file: !2148, line: 220, baseType: !500, size: 8, offset: 6784)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2147, file: !2148, line: 221, baseType: !1606, size: 16, offset: 6800)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2147, file: !2148, line: 222, baseType: !1606, size: 16, offset: 6816)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2147, file: !2148, line: 224, baseType: !1457, size: 64, offset: 6848)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2147, file: !2148, line: 227, baseType: !1574, size: 192, offset: 6912)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2147, file: !2148, line: 233, baseType: !1574, size: 192, offset: 7104)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1618, file: !1619, line: 970, baseType: !2247, size: 64, offset: 9280)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2148, line: 20, size: 16576, elements: !2249)
!2249 = !{!2250, !2251, !2252, !2253}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2248, file: !2148, line: 21, baseType: !743)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2248, file: !2148, line: 22, baseType: !454, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2248, file: !2148, line: 23, baseType: !1875, size: 128, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2248, file: !2148, line: 24, baseType: !2254, size: 16384, offset: 192)
!2254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2255, size: 16384, elements: !786)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2158, line: 49, size: 256, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2255, file: !2158, line: 50, baseType: !2258, size: 256)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2158, line: 35, size: 256, elements: !2259)
!2259 = !{!2260, !2267, !2268, !2274}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2258, file: !2158, line: 37, baseType: !2261, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2262, line: 19, baseType: !2263)
!2262 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2262, line: 18, baseType: !2265)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{null, !339}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2258, file: !2158, line: 38, baseType: !662, size: 64, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2258, file: !2158, line: 44, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2262, line: 22, baseType: !2270)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2262, line: 21, baseType: !2272)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2258, file: !2158, line: 46, baseType: !2162, size: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1618, file: !1619, line: 971, baseType: !2162, size: 64, offset: 9344)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1618, file: !1619, line: 972, baseType: !2162, size: 64, offset: 9408)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1618, file: !1619, line: 974, baseType: !2162, size: 64, offset: 9472)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1618, file: !1619, line: 975, baseType: !2157, size: 192, offset: 9536)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1618, file: !1619, line: 976, baseType: !662, size: 64, offset: 9728)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1618, file: !1619, line: 977, baseType: !826, size: 64, offset: 9792)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1618, file: !1619, line: 978, baseType: !7, size: 32, offset: 9856)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1618, file: !1619, line: 980, baseType: !872, size: 64, offset: 9920)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1618, file: !1619, line: 989, baseType: !2284, size: 128, offset: 9984)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2285, line: 35, size: 128, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !{!2287, !2288, !2289}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2284, file: !2285, line: 36, baseType: !339, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2284, file: !2285, line: 37, baseType: !459, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2284, file: !2285, line: 38, baseType: !2290, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2285, line: 23, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1618, file: !1619, line: 992, baseType: !692, size: 64, offset: 10112)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1618, file: !1619, line: 993, baseType: !692, size: 64, offset: 10176)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1618, file: !1619, line: 996, baseType: !743, offset: 10240)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1618, file: !1619, line: 999, baseType: !1265, offset: 10240)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1618, file: !1619, line: 1001, baseType: !2297, size: 64, offset: 10240)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1619, line: 636, size: 64, elements: !2298)
!2298 = !{!2299}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2297, file: !1619, line: 637, baseType: !2300, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1618, file: !1619, line: 1005, baseType: !1237, size: 128, offset: 10304)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1618, file: !1619, line: 1007, baseType: !1617, size: 64, offset: 10432)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1618, file: !1619, line: 1009, baseType: !2304, size: 64, offset: 10496)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1619, line: 1009, flags: DIFlagFwdDecl)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1618, file: !1619, line: 1043, baseType: !308, size: 64, offset: 10560)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1618, file: !1619, line: 1046, baseType: !2308, size: 64, offset: 10624)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1619, line: 41, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1618, file: !1619, line: 1050, baseType: !2311, size: 64, offset: 10688)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1619, line: 42, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1618, file: !1619, line: 1054, baseType: !2314, size: 64, offset: 10752)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1619, line: 55, flags: DIFlagFwdDecl)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1618, file: !1619, line: 1056, baseType: !2317, size: 64, offset: 10816)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1619, line: 40, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1618, file: !1619, line: 1058, baseType: !2320, size: 64, offset: 10880)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2322, line: 99, size: 704, elements: !2323)
!2322 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2323 = !{!2324, !2325, !2326, !2327, !2328, !2329, !2330, !2349, !2350}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2321, file: !2322, line: 100, baseType: !1256, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2321, file: !2322, line: 101, baseType: !459, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2321, file: !2322, line: 102, baseType: !459, size: 32, offset: 96)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2321, file: !2322, line: 105, baseType: !743, offset: 128)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2321, file: !2322, line: 107, baseType: !355, size: 16, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2321, file: !2322, line: 109, baseType: !1228, size: 128, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2321, file: !2322, line: 110, baseType: !2331, size: 64, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2322, line: 73, size: 448, elements: !2333)
!2333 = !{!2334, !2337, !2338, !2343, !2348}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2332, file: !2322, line: 74, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2322, line: 74, flags: DIFlagFwdDecl)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2332, file: !2322, line: 75, baseType: !2320, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2322, line: 83, baseType: !2339, size: 128, offset: 128)
!2339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2322, line: 83, size: 128, elements: !2340)
!2340 = !{!2341, !2342}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2339, file: !2322, line: 84, baseType: !715, size: 128)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2339, file: !2322, line: 85, baseType: !1418, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, scope: !2332, file: !2322, line: 87, baseType: !2344, size: 128, offset: 256)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2332, file: !2322, line: 87, size: 128, elements: !2345)
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2344, file: !2322, line: 88, baseType: !1128, size: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2344, file: !2322, line: 89, baseType: !869, size: 128, align: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2332, file: !2322, line: 92, baseType: !7, size: 32, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2321, file: !2322, line: 111, baseType: !1124, size: 64, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2321, file: !2322, line: 113, baseType: !2351, size: 256, offset: 448)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2352, line: 102, size: 256, elements: !2353)
!2352 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2353 = !{!2354, !2355, !2356}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2351, file: !2352, line: 103, baseType: !1256, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2351, file: !2352, line: 104, baseType: !715, size: 128, offset: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2351, file: !2352, line: 105, baseType: !2357, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2352, line: 21, baseType: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1618, file: !1619, line: 1061, baseType: !2363, size: 64, offset: 10944)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1619, line: 43, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1618, file: !1619, line: 1064, baseType: !662, size: 64, offset: 11008)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1618, file: !1619, line: 1065, baseType: !2367, size: 64, offset: 11072)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2158, line: 14, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2158, line: 12, size: 384, elements: !2370)
!2370 = !{!2371}
!2371 = !DIDerivedType(tag: DW_TAG_member, scope: !2369, file: !2158, line: 13, baseType: !2372, size: 384)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2369, file: !2158, line: 13, size: 384, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2372, file: !2158, line: 13, baseType: !339, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2372, file: !2158, line: 13, baseType: !339, size: 32, offset: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2372, file: !2158, line: 13, baseType: !339, size: 32, offset: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2372, file: !2158, line: 13, baseType: !2378, size: 256, offset: 128)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2379, line: 32, size: 256, elements: !2380)
!2379 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2380 = !{!2381, !2386, !2399, !2405, !2414, !2434, !2439}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2378, file: !2379, line: 37, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 34, size: 64, elements: !2383)
!2383 = !{!2384, !2385}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2382, file: !2379, line: 35, baseType: !1854, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2382, file: !2379, line: 36, baseType: !937, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2378, file: !2379, line: 45, baseType: !2387, size: 192)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 40, size: 192, elements: !2388)
!2388 = !{!2389, !2391, !2392, !2398}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2387, file: !2379, line: 41, baseType: !2390, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !814, line: 95, baseType: !339)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2387, file: !2379, line: 42, baseType: !339, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2387, file: !2379, line: 43, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2379, line: 11, baseType: !2394)
!2394 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2379, line: 8, size: 64, elements: !2395)
!2395 = !{!2396, !2397}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2394, file: !2379, line: 9, baseType: !339, size: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2394, file: !2379, line: 10, baseType: !308, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2387, file: !2379, line: 44, baseType: !339, size: 32, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2378, file: !2379, line: 52, baseType: !2400, size: 128)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 48, size: 128, elements: !2401)
!2401 = !{!2402, !2403, !2404}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2400, file: !2379, line: 49, baseType: !1854, size: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2400, file: !2379, line: 50, baseType: !937, size: 32, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2400, file: !2379, line: 51, baseType: !2393, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2378, file: !2379, line: 61, baseType: !2406, size: 256)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 55, size: 256, elements: !2407)
!2407 = !{!2408, !2409, !2410, !2411, !2413}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2406, file: !2379, line: 56, baseType: !1854, size: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2406, file: !2379, line: 57, baseType: !937, size: 32, offset: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2406, file: !2379, line: 58, baseType: !339, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2406, file: !2379, line: 59, baseType: !2412, size: 64, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !814, line: 94, baseType: !815)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2406, file: !2379, line: 60, baseType: !2412, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2378, file: !2379, line: 95, baseType: !2415, size: 256)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 64, size: 256, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2415, file: !2379, line: 65, baseType: !308, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, scope: !2415, file: !2379, line: 77, baseType: !2419, size: 192, offset: 64)
!2419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2415, file: !2379, line: 77, size: 192, elements: !2420)
!2420 = !{!2421, !2422, !2429}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2419, file: !2379, line: 82, baseType: !1606, size: 16)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2419, file: !2379, line: 88, baseType: !2423, size: 192)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2379, line: 84, size: 192, elements: !2424)
!2424 = !{!2425, !2427, !2428}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2423, file: !2379, line: 85, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 64, elements: !480)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2423, file: !2379, line: 86, baseType: !308, size: 64, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2423, file: !2379, line: 87, baseType: !308, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2419, file: !2379, line: 93, baseType: !2430, size: 96)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2419, file: !2379, line: 90, size: 96, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2430, file: !2379, line: 91, baseType: !2426, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2430, file: !2379, line: 92, baseType: !436, size: 32, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2378, file: !2379, line: 101, baseType: !2435, size: 128)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 98, size: 128, elements: !2436)
!2436 = !{!2437, !2438}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2435, file: !2379, line: 99, baseType: !657, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2435, file: !2379, line: 100, baseType: !339, size: 32, offset: 64)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2378, file: !2379, line: 108, baseType: !2440, size: 128)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2378, file: !2379, line: 104, size: 128, elements: !2441)
!2441 = !{!2442, !2443, !2444}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2440, file: !2379, line: 105, baseType: !308, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2440, file: !2379, line: 106, baseType: !339, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2440, file: !2379, line: 107, baseType: !7, size: 32, offset: 96)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1618, file: !1619, line: 1067, baseType: !2230, offset: 11136)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1618, file: !1619, line: 1099, baseType: !2447, size: 64, offset: 11136)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1619, line: 56, flags: DIFlagFwdDecl)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1618, file: !1619, line: 1103, baseType: !715, size: 128, offset: 11200)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1618, file: !1619, line: 1104, baseType: !2451, size: 64, offset: 11328)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1619, line: 46, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1618, file: !1619, line: 1105, baseType: !1574, size: 192, offset: 11392)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1618, file: !1619, line: 1106, baseType: !7, size: 32, offset: 11584)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1618, file: !1619, line: 1109, baseType: !2456, size: 128, offset: 11648)
!2456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2457, size: 128, elements: !1963)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1619, line: 51, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1618, file: !1619, line: 1110, baseType: !1574, size: 192, offset: 11776)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1618, file: !1619, line: 1111, baseType: !715, size: 128, offset: 11968)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1618, file: !1619, line: 1173, baseType: !2462, size: 64, offset: 12096)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2464, line: 62, size: 256, align: 256, elements: !2465)
!2464 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2465 = !{!2466, !2467, !2468, !2473}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2463, file: !2464, line: 75, baseType: !436, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2463, file: !2464, line: 90, baseType: !436, size: 32, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2463, file: !2464, line: 124, baseType: !2469, size: 64, offset: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2463, file: !2464, line: 109, size: 64, elements: !2470)
!2470 = !{!2471, !2472}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2469, file: !2464, line: 110, baseType: !310, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2469, file: !2464, line: 112, baseType: !310, size: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2463, file: !2464, line: 144, baseType: !436, size: 32, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1618, file: !1619, line: 1174, baseType: !435, size: 32, offset: 12160)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1618, file: !1619, line: 1179, baseType: !662, size: 64, offset: 12224)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1618, file: !1619, line: 1182, baseType: !2477, size: 128, offset: 12288)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1554, line: 76, size: 128, elements: !2478)
!2478 = !{!2479, !2484, !2485}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2477, file: !1554, line: 85, baseType: !2480, size: 64)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2481, line: 7, size: 64, elements: !2482)
!2481 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2482 = !{!2483}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2480, file: !2481, line: 12, baseType: !1759, size: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2477, file: !1554, line: 88, baseType: !500, size: 8, offset: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2477, file: !1554, line: 95, baseType: !500, size: 8, offset: 72)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !1618, file: !1619, line: 1184, baseType: !2487, size: 128, offset: 12416)
!2487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1618, file: !1619, line: 1184, size: 128, elements: !2488)
!2488 = !{!2489, !2490}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2487, file: !1619, line: 1185, baseType: !454, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2487, file: !1619, line: 1186, baseType: !869, size: 128, align: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1618, file: !1619, line: 1190, baseType: !2492, size: 64, offset: 12544)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1619, line: 53, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1618, file: !1619, line: 1192, baseType: !2495, size: 128, offset: 12608)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1554, line: 64, size: 128, elements: !2496)
!2496 = !{!2497, !2498, !2499}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2495, file: !1554, line: 65, baseType: !1210, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2495, file: !1554, line: 67, baseType: !436, size: 32, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2495, file: !1554, line: 68, baseType: !436, size: 32, offset: 96)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1618, file: !1619, line: 1206, baseType: !339, size: 32, offset: 12736)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1618, file: !1619, line: 1207, baseType: !339, size: 32, offset: 12768)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1618, file: !1619, line: 1209, baseType: !662, size: 64, offset: 12800)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1618, file: !1619, line: 1219, baseType: !692, size: 64, offset: 12864)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1618, file: !1619, line: 1220, baseType: !692, size: 64, offset: 12928)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1618, file: !1619, line: 1317, baseType: !339, size: 32, offset: 12992)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1618, file: !1619, line: 1319, baseType: !1617, size: 64, offset: 13056)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1618, file: !1619, line: 1322, baseType: !2508, size: 64, offset: 13120)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2510, line: 56, size: 512, elements: !2511)
!2510 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2511 = !{!2512, !2513, !2514, !2515, !2516, !2517, !2518, !2520}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2509, file: !2510, line: 57, baseType: !2508, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2509, file: !2510, line: 58, baseType: !308, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2509, file: !2510, line: 59, baseType: !662, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2509, file: !2510, line: 60, baseType: !662, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2509, file: !2510, line: 61, baseType: !1305, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2509, file: !2510, line: 62, baseType: !7, size: 32, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2509, file: !2510, line: 63, baseType: !2519, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !307, line: 153, baseType: !692)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2509, file: !2510, line: 64, baseType: !2521, size: 64, offset: 448)
!2521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1618, file: !1619, line: 1326, baseType: !454, size: 32, offset: 13184)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1618, file: !1619, line: 1342, baseType: !308, size: 64, offset: 13248)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1618, file: !1619, line: 1343, baseType: !310, size: 64, offset: 13312)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1618, file: !1619, line: 1344, baseType: !692, size: 64, offset: 13376)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1618, file: !1619, line: 1345, baseType: !310, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1618, file: !1619, line: 1346, baseType: !310, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1618, file: !1619, line: 1347, baseType: !310, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1618, file: !1619, line: 1348, baseType: !869, size: 128, align: 64, offset: 13504)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1618, file: !1619, line: 1358, baseType: !2532, size: 34816, offset: 13824)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2533, line: 485, size: 34816, elements: !2534)
!2533 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2534 = !{!2535, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2564, !2565, !2566, !2567, !2568, !2569, !2572, !2573, !2574}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2532, file: !2533, line: 487, baseType: !2536, size: 192)
!2536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2537, size: 192, elements: !556)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2538, line: 16, size: 64, elements: !2539)
!2538 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2539 = !{!2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552}
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2537, file: !2538, line: 17, baseType: !352, size: 16)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2537, file: !2538, line: 18, baseType: !352, size: 16, offset: 16)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2537, file: !2538, line: 19, baseType: !352, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2537, file: !2538, line: 19, baseType: !352, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2537, file: !2538, line: 19, baseType: !352, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2537, file: !2538, line: 19, baseType: !352, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2537, file: !2538, line: 19, baseType: !352, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2537, file: !2538, line: 20, baseType: !352, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2537, file: !2538, line: 20, baseType: !352, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2537, file: !2538, line: 20, baseType: !352, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2537, file: !2538, line: 20, baseType: !352, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2537, file: !2538, line: 20, baseType: !352, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2537, file: !2538, line: 20, baseType: !352, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2532, file: !2533, line: 491, baseType: !662, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2532, file: !2533, line: 495, baseType: !355, size: 16, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2532, file: !2533, line: 496, baseType: !355, size: 16, offset: 272)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2532, file: !2533, line: 497, baseType: !355, size: 16, offset: 288)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2532, file: !2533, line: 498, baseType: !355, size: 16, offset: 304)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2532, file: !2533, line: 502, baseType: !662, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2532, file: !2533, line: 503, baseType: !662, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2532, file: !2533, line: 514, baseType: !2561, size: 256, offset: 448)
!2561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2562, size: 256, elements: !592)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2533, line: 483, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2532, file: !2533, line: 516, baseType: !662, size: 64, offset: 704)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2532, file: !2533, line: 518, baseType: !662, size: 64, offset: 768)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2532, file: !2533, line: 520, baseType: !662, size: 64, offset: 832)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2532, file: !2533, line: 521, baseType: !662, size: 64, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2532, file: !2533, line: 522, baseType: !662, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2532, file: !2533, line: 528, baseType: !2570, size: 64, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2533, line: 10, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2532, file: !2533, line: 535, baseType: !662, size: 64, offset: 1088)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2532, file: !2533, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2532, file: !2533, line: 540, baseType: !2575, size: 33280, offset: 1536)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2576, line: 317, size: 33280, elements: !2577)
!2576 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2577 = !{!2578, !2579, !2580}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2575, file: !2576, line: 330, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2575, file: !2576, line: 337, baseType: !662, size: 64, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2575, file: !2576, line: 348, baseType: !2581, size: 32768, offset: 512)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2576, line: 304, size: 32768, elements: !2582)
!2582 = !{!2583, !2596, !2635, !2685, !2698}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2581, file: !2576, line: 305, baseType: !2584, size: 896)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2576, line: 12, size: 896, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2595}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2584, file: !2576, line: 13, baseType: !435, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2584, file: !2576, line: 14, baseType: !435, size: 32, offset: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2584, file: !2576, line: 15, baseType: !435, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2584, file: !2576, line: 16, baseType: !435, size: 32, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2584, file: !2576, line: 17, baseType: !435, size: 32, offset: 128)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2584, file: !2576, line: 18, baseType: !435, size: 32, offset: 160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2584, file: !2576, line: 19, baseType: !435, size: 32, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2584, file: !2576, line: 22, baseType: !2594, size: 640, offset: 224)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 640, elements: !418)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2584, file: !2576, line: 25, baseType: !435, size: 32, offset: 864)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2581, file: !2576, line: 306, baseType: !2597, size: 4096, align: 128)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2576, line: 34, size: 4096, align: 128, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602, !2603, !2618, !2619, !2620, !2624, !2626, !2630}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2597, file: !2576, line: 35, baseType: !352, size: 16)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2597, file: !2576, line: 36, baseType: !352, size: 16, offset: 16)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2597, file: !2576, line: 37, baseType: !352, size: 16, offset: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2597, file: !2576, line: 38, baseType: !352, size: 16, offset: 48)
!2603 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !2576, line: 39, baseType: !2604, size: 128, offset: 64)
!2604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !2576, line: 39, size: 128, elements: !2605)
!2605 = !{!2606, !2611}
!2606 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !2576, line: 40, baseType: !2607, size: 128)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !2576, line: 40, size: 128, elements: !2608)
!2608 = !{!2609, !2610}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2607, file: !2576, line: 41, baseType: !692, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2607, file: !2576, line: 42, baseType: !692, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !2604, file: !2576, line: 44, baseType: !2612, size: 128)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2604, file: !2576, line: 44, size: 128, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2612, file: !2576, line: 45, baseType: !435, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2612, file: !2576, line: 46, baseType: !435, size: 32, offset: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2612, file: !2576, line: 47, baseType: !435, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2612, file: !2576, line: 48, baseType: !435, size: 32, offset: 96)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2597, file: !2576, line: 51, baseType: !435, size: 32, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2597, file: !2576, line: 52, baseType: !435, size: 32, offset: 224)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2597, file: !2576, line: 55, baseType: !2621, size: 1024, offset: 256)
!2621 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 1024, elements: !2622)
!2622 = !{!2623}
!2623 = !DISubrange(count: 32)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2597, file: !2576, line: 58, baseType: !2625, size: 2048, offset: 1280)
!2625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 2048, elements: !786)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2597, file: !2576, line: 60, baseType: !2627, size: 384, offset: 3328)
!2627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 384, elements: !2628)
!2628 = !{!2629}
!2629 = !DISubrange(count: 12)
!2630 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !2576, line: 62, baseType: !2631, size: 384, offset: 3712)
!2631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !2576, line: 62, size: 384, elements: !2632)
!2632 = !{!2633, !2634}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2631, file: !2576, line: 63, baseType: !2627, size: 384)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2631, file: !2576, line: 64, baseType: !2627, size: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2581, file: !2576, line: 307, baseType: !2636, size: 1088)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2576, line: 79, size: 1088, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2684}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2636, file: !2576, line: 80, baseType: !435, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2636, file: !2576, line: 81, baseType: !435, size: 32, offset: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2636, file: !2576, line: 82, baseType: !435, size: 32, offset: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2636, file: !2576, line: 83, baseType: !435, size: 32, offset: 96)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2636, file: !2576, line: 84, baseType: !435, size: 32, offset: 128)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2636, file: !2576, line: 85, baseType: !435, size: 32, offset: 160)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2636, file: !2576, line: 86, baseType: !435, size: 32, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2636, file: !2576, line: 88, baseType: !2594, size: 640, offset: 224)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2636, file: !2576, line: 89, baseType: !361, size: 8, offset: 864)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2636, file: !2576, line: 90, baseType: !361, size: 8, offset: 872)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2636, file: !2576, line: 91, baseType: !361, size: 8, offset: 880)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2636, file: !2576, line: 92, baseType: !361, size: 8, offset: 888)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2636, file: !2576, line: 93, baseType: !361, size: 8, offset: 896)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2636, file: !2576, line: 94, baseType: !361, size: 8, offset: 904)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2636, file: !2576, line: 95, baseType: !2653, size: 64, offset: 960)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2655, line: 11, size: 128, elements: !2656)
!2655 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2654, file: !2655, line: 12, baseType: !657, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2654, file: !2655, line: 13, baseType: !2659, size: 64, offset: 64)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2661, line: 56, size: 1344, elements: !2662)
!2661 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2660, file: !2661, line: 61, baseType: !662, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2660, file: !2661, line: 62, baseType: !662, size: 64, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2660, file: !2661, line: 63, baseType: !662, size: 64, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2660, file: !2661, line: 64, baseType: !662, size: 64, offset: 192)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2660, file: !2661, line: 65, baseType: !662, size: 64, offset: 256)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2660, file: !2661, line: 66, baseType: !662, size: 64, offset: 320)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2660, file: !2661, line: 68, baseType: !662, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2660, file: !2661, line: 69, baseType: !662, size: 64, offset: 448)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2660, file: !2661, line: 70, baseType: !662, size: 64, offset: 512)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2660, file: !2661, line: 71, baseType: !662, size: 64, offset: 576)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2660, file: !2661, line: 72, baseType: !662, size: 64, offset: 640)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2660, file: !2661, line: 73, baseType: !662, size: 64, offset: 704)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2660, file: !2661, line: 74, baseType: !662, size: 64, offset: 768)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2660, file: !2661, line: 75, baseType: !662, size: 64, offset: 832)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2660, file: !2661, line: 76, baseType: !662, size: 64, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2660, file: !2661, line: 81, baseType: !662, size: 64, offset: 960)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2660, file: !2661, line: 83, baseType: !662, size: 64, offset: 1024)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2660, file: !2661, line: 84, baseType: !662, size: 64, offset: 1088)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2660, file: !2661, line: 85, baseType: !662, size: 64, offset: 1152)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2660, file: !2661, line: 86, baseType: !662, size: 64, offset: 1216)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2660, file: !2661, line: 87, baseType: !662, size: 64, offset: 1280)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2636, file: !2576, line: 96, baseType: !435, size: 32, offset: 1024)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2581, file: !2576, line: 308, baseType: !2686, size: 4608, align: 512)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2576, line: 289, size: 4608, align: 512, elements: !2687)
!2687 = !{!2688, !2689, !2696}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2686, file: !2576, line: 290, baseType: !2597, size: 4096, align: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2686, file: !2576, line: 291, baseType: !2690, size: 512, offset: 4096)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2576, line: 268, size: 512, elements: !2691)
!2691 = !{!2692, !2693, !2694}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2690, file: !2576, line: 269, baseType: !692, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2690, file: !2576, line: 270, baseType: !692, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2690, file: !2576, line: 271, baseType: !2695, size: 384, offset: 128)
!2695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 384, elements: !627)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2686, file: !2576, line: 292, baseType: !2697, offset: 4608)
!2697 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, elements: !2115)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2581, file: !2576, line: 309, baseType: !2699, size: 32768)
!2699 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 32768, elements: !2700)
!2700 = !{!2701}
!2701 = !DISubrange(count: 4096)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1614, file: !1212, line: 378, baseType: !2703, size: 64, offset: 64)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1610, file: !1212, line: 384, baseType: !1896, size: 192, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1461, file: !1212, line: 500, baseType: !743, offset: 6656)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1461, file: !1212, line: 501, baseType: !2707, size: 64, offset: 6656)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1212, line: 387, flags: DIFlagFwdDecl)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1461, file: !1212, line: 516, baseType: !2105, size: 64, offset: 6720)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1461, file: !1212, line: 519, baseType: !856, size: 64, offset: 6784)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1461, file: !1212, line: 521, baseType: !2712, size: 64, offset: 6848)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1212, line: 521, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1461, file: !1212, line: 545, baseType: !459, size: 32, offset: 6912)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1461, file: !1212, line: 548, baseType: !500, size: 8, offset: 6944)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1461, file: !1212, line: 550, baseType: !2717, offset: 6952)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2718, line: 142, elements: !757)
!2718 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1461, file: !1212, line: 554, baseType: !2351, size: 256, offset: 6976)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1461, file: !1212, line: 557, baseType: !435, size: 32, offset: 7232)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1458, file: !1212, line: 565, baseType: !2722, offset: 7296)
!2722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !662, elements: !2723)
!2723 = !{!2724}
!2724 = !DISubrange(count: -1)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1454, file: !1212, line: 151, baseType: !459, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1447, file: !1212, line: 156, baseType: !743, offset: 256)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !1216, file: !1212, line: 159, baseType: !2728, size: 128)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1216, file: !1212, line: 159, size: 128, elements: !2729)
!2729 = !{!2730, !2733}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2728, file: !1212, line: 161, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1212, line: 161, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2728, file: !1212, line: 162, baseType: !308, size: 64, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1216, file: !1212, line: 176, baseType: !869, size: 128, align: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, scope: !1211, file: !1212, line: 179, baseType: !2736, size: 32, offset: 384)
!2736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1211, file: !1212, line: 179, size: 32, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2736, file: !1212, line: 184, baseType: !459, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2736, file: !1212, line: 192, baseType: !7, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2736, file: !1212, line: 194, baseType: !7, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2736, file: !1212, line: 195, baseType: !339, size: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1211, file: !1212, line: 199, baseType: !459, size: 32, offset: 416)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1146, file: !208, line: 1964, baseType: !2744, size: 64, offset: 1344)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!657, !1088, !2747}
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2749, line: 12, size: 256, elements: !2750)
!2749 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2750 = !{!2751, !2752, !2753, !2754, !2755}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2748, file: !2749, line: 13, baseType: !306, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2748, file: !2749, line: 16, baseType: !339, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2748, file: !2749, line: 23, baseType: !662, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2748, file: !2749, line: 30, baseType: !662, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2748, file: !2749, line: 33, baseType: !2756, size: 64, offset: 192)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1212, line: 27, flags: DIFlagFwdDecl)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1146, file: !208, line: 1966, baseType: !2744, size: 64, offset: 1408)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1089, file: !208, line: 1424, baseType: !2760, size: 64, offset: 448)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !202, line: 322, size: 704, elements: !2763)
!2763 = !{!2764, !2810, !2814, !2818, !2819, !2820, !2821, !2822, !2827, !2832, !2836}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2762, file: !202, line: 323, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!339, !2768}
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2769, size: 64)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !202, line: 294, size: 1600, elements: !2770)
!2770 = !{!2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2795, !2796, !2797}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2769, file: !202, line: 295, baseType: !1128, size: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2769, file: !202, line: 296, baseType: !715, size: 128, offset: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2769, file: !202, line: 297, baseType: !715, size: 128, offset: 256)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2769, file: !202, line: 298, baseType: !715, size: 128, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2769, file: !202, line: 299, baseType: !1574, size: 192, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2769, file: !202, line: 300, baseType: !743, offset: 704)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2769, file: !202, line: 301, baseType: !459, size: 32, offset: 704)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2769, file: !202, line: 302, baseType: !1088, size: 64, offset: 768)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2769, file: !202, line: 303, baseType: !2780, size: 64, offset: 832)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !202, line: 68, size: 64, elements: !2781)
!2781 = !{!2782, !2794}
!2782 = !DIDerivedType(tag: DW_TAG_member, scope: !2780, file: !202, line: 69, baseType: !2783, size: 32)
!2783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2780, file: !202, line: 69, size: 32, elements: !2784)
!2784 = !{!2785, !2786, !2787}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2783, file: !202, line: 70, baseType: !931, size: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2783, file: !202, line: 71, baseType: !939, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2783, file: !202, line: 72, baseType: !2788, size: 32)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2789, line: 24, baseType: !2790)
!2789 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2789, line: 22, size: 32, elements: !2791)
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2790, file: !2789, line: 23, baseType: !2793, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2789, line: 20, baseType: !937)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2780, file: !202, line: 74, baseType: !201, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2769, file: !202, line: 304, baseType: !1022, size: 64, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2769, file: !202, line: 305, baseType: !662, size: 64, offset: 960)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2769, file: !202, line: 306, baseType: !2798, size: 576, offset: 1024)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !202, line: 205, size: 576, elements: !2799)
!2799 = !{!2800, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2798, file: !202, line: 206, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !202, line: 66, baseType: !591)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2798, file: !202, line: 207, baseType: !2801, size: 64, offset: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2798, file: !202, line: 208, baseType: !2801, size: 64, offset: 128)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2798, file: !202, line: 209, baseType: !2801, size: 64, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2798, file: !202, line: 210, baseType: !2801, size: 64, offset: 256)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2798, file: !202, line: 211, baseType: !2801, size: 64, offset: 320)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2798, file: !202, line: 212, baseType: !2801, size: 64, offset: 384)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2798, file: !202, line: 213, baseType: !1029, size: 64, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2798, file: !202, line: 214, baseType: !1029, size: 64, offset: 512)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2762, file: !202, line: 324, baseType: !2811, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!2768, !1088, !339}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2762, file: !202, line: 325, baseType: !2815, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2768}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2762, file: !202, line: 326, baseType: !2765, size: 64, offset: 192)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2762, file: !202, line: 327, baseType: !2765, size: 64, offset: 256)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2762, file: !202, line: 328, baseType: !2765, size: 64, offset: 320)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2762, file: !202, line: 329, baseType: !1174, size: 64, offset: 384)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2762, file: !202, line: 332, baseType: !2823, size: 64, offset: 448)
!2823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!2826, !925}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2762, file: !202, line: 333, baseType: !2828, size: 64, offset: 512)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!339, !925, !2831}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2762, file: !202, line: 335, baseType: !2833, size: 64, offset: 576)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!339, !925, !2826}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2762, file: !202, line: 337, baseType: !2837, size: 64, offset: 640)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!339, !1088, !2840}
!2840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1089, file: !208, line: 1425, baseType: !2842, size: 64, offset: 512)
!2842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2843, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2844)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !202, line: 428, size: 704, elements: !2845)
!2845 = !{!2846, !2850, !2851, !2855, !2856, !2857, !2872, !2895, !2899, !2900, !2923}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2844, file: !202, line: 429, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!339, !1088, !339, !339, !1038}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2844, file: !202, line: 430, baseType: !1174, size: 64, offset: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2844, file: !202, line: 431, baseType: !2852, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!339, !1088, !7}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2844, file: !202, line: 432, baseType: !2852, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2844, file: !202, line: 433, baseType: !1174, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2844, file: !202, line: 434, baseType: !2858, size: 64, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!339, !1088, !339, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !202, line: 415, size: 256, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2862, file: !202, line: 416, baseType: !339, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2862, file: !202, line: 417, baseType: !7, size: 32, offset: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2862, file: !202, line: 418, baseType: !7, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2862, file: !202, line: 420, baseType: !7, size: 32, offset: 96)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2862, file: !202, line: 421, baseType: !7, size: 32, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2862, file: !202, line: 422, baseType: !7, size: 32, offset: 160)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2862, file: !202, line: 423, baseType: !7, size: 32, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2862, file: !202, line: 424, baseType: !7, size: 32, offset: 224)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2844, file: !202, line: 435, baseType: !2873, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!339, !1088, !2780, !2876}
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !202, line: 343, size: 960, elements: !2878)
!2878 = !{!2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894}
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2877, file: !202, line: 344, baseType: !339, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2877, file: !202, line: 345, baseType: !692, size: 64, offset: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2877, file: !202, line: 346, baseType: !692, size: 64, offset: 128)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2877, file: !202, line: 347, baseType: !692, size: 64, offset: 192)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2877, file: !202, line: 348, baseType: !692, size: 64, offset: 256)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2877, file: !202, line: 349, baseType: !692, size: 64, offset: 320)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2877, file: !202, line: 350, baseType: !692, size: 64, offset: 384)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2877, file: !202, line: 351, baseType: !1262, size: 64, offset: 448)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2877, file: !202, line: 353, baseType: !1262, size: 64, offset: 512)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2877, file: !202, line: 354, baseType: !339, size: 32, offset: 576)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2877, file: !202, line: 355, baseType: !339, size: 32, offset: 608)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2877, file: !202, line: 356, baseType: !692, size: 64, offset: 640)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2877, file: !202, line: 357, baseType: !692, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2877, file: !202, line: 358, baseType: !692, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2877, file: !202, line: 359, baseType: !1262, size: 64, offset: 832)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2877, file: !202, line: 360, baseType: !339, size: 32, offset: 896)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2844, file: !202, line: 436, baseType: !2896, size: 64, offset: 448)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{!339, !1088, !2840, !2876}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2844, file: !202, line: 438, baseType: !2873, size: 64, offset: 512)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2844, file: !202, line: 439, baseType: !2901, size: 64, offset: 576)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DISubroutineType(types: !2903)
!2903 = !{!339, !1088, !2904}
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !202, line: 409, size: 1408, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2905, file: !202, line: 410, baseType: !7, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2905, file: !202, line: 411, baseType: !2909, size: 1344, offset: 64)
!2909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2910, size: 1344, elements: !556)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !202, line: 395, size: 448, elements: !2911)
!2911 = !{!2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2922}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2910, file: !202, line: 396, baseType: !7, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2910, file: !202, line: 397, baseType: !7, size: 32, offset: 32)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2910, file: !202, line: 399, baseType: !7, size: 32, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2910, file: !202, line: 400, baseType: !7, size: 32, offset: 96)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2910, file: !202, line: 401, baseType: !7, size: 32, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2910, file: !202, line: 402, baseType: !7, size: 32, offset: 160)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2910, file: !202, line: 403, baseType: !7, size: 32, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2910, file: !202, line: 404, baseType: !312, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2910, file: !202, line: 405, baseType: !2921, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !307, line: 126, baseType: !692)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2910, file: !202, line: 406, baseType: !2921, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2844, file: !202, line: 440, baseType: !2852, size: 64, offset: 640)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1089, file: !208, line: 1426, baseType: !2925, size: 64, offset: 576)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2927)
!2927 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !208, line: 49, flags: DIFlagFwdDecl)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1089, file: !208, line: 1427, baseType: !662, size: 64, offset: 640)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1089, file: !208, line: 1428, baseType: !662, size: 64, offset: 704)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1089, file: !208, line: 1429, baseType: !662, size: 64, offset: 768)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1089, file: !208, line: 1430, baseType: !886, size: 64, offset: 832)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1089, file: !208, line: 1431, baseType: !1252, size: 256, offset: 896)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1089, file: !208, line: 1432, baseType: !339, size: 32, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1089, file: !208, line: 1433, baseType: !459, size: 32, offset: 1184)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1089, file: !208, line: 1437, baseType: !2936, size: 64, offset: 1216)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2939)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !208, line: 1437, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1089, file: !208, line: 1449, baseType: !2941, size: 64, offset: 1280)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !902, line: 34, size: 64, elements: !2942)
!2942 = !{!2943}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2941, file: !902, line: 35, baseType: !905, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1089, file: !208, line: 1450, baseType: !715, size: 128, offset: 1344)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1089, file: !208, line: 1451, baseType: !2946, size: 64, offset: 1472)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !208, line: 699, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1089, file: !208, line: 1452, baseType: !2317, size: 64, offset: 1536)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1089, file: !208, line: 1453, baseType: !2950, size: 64, offset: 1600)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !208, line: 1453, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1089, file: !208, line: 1454, baseType: !1128, size: 128, offset: 1664)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1089, file: !208, line: 1455, baseType: !7, size: 32, offset: 1792)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1089, file: !208, line: 1456, baseType: !2955, size: 2432, offset: 1856)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !202, line: 518, size: 2432, elements: !2956)
!2956 = !{!2957, !2958, !2959, !2961, !2993}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2955, file: !202, line: 519, baseType: !7, size: 32)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2955, file: !202, line: 520, baseType: !1252, size: 256, offset: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2955, file: !202, line: 521, baseType: !2960, size: 192, offset: 320)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, size: 192, elements: !556)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2955, file: !202, line: 522, baseType: !2962, size: 1728, offset: 512)
!2962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2963, size: 1728, elements: !556)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !202, line: 222, size: 576, elements: !2964)
!2964 = !{!2965, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2963, file: !202, line: 223, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !202, line: 443, size: 256, elements: !2968)
!2968 = !{!2969, !2970, !2983, !2984}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2967, file: !202, line: 444, baseType: !339, size: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2967, file: !202, line: 445, baseType: !2971, size: 64, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2973)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !202, line: 310, size: 512, elements: !2974)
!2974 = !{!2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2973, file: !202, line: 311, baseType: !1174, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2973, file: !202, line: 312, baseType: !1174, size: 64, offset: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2973, file: !202, line: 313, baseType: !1174, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2973, file: !202, line: 314, baseType: !1174, size: 64, offset: 192)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2973, file: !202, line: 315, baseType: !2765, size: 64, offset: 256)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2973, file: !202, line: 316, baseType: !2765, size: 64, offset: 320)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2973, file: !202, line: 317, baseType: !2765, size: 64, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2973, file: !202, line: 318, baseType: !2837, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2967, file: !202, line: 446, baseType: !326, size: 64, offset: 128)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2967, file: !202, line: 447, baseType: !2966, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2963, file: !202, line: 224, baseType: !339, size: 32, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2963, file: !202, line: 226, baseType: !715, size: 128, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2963, file: !202, line: 227, baseType: !662, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2963, file: !202, line: 228, baseType: !7, size: 32, offset: 320)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2963, file: !202, line: 229, baseType: !7, size: 32, offset: 352)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2963, file: !202, line: 230, baseType: !2801, size: 64, offset: 384)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2963, file: !202, line: 231, baseType: !2801, size: 64, offset: 448)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2963, file: !202, line: 232, baseType: !308, size: 64, offset: 512)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2955, file: !202, line: 523, baseType: !2994, size: 192, offset: 2240)
!2994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2971, size: 192, elements: !556)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1089, file: !208, line: 1458, baseType: !2996, size: 2112, offset: 4288)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !208, line: 1410, size: 2112, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2996, file: !208, line: 1411, baseType: !339, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2996, file: !208, line: 1412, baseType: !1875, size: 128, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2996, file: !208, line: 1413, baseType: !3001, size: 1920, offset: 192)
!3001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3002, size: 1920, elements: !556)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3003, line: 12, size: 640, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!3004 = !{!3005, !3013, !3014, !3019, !3020}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3002, file: !3003, line: 13, baseType: !3006, size: 320)
!3006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3007, line: 17, size: 320, elements: !3008)
!3007 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!3008 = !{!3009, !3010, !3011, !3012}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3006, file: !3007, line: 18, baseType: !339, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3006, file: !3007, line: 19, baseType: !339, size: 32, offset: 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3006, file: !3007, line: 20, baseType: !1875, size: 128, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3006, file: !3007, line: 22, baseType: !869, size: 128, align: 64, offset: 192)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3002, file: !3003, line: 14, baseType: !382, size: 64, offset: 320)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3002, file: !3003, line: 15, baseType: !3015, size: 64, offset: 384)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3016, line: 16, size: 64, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3017 = !{!3018}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3015, file: !3016, line: 17, baseType: !1617, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3002, file: !3003, line: 16, baseType: !1875, size: 128, offset: 448)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3002, file: !3003, line: 17, baseType: !459, size: 32, offset: 576)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1089, file: !208, line: 1465, baseType: !308, size: 64, offset: 6400)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1089, file: !208, line: 1468, baseType: !435, size: 32, offset: 6464)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1089, file: !208, line: 1470, baseType: !1029, size: 64, offset: 6528)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1089, file: !208, line: 1471, baseType: !1029, size: 64, offset: 6592)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1089, file: !208, line: 1473, baseType: !436, size: 32, offset: 6656)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1089, file: !208, line: 1474, baseType: !3027, size: 64, offset: 6720)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !208, line: 603, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1089, file: !208, line: 1477, baseType: !3030, size: 256, offset: 6784)
!3030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !2622)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1089, file: !208, line: 1478, baseType: !3032, size: 128, offset: 7040)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3033, line: 18, baseType: !3034)
!3033 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3033, line: 16, size: 128, elements: !3035)
!3035 = !{!3036}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3034, file: !3033, line: 17, baseType: !3037, size: 128)
!3037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 128, elements: !2127)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1089, file: !208, line: 1480, baseType: !7, size: 32, offset: 7168)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1089, file: !208, line: 1481, baseType: !3040, size: 32, offset: 7200)
!3040 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !307, line: 150, baseType: !7)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1089, file: !208, line: 1487, baseType: !1574, size: 192, offset: 7232)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1089, file: !208, line: 1493, baseType: !322, size: 64, offset: 7424)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1089, file: !208, line: 1495, baseType: !3044, size: 64, offset: 7488)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3046)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !884, line: 135, size: 1024, align: 512, elements: !3047)
!3047 = !{!3048, !3052, !3053, !3060, !3066, !3070, !3074, !3078, !3079, !3083, !3087, !3092, !3096}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3046, file: !884, line: 136, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!339, !886, !7}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3046, file: !884, line: 137, baseType: !3049, size: 64, offset: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3046, file: !884, line: 138, baseType: !3054, size: 64, offset: 128)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!339, !3057, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !887)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3046, file: !884, line: 139, baseType: !3061, size: 64, offset: 192)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!339, !3057, !7, !322, !3064}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !910)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3046, file: !884, line: 141, baseType: !3067, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!339, !3057}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3046, file: !884, line: 142, baseType: !3071, size: 64, offset: 320)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!339, !886}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3046, file: !884, line: 143, baseType: !3075, size: 64, offset: 384)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !886}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3046, file: !884, line: 144, baseType: !3075, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3046, file: !884, line: 145, baseType: !3080, size: 64, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{null, !886, !925}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3046, file: !884, line: 146, baseType: !3084, size: 64, offset: 576)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!345, !886, !345, !339}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3046, file: !884, line: 147, baseType: !3088, size: 64, offset: 640)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!882, !3091}
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3046, file: !884, line: 148, baseType: !3093, size: 64, offset: 704)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DISubroutineType(types: !3095)
!3095 = !{!339, !1038, !500}
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3046, file: !884, line: 149, baseType: !3097, size: 64, offset: 768)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!886, !886, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1089, file: !208, line: 1500, baseType: !339, size: 32, offset: 7552)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1089, file: !208, line: 1502, baseType: !3104, size: 448, offset: 7616)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2749, line: 60, size: 448, elements: !3105)
!3105 = !{!3106, !3111, !3112, !3113, !3114, !3115, !3116}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3104, file: !2749, line: 61, baseType: !3107, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!662, !3110, !2747}
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3104, size: 64)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3104, file: !2749, line: 63, baseType: !3107, size: 64, offset: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3104, file: !2749, line: 66, baseType: !657, size: 64, offset: 128)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3104, file: !2749, line: 67, baseType: !339, size: 32, offset: 192)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3104, file: !2749, line: 68, baseType: !7, size: 32, offset: 224)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3104, file: !2749, line: 71, baseType: !715, size: 128, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3104, file: !2749, line: 77, baseType: !3117, size: 64, offset: 384)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1089, file: !208, line: 1505, baseType: !1256, size: 64, offset: 8064)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1089, file: !208, line: 1508, baseType: !1256, size: 64, offset: 8128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1089, file: !208, line: 1511, baseType: !339, size: 32, offset: 8192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1089, file: !208, line: 1514, baseType: !1392, size: 32, offset: 8224)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1089, file: !208, line: 1517, baseType: !3123, size: 64, offset: 8256)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2352, line: 18, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1089, file: !208, line: 1518, baseType: !1124, size: 64, offset: 8320)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1089, file: !208, line: 1525, baseType: !2105, size: 64, offset: 8384)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1089, file: !208, line: 1532, baseType: !3128, size: 64, offset: 8448)
!3128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3129, line: 52, size: 64, elements: !3130)
!3129 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3130 = !{!3131}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3128, file: !3129, line: 53, baseType: !3132, size: 64)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3133, size: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3129, line: 40, size: 256, elements: !3134)
!3134 = !{!3135, !3136, !3141}
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3133, file: !3129, line: 42, baseType: !743)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3133, file: !3129, line: 44, baseType: !3137, size: 192)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3129, line: 28, size: 192, elements: !3138)
!3138 = !{!3139, !3140}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3137, file: !3129, line: 29, baseType: !715, size: 128)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3137, file: !3129, line: 31, baseType: !657, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3133, file: !3129, line: 49, baseType: !657, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1089, file: !208, line: 1533, baseType: !3128, size: 64, offset: 8512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1089, file: !208, line: 1534, baseType: !869, size: 128, align: 64, offset: 8576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1089, file: !208, line: 1535, baseType: !2351, size: 256, offset: 8704)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1089, file: !208, line: 1537, baseType: !1574, size: 192, offset: 8960)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1089, file: !208, line: 1542, baseType: !339, size: 32, offset: 9152)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1089, file: !208, line: 1545, baseType: !743, offset: 9184)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1089, file: !208, line: 1546, baseType: !715, size: 128, offset: 9216)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1089, file: !208, line: 1548, baseType: !743, offset: 9344)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1089, file: !208, line: 1549, baseType: !715, size: 128, offset: 9344)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !926, file: !208, line: 624, baseType: !1223, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !926, file: !208, line: 631, baseType: !662, size: 64, offset: 320)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !208, line: 639, baseType: !3154, size: 32, offset: 384)
!3154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !208, line: 639, size: 32, elements: !3155)
!3155 = !{!3156, !3158}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3154, file: !208, line: 640, baseType: !3157, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3154, file: !208, line: 641, baseType: !7, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !926, file: !208, line: 643, baseType: !1004, size: 32, offset: 416)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !926, file: !208, line: 644, baseType: !1022, size: 64, offset: 448)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !926, file: !208, line: 645, baseType: !1025, size: 128, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !926, file: !208, line: 646, baseType: !1025, size: 128, offset: 640)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !926, file: !208, line: 647, baseType: !1025, size: 128, offset: 768)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !926, file: !208, line: 648, baseType: !743, offset: 896)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !926, file: !208, line: 649, baseType: !355, size: 16, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !926, file: !208, line: 650, baseType: !361, size: 8, offset: 912)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !926, file: !208, line: 651, baseType: !361, size: 8, offset: 920)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !926, file: !208, line: 652, baseType: !2921, size: 64, offset: 960)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !926, file: !208, line: 659, baseType: !662, size: 64, offset: 1024)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !926, file: !208, line: 660, baseType: !1252, size: 256, offset: 1088)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !926, file: !208, line: 662, baseType: !662, size: 64, offset: 1344)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !926, file: !208, line: 663, baseType: !662, size: 64, offset: 1408)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !926, file: !208, line: 665, baseType: !1128, size: 128, offset: 1472)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !926, file: !208, line: 666, baseType: !715, size: 128, offset: 1600)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !926, file: !208, line: 675, baseType: !715, size: 128, offset: 1728)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !926, file: !208, line: 676, baseType: !715, size: 128, offset: 1856)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !926, file: !208, line: 677, baseType: !715, size: 128, offset: 1984)
!3178 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !208, line: 678, baseType: !3179, size: 128, offset: 2112)
!3179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !208, line: 678, size: 128, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3179, file: !208, line: 679, baseType: !1124, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3179, file: !208, line: 680, baseType: !869, size: 128, align: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !926, file: !208, line: 682, baseType: !1258, size: 64, offset: 2240)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !926, file: !208, line: 683, baseType: !1258, size: 64, offset: 2304)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !926, file: !208, line: 684, baseType: !459, size: 32, offset: 2368)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !926, file: !208, line: 685, baseType: !459, size: 32, offset: 2400)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !926, file: !208, line: 686, baseType: !459, size: 32, offset: 2432)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !926, file: !208, line: 688, baseType: !459, size: 32, offset: 2464)
!3189 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !208, line: 690, baseType: !3190, size: 64, offset: 2496)
!3190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !208, line: 690, size: 64, elements: !3191)
!3191 = !{!3192, !3424}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3190, file: !208, line: 691, baseType: !3193, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !208, line: 1822, size: 2048, elements: !3196)
!3196 = !{!3197, !3198, !3202, !3207, !3211, !3212, !3213, !3217, !3230, !3231, !3248, !3252, !3253, !3257, !3258, !3262, !3267, !3268, !3272, !3276, !3384, !3388, !3389, !3393, !3394, !3398, !3402, !3407, !3411, !3415, !3419, !3423}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3195, file: !208, line: 1823, baseType: !326, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3195, file: !208, line: 1824, baseType: !3199, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!1022, !856, !1022, !339}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3195, file: !208, line: 1825, baseType: !3203, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!812, !856, !345, !826, !3206}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3195, file: !208, line: 1826, baseType: !3208, size: 64, offset: 192)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!812, !856, !322, !826, !3206}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3195, file: !208, line: 1827, baseType: !1329, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3195, file: !208, line: 1828, baseType: !1329, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3195, file: !208, line: 1829, baseType: !3214, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!339, !1332, !500}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3195, file: !208, line: 1830, baseType: !3218, size: 64, offset: 448)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!339, !856, !3221}
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !208, line: 1776, size: 128, elements: !3223)
!3223 = !{!3224, !3229}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3222, file: !208, line: 1777, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !208, line: 1773, baseType: !3226)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!339, !3221, !322, !339, !1022, !692, !7}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3222, file: !208, line: 1778, baseType: !1022, size: 64, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3195, file: !208, line: 1831, baseType: !3218, size: 64, offset: 512)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3195, file: !208, line: 1832, baseType: !3232, size: 64, offset: 576)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!3235, !856, !3237}
!3235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3236, line: 52, baseType: !7)
!3236 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3239, line: 43, size: 128, elements: !3240)
!3239 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3240 = !{!3241, !3247}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3238, file: !3239, line: 44, baseType: !3242, size: 64)
!3242 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3239, line: 37, baseType: !3243)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = !DISubroutineType(types: !3245)
!3245 = !{null, !856, !3246, !3237}
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3238, file: !3239, line: 45, baseType: !3235, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3195, file: !208, line: 1833, baseType: !3249, size: 64, offset: 640)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!657, !856, !7, !662}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3195, file: !208, line: 1834, baseType: !3249, size: 64, offset: 704)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3195, file: !208, line: 1835, baseType: !3254, size: 64, offset: 768)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!339, !856, !1464}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3195, file: !208, line: 1836, baseType: !662, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3195, file: !208, line: 1837, baseType: !3259, size: 64, offset: 896)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!339, !925, !856}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3195, file: !208, line: 1838, baseType: !3263, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!339, !856, !3266}
!3266 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !208, line: 1007, baseType: !308)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3195, file: !208, line: 1839, baseType: !3259, size: 64, offset: 1024)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3195, file: !208, line: 1840, baseType: !3269, size: 64, offset: 1088)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!339, !856, !1022, !1022, !339}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3195, file: !208, line: 1841, baseType: !3273, size: 64, offset: 1152)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!339, !339, !856, !339}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3195, file: !208, line: 1842, baseType: !3277, size: 64, offset: 1216)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DISubroutineType(types: !3279)
!3279 = !{!339, !856, !339, !3280}
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !208, line: 1062, size: 1664, elements: !3282)
!3282 = !{!3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3314, !3315, !3316, !3329, !3360}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3281, file: !208, line: 1063, baseType: !3280, size: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3281, file: !208, line: 1064, baseType: !715, size: 128, offset: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3281, file: !208, line: 1065, baseType: !1128, size: 128, offset: 192)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3281, file: !208, line: 1066, baseType: !715, size: 128, offset: 320)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3281, file: !208, line: 1069, baseType: !715, size: 128, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3281, file: !208, line: 1072, baseType: !3266, size: 64, offset: 576)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3281, file: !208, line: 1073, baseType: !7, size: 32, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3281, file: !208, line: 1074, baseType: !313, size: 8, offset: 672)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3281, file: !208, line: 1075, baseType: !7, size: 32, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3281, file: !208, line: 1076, baseType: !339, size: 32, offset: 736)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3281, file: !208, line: 1077, baseType: !1875, size: 128, offset: 768)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3281, file: !208, line: 1078, baseType: !856, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3281, file: !208, line: 1079, baseType: !1022, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3281, file: !208, line: 1080, baseType: !1022, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3281, file: !208, line: 1082, baseType: !3298, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !208, line: 1314, size: 320, elements: !3300)
!3300 = !{!3301, !3309, !3310, !3311, !3312, !3313}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3299, file: !208, line: 1315, baseType: !3302)
!3302 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3303, line: 20, baseType: !3304)
!3303 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3303, line: 11, elements: !3305)
!3305 = !{!3306}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3304, file: !3303, line: 12, baseType: !3307)
!3307 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !755, line: 33, baseType: !3308)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !755, line: 31, elements: !757)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3299, file: !208, line: 1316, baseType: !339, size: 32)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3299, file: !208, line: 1317, baseType: !339, size: 32, offset: 32)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3299, file: !208, line: 1318, baseType: !3298, size: 64, offset: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3299, file: !208, line: 1319, baseType: !856, size: 64, offset: 128)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3299, file: !208, line: 1320, baseType: !869, size: 128, align: 64, offset: 192)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3281, file: !208, line: 1084, baseType: !662, size: 64, offset: 1152)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3281, file: !208, line: 1085, baseType: !662, size: 64, offset: 1216)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3281, file: !208, line: 1087, baseType: !3317, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !208, line: 1011, size: 128, elements: !3320)
!3320 = !{!3321, !3325}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3319, file: !208, line: 1012, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{null, !3280, !3280}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3319, file: !208, line: 1013, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3280}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3281, file: !208, line: 1088, baseType: !3330, size: 64, offset: 1344)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3332)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !208, line: 1016, size: 512, elements: !3333)
!3333 = !{!3334, !3338, !3342, !3343, !3347, !3351, !3355, !3359}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3332, file: !208, line: 1017, baseType: !3335, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!3266, !3266}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3332, file: !208, line: 1018, baseType: !3339, size: 64, offset: 64)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{null, !3266}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3332, file: !208, line: 1019, baseType: !3326, size: 64, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3332, file: !208, line: 1020, baseType: !3344, size: 64, offset: 192)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!339, !3280, !339}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3332, file: !208, line: 1021, baseType: !3348, size: 64, offset: 256)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!500, !3280}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3332, file: !208, line: 1022, baseType: !3352, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!339, !3280, !339, !718}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3332, file: !208, line: 1023, baseType: !3356, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !3280, !1306}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3332, file: !208, line: 1024, baseType: !3348, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3281, file: !208, line: 1097, baseType: !3361, size: 256, offset: 1408)
!3361 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3281, file: !208, line: 1089, size: 256, elements: !3362)
!3362 = !{!3363, !3372, !3378}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3361, file: !208, line: 1090, baseType: !3364, size: 256)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3365, line: 10, size: 256, elements: !3366)
!3365 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3366 = !{!3367, !3368, !3371}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3364, file: !3365, line: 11, baseType: !435, size: 32)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3364, file: !3365, line: 12, baseType: !3369, size: 64, offset: 64)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3365, line: 5, flags: DIFlagFwdDecl)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3364, file: !3365, line: 13, baseType: !715, size: 128, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3361, file: !208, line: 1091, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3365, line: 17, size: 64, elements: !3374)
!3374 = !{!3375}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3373, file: !3365, line: 18, baseType: !3376, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3365, line: 16, flags: DIFlagFwdDecl)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3361, file: !208, line: 1096, baseType: !3379, size: 192)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3361, file: !208, line: 1092, size: 192, elements: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3379, file: !208, line: 1093, baseType: !715, size: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3379, file: !208, line: 1094, baseType: !339, size: 32, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3379, file: !208, line: 1095, baseType: !7, size: 32, offset: 160)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3195, file: !208, line: 1843, baseType: !3385, size: 64, offset: 1280)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!812, !856, !1210, !339, !826, !3206, !339}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3195, file: !208, line: 1844, baseType: !1504, size: 64, offset: 1344)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3195, file: !208, line: 1845, baseType: !3390, size: 64, offset: 1408)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!339, !339}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3195, file: !208, line: 1846, baseType: !3277, size: 64, offset: 1472)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3195, file: !208, line: 1847, baseType: !3395, size: 64, offset: 1536)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!812, !2492, !856, !3206, !826, !7}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3195, file: !208, line: 1848, baseType: !3399, size: 64, offset: 1600)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!812, !856, !3206, !2492, !826, !7}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3195, file: !208, line: 1849, baseType: !3403, size: 64, offset: 1664)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!339, !856, !657, !3406, !1306}
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3195, file: !208, line: 1850, baseType: !3408, size: 64, offset: 1728)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!657, !856, !339, !1022, !1022}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3195, file: !208, line: 1852, baseType: !3412, size: 64, offset: 1792)
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DISubroutineType(types: !3414)
!3414 = !{null, !1200, !856}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3195, file: !208, line: 1856, baseType: !3416, size: 64, offset: 1856)
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3417, size: 64)
!3417 = !DISubroutineType(types: !3418)
!3418 = !{!812, !856, !1022, !856, !1022, !826, !7}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3195, file: !208, line: 1858, baseType: !3420, size: 64, offset: 1920)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!1022, !856, !1022, !856, !1022, !1022, !7}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3195, file: !208, line: 1861, baseType: !3269, size: 64, offset: 1984)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3190, file: !208, line: 692, baseType: !1153, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !926, file: !208, line: 694, baseType: !3426, size: 64, offset: 2560)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !208, line: 1100, size: 384, elements: !3428)
!3428 = !{!3429, !3430, !3431, !3432}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3427, file: !208, line: 1101, baseType: !743)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3427, file: !208, line: 1102, baseType: !715, size: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3427, file: !208, line: 1103, baseType: !715, size: 128, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3427, file: !208, line: 1104, baseType: !715, size: 128, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !926, file: !208, line: 695, baseType: !1224, size: 1216, align: 64, offset: 2624)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !926, file: !208, line: 696, baseType: !715, size: 128, offset: 3840)
!3435 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !208, line: 697, baseType: !3436, size: 64, offset: 3968)
!3436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !208, line: 697, size: 64, elements: !3437)
!3437 = !{!3438, !3439, !3440, !3451, !3452}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3436, file: !208, line: 698, baseType: !2492, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3436, file: !208, line: 699, baseType: !2946, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3436, file: !208, line: 700, baseType: !3441, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3443, line: 14, size: 832, elements: !3444)
!3443 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3444 = !{!3445, !3446, !3447, !3448, !3449, !3450}
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3442, file: !3443, line: 15, baseType: !730, size: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3442, file: !3443, line: 16, baseType: !326, size: 64, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3442, file: !3443, line: 17, baseType: !3193, size: 64, offset: 576)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3442, file: !3443, line: 18, baseType: !715, size: 128, offset: 640)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3442, file: !3443, line: 19, baseType: !1004, size: 32, offset: 768)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3442, file: !3443, line: 20, baseType: !7, size: 32, offset: 800)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3436, file: !208, line: 701, baseType: !345, size: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3436, file: !208, line: 702, baseType: !7, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !926, file: !208, line: 705, baseType: !436, size: 32, offset: 4032)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !926, file: !208, line: 708, baseType: !436, size: 32, offset: 4064)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !926, file: !208, line: 709, baseType: !3027, size: 64, offset: 4096)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !926, file: !208, line: 720, baseType: !308, size: 64, offset: 4160)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !887, file: !884, line: 98, baseType: !3458, size: 256, offset: 448)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !2622)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !887, file: !884, line: 101, baseType: !3460, size: 32, offset: 704)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3461, line: 25, size: 32, elements: !3462)
!3461 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, scope: !3460, file: !3461, line: 26, baseType: !3464, size: 32)
!3464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3460, file: !3461, line: 26, size: 32, elements: !3465)
!3465 = !{!3466}
!3466 = !DIDerivedType(tag: DW_TAG_member, scope: !3464, file: !3461, line: 30, baseType: !3467, size: 32)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3464, file: !3461, line: 30, size: 32, elements: !3468)
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3467, file: !3461, line: 31, baseType: !743)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3467, file: !3461, line: 32, baseType: !339, size: 32)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !887, file: !884, line: 102, baseType: !3044, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !887, file: !884, line: 103, baseType: !1088, size: 64, offset: 832)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !887, file: !884, line: 104, baseType: !662, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !887, file: !884, line: 105, baseType: !308, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !887, file: !884, line: 107, baseType: !3476, size: 128, offset: 1024)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !884, line: 107, size: 128, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3476, file: !884, line: 108, baseType: !715, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3476, file: !884, line: 109, baseType: !3246, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !887, file: !884, line: 111, baseType: !715, size: 128, offset: 1152)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !887, file: !884, line: 112, baseType: !715, size: 128, offset: 1280)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !887, file: !884, line: 120, baseType: !3483, size: 128, offset: 1408)
!3483 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !887, file: !884, line: 116, size: 128, elements: !3484)
!3484 = !{!3485, !3486, !3487}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3483, file: !884, line: 117, baseType: !1128, size: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3483, file: !884, line: 118, baseType: !901, size: 128)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3483, file: !884, line: 119, baseType: !869, size: 128, align: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !857, file: !208, line: 922, baseType: !925, size: 64, offset: 256)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !857, file: !208, line: 923, baseType: !3193, size: 64, offset: 320)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !857, file: !208, line: 929, baseType: !743, offset: 384)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !857, file: !208, line: 930, baseType: !207, size: 32, offset: 384)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !857, file: !208, line: 931, baseType: !1256, size: 64, offset: 448)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !857, file: !208, line: 932, baseType: !7, size: 32, offset: 512)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !857, file: !208, line: 933, baseType: !3040, size: 32, offset: 544)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !857, file: !208, line: 934, baseType: !1574, size: 192, offset: 576)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !857, file: !208, line: 935, baseType: !1022, size: 64, offset: 768)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !857, file: !208, line: 936, baseType: !3498, size: 192, offset: 832)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !208, line: 885, size: 192, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3498, file: !208, line: 886, baseType: !3302)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3498, file: !208, line: 887, baseType: !1865, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3498, file: !208, line: 888, baseType: !216, size: 32, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3498, file: !208, line: 889, baseType: !931, size: 32, offset: 96)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3498, file: !208, line: 889, baseType: !931, size: 32, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3498, file: !208, line: 890, baseType: !339, size: 32, offset: 160)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !857, file: !208, line: 937, baseType: !1941, size: 64, offset: 1024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !857, file: !208, line: 938, baseType: !3508, size: 256, offset: 1088)
!3508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !208, line: 896, size: 256, elements: !3509)
!3509 = !{!3510, !3511, !3512, !3513, !3514, !3515}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3508, file: !208, line: 897, baseType: !662, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3508, file: !208, line: 898, baseType: !7, size: 32, offset: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3508, file: !208, line: 899, baseType: !7, size: 32, offset: 96)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3508, file: !208, line: 902, baseType: !7, size: 32, offset: 128)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3508, file: !208, line: 903, baseType: !7, size: 32, offset: 160)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3508, file: !208, line: 904, baseType: !1022, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !857, file: !208, line: 940, baseType: !692, size: 64, offset: 1344)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !857, file: !208, line: 945, baseType: !308, size: 64, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !857, file: !208, line: 949, baseType: !715, size: 128, offset: 1472)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !857, file: !208, line: 950, baseType: !715, size: 128, offset: 1600)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !857, file: !208, line: 952, baseType: !1223, size: 64, offset: 1728)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !857, file: !208, line: 953, baseType: !1392, size: 32, offset: 1792)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !857, file: !208, line: 954, baseType: !1392, size: 32, offset: 1824)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !847, file: !806, line: 174, baseType: !853, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !847, file: !806, line: 176, baseType: !3525, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!339, !856, !736, !846, !1464}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !835, file: !806, line: 90, baseType: !830, size: 64, offset: 192)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !835, file: !806, line: 91, baseType: !3530, size: 64, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !796, file: !731, line: 143, baseType: !3532, size: 64, offset: 256)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!3535, !736}
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3537)
!3537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !225, line: 39, size: 384, elements: !3538)
!3538 = !{!3539, !3540, !3544, !3548, !3554, !3558}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3537, file: !225, line: 40, baseType: !224, size: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3537, file: !225, line: 41, baseType: !3541, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DISubroutineType(types: !3543)
!3543 = !{!500}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3537, file: !225, line: 42, baseType: !3545, size: 64, offset: 128)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DISubroutineType(types: !3547)
!3547 = !{!308}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3537, file: !225, line: 43, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!2521, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !225, line: 19, flags: DIFlagFwdDecl)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3537, file: !225, line: 44, baseType: !3555, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DISubroutineType(types: !3557)
!3557 = !{!2521}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3537, file: !225, line: 45, baseType: !347, size: 64, offset: 320)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !796, file: !731, line: 144, baseType: !3560, size: 64, offset: 320)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3561, size: 64)
!3561 = !DISubroutineType(types: !3562)
!3562 = !{!2521, !736}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !796, file: !731, line: 145, baseType: !3564, size: 64, offset: 384)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DISubroutineType(types: !3566)
!3566 = !{null, !736, !3567, !3568}
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !730, file: !731, line: 70, baseType: !3570, size: 64, offset: 384)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1108, line: 123, size: 1024, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3701, !3702, !3703, !3704, !3705}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3571, file: !1108, line: 124, baseType: !459, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3571, file: !1108, line: 125, baseType: !459, size: 32, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3571, file: !1108, line: 135, baseType: !3570, size: 64, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3571, file: !1108, line: 136, baseType: !322, size: 64, offset: 128)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3571, file: !1108, line: 138, baseType: !1245, size: 192, align: 64, offset: 192)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3571, file: !1108, line: 140, baseType: !2521, size: 64, offset: 384)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3571, file: !1108, line: 141, baseType: !7, size: 32, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3571, file: !1108, line: 142, baseType: !3581, size: 256, offset: 512)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3571, file: !1108, line: 142, size: 256, elements: !3582)
!3582 = !{!3583, !3629, !3633}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3581, file: !1108, line: 143, baseType: !3584, size: 192)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1108, line: 91, size: 192, elements: !3585)
!3585 = !{!3586, !3587, !3588}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3584, file: !1108, line: 92, baseType: !662, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3584, file: !1108, line: 94, baseType: !1241, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3584, file: !1108, line: 100, baseType: !3589, size: 64, offset: 128)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1108, line: 180, size: 704, elements: !3591)
!3591 = !{!3592, !3593, !3594, !3601, !3602, !3603, !3627, !3628}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3590, file: !1108, line: 182, baseType: !3570, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3590, file: !1108, line: 183, baseType: !7, size: 32, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3590, file: !1108, line: 186, baseType: !3595, size: 192, offset: 128)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3596, line: 19, size: 192, elements: !3597)
!3596 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3597 = !{!3598, !3599, !3600}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3595, file: !3596, line: 20, baseType: !1228, size: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3595, file: !3596, line: 21, baseType: !7, size: 32, offset: 128)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3595, file: !3596, line: 22, baseType: !7, size: 32, offset: 160)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3590, file: !1108, line: 187, baseType: !435, size: 32, offset: 320)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3590, file: !1108, line: 188, baseType: !435, size: 32, offset: 352)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3590, file: !1108, line: 189, baseType: !3604, size: 64, offset: 384)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1108, line: 168, size: 320, elements: !3606)
!3606 = !{!3607, !3611, !3615, !3619, !3623}
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3605, file: !1108, line: 169, baseType: !3608, size: 64)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!339, !1200, !3589}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3605, file: !1108, line: 171, baseType: !3612, size: 64, offset: 64)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!339, !3570, !322, !821}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3605, file: !1108, line: 173, baseType: !3616, size: 64, offset: 128)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!339, !3570}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3605, file: !1108, line: 174, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!339, !3570, !3570, !322}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3605, file: !1108, line: 176, baseType: !3624, size: 64, offset: 256)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!339, !1200, !3570, !3589}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3590, file: !1108, line: 192, baseType: !715, size: 128, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3590, file: !1108, line: 194, baseType: !1875, size: 128, offset: 576)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3581, file: !1108, line: 144, baseType: !3630, size: 64)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1108, line: 103, size: 64, elements: !3631)
!3631 = !{!3632}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3630, file: !1108, line: 104, baseType: !3570, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3581, file: !1108, line: 145, baseType: !3634, size: 256)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1108, line: 107, size: 256, elements: !3635)
!3635 = !{!3636, !3696, !3699, !3700}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3634, file: !1108, line: 108, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1108, line: 217, size: 768, elements: !3640)
!3640 = !{!3641, !3661, !3665, !3669, !3673, !3677, !3681, !3685, !3686, !3687, !3688, !3692}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3639, file: !1108, line: 222, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!339, !3645}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1108, line: 197, size: 1088, elements: !3647)
!3647 = !{!3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3646, file: !1108, line: 199, baseType: !3570, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3646, file: !1108, line: 200, baseType: !856, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3646, file: !1108, line: 201, baseType: !1200, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3646, file: !1108, line: 202, baseType: !308, size: 64, offset: 192)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3646, file: !1108, line: 205, baseType: !1574, size: 192, offset: 256)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3646, file: !1108, line: 206, baseType: !1574, size: 192, offset: 448)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3646, file: !1108, line: 207, baseType: !339, size: 32, offset: 640)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3646, file: !1108, line: 208, baseType: !715, size: 128, offset: 704)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3646, file: !1108, line: 209, baseType: !345, size: 64, offset: 832)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3646, file: !1108, line: 211, baseType: !826, size: 64, offset: 896)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3646, file: !1108, line: 212, baseType: !500, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3646, file: !1108, line: 213, baseType: !500, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3646, file: !1108, line: 214, baseType: !1492, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3639, file: !1108, line: 223, baseType: !3662, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{null, !3645}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3639, file: !1108, line: 236, baseType: !3666, size: 64, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!339, !1200, !308}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3639, file: !1108, line: 238, baseType: !3670, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!308, !1200, !3206}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3639, file: !1108, line: 239, baseType: !3674, size: 64, offset: 256)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!308, !1200, !308, !3206}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3639, file: !1108, line: 240, baseType: !3678, size: 64, offset: 320)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{null, !1200, !308}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3639, file: !1108, line: 242, baseType: !3682, size: 64, offset: 384)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DISubroutineType(types: !3684)
!3684 = !{!812, !3645, !345, !826, !1022}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3639, file: !1108, line: 252, baseType: !826, size: 64, offset: 448)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3639, file: !1108, line: 259, baseType: !500, size: 8, offset: 512)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3639, file: !1108, line: 260, baseType: !3682, size: 64, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3639, file: !1108, line: 263, baseType: !3689, size: 64, offset: 640)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!3235, !3645, !3237}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3639, file: !1108, line: 266, baseType: !3693, size: 64, offset: 704)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!339, !3645, !1464}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3634, file: !1108, line: 109, baseType: !3697, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1108, line: 31, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3634, file: !1108, line: 110, baseType: !1022, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3634, file: !1108, line: 111, baseType: !3570, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3571, file: !1108, line: 148, baseType: !308, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3571, file: !1108, line: 154, baseType: !692, size: 64, offset: 832)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3571, file: !1108, line: 156, baseType: !355, size: 16, offset: 896)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3571, file: !1108, line: 157, baseType: !821, size: 16, offset: 912)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3571, file: !1108, line: 158, baseType: !3706, size: 64, offset: 960)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1108, line: 32, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !730, file: !731, line: 71, baseType: !450, size: 32, offset: 448)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !730, file: !731, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !730, file: !731, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !730, file: !731, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !730, file: !731, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !730, file: !731, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !727, file: !237, line: 463, baseType: !726, size: 64, offset: 512)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !727, file: !237, line: 465, baseType: !3716, size: 64, offset: 576)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !237, line: 36, flags: DIFlagFwdDecl)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !727, file: !237, line: 467, baseType: !322, size: 64, offset: 640)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !727, file: !237, line: 468, baseType: !3720, size: 64, offset: 704)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3722)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !237, line: 87, size: 384, elements: !3723)
!3723 = !{!3724, !3725, !3726, !3730, !3735, !3739}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3722, file: !237, line: 88, baseType: !322, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3722, file: !237, line: 89, baseType: !832, size: 64, offset: 64)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3722, file: !237, line: 90, baseType: !3727, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DISubroutineType(types: !3729)
!3729 = !{!339, !726, !779}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3722, file: !237, line: 91, baseType: !3731, size: 64, offset: 192)
!3731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3732, size: 64)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!345, !726, !3734, !3567, !3568}
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3722, file: !237, line: 93, baseType: !3736, size: 64, offset: 256)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !726}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3722, file: !237, line: 95, baseType: !3740, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3742)
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !244, line: 278, size: 1472, elements: !3743)
!3743 = !{!3744, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3760, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3742, file: !244, line: 279, baseType: !3745, size: 64)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!339, !726}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3742, file: !244, line: 280, baseType: !3736, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3742, file: !244, line: 281, baseType: !3745, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3742, file: !244, line: 282, baseType: !3745, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3742, file: !244, line: 283, baseType: !3745, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3742, file: !244, line: 284, baseType: !3745, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3742, file: !244, line: 285, baseType: !3745, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3742, file: !244, line: 286, baseType: !3745, size: 64, offset: 448)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3742, file: !244, line: 287, baseType: !3745, size: 64, offset: 512)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3742, file: !244, line: 288, baseType: !3745, size: 64, offset: 576)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3742, file: !244, line: 289, baseType: !3745, size: 64, offset: 640)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3742, file: !244, line: 290, baseType: !3745, size: 64, offset: 704)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3742, file: !244, line: 291, baseType: !3745, size: 64, offset: 768)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3742, file: !244, line: 292, baseType: !3745, size: 64, offset: 832)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3742, file: !244, line: 293, baseType: !3745, size: 64, offset: 896)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3742, file: !244, line: 294, baseType: !3745, size: 64, offset: 960)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3742, file: !244, line: 295, baseType: !3745, size: 64, offset: 1024)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3742, file: !244, line: 296, baseType: !3745, size: 64, offset: 1088)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3742, file: !244, line: 297, baseType: !3745, size: 64, offset: 1152)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3742, file: !244, line: 298, baseType: !3745, size: 64, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3742, file: !244, line: 299, baseType: !3745, size: 64, offset: 1280)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3742, file: !244, line: 300, baseType: !3745, size: 64, offset: 1344)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3742, file: !244, line: 301, baseType: !3745, size: 64, offset: 1408)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !727, file: !237, line: 470, baseType: !3771, size: 64, offset: 768)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3773, line: 82, size: 1408, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3853, !3856, !3857}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3772, file: !3773, line: 83, baseType: !322, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3772, file: !3773, line: 84, baseType: !322, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3772, file: !3773, line: 85, baseType: !726, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3772, file: !3773, line: 86, baseType: !832, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3772, file: !3773, line: 87, baseType: !832, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3772, file: !3773, line: 88, baseType: !832, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3772, file: !3773, line: 90, baseType: !3782, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!339, !726, !3785}
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !231, line: 95, size: 1152, elements: !3787)
!3787 = !{!3788, !3789, !3790, !3791, !3792, !3793, !3794, !3804, !3817, !3818, !3819, !3820, !3821, !3829, !3830, !3831, !3832, !3833, !3834}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3786, file: !231, line: 96, baseType: !322, size: 64)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3786, file: !231, line: 97, baseType: !3771, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3786, file: !231, line: 99, baseType: !326, size: 64, offset: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3786, file: !231, line: 100, baseType: !322, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3786, file: !231, line: 102, baseType: !500, size: 8, offset: 256)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3786, file: !231, line: 103, baseType: !230, size: 32, offset: 288)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3786, file: !231, line: 105, baseType: !3795, size: 64, offset: 320)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3797)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3798, line: 262, size: 1600, elements: !3799)
!3798 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3799 = !{!3800, !3801, !3802, !3803}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3797, file: !3798, line: 263, baseType: !3030, size: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3797, file: !3798, line: 264, baseType: !3030, size: 256, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3797, file: !3798, line: 265, baseType: !431, size: 1024, offset: 512)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3797, file: !3798, line: 266, baseType: !2521, size: 64, offset: 1536)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3786, file: !231, line: 106, baseType: !3805, size: 64, offset: 384)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3807)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3798, line: 210, size: 256, elements: !3808)
!3808 = !{!3809, !3813, !3815, !3816}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3807, file: !3798, line: 211, baseType: !3810, size: 72)
!3810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 72, elements: !3811)
!3811 = !{!3812}
!3812 = !DISubrange(count: 9)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3807, file: !3798, line: 212, baseType: !3814, size: 64, offset: 128)
!3814 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3798, line: 14, baseType: !662)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3807, file: !3798, line: 213, baseType: !436, size: 32, offset: 192)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3807, file: !3798, line: 214, baseType: !436, size: 32, offset: 224)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3786, file: !231, line: 108, baseType: !3745, size: 64, offset: 448)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3786, file: !231, line: 109, baseType: !3736, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3786, file: !231, line: 110, baseType: !3745, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3786, file: !231, line: 111, baseType: !3736, size: 64, offset: 640)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3786, file: !231, line: 112, baseType: !3822, size: 64, offset: 704)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{!339, !726, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !244, line: 52, baseType: !3826)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !244, line: 50, size: 32, elements: !3827)
!3827 = !{!3828}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3826, file: !244, line: 51, baseType: !339, size: 32)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3786, file: !231, line: 113, baseType: !3745, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3786, file: !231, line: 114, baseType: !832, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3786, file: !231, line: 115, baseType: !832, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3786, file: !231, line: 117, baseType: !3740, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3786, file: !231, line: 118, baseType: !3736, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3786, file: !231, line: 120, baseType: !3835, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !231, line: 120, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3772, file: !3773, line: 91, baseType: !3727, size: 64, offset: 448)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3772, file: !3773, line: 92, baseType: !3745, size: 64, offset: 512)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3772, file: !3773, line: 93, baseType: !3736, size: 64, offset: 576)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3772, file: !3773, line: 94, baseType: !3745, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3772, file: !3773, line: 95, baseType: !3736, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3772, file: !3773, line: 97, baseType: !3745, size: 64, offset: 768)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3772, file: !3773, line: 98, baseType: !3745, size: 64, offset: 832)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3772, file: !3773, line: 100, baseType: !3822, size: 64, offset: 896)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3772, file: !3773, line: 101, baseType: !3745, size: 64, offset: 960)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3772, file: !3773, line: 103, baseType: !3745, size: 64, offset: 1024)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3772, file: !3773, line: 105, baseType: !3745, size: 64, offset: 1088)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3772, file: !3773, line: 107, baseType: !3740, size: 64, offset: 1152)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3772, file: !3773, line: 109, baseType: !3850, size: 64, offset: 1216)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3852)
!3852 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3773, line: 109, flags: DIFlagFwdDecl)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3772, file: !3773, line: 111, baseType: !3854, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3773, line: 111, flags: DIFlagFwdDecl)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3772, file: !3773, line: 112, baseType: !1134, offset: 1344)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3772, file: !3773, line: 114, baseType: !500, size: 8, offset: 1344)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !727, file: !237, line: 471, baseType: !3785, size: 64, offset: 832)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !727, file: !237, line: 473, baseType: !308, size: 64, offset: 896)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !727, file: !237, line: 475, baseType: !308, size: 64, offset: 960)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !727, file: !237, line: 480, baseType: !1574, size: 192, offset: 1024)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !727, file: !237, line: 484, baseType: !3863, size: 576, offset: 1216)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !237, line: 361, size: 576, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868, !3869, !3870}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3863, file: !237, line: 362, baseType: !715, size: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3863, file: !237, line: 363, baseType: !715, size: 128, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3863, file: !237, line: 364, baseType: !715, size: 128, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3863, file: !237, line: 365, baseType: !715, size: 128, offset: 384)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3863, file: !237, line: 366, baseType: !500, size: 8, offset: 512)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3863, file: !237, line: 367, baseType: !236, size: 32, offset: 544)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !727, file: !237, line: 485, baseType: !3872, size: 2304, offset: 1792)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !244, line: 565, size: 2304, elements: !3873)
!3873 = !{!3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953, !3954, !3955, !3956, !3957, !3958, !3959, !3969, !3973}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3872, file: !244, line: 566, baseType: !3825, size: 32)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3872, file: !244, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3872, file: !244, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3872, file: !244, line: 569, baseType: !500, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3872, file: !244, line: 570, baseType: !500, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3872, file: !244, line: 571, baseType: !500, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3872, file: !244, line: 572, baseType: !500, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3872, file: !244, line: 573, baseType: !500, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3872, file: !244, line: 574, baseType: !500, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3872, file: !244, line: 575, baseType: !500, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3872, file: !244, line: 576, baseType: !500, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3872, file: !244, line: 577, baseType: !435, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3872, file: !244, line: 578, baseType: !743, offset: 96)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3872, file: !244, line: 580, baseType: !715, size: 128, offset: 128)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3872, file: !244, line: 581, baseType: !1896, size: 192, offset: 256)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3872, file: !244, line: 582, baseType: !3890, size: 64, offset: 448)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3892, line: 43, size: 1472, elements: !3893)
!3892 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3901, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3891, file: !3892, line: 44, baseType: !322, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3891, file: !3892, line: 45, baseType: !339, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3891, file: !3892, line: 46, baseType: !715, size: 128, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3891, file: !3892, line: 47, baseType: !743, offset: 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3891, file: !3892, line: 48, baseType: !3899, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !244, line: 533, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3891, file: !3892, line: 49, baseType: !3902, size: 320, offset: 320)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3903, line: 11, size: 320, elements: !3904)
!3903 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3904 = !{!3905, !3906, !3907, !3912}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3902, file: !3903, line: 16, baseType: !1128, size: 128)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3902, file: !3903, line: 17, baseType: !662, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3902, file: !3903, line: 18, baseType: !3908, size: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{null, !3911}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3902, file: !3903, line: 19, baseType: !435, size: 32, offset: 256)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3891, file: !3892, line: 50, baseType: !662, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3891, file: !3892, line: 51, baseType: !1696, size: 64, offset: 704)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3891, file: !3892, line: 52, baseType: !1696, size: 64, offset: 768)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3891, file: !3892, line: 53, baseType: !1696, size: 64, offset: 832)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3891, file: !3892, line: 54, baseType: !1696, size: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3891, file: !3892, line: 55, baseType: !1696, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3891, file: !3892, line: 56, baseType: !662, size: 64, offset: 1024)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3891, file: !3892, line: 57, baseType: !662, size: 64, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3891, file: !3892, line: 58, baseType: !662, size: 64, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3891, file: !3892, line: 59, baseType: !662, size: 64, offset: 1216)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3891, file: !3892, line: 60, baseType: !662, size: 64, offset: 1280)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3891, file: !3892, line: 61, baseType: !726, size: 64, offset: 1344)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3891, file: !3892, line: 62, baseType: !500, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3891, file: !3892, line: 63, baseType: !500, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3872, file: !244, line: 583, baseType: !500, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3872, file: !244, line: 584, baseType: !500, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3872, file: !244, line: 585, baseType: !500, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3872, file: !244, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3872, file: !244, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3872, file: !244, line: 592, baseType: !1688, size: 512, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3872, file: !244, line: 593, baseType: !692, size: 64, offset: 1088)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3872, file: !244, line: 594, baseType: !2351, size: 256, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3872, file: !244, line: 595, baseType: !1875, size: 128, offset: 1408)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3872, file: !244, line: 596, baseType: !3899, size: 64, offset: 1536)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3872, file: !244, line: 597, baseType: !459, size: 32, offset: 1600)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3872, file: !244, line: 598, baseType: !459, size: 32, offset: 1632)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3872, file: !244, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3872, file: !244, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3872, file: !244, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3872, file: !244, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3872, file: !244, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3872, file: !244, line: 604, baseType: !500, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3872, file: !244, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3872, file: !244, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3872, file: !244, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3872, file: !244, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3872, file: !244, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3872, file: !244, line: 610, baseType: !7, size: 32, offset: 1696)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3872, file: !244, line: 611, baseType: !243, size: 32, offset: 1728)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3872, file: !244, line: 612, baseType: !251, size: 32, offset: 1760)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3872, file: !244, line: 613, baseType: !339, size: 32, offset: 1792)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3872, file: !244, line: 614, baseType: !339, size: 32, offset: 1824)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3872, file: !244, line: 615, baseType: !692, size: 64, offset: 1856)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3872, file: !244, line: 616, baseType: !692, size: 64, offset: 1920)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3872, file: !244, line: 617, baseType: !692, size: 64, offset: 1984)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3872, file: !244, line: 618, baseType: !692, size: 64, offset: 2048)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3872, file: !244, line: 620, baseType: !3960, size: 64, offset: 2112)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !244, line: 536, size: 256, elements: !3962)
!3962 = !{!3963, !3964, !3965, !3966}
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3961, file: !244, line: 537, baseType: !743)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3961, file: !244, line: 538, baseType: !7, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3961, file: !244, line: 540, baseType: !715, size: 128, offset: 64)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3961, file: !244, line: 543, baseType: !3967, size: 64, offset: 192)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !244, line: 534, flags: DIFlagFwdDecl)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3872, file: !244, line: 621, baseType: !3970, size: 64, offset: 2176)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !726, !699}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3872, file: !244, line: 622, baseType: !3974, size: 64, offset: 2240)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !244, line: 622, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !727, file: !237, line: 486, baseType: !3977, size: 64, offset: 4096)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !244, line: 642, size: 1792, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3986, !3987, !3988}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3978, file: !244, line: 643, baseType: !3742, size: 1472)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3978, file: !244, line: 644, baseType: !3745, size: 64, offset: 1472)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3978, file: !244, line: 645, baseType: !3983, size: 64, offset: 1536)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{null, !726, !500}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3978, file: !244, line: 646, baseType: !3745, size: 64, offset: 1600)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3978, file: !244, line: 647, baseType: !3736, size: 64, offset: 1664)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3978, file: !244, line: 648, baseType: !3736, size: 64, offset: 1728)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !727, file: !237, line: 493, baseType: !3990, size: 64, offset: 4160)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !258, line: 162, size: 1088, elements: !3992)
!3992 = !{!3993, !3994, !3995, !4168, !4169, !4170, !4171, !4172, !4173, !4176, !4177, !4178, !4179, !4180, !4181, !4182}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3991, file: !258, line: 163, baseType: !715, size: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3991, file: !258, line: 164, baseType: !322, size: 64, offset: 128)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3991, file: !258, line: 165, baseType: !3996, size: 64, offset: 192)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3998)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !258, line: 105, size: 640, elements: !3999)
!3999 = !{!4000, !4118, !4129, !4134, !4138, !4145, !4149, !4153, !4160, !4164}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3998, file: !258, line: 106, baseType: !4001, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{!339, !3990, !4004, !257}
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4006, line: 51, size: 1344, elements: !4007)
!4006 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!4007 = !{!4008, !4009, !4011, !4012, !4102, !4111, !4112, !4113, !4114, !4115, !4116, !4117}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4005, file: !4006, line: 52, baseType: !322, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4005, file: !4006, line: 53, baseType: !4010, size: 32, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4006, line: 28, baseType: !435)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4005, file: !4006, line: 54, baseType: !322, size: 64, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4005, file: !4006, line: 55, baseType: !4013, size: 192, offset: 192)
!4013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4014, line: 17, size: 192, elements: !4015)
!4014 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4015 = !{!4016, !4018, !4101}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4013, file: !4014, line: 18, baseType: !4017, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4013, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4013, file: !4014, line: 19, baseType: !4019, size: 64, offset: 64)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4021)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4014, line: 110, size: 1152, elements: !4022)
!4022 = !{!4023, !4027, !4031, !4037, !4043, !4047, !4051, !4056, !4060, !4061, !4065, !4069, !4073, !4084, !4085, !4086, !4087, !4097}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4021, file: !4014, line: 111, baseType: !4024, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DISubroutineType(types: !4026)
!4026 = !{!4017, !4017}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4021, file: !4014, line: 112, baseType: !4028, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DISubroutineType(types: !4030)
!4030 = !{null, !4017}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4021, file: !4014, line: 113, baseType: !4032, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = !DISubroutineType(types: !4034)
!4034 = !{!500, !4035}
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4013)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4021, file: !4014, line: 114, baseType: !4038, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = !DISubroutineType(types: !4040)
!4040 = !{!2521, !4035, !4041}
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4021, file: !4014, line: 116, baseType: !4044, size: 64, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!500, !4035, !322}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4021, file: !4014, line: 118, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!339, !4035, !322, !7, !308, !826}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4021, file: !4014, line: 123, baseType: !4052, size: 64, offset: 384)
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DISubroutineType(types: !4054)
!4054 = !{!339, !4035, !322, !4055, !826}
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4021, file: !4014, line: 126, baseType: !4057, size: 64, offset: 448)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!322, !4035}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4021, file: !4014, line: 127, baseType: !4057, size: 64, offset: 512)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4021, file: !4014, line: 128, baseType: !4062, size: 64, offset: 576)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!4017, !4035}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4021, file: !4014, line: 130, baseType: !4066, size: 64, offset: 640)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!4017, !4035, !4017}
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4021, file: !4014, line: 133, baseType: !4070, size: 64, offset: 704)
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!4017, !4035, !322}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4021, file: !4014, line: 135, baseType: !4074, size: 64, offset: 768)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!339, !4035, !322, !322, !7, !7, !4077}
!4077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4078, size: 64)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4014, line: 43, size: 640, elements: !4079)
!4079 = !{!4080, !4081, !4082}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4078, file: !4014, line: 44, baseType: !4017, size: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4078, file: !4014, line: 45, baseType: !7, size: 32, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4078, file: !4014, line: 46, baseType: !4083, size: 512, offset: 128)
!4083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 512, elements: !480)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4021, file: !4014, line: 140, baseType: !4066, size: 64, offset: 832)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4021, file: !4014, line: 143, baseType: !4062, size: 64, offset: 896)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4021, file: !4014, line: 145, baseType: !4024, size: 64, offset: 960)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4021, file: !4014, line: 146, baseType: !4088, size: 64, offset: 1024)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{!339, !4035, !4091}
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4014, line: 29, size: 128, elements: !4093)
!4093 = !{!4094, !4095, !4096}
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4092, file: !4014, line: 30, baseType: !7, size: 32)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4092, file: !4014, line: 31, baseType: !7, size: 32, offset: 32)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4092, file: !4014, line: 32, baseType: !4035, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4021, file: !4014, line: 148, baseType: !4098, size: 64, offset: 1088)
!4098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4099, size: 64)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!339, !4035, !726}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4013, file: !4014, line: 20, baseType: !726, size: 64, offset: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4005, file: !4006, line: 57, baseType: !4103, size: 64, offset: 384)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4104, size: 64)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4006, line: 31, size: 704, elements: !4105)
!4105 = !{!4106, !4107, !4108, !4109, !4110}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4104, file: !4006, line: 32, baseType: !345, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4104, file: !4006, line: 33, baseType: !339, size: 32, offset: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4104, file: !4006, line: 34, baseType: !308, size: 64, offset: 128)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4104, file: !4006, line: 35, baseType: !4103, size: 64, offset: 192)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4104, file: !4006, line: 43, baseType: !847, size: 448, offset: 256)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4005, file: !4006, line: 58, baseType: !4103, size: 64, offset: 448)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4005, file: !4006, line: 59, baseType: !4004, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4005, file: !4006, line: 60, baseType: !4004, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4005, file: !4006, line: 61, baseType: !4004, size: 64, offset: 640)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4005, file: !4006, line: 63, baseType: !730, size: 512, offset: 704)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4005, file: !4006, line: 65, baseType: !662, size: 64, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4005, file: !4006, line: 66, baseType: !308, size: 64, offset: 1280)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3998, file: !258, line: 108, baseType: !4119, size: 64, offset: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!339, !3990, !4122, !257}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !258, line: 63, size: 640, elements: !4124)
!4124 = !{!4125, !4126, !4127}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4123, file: !258, line: 64, baseType: !4017, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4123, file: !258, line: 65, baseType: !339, size: 32, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4123, file: !258, line: 66, baseType: !4128, size: 512, offset: 96)
!4128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !435, size: 512, elements: !2127)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3998, file: !258, line: 110, baseType: !4130, size: 64, offset: 128)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!339, !3990, !7, !4133}
!4133 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !307, line: 164, baseType: !662)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3998, file: !258, line: 111, baseType: !4135, size: 64, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = !DISubroutineType(types: !4137)
!4137 = !{null, !3990, !7}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3998, file: !258, line: 112, baseType: !4139, size: 64, offset: 256)
!4139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4140, size: 64)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!339, !3990, !4004, !4142, !7, !4144, !382}
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3998, file: !258, line: 117, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!339, !3990, !7, !7, !308}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3998, file: !258, line: 119, baseType: !4150, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{null, !3990, !7, !7}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3998, file: !258, line: 121, baseType: !4154, size: 64, offset: 448)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{!339, !3990, !4157, !500}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4159, line: 11, flags: DIFlagFwdDecl)
!4159 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3998, file: !258, line: 122, baseType: !4161, size: 64, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !3990, !4157}
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3998, file: !258, line: 123, baseType: !4165, size: 64, offset: 576)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!339, !3990, !4122, !4144, !382}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3991, file: !258, line: 166, baseType: !308, size: 64, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3991, file: !258, line: 167, baseType: !7, size: 32, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3991, file: !258, line: 168, baseType: !7, size: 32, offset: 352)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3991, file: !258, line: 171, baseType: !4017, size: 64, offset: 384)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3991, file: !258, line: 172, baseType: !257, size: 32, offset: 448)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3991, file: !258, line: 173, baseType: !4174, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !258, line: 134, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3991, file: !258, line: 175, baseType: !3990, size: 64, offset: 576)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3991, file: !258, line: 182, baseType: !4133, size: 64, offset: 640)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3991, file: !258, line: 183, baseType: !7, size: 32, offset: 704)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3991, file: !258, line: 184, baseType: !7, size: 32, offset: 736)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3991, file: !258, line: 185, baseType: !1228, size: 128, offset: 768)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3991, file: !258, line: 186, baseType: !1574, size: 192, offset: 896)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3991, file: !258, line: 187, baseType: !4183, offset: 1088)
!4183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2723)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !727, file: !237, line: 499, baseType: !715, size: 128, offset: 4224)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !727, file: !237, line: 502, baseType: !4186, size: 64, offset: 4352)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4188)
!4188 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !237, line: 502, flags: DIFlagFwdDecl)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !727, file: !237, line: 504, baseType: !4190, size: 64, offset: 4416)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !727, file: !237, line: 505, baseType: !692, size: 64, offset: 4480)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !727, file: !237, line: 510, baseType: !692, size: 64, offset: 4544)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !727, file: !237, line: 511, baseType: !4194, size: 64, offset: 4608)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !237, line: 511, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !727, file: !237, line: 513, baseType: !4198, size: 64, offset: 4672)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !237, line: 288, size: 128, elements: !4200)
!4200 = !{!4201, !4202}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4199, file: !237, line: 293, baseType: !7, size: 32)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4199, file: !237, line: 294, baseType: !662, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !727, file: !237, line: 515, baseType: !715, size: 128, offset: 4736)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !727, file: !237, line: 526, baseType: !4205, offset: 4864)
!4205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4206, line: 5, elements: !757)
!4206 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !727, file: !237, line: 528, baseType: !4004, size: 64, offset: 4864)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !727, file: !237, line: 529, baseType: !4017, size: 64, offset: 4928)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !727, file: !237, line: 534, baseType: !1004, size: 32, offset: 4992)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !727, file: !237, line: 535, baseType: !435, size: 32, offset: 5024)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !727, file: !237, line: 537, baseType: !743, offset: 5056)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !727, file: !237, line: 538, baseType: !715, size: 128, offset: 5056)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !727, file: !237, line: 540, baseType: !4214, size: 64, offset: 5184)
!4214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4215, size: 64)
!4215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4216, line: 54, size: 960, elements: !4217)
!4216 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4217 = !{!4218, !4219, !4220, !4221, !4222, !4223, !4224, !4228, !4232, !4233, !4234, !4235, !4239, !4243, !4244}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4215, file: !4216, line: 55, baseType: !322, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4215, file: !4216, line: 56, baseType: !326, size: 64, offset: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4215, file: !4216, line: 58, baseType: !832, size: 64, offset: 128)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4215, file: !4216, line: 59, baseType: !832, size: 64, offset: 192)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4215, file: !4216, line: 60, baseType: !736, size: 64, offset: 256)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4215, file: !4216, line: 62, baseType: !3727, size: 64, offset: 320)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4215, file: !4216, line: 63, baseType: !4225, size: 64, offset: 384)
!4225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4226, size: 64)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!345, !726, !3734}
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4215, file: !4216, line: 65, baseType: !4229, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{null, !4214}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4215, file: !4216, line: 66, baseType: !3736, size: 64, offset: 512)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4215, file: !4216, line: 68, baseType: !3745, size: 64, offset: 576)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4215, file: !4216, line: 70, baseType: !3535, size: 64, offset: 640)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4215, file: !4216, line: 71, baseType: !4236, size: 64, offset: 704)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!2521, !726}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4215, file: !4216, line: 73, baseType: !4240, size: 64, offset: 768)
!4240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4241, size: 64)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !726, !3567, !3568}
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4215, file: !4216, line: 75, baseType: !3740, size: 64, offset: 832)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4215, file: !4216, line: 77, baseType: !3854, size: 64, offset: 896)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !727, file: !237, line: 541, baseType: !832, size: 64, offset: 5248)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !727, file: !237, line: 543, baseType: !3736, size: 64, offset: 5312)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !727, file: !237, line: 544, baseType: !4248, size: 64, offset: 5376)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !237, line: 45, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !727, file: !237, line: 545, baseType: !4251, size: 64, offset: 5440)
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !237, line: 47, flags: DIFlagFwdDecl)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !727, file: !237, line: 547, baseType: !500, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !727, file: !237, line: 548, baseType: !500, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !727, file: !237, line: 549, baseType: !500, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !727, file: !237, line: 550, baseType: !500, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !711, file: !272, line: 111, baseType: !326, size: 64, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !711, file: !272, line: 113, baseType: !339, size: 32, offset: 640)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !711, file: !272, line: 114, baseType: !4260, size: 64, offset: 704)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4262)
!4262 = !{!4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4277}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4261, file: !272, line: 158, baseType: !715, size: 128)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4261, file: !272, line: 159, baseType: !3193, size: 64, offset: 128)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4261, file: !272, line: 160, baseType: !710, size: 64, offset: 192)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4261, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4261, file: !272, line: 162, baseType: !339, size: 32, offset: 288)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4261, file: !272, line: 163, baseType: !435, size: 32, offset: 320)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4261, file: !272, line: 167, baseType: !339, size: 32, offset: 352)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4261, file: !272, line: 168, baseType: !339, size: 32, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4261, file: !272, line: 169, baseType: !339, size: 32, offset: 416)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4261, file: !272, line: 171, baseType: !1875, size: 128, offset: 448)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4261, file: !272, line: 173, baseType: !4274, size: 64, offset: 576)
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4275, size: 64)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!339, !856, !7, !308}
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4261, file: !272, line: 187, baseType: !308, size: 64, offset: 640)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !711, file: !272, line: 115, baseType: !1574, size: 192, offset: 768)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !447, file: !51, line: 690, baseType: !308, size: 64, offset: 6144)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !447, file: !51, line: 691, baseType: !308, size: 64, offset: 6208)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !447, file: !51, line: 692, baseType: !308, size: 64, offset: 6272)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !447, file: !51, line: 693, baseType: !308, size: 64, offset: 6336)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !447, file: !51, line: 694, baseType: !308, size: 64, offset: 6400)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !447, file: !51, line: 695, baseType: !523, size: 3648, offset: 6464)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !447, file: !51, line: 698, baseType: !4286, size: 64, offset: 10112)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{!339, !308, !339, !339, !339}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !447, file: !51, line: 699, baseType: !339, size: 32, offset: 10176)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !447, file: !51, line: 700, baseType: !7, size: 32, offset: 10208)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !425, file: !51, line: 231, baseType: !486, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !425, file: !51, line: 232, baseType: !486, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !425, file: !51, line: 233, baseType: !486, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !425, file: !51, line: 234, baseType: !486, size: 64, offset: 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !425, file: !51, line: 237, baseType: !486, size: 64, offset: 1536)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !425, file: !51, line: 238, baseType: !4297, size: 64, offset: 1600)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{!339, !446, !685}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !425, file: !51, line: 240, baseType: !706, size: 64, offset: 1664)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !425, file: !51, line: 242, baseType: !606, size: 64, offset: 1728)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !425, file: !51, line: 243, baseType: !606, size: 64, offset: 1792)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !425, file: !51, line: 244, baseType: !606, size: 64, offset: 1856)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !425, file: !51, line: 248, baseType: !606, size: 64, offset: 1920)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !425, file: !51, line: 249, baseType: !611, size: 64, offset: 1984)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !425, file: !51, line: 250, baseType: !695, size: 64, offset: 2048)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !425, file: !51, line: 258, baseType: !4308, size: 64, offset: 2112)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!339, !446, !4311, !339}
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !425, file: !51, line: 267, baseType: !4313, size: 64, offset: 2176)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4314, size: 64)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!339, !446, !435}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !425, file: !51, line: 268, baseType: !4313, size: 64, offset: 2240)
!4317 = !DIGlobalVariableExpression(var: !4318, expr: !DIExpression())
!4318 = distinct !DIGlobalVariable(name: "buf", scope: !4319, file: !3, line: 222, type: !4320, isLocal: true, isDefinition: true)
!4319 = distinct !DISubprogram(name: "tda827xo_sleep", scope: !3, file: !3, line: 219, type: !487, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 16, elements: !1963)
!4321 = !DIGlobalVariableExpression(var: !4322, expr: !DIExpression())
!4322 = distinct !DIGlobalVariable(name: "tda827xa_tuner_ops", scope: !2, file: !3, line: 823, type: !424, isLocal: true, isDefinition: true)
!4323 = !DIGlobalVariableExpression(var: !4324, expr: !DIExpression())
!4324 = distinct !DIGlobalVariable(name: "buf", scope: !4325, file: !3, line: 434, type: !4320, isLocal: true, isDefinition: true)
!4325 = distinct !DISubprogram(name: "tda827xa_sleep", scope: !3, file: !3, line: 431, type: !487, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4326 = !DIGlobalVariableExpression(var: !4327, expr: !DIExpression())
!4327 = distinct !DIGlobalVariable(name: "tda827xa_dvbt", scope: !2, file: !3, line: 342, type: !4328, isLocal: true, isDefinition: true)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4329, size: 2592, elements: !388)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda827xa_data", file: !3, line: 333, size: 96, elements: !4330)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336}
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "lomax", scope: !4329, file: !3, line: 334, baseType: !435, size: 32)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "svco", scope: !4329, file: !3, line: 335, baseType: !361, size: 8, offset: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "spd", scope: !4329, file: !3, line: 336, baseType: !361, size: 8, offset: 40)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "scr", scope: !4329, file: !3, line: 337, baseType: !361, size: 8, offset: 48)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "sbs", scope: !4329, file: !3, line: 338, baseType: !361, size: 8, offset: 56)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "gc3", scope: !4329, file: !3, line: 339, baseType: !361, size: 8, offset: 64)
!4337 = !DIGlobalVariableExpression(var: !4338, expr: !DIExpression())
!4338 = distinct !DIGlobalVariable(name: "tda827xa_dvbc", scope: !2, file: !3, line: 372, type: !4328, isLocal: true, isDefinition: true)
!4339 = !DIGlobalVariableExpression(var: !4340, expr: !DIExpression())
!4340 = distinct !DIGlobalVariable(name: "tda827xa_analog", scope: !2, file: !3, line: 402, type: !4341, isLocal: true, isDefinition: true)
!4341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4329, size: 2496, elements: !4342)
!4342 = !{!4343}
!4343 = !DISubrange(count: 26)
!4344 = !DIGlobalVariableExpression(var: !4345, expr: !DIExpression())
!4345 = distinct !DIGlobalVariable(name: "tda827x_table", scope: !2, file: !3, line: 91, type: !4346, isLocal: true, isDefinition: true)
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4347, size: 2784, elements: !4357)
!4347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4348)
!4348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda827x_data", file: !3, line: 81, size: 96, elements: !4349)
!4349 = !{!4350, !4351, !4352, !4353, !4354, !4355, !4356}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "lomax", scope: !4348, file: !3, line: 82, baseType: !435, size: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "spd", scope: !4348, file: !3, line: 83, baseType: !361, size: 8, offset: 32)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "bs", scope: !4348, file: !3, line: 84, baseType: !361, size: 8, offset: 40)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4348, file: !3, line: 85, baseType: !361, size: 8, offset: 48)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "cp", scope: !4348, file: !3, line: 86, baseType: !361, size: 8, offset: 56)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "gc3", scope: !4348, file: !3, line: 87, baseType: !361, size: 8, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "div1p5", scope: !4348, file: !3, line: 88, baseType: !361, size: 8, offset: 72)
!4357 = !{!4358}
!4358 = !DISubrange(count: 29)
!4359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 112, elements: !4360)
!4360 = !{!4361}
!4361 = !DISubrange(count: 14)
!4362 = !{i32 7, !"Dwarf Version", i32 4}
!4363 = !{i32 2, !"Debug Info Version", i32 3}
!4364 = !{i32 1, !"wchar_size", i32 2}
!4365 = !{i32 1, !"Code Model", i32 2}
!4366 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4367 = distinct !DISubprogram(name: "tda827x_attach", scope: !3, file: !3, line: 869, type: !4368, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!446, !446, !339, !4370, !4492}
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4372, line: 695, size: 7552, elements: !4373)
!4372 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4373 = !{!4374, !4375, !4376, !4413, !4414, !4428, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4445, !4446, !4447, !4448, !4480, !4491}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4371, file: !4372, line: 696, baseType: !326, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4371, file: !4372, line: 697, baseType: !7, size: 32, offset: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4371, file: !4372, line: 698, baseType: !4377, size: 64, offset: 128)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4379)
!4379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4372, line: 519, size: 320, elements: !4380)
!4380 = !{!4381, !4394, !4395, !4408, !4409}
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4379, file: !4372, line: 529, baseType: !4382, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!339, !4370, !4385, !339}
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4387, line: 69, size: 128, elements: !4388)
!4387 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4388 = !{!4389, !4390, !4391, !4392}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4386, file: !4387, line: 70, baseType: !354, size: 16)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4386, file: !4387, line: 71, baseType: !354, size: 16, offset: 16)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4386, file: !4387, line: 84, baseType: !354, size: 16, offset: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4386, file: !4387, line: 85, baseType: !4393, size: 64, offset: 64)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4379, file: !4372, line: 531, baseType: !4382, size: 64, offset: 64)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4379, file: !4372, line: 533, baseType: !4396, size: 64, offset: 128)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{!339, !4370, !352, !355, !324, !361, !339, !4399}
!4399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4400, size: 64)
!4400 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4387, line: 135, size: 272, elements: !4401)
!4401 = !{!4402, !4403, !4404}
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4400, file: !4387, line: 136, baseType: !362, size: 8)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4400, file: !4387, line: 137, baseType: !354, size: 16)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4400, file: !4387, line: 138, baseType: !4405, size: 272)
!4405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 272, elements: !4406)
!4406 = !{!4407}
!4407 = !DISubrange(count: 34)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4379, file: !4372, line: 536, baseType: !4396, size: 64, offset: 192)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4379, file: !4372, line: 541, baseType: !4410, size: 64, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!435, !4370}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4371, file: !4372, line: 699, baseType: !308, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4371, file: !4372, line: 702, baseType: !4415, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4417)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4372, line: 557, size: 192, elements: !4418)
!4418 = !{!4419, !4423, !4427}
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4417, file: !4372, line: 558, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{null, !4370, !7}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4417, file: !4372, line: 559, baseType: !4424, size: 64, offset: 64)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!339, !4370, !7}
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4417, file: !4372, line: 560, baseType: !4420, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4371, file: !4372, line: 703, baseType: !4429, size: 192, offset: 320)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4430, line: 30, size: 192, elements: !4431)
!4430 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4431 = !{!4432, !4433, !4434}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4429, file: !4430, line: 31, baseType: !1265)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4429, file: !4430, line: 32, baseType: !1237, size: 128)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4429, file: !4430, line: 33, baseType: !1617, size: 64, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4371, file: !4372, line: 704, baseType: !4429, size: 192, offset: 512)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4371, file: !4372, line: 706, baseType: !339, size: 32, offset: 704)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4371, file: !4372, line: 707, baseType: !339, size: 32, offset: 736)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4371, file: !4372, line: 708, baseType: !727, size: 5568, offset: 768)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4371, file: !4372, line: 709, baseType: !662, size: 64, offset: 6336)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4371, file: !4372, line: 713, baseType: !339, size: 32, offset: 6400)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !4372, line: 714, baseType: !4442, size: 384, offset: 6432)
!4442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 384, elements: !4443)
!4443 = !{!4444}
!4444 = !DISubrange(count: 48)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4371, file: !4372, line: 715, baseType: !1896, size: 192, offset: 6848)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4371, file: !4372, line: 717, baseType: !1574, size: 192, offset: 7040)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4371, file: !4372, line: 718, baseType: !715, size: 128, offset: 7232)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4371, file: !4372, line: 720, baseType: !4449, size: 64, offset: 7360)
!4449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4450, size: 64)
!4450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4372, line: 618, size: 832, elements: !4451)
!4451 = !{!4452, !4456, !4457, !4461, !4462, !4463, !4464, !4468, !4469, !4472, !4473, !4476, !4479}
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4450, file: !4372, line: 619, baseType: !4453, size: 64)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!339, !4370}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4450, file: !4372, line: 621, baseType: !4453, size: 64, offset: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4450, file: !4372, line: 622, baseType: !4458, size: 64, offset: 128)
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{null, !4370, !339}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4450, file: !4372, line: 623, baseType: !4453, size: 64, offset: 192)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4450, file: !4372, line: 624, baseType: !4458, size: 64, offset: 256)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4450, file: !4372, line: 625, baseType: !4453, size: 64, offset: 320)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4450, file: !4372, line: 627, baseType: !4465, size: 64, offset: 384)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4370}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4450, file: !4372, line: 628, baseType: !4465, size: 64, offset: 448)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4450, file: !4372, line: 631, baseType: !4470, size: 64, offset: 512)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4372, line: 631, flags: DIFlagFwdDecl)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4450, file: !4372, line: 632, baseType: !4470, size: 64, offset: 576)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4450, file: !4372, line: 633, baseType: !4474, size: 64, offset: 640)
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4475, size: 64)
!4475 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4372, line: 633, flags: DIFlagFwdDecl)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4450, file: !4372, line: 634, baseType: !4477, size: 64, offset: 704)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4372, line: 634, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4450, file: !4372, line: 635, baseType: !4477, size: 64, offset: 768)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4371, file: !4372, line: 721, baseType: !4481, size: 64, offset: 7424)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4483)
!4483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4372, line: 664, size: 192, elements: !4484)
!4484 = !{!4485, !4486, !4487, !4488, !4489, !4490}
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4483, file: !4372, line: 665, baseType: !692, size: 64)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4483, file: !4372, line: 666, baseType: !339, size: 32, offset: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4483, file: !4372, line: 667, baseType: !352, size: 16, offset: 96)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4483, file: !4372, line: 668, baseType: !352, size: 16, offset: 112)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4483, file: !4372, line: 669, baseType: !352, size: 16, offset: 128)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4483, file: !4372, line: 670, baseType: !352, size: 16, offset: 144)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4371, file: !4372, line: 723, baseType: !3990, size: 64, offset: 7488)
!4492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4493, size: 64)
!4493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda827x_config", file: !4494, line: 18, size: 256, elements: !4495)
!4494 = !DIFile(filename: "drivers/media/tuners/tda827x.h", directory: "/home/lizy2001/genbc/linux")
!4495 = !{!4496, !4497, !4498, !4499, !4500}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !4493, file: !4494, line: 21, baseType: !486, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !4493, file: !4494, line: 22, baseType: !486, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4493, file: !4494, line: 25, baseType: !283, size: 32, offset: 128)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "switch_addr", scope: !4493, file: !4494, line: 26, baseType: !339, size: 32, offset: 160)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "agcf", scope: !4493, file: !4494, line: 28, baseType: !443, size: 64, offset: 192)
!4501 = !DILocalVariable(name: "fe", arg: 1, scope: !4367, file: !3, line: 869, type: !446)
!4502 = !DILocation(line: 869, column: 58, scope: !4367)
!4503 = !DILocalVariable(name: "addr", arg: 2, scope: !4367, file: !3, line: 869, type: !339)
!4504 = !DILocation(line: 869, column: 66, scope: !4367)
!4505 = !DILocalVariable(name: "i2c", arg: 3, scope: !4367, file: !3, line: 870, type: !4370)
!4506 = !DILocation(line: 870, column: 29, scope: !4367)
!4507 = !DILocalVariable(name: "cfg", arg: 4, scope: !4367, file: !3, line: 871, type: !4492)
!4508 = !DILocation(line: 871, column: 32, scope: !4367)
!4509 = !DILocalVariable(name: "priv", scope: !4367, file: !3, line: 873, type: !4510)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tda827x_priv", file: !3, line: 25, size: 320, elements: !4512)
!4512 = !{!4513, !4514, !4515, !4516, !4517, !4518, !4519}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_addr", scope: !4511, file: !3, line: 26, baseType: !339, size: 32)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_adap", scope: !4511, file: !3, line: 27, baseType: !4370, size: 64, offset: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !4511, file: !3, line: 28, baseType: !4492, size: 64, offset: 128)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "sgIF", scope: !4511, file: !3, line: 30, baseType: !7, size: 32, offset: 192)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "lpsel", scope: !4511, file: !3, line: 31, baseType: !313, size: 8, offset: 224)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4511, file: !3, line: 33, baseType: !435, size: 32, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !4511, file: !3, line: 34, baseType: !435, size: 32, offset: 288)
!4520 = !DILocation(line: 873, column: 23, scope: !4367)
!4521 = !DILocation(line: 875, column: 2, scope: !4367)
!4522 = !DILocation(line: 875, column: 2, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !3, line: 875, column: 2)
!4524 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 875, column: 2)
!4525 = !DILocation(line: 875, column: 2, scope: !4524)
!4526 = !DILocation(line: 876, column: 9, scope: !4367)
!4527 = !DILocation(line: 876, column: 7, scope: !4367)
!4528 = !DILocation(line: 877, column: 6, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 877, column: 6)
!4530 = !DILocation(line: 877, column: 11, scope: !4529)
!4531 = !DILocation(line: 877, column: 6, scope: !4367)
!4532 = !DILocation(line: 878, column: 3, scope: !4529)
!4533 = !DILocation(line: 880, column: 19, scope: !4367)
!4534 = !DILocation(line: 880, column: 2, scope: !4367)
!4535 = !DILocation(line: 880, column: 8, scope: !4367)
!4536 = !DILocation(line: 880, column: 17, scope: !4367)
!4537 = !DILocation(line: 881, column: 19, scope: !4367)
!4538 = !DILocation(line: 881, column: 2, scope: !4367)
!4539 = !DILocation(line: 881, column: 8, scope: !4367)
!4540 = !DILocation(line: 881, column: 17, scope: !4367)
!4541 = !DILocation(line: 882, column: 14, scope: !4367)
!4542 = !DILocation(line: 882, column: 2, scope: !4367)
!4543 = !DILocation(line: 882, column: 8, scope: !4367)
!4544 = !DILocation(line: 882, column: 12, scope: !4367)
!4545 = !DILocation(line: 883, column: 10, scope: !4367)
!4546 = !DILocation(line: 883, column: 14, scope: !4367)
!4547 = !DILocation(line: 883, column: 18, scope: !4367)
!4548 = !DILocation(line: 883, column: 2, scope: !4367)
!4549 = !DILocation(line: 884, column: 19, scope: !4367)
!4550 = !DILocation(line: 884, column: 2, scope: !4367)
!4551 = !DILocation(line: 884, column: 6, scope: !4367)
!4552 = !DILocation(line: 884, column: 17, scope: !4367)
!4553 = !DILocation(line: 886, column: 2, scope: !4367)
!4554 = !DILocation(line: 886, column: 2, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 886, column: 2)
!4556 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 886, column: 2)
!4557 = !DILocation(line: 886, column: 2, scope: !4556)
!4558 = !DILocation(line: 888, column: 9, scope: !4367)
!4559 = !DILocation(line: 888, column: 2, scope: !4367)
!4560 = !DILocation(line: 889, column: 1, scope: !4367)
!4561 = distinct !DISubprogram(name: "kzalloc", scope: !291, file: !291, line: 662, type: !4562, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4562 = !DISubroutineType(types: !4563)
!4563 = !{!308, !826, !306}
!4564 = !DILocalVariable(name: "s", arg: 1, scope: !4565, file: !291, line: 445, type: !1418)
!4565 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !291, file: !291, line: 445, type: !4566, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!308, !1418, !306, !826}
!4568 = !DILocation(line: 445, column: 72, scope: !4565, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 552, column: 10, scope: !4570, inlinedAt: !4573)
!4570 = distinct !DILexicalBlock(scope: !4571, file: !291, line: 540, column: 34)
!4571 = distinct !DILexicalBlock(scope: !4572, file: !291, line: 540, column: 6)
!4572 = distinct !DISubprogram(name: "kmalloc", scope: !291, file: !291, line: 538, type: !4562, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4573 = distinct !DILocation(line: 664, column: 9, scope: !4561)
!4574 = !DILocalVariable(name: "flags", arg: 2, scope: !4565, file: !291, line: 446, type: !306)
!4575 = !DILocation(line: 446, column: 9, scope: !4565, inlinedAt: !4569)
!4576 = !DILocalVariable(name: "size", arg: 3, scope: !4565, file: !291, line: 446, type: !826)
!4577 = !DILocation(line: 446, column: 23, scope: !4565, inlinedAt: !4569)
!4578 = !DILocalVariable(name: "ret", scope: !4565, file: !291, line: 448, type: !308)
!4579 = !DILocation(line: 448, column: 8, scope: !4565, inlinedAt: !4569)
!4580 = !DILocalVariable(name: "flags", arg: 1, scope: !4581, file: !291, line: 318, type: !306)
!4581 = distinct !DISubprogram(name: "kmalloc_type", scope: !291, file: !291, line: 318, type: !4582, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!290, !306}
!4584 = !DILocation(line: 318, column: 67, scope: !4581, inlinedAt: !4585)
!4585 = distinct !DILocation(line: 553, column: 20, scope: !4570, inlinedAt: !4573)
!4586 = !DILocalVariable(name: "size", arg: 1, scope: !4587, file: !291, line: 346, type: !826)
!4587 = distinct !DISubprogram(name: "kmalloc_index", scope: !291, file: !291, line: 346, type: !4588, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!7, !826}
!4590 = !DILocation(line: 346, column: 58, scope: !4587, inlinedAt: !4591)
!4591 = distinct !DILocation(line: 547, column: 11, scope: !4570, inlinedAt: !4573)
!4592 = !DILocalVariable(name: "size", arg: 1, scope: !4593, file: !291, line: 472, type: !826)
!4593 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !291, file: !291, line: 472, type: !4594, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!308, !826, !306, !7}
!4596 = !DILocation(line: 472, column: 28, scope: !4593, inlinedAt: !4597)
!4597 = distinct !DILocation(line: 481, column: 9, scope: !4598, inlinedAt: !4599)
!4598 = distinct !DISubprogram(name: "kmalloc_large", scope: !291, file: !291, line: 478, type: !4562, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4599 = distinct !DILocation(line: 545, column: 11, scope: !4600, inlinedAt: !4573)
!4600 = distinct !DILexicalBlock(scope: !4570, file: !291, line: 544, column: 7)
!4601 = !DILocalVariable(name: "flags", arg: 2, scope: !4593, file: !291, line: 472, type: !306)
!4602 = !DILocation(line: 472, column: 40, scope: !4593, inlinedAt: !4597)
!4603 = !DILocalVariable(name: "order", arg: 3, scope: !4593, file: !291, line: 472, type: !7)
!4604 = !DILocation(line: 472, column: 60, scope: !4593, inlinedAt: !4597)
!4605 = !DILocalVariable(name: "size", arg: 1, scope: !4598, file: !291, line: 478, type: !826)
!4606 = !DILocation(line: 478, column: 51, scope: !4598, inlinedAt: !4599)
!4607 = !DILocalVariable(name: "flags", arg: 2, scope: !4598, file: !291, line: 478, type: !306)
!4608 = !DILocation(line: 478, column: 63, scope: !4598, inlinedAt: !4599)
!4609 = !DILocalVariable(name: "order", scope: !4598, file: !291, line: 480, type: !7)
!4610 = !DILocation(line: 480, column: 15, scope: !4598, inlinedAt: !4599)
!4611 = !DILocalVariable(name: "size", arg: 1, scope: !4572, file: !291, line: 538, type: !826)
!4612 = !DILocation(line: 538, column: 45, scope: !4572, inlinedAt: !4573)
!4613 = !DILocalVariable(name: "flags", arg: 2, scope: !4572, file: !291, line: 538, type: !306)
!4614 = !DILocation(line: 538, column: 57, scope: !4572, inlinedAt: !4573)
!4615 = !DILocalVariable(name: "index", scope: !4570, file: !291, line: 542, type: !7)
!4616 = !DILocation(line: 542, column: 16, scope: !4570, inlinedAt: !4573)
!4617 = !DILocalVariable(name: "size", arg: 1, scope: !4561, file: !291, line: 662, type: !826)
!4618 = !DILocation(line: 662, column: 36, scope: !4561)
!4619 = !DILocalVariable(name: "flags", arg: 2, scope: !4561, file: !291, line: 662, type: !306)
!4620 = !DILocation(line: 662, column: 48, scope: !4561)
!4621 = !DILocation(line: 664, column: 17, scope: !4561)
!4622 = !DILocation(line: 664, column: 23, scope: !4561)
!4623 = !DILocation(line: 664, column: 29, scope: !4561)
!4624 = !DILocation(line: 540, column: 27, scope: !4571, inlinedAt: !4573)
!4625 = !DILocation(line: 540, column: 6, scope: !4571, inlinedAt: !4573)
!4626 = !DILocation(line: 540, column: 6, scope: !4572, inlinedAt: !4573)
!4627 = !DILocation(line: 544, column: 7, scope: !4600, inlinedAt: !4573)
!4628 = !DILocation(line: 544, column: 12, scope: !4600, inlinedAt: !4573)
!4629 = !DILocation(line: 544, column: 7, scope: !4570, inlinedAt: !4573)
!4630 = !DILocation(line: 545, column: 25, scope: !4600, inlinedAt: !4573)
!4631 = !DILocation(line: 545, column: 31, scope: !4600, inlinedAt: !4573)
!4632 = !DILocation(line: 480, column: 33, scope: !4598, inlinedAt: !4599)
!4633 = !DILocation(line: 480, column: 23, scope: !4598, inlinedAt: !4599)
!4634 = !DILocation(line: 481, column: 29, scope: !4598, inlinedAt: !4599)
!4635 = !DILocation(line: 481, column: 35, scope: !4598, inlinedAt: !4599)
!4636 = !DILocation(line: 481, column: 42, scope: !4598, inlinedAt: !4599)
!4637 = !DILocation(line: 474, column: 23, scope: !4593, inlinedAt: !4597)
!4638 = !DILocation(line: 474, column: 29, scope: !4593, inlinedAt: !4597)
!4639 = !DILocation(line: 474, column: 36, scope: !4593, inlinedAt: !4597)
!4640 = !DILocation(line: 474, column: 9, scope: !4593, inlinedAt: !4597)
!4641 = !DILocation(line: 545, column: 4, scope: !4600, inlinedAt: !4573)
!4642 = !DILocation(line: 547, column: 25, scope: !4570, inlinedAt: !4573)
!4643 = !DILocation(line: 348, column: 7, scope: !4644, inlinedAt: !4591)
!4644 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 348, column: 6)
!4645 = !DILocation(line: 348, column: 6, scope: !4587, inlinedAt: !4591)
!4646 = !DILocation(line: 349, column: 3, scope: !4644, inlinedAt: !4591)
!4647 = !DILocation(line: 351, column: 6, scope: !4648, inlinedAt: !4591)
!4648 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 351, column: 6)
!4649 = !DILocation(line: 351, column: 11, scope: !4648, inlinedAt: !4591)
!4650 = !DILocation(line: 351, column: 6, scope: !4587, inlinedAt: !4591)
!4651 = !DILocation(line: 352, column: 3, scope: !4648, inlinedAt: !4591)
!4652 = !DILocation(line: 354, column: 32, scope: !4653, inlinedAt: !4591)
!4653 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 354, column: 6)
!4654 = !DILocation(line: 354, column: 37, scope: !4653, inlinedAt: !4591)
!4655 = !DILocation(line: 354, column: 42, scope: !4653, inlinedAt: !4591)
!4656 = !DILocation(line: 354, column: 45, scope: !4653, inlinedAt: !4591)
!4657 = !DILocation(line: 354, column: 50, scope: !4653, inlinedAt: !4591)
!4658 = !DILocation(line: 354, column: 6, scope: !4587, inlinedAt: !4591)
!4659 = !DILocation(line: 355, column: 3, scope: !4653, inlinedAt: !4591)
!4660 = !DILocation(line: 356, column: 32, scope: !4661, inlinedAt: !4591)
!4661 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 356, column: 6)
!4662 = !DILocation(line: 356, column: 37, scope: !4661, inlinedAt: !4591)
!4663 = !DILocation(line: 356, column: 43, scope: !4661, inlinedAt: !4591)
!4664 = !DILocation(line: 356, column: 46, scope: !4661, inlinedAt: !4591)
!4665 = !DILocation(line: 356, column: 51, scope: !4661, inlinedAt: !4591)
!4666 = !DILocation(line: 356, column: 6, scope: !4587, inlinedAt: !4591)
!4667 = !DILocation(line: 357, column: 3, scope: !4661, inlinedAt: !4591)
!4668 = !DILocation(line: 358, column: 6, scope: !4669, inlinedAt: !4591)
!4669 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 358, column: 6)
!4670 = !DILocation(line: 358, column: 11, scope: !4669, inlinedAt: !4591)
!4671 = !DILocation(line: 358, column: 6, scope: !4587, inlinedAt: !4591)
!4672 = !DILocation(line: 358, column: 26, scope: !4669, inlinedAt: !4591)
!4673 = !DILocation(line: 359, column: 6, scope: !4674, inlinedAt: !4591)
!4674 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 359, column: 6)
!4675 = !DILocation(line: 359, column: 11, scope: !4674, inlinedAt: !4591)
!4676 = !DILocation(line: 359, column: 6, scope: !4587, inlinedAt: !4591)
!4677 = !DILocation(line: 359, column: 26, scope: !4674, inlinedAt: !4591)
!4678 = !DILocation(line: 360, column: 6, scope: !4679, inlinedAt: !4591)
!4679 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 360, column: 6)
!4680 = !DILocation(line: 360, column: 11, scope: !4679, inlinedAt: !4591)
!4681 = !DILocation(line: 360, column: 6, scope: !4587, inlinedAt: !4591)
!4682 = !DILocation(line: 360, column: 26, scope: !4679, inlinedAt: !4591)
!4683 = !DILocation(line: 361, column: 6, scope: !4684, inlinedAt: !4591)
!4684 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 361, column: 6)
!4685 = !DILocation(line: 361, column: 11, scope: !4684, inlinedAt: !4591)
!4686 = !DILocation(line: 361, column: 6, scope: !4587, inlinedAt: !4591)
!4687 = !DILocation(line: 361, column: 26, scope: !4684, inlinedAt: !4591)
!4688 = !DILocation(line: 362, column: 6, scope: !4689, inlinedAt: !4591)
!4689 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 362, column: 6)
!4690 = !DILocation(line: 362, column: 11, scope: !4689, inlinedAt: !4591)
!4691 = !DILocation(line: 362, column: 6, scope: !4587, inlinedAt: !4591)
!4692 = !DILocation(line: 362, column: 26, scope: !4689, inlinedAt: !4591)
!4693 = !DILocation(line: 363, column: 6, scope: !4694, inlinedAt: !4591)
!4694 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 363, column: 6)
!4695 = !DILocation(line: 363, column: 11, scope: !4694, inlinedAt: !4591)
!4696 = !DILocation(line: 363, column: 6, scope: !4587, inlinedAt: !4591)
!4697 = !DILocation(line: 363, column: 26, scope: !4694, inlinedAt: !4591)
!4698 = !DILocation(line: 364, column: 6, scope: !4699, inlinedAt: !4591)
!4699 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 364, column: 6)
!4700 = !DILocation(line: 364, column: 11, scope: !4699, inlinedAt: !4591)
!4701 = !DILocation(line: 364, column: 6, scope: !4587, inlinedAt: !4591)
!4702 = !DILocation(line: 364, column: 26, scope: !4699, inlinedAt: !4591)
!4703 = !DILocation(line: 365, column: 6, scope: !4704, inlinedAt: !4591)
!4704 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 365, column: 6)
!4705 = !DILocation(line: 365, column: 11, scope: !4704, inlinedAt: !4591)
!4706 = !DILocation(line: 365, column: 6, scope: !4587, inlinedAt: !4591)
!4707 = !DILocation(line: 365, column: 26, scope: !4704, inlinedAt: !4591)
!4708 = !DILocation(line: 366, column: 6, scope: !4709, inlinedAt: !4591)
!4709 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 366, column: 6)
!4710 = !DILocation(line: 366, column: 11, scope: !4709, inlinedAt: !4591)
!4711 = !DILocation(line: 366, column: 6, scope: !4587, inlinedAt: !4591)
!4712 = !DILocation(line: 366, column: 26, scope: !4709, inlinedAt: !4591)
!4713 = !DILocation(line: 367, column: 6, scope: !4714, inlinedAt: !4591)
!4714 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 367, column: 6)
!4715 = !DILocation(line: 367, column: 11, scope: !4714, inlinedAt: !4591)
!4716 = !DILocation(line: 367, column: 6, scope: !4587, inlinedAt: !4591)
!4717 = !DILocation(line: 367, column: 26, scope: !4714, inlinedAt: !4591)
!4718 = !DILocation(line: 368, column: 6, scope: !4719, inlinedAt: !4591)
!4719 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 368, column: 6)
!4720 = !DILocation(line: 368, column: 11, scope: !4719, inlinedAt: !4591)
!4721 = !DILocation(line: 368, column: 6, scope: !4587, inlinedAt: !4591)
!4722 = !DILocation(line: 368, column: 26, scope: !4719, inlinedAt: !4591)
!4723 = !DILocation(line: 369, column: 6, scope: !4724, inlinedAt: !4591)
!4724 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 369, column: 6)
!4725 = !DILocation(line: 369, column: 11, scope: !4724, inlinedAt: !4591)
!4726 = !DILocation(line: 369, column: 6, scope: !4587, inlinedAt: !4591)
!4727 = !DILocation(line: 369, column: 26, scope: !4724, inlinedAt: !4591)
!4728 = !DILocation(line: 370, column: 6, scope: !4729, inlinedAt: !4591)
!4729 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 370, column: 6)
!4730 = !DILocation(line: 370, column: 11, scope: !4729, inlinedAt: !4591)
!4731 = !DILocation(line: 370, column: 6, scope: !4587, inlinedAt: !4591)
!4732 = !DILocation(line: 370, column: 26, scope: !4729, inlinedAt: !4591)
!4733 = !DILocation(line: 371, column: 6, scope: !4734, inlinedAt: !4591)
!4734 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 371, column: 6)
!4735 = !DILocation(line: 371, column: 11, scope: !4734, inlinedAt: !4591)
!4736 = !DILocation(line: 371, column: 6, scope: !4587, inlinedAt: !4591)
!4737 = !DILocation(line: 371, column: 26, scope: !4734, inlinedAt: !4591)
!4738 = !DILocation(line: 372, column: 6, scope: !4739, inlinedAt: !4591)
!4739 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 372, column: 6)
!4740 = !DILocation(line: 372, column: 11, scope: !4739, inlinedAt: !4591)
!4741 = !DILocation(line: 372, column: 6, scope: !4587, inlinedAt: !4591)
!4742 = !DILocation(line: 372, column: 26, scope: !4739, inlinedAt: !4591)
!4743 = !DILocation(line: 373, column: 6, scope: !4744, inlinedAt: !4591)
!4744 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 373, column: 6)
!4745 = !DILocation(line: 373, column: 11, scope: !4744, inlinedAt: !4591)
!4746 = !DILocation(line: 373, column: 6, scope: !4587, inlinedAt: !4591)
!4747 = !DILocation(line: 373, column: 26, scope: !4744, inlinedAt: !4591)
!4748 = !DILocation(line: 374, column: 6, scope: !4749, inlinedAt: !4591)
!4749 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 374, column: 6)
!4750 = !DILocation(line: 374, column: 11, scope: !4749, inlinedAt: !4591)
!4751 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !4591)
!4752 = !DILocation(line: 374, column: 26, scope: !4749, inlinedAt: !4591)
!4753 = !DILocation(line: 375, column: 6, scope: !4754, inlinedAt: !4591)
!4754 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 375, column: 6)
!4755 = !DILocation(line: 375, column: 11, scope: !4754, inlinedAt: !4591)
!4756 = !DILocation(line: 375, column: 6, scope: !4587, inlinedAt: !4591)
!4757 = !DILocation(line: 375, column: 27, scope: !4754, inlinedAt: !4591)
!4758 = !DILocation(line: 376, column: 6, scope: !4759, inlinedAt: !4591)
!4759 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 376, column: 6)
!4760 = !DILocation(line: 376, column: 11, scope: !4759, inlinedAt: !4591)
!4761 = !DILocation(line: 376, column: 6, scope: !4587, inlinedAt: !4591)
!4762 = !DILocation(line: 376, column: 32, scope: !4759, inlinedAt: !4591)
!4763 = !DILocation(line: 377, column: 6, scope: !4764, inlinedAt: !4591)
!4764 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 377, column: 6)
!4765 = !DILocation(line: 377, column: 11, scope: !4764, inlinedAt: !4591)
!4766 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !4591)
!4767 = !DILocation(line: 377, column: 32, scope: !4764, inlinedAt: !4591)
!4768 = !DILocation(line: 378, column: 6, scope: !4769, inlinedAt: !4591)
!4769 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 378, column: 6)
!4770 = !DILocation(line: 378, column: 11, scope: !4769, inlinedAt: !4591)
!4771 = !DILocation(line: 378, column: 6, scope: !4587, inlinedAt: !4591)
!4772 = !DILocation(line: 378, column: 32, scope: !4769, inlinedAt: !4591)
!4773 = !DILocation(line: 379, column: 6, scope: !4774, inlinedAt: !4591)
!4774 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 379, column: 6)
!4775 = !DILocation(line: 379, column: 11, scope: !4774, inlinedAt: !4591)
!4776 = !DILocation(line: 379, column: 6, scope: !4587, inlinedAt: !4591)
!4777 = !DILocation(line: 379, column: 33, scope: !4774, inlinedAt: !4591)
!4778 = !DILocation(line: 380, column: 6, scope: !4779, inlinedAt: !4591)
!4779 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 380, column: 6)
!4780 = !DILocation(line: 380, column: 11, scope: !4779, inlinedAt: !4591)
!4781 = !DILocation(line: 380, column: 6, scope: !4587, inlinedAt: !4591)
!4782 = !DILocation(line: 380, column: 33, scope: !4779, inlinedAt: !4591)
!4783 = !DILocation(line: 381, column: 6, scope: !4784, inlinedAt: !4591)
!4784 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 381, column: 6)
!4785 = !DILocation(line: 381, column: 11, scope: !4784, inlinedAt: !4591)
!4786 = !DILocation(line: 381, column: 6, scope: !4587, inlinedAt: !4591)
!4787 = !DILocation(line: 381, column: 33, scope: !4784, inlinedAt: !4591)
!4788 = !DILocation(line: 382, column: 2, scope: !4789, inlinedAt: !4591)
!4789 = distinct !DILexicalBlock(scope: !4790, file: !291, line: 382, column: 2)
!4790 = distinct !DILexicalBlock(scope: !4587, file: !291, line: 382, column: 2)
!4791 = !{i32 -2144221880, i32 -2144221851, i32 -2144221805, i32 -2144221747, i32 -2144221693, i32 -2144221639, i32 -2144221584, i32 -2144221553}
!4792 = !DILocation(line: 382, column: 2, scope: !4793, inlinedAt: !4591)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !291, line: 382, column: 2)
!4794 = distinct !DILexicalBlock(scope: !4790, file: !291, line: 382, column: 2)
!4795 = !{i32 -2144221110, i32 -2144221103, i32 -2144221049, i32 -2144221018, i32 -2144220988}
!4796 = !DILocation(line: 382, column: 2, scope: !4794, inlinedAt: !4591)
!4797 = !DILocation(line: 386, column: 1, scope: !4587, inlinedAt: !4591)
!4798 = !DILocation(line: 547, column: 9, scope: !4570, inlinedAt: !4573)
!4799 = !DILocation(line: 549, column: 8, scope: !4800, inlinedAt: !4573)
!4800 = distinct !DILexicalBlock(scope: !4570, file: !291, line: 549, column: 7)
!4801 = !DILocation(line: 549, column: 7, scope: !4570, inlinedAt: !4573)
!4802 = !DILocation(line: 550, column: 4, scope: !4800, inlinedAt: !4573)
!4803 = !DILocation(line: 553, column: 33, scope: !4570, inlinedAt: !4573)
!4804 = !DILocation(line: 325, column: 6, scope: !4805, inlinedAt: !4585)
!4805 = distinct !DILexicalBlock(scope: !4581, file: !291, line: 325, column: 6)
!4806 = !DILocation(line: 325, column: 6, scope: !4581, inlinedAt: !4585)
!4807 = !DILocation(line: 326, column: 3, scope: !4805, inlinedAt: !4585)
!4808 = !DILocation(line: 332, column: 9, scope: !4581, inlinedAt: !4585)
!4809 = !DILocation(line: 332, column: 15, scope: !4581, inlinedAt: !4585)
!4810 = !DILocation(line: 332, column: 2, scope: !4581, inlinedAt: !4585)
!4811 = !DILocation(line: 336, column: 1, scope: !4581, inlinedAt: !4585)
!4812 = !DILocation(line: 553, column: 5, scope: !4570, inlinedAt: !4573)
!4813 = !DILocation(line: 553, column: 41, scope: !4570, inlinedAt: !4573)
!4814 = !DILocation(line: 554, column: 5, scope: !4570, inlinedAt: !4573)
!4815 = !DILocation(line: 554, column: 12, scope: !4570, inlinedAt: !4573)
!4816 = !DILocation(line: 448, column: 31, scope: !4565, inlinedAt: !4569)
!4817 = !DILocation(line: 448, column: 34, scope: !4565, inlinedAt: !4569)
!4818 = !DILocation(line: 448, column: 14, scope: !4565, inlinedAt: !4569)
!4819 = !DILocation(line: 450, column: 22, scope: !4565, inlinedAt: !4569)
!4820 = !DILocation(line: 450, column: 25, scope: !4565, inlinedAt: !4569)
!4821 = !DILocation(line: 450, column: 30, scope: !4565, inlinedAt: !4569)
!4822 = !DILocation(line: 450, column: 36, scope: !4565, inlinedAt: !4569)
!4823 = !DILocation(line: 450, column: 8, scope: !4565, inlinedAt: !4569)
!4824 = !DILocation(line: 450, column: 6, scope: !4565, inlinedAt: !4569)
!4825 = !DILocation(line: 451, column: 9, scope: !4565, inlinedAt: !4569)
!4826 = !DILocation(line: 552, column: 3, scope: !4570, inlinedAt: !4573)
!4827 = !DILocation(line: 557, column: 19, scope: !4572, inlinedAt: !4573)
!4828 = !DILocation(line: 557, column: 25, scope: !4572, inlinedAt: !4573)
!4829 = !DILocation(line: 557, column: 9, scope: !4572, inlinedAt: !4573)
!4830 = !DILocation(line: 557, column: 2, scope: !4572, inlinedAt: !4573)
!4831 = !DILocation(line: 558, column: 1, scope: !4572, inlinedAt: !4573)
!4832 = !DILocation(line: 664, column: 2, scope: !4561)
!4833 = distinct !DISubprogram(name: "get_order", scope: !4834, file: !4834, line: 29, type: !4835, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4834 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4835 = !DISubroutineType(types: !4836)
!4836 = !{!339, !662}
!4837 = !DILocalVariable(name: "x", arg: 1, scope: !4838, file: !4839, line: 366, type: !310)
!4838 = distinct !DISubprogram(name: "fls64", scope: !4839, file: !4839, line: 366, type: !4840, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4839 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!339, !310}
!4842 = !DILocation(line: 366, column: 40, scope: !4838, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 46, column: 9, scope: !4833)
!4844 = !DILocalVariable(name: "bitpos", scope: !4838, file: !4839, line: 368, type: !339)
!4845 = !DILocation(line: 368, column: 6, scope: !4838, inlinedAt: !4843)
!4846 = !DILocalVariable(name: "size", arg: 1, scope: !4833, file: !4834, line: 29, type: !662)
!4847 = !DILocation(line: 29, column: 63, scope: !4833)
!4848 = !DILocation(line: 31, column: 27, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4833, file: !4834, line: 31, column: 6)
!4850 = !DILocation(line: 31, column: 6, scope: !4849)
!4851 = !DILocation(line: 31, column: 6, scope: !4833)
!4852 = !DILocation(line: 32, column: 8, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4854, file: !4834, line: 32, column: 7)
!4854 = distinct !DILexicalBlock(scope: !4849, file: !4834, line: 31, column: 34)
!4855 = !DILocation(line: 32, column: 7, scope: !4854)
!4856 = !DILocation(line: 33, column: 4, scope: !4853)
!4857 = !DILocation(line: 35, column: 7, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4854, file: !4834, line: 35, column: 7)
!4859 = !DILocation(line: 35, column: 12, scope: !4858)
!4860 = !DILocation(line: 35, column: 7, scope: !4854)
!4861 = !DILocation(line: 36, column: 4, scope: !4858)
!4862 = !DILocation(line: 38, column: 10, scope: !4854)
!4863 = !DILocation(line: 38, column: 28, scope: !4854)
!4864 = !DILocation(line: 38, column: 41, scope: !4854)
!4865 = !DILocation(line: 38, column: 3, scope: !4854)
!4866 = !DILocation(line: 41, column: 6, scope: !4833)
!4867 = !DILocation(line: 42, column: 7, scope: !4833)
!4868 = !DILocation(line: 46, column: 15, scope: !4833)
!4869 = !DILocation(line: 374, column: 2, scope: !4838, inlinedAt: !4843)
!4870 = !DILocation(line: 376, column: 14, scope: !4838, inlinedAt: !4843)
!4871 = !{i32 322445}
!4872 = !DILocation(line: 377, column: 9, scope: !4838, inlinedAt: !4843)
!4873 = !DILocation(line: 377, column: 16, scope: !4838, inlinedAt: !4843)
!4874 = !DILocation(line: 46, column: 2, scope: !4833)
!4875 = !DILocation(line: 48, column: 1, scope: !4833)
!4876 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4877, file: !4877, line: 30, type: !4878, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4877 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4878 = !DISubroutineType(types: !4879)
!4879 = !{!339, !692}
!4880 = !DILocation(line: 366, column: 40, scope: !4838, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 32, column: 9, scope: !4876)
!4882 = !DILocation(line: 368, column: 6, scope: !4838, inlinedAt: !4881)
!4883 = !DILocalVariable(name: "n", arg: 1, scope: !4876, file: !4877, line: 30, type: !692)
!4884 = !DILocation(line: 30, column: 21, scope: !4876)
!4885 = !DILocation(line: 32, column: 15, scope: !4876)
!4886 = !DILocation(line: 374, column: 2, scope: !4838, inlinedAt: !4881)
!4887 = !DILocation(line: 376, column: 14, scope: !4838, inlinedAt: !4881)
!4888 = !DILocation(line: 377, column: 9, scope: !4838, inlinedAt: !4881)
!4889 = !DILocation(line: 377, column: 16, scope: !4838, inlinedAt: !4881)
!4890 = !DILocation(line: 32, column: 18, scope: !4876)
!4891 = !DILocation(line: 32, column: 2, scope: !4876)
!4892 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4893, file: !4893, line: 137, type: !4894, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4893 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!308, !1418, !2521, !826, !306}
!4896 = !DILocalVariable(name: "s", arg: 1, scope: !4892, file: !4893, line: 137, type: !1418)
!4897 = !DILocation(line: 137, column: 54, scope: !4892)
!4898 = !DILocalVariable(name: "object", arg: 2, scope: !4892, file: !4893, line: 137, type: !2521)
!4899 = !DILocation(line: 137, column: 69, scope: !4892)
!4900 = !DILocalVariable(name: "size", arg: 3, scope: !4892, file: !4893, line: 138, type: !826)
!4901 = !DILocation(line: 138, column: 12, scope: !4892)
!4902 = !DILocalVariable(name: "flags", arg: 4, scope: !4892, file: !4893, line: 138, type: !306)
!4903 = !DILocation(line: 138, column: 24, scope: !4892)
!4904 = !DILocation(line: 140, column: 17, scope: !4892)
!4905 = !DILocation(line: 140, column: 2, scope: !4892)
!4906 = distinct !DISubprogram(name: "tda827x_release", scope: !3, file: !3, line: 757, type: !444, scopeLine: 758, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4907 = !DILocalVariable(name: "fe", arg: 1, scope: !4906, file: !3, line: 757, type: !446)
!4908 = !DILocation(line: 757, column: 50, scope: !4906)
!4909 = !DILocation(line: 759, column: 8, scope: !4906)
!4910 = !DILocation(line: 759, column: 12, scope: !4906)
!4911 = !DILocation(line: 759, column: 2, scope: !4906)
!4912 = !DILocation(line: 760, column: 2, scope: !4906)
!4913 = !DILocation(line: 760, column: 6, scope: !4906)
!4914 = !DILocation(line: 760, column: 17, scope: !4906)
!4915 = !DILocation(line: 761, column: 1, scope: !4906)
!4916 = distinct !DISubprogram(name: "tda827x_initial_init", scope: !3, file: !3, line: 789, type: !487, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4917 = !DILocalVariable(name: "fe", arg: 1, scope: !4916, file: !3, line: 789, type: !446)
!4918 = !DILocation(line: 789, column: 54, scope: !4916)
!4919 = !DILocalVariable(name: "ret", scope: !4916, file: !3, line: 791, type: !339)
!4920 = !DILocation(line: 791, column: 6, scope: !4916)
!4921 = !DILocation(line: 792, column: 30, scope: !4916)
!4922 = !DILocation(line: 792, column: 8, scope: !4916)
!4923 = !DILocation(line: 792, column: 6, scope: !4916)
!4924 = !DILocation(line: 793, column: 6, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 793, column: 6)
!4926 = !DILocation(line: 793, column: 6, scope: !4916)
!4927 = !DILocation(line: 794, column: 10, scope: !4925)
!4928 = !DILocation(line: 794, column: 3, scope: !4925)
!4929 = !DILocation(line: 795, column: 9, scope: !4916)
!4930 = !DILocation(line: 795, column: 13, scope: !4916)
!4931 = !DILocation(line: 795, column: 17, scope: !4916)
!4932 = !DILocation(line: 795, column: 27, scope: !4916)
!4933 = !DILocation(line: 795, column: 32, scope: !4916)
!4934 = !DILocation(line: 795, column: 2, scope: !4916)
!4935 = !DILocation(line: 796, column: 1, scope: !4916)
!4936 = distinct !DISubprogram(name: "tda827x_initial_sleep", scope: !3, file: !3, line: 798, type: !487, scopeLine: 799, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4937 = !DILocalVariable(name: "fe", arg: 1, scope: !4936, file: !3, line: 798, type: !446)
!4938 = !DILocation(line: 798, column: 55, scope: !4936)
!4939 = !DILocalVariable(name: "ret", scope: !4936, file: !3, line: 800, type: !339)
!4940 = !DILocation(line: 800, column: 6, scope: !4936)
!4941 = !DILocation(line: 801, column: 30, scope: !4936)
!4942 = !DILocation(line: 801, column: 8, scope: !4936)
!4943 = !DILocation(line: 801, column: 6, scope: !4936)
!4944 = !DILocation(line: 802, column: 6, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 802, column: 6)
!4946 = !DILocation(line: 802, column: 6, scope: !4936)
!4947 = !DILocation(line: 803, column: 10, scope: !4945)
!4948 = !DILocation(line: 803, column: 3, scope: !4945)
!4949 = !DILocation(line: 804, column: 9, scope: !4936)
!4950 = !DILocation(line: 804, column: 13, scope: !4936)
!4951 = !DILocation(line: 804, column: 17, scope: !4936)
!4952 = !DILocation(line: 804, column: 27, scope: !4936)
!4953 = !DILocation(line: 804, column: 33, scope: !4936)
!4954 = !DILocation(line: 804, column: 2, scope: !4936)
!4955 = !DILocation(line: 805, column: 1, scope: !4936)
!4956 = distinct !DISubprogram(name: "tda827xo_set_params", scope: !3, file: !3, line: 142, type: !487, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!4957 = !DILocalVariable(name: "fe", arg: 1, scope: !4956, file: !3, line: 142, type: !446)
!4958 = !DILocation(line: 142, column: 53, scope: !4956)
!4959 = !DILocalVariable(name: "c", scope: !4956, file: !3, line: 144, type: !522)
!4960 = !DILocation(line: 144, column: 34, scope: !4956)
!4961 = !DILocation(line: 144, column: 39, scope: !4956)
!4962 = !DILocation(line: 144, column: 43, scope: !4956)
!4963 = !DILocalVariable(name: "priv", scope: !4956, file: !3, line: 145, type: !4510)
!4964 = !DILocation(line: 145, column: 23, scope: !4956)
!4965 = !DILocation(line: 145, column: 30, scope: !4956)
!4966 = !DILocation(line: 145, column: 34, scope: !4956)
!4967 = !DILocalVariable(name: "buf", scope: !4956, file: !3, line: 146, type: !4968)
!4968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 112, elements: !4360)
!4969 = !DILocation(line: 146, column: 5, scope: !4956)
!4970 = !DILocalVariable(name: "rc", scope: !4956, file: !3, line: 147, type: !339)
!4971 = !DILocation(line: 147, column: 6, scope: !4956)
!4972 = !DILocalVariable(name: "msg", scope: !4956, file: !3, line: 149, type: !4386)
!4973 = !DILocation(line: 149, column: 17, scope: !4956)
!4974 = !DILocation(line: 149, column: 23, scope: !4956)
!4975 = !DILocation(line: 149, column: 33, scope: !4956)
!4976 = !DILocation(line: 149, column: 39, scope: !4956)
!4977 = !DILocation(line: 150, column: 18, scope: !4956)
!4978 = !DILocalVariable(name: "i", scope: !4956, file: !3, line: 151, type: !339)
!4979 = !DILocation(line: 151, column: 6, scope: !4956)
!4980 = !DILocalVariable(name: "tuner_freq", scope: !4956, file: !3, line: 151, type: !339)
!4981 = !DILocation(line: 151, column: 9, scope: !4956)
!4982 = !DILocalVariable(name: "if_freq", scope: !4956, file: !3, line: 151, type: !339)
!4983 = !DILocation(line: 151, column: 21, scope: !4956)
!4984 = !DILocalVariable(name: "N", scope: !4956, file: !3, line: 152, type: !435)
!4985 = !DILocation(line: 152, column: 6, scope: !4956)
!4986 = !DILocation(line: 154, column: 2, scope: !4956)
!4987 = !DILocation(line: 154, column: 2, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 154, column: 2)
!4989 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 154, column: 2)
!4990 = !DILocation(line: 154, column: 2, scope: !4989)
!4991 = !DILocation(line: 155, column: 6, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 155, column: 6)
!4993 = !DILocation(line: 155, column: 9, scope: !4992)
!4994 = !DILocation(line: 155, column: 22, scope: !4992)
!4995 = !DILocation(line: 155, column: 6, scope: !4956)
!4996 = !DILocation(line: 156, column: 11, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 155, column: 28)
!4998 = !DILocation(line: 157, column: 2, scope: !4997)
!4999 = !DILocation(line: 157, column: 13, scope: !5000)
!5000 = distinct !DILexicalBlock(scope: !4992, file: !3, line: 157, column: 13)
!5001 = !DILocation(line: 157, column: 16, scope: !5000)
!5002 = !DILocation(line: 157, column: 29, scope: !5000)
!5003 = !DILocation(line: 157, column: 13, scope: !4992)
!5004 = !DILocation(line: 158, column: 11, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 157, column: 41)
!5006 = !DILocation(line: 159, column: 2, scope: !5005)
!5007 = !DILocation(line: 159, column: 13, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !5000, file: !3, line: 159, column: 13)
!5009 = !DILocation(line: 159, column: 16, scope: !5008)
!5010 = !DILocation(line: 159, column: 29, scope: !5008)
!5011 = !DILocation(line: 159, column: 13, scope: !5000)
!5012 = !DILocation(line: 160, column: 11, scope: !5013)
!5013 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 159, column: 41)
!5014 = !DILocation(line: 161, column: 2, scope: !5013)
!5015 = !DILocation(line: 162, column: 11, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5008, file: !3, line: 161, column: 9)
!5017 = !DILocation(line: 164, column: 15, scope: !4956)
!5018 = !DILocation(line: 164, column: 18, scope: !4956)
!5019 = !DILocation(line: 164, column: 13, scope: !4956)
!5020 = !DILocation(line: 166, column: 4, scope: !4956)
!5021 = !DILocation(line: 167, column: 2, scope: !4956)
!5022 = !DILocation(line: 167, column: 23, scope: !4956)
!5023 = !DILocation(line: 167, column: 9, scope: !4956)
!5024 = !DILocation(line: 167, column: 26, scope: !4956)
!5025 = !DILocation(line: 167, column: 34, scope: !4956)
!5026 = !DILocation(line: 167, column: 32, scope: !4956)
!5027 = !DILocation(line: 168, column: 21, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5029, file: !3, line: 168, column: 7)
!5029 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 167, column: 46)
!5030 = !DILocation(line: 168, column: 23, scope: !5028)
!5031 = !DILocation(line: 168, column: 7, scope: !5028)
!5032 = !DILocation(line: 168, column: 28, scope: !5028)
!5033 = !DILocation(line: 168, column: 34, scope: !5028)
!5034 = !DILocation(line: 168, column: 7, scope: !5029)
!5035 = !DILocation(line: 169, column: 4, scope: !5028)
!5036 = !DILocation(line: 170, column: 4, scope: !5029)
!5037 = distinct !{!5037, !5021, !5038}
!5038 = !DILocation(line: 171, column: 2, scope: !4956)
!5039 = !DILocation(line: 173, column: 16, scope: !4956)
!5040 = !DILocation(line: 173, column: 13, scope: !4956)
!5041 = !DILocation(line: 175, column: 8, scope: !4956)
!5042 = !DILocation(line: 175, column: 19, scope: !4956)
!5043 = !DILocation(line: 175, column: 29, scope: !4956)
!5044 = !DILocation(line: 175, column: 57, scope: !4956)
!5045 = !DILocation(line: 175, column: 43, scope: !4956)
!5046 = !DILocation(line: 175, column: 60, scope: !4956)
!5047 = !DILocation(line: 175, column: 64, scope: !4956)
!5048 = !DILocation(line: 175, column: 39, scope: !4956)
!5049 = !DILocation(line: 175, column: 4, scope: !4956)
!5050 = !DILocation(line: 176, column: 2, scope: !4956)
!5051 = !DILocation(line: 176, column: 9, scope: !4956)
!5052 = !DILocation(line: 177, column: 12, scope: !4956)
!5053 = !DILocation(line: 177, column: 13, scope: !4956)
!5054 = !DILocation(line: 177, column: 18, scope: !4956)
!5055 = !DILocation(line: 177, column: 11, scope: !4956)
!5056 = !DILocation(line: 177, column: 2, scope: !4956)
!5057 = !DILocation(line: 177, column: 9, scope: !4956)
!5058 = !DILocation(line: 178, column: 11, scope: !4956)
!5059 = !DILocation(line: 178, column: 13, scope: !4956)
!5060 = !DILocation(line: 178, column: 2, scope: !4956)
!5061 = !DILocation(line: 178, column: 9, scope: !4956)
!5062 = !DILocation(line: 179, column: 2, scope: !4956)
!5063 = !DILocation(line: 179, column: 9, scope: !4956)
!5064 = !DILocation(line: 180, column: 2, scope: !4956)
!5065 = !DILocation(line: 180, column: 9, scope: !4956)
!5066 = !DILocation(line: 181, column: 26, scope: !4956)
!5067 = !DILocation(line: 181, column: 12, scope: !4956)
!5068 = !DILocation(line: 181, column: 29, scope: !4956)
!5069 = !DILocation(line: 181, column: 33, scope: !4956)
!5070 = !DILocation(line: 181, column: 56, scope: !4956)
!5071 = !DILocation(line: 181, column: 42, scope: !4956)
!5072 = !DILocation(line: 181, column: 59, scope: !4956)
!5073 = !DILocation(line: 181, column: 66, scope: !4956)
!5074 = !DILocation(line: 181, column: 39, scope: !4956)
!5075 = !DILocation(line: 182, column: 20, scope: !4956)
!5076 = !DILocation(line: 182, column: 6, scope: !4956)
!5077 = !DILocation(line: 182, column: 23, scope: !4956)
!5078 = !DILocation(line: 182, column: 26, scope: !4956)
!5079 = !DILocation(line: 181, column: 72, scope: !4956)
!5080 = !DILocation(line: 183, column: 19, scope: !4956)
!5081 = !DILocation(line: 183, column: 5, scope: !4956)
!5082 = !DILocation(line: 183, column: 22, scope: !4956)
!5083 = !DILocation(line: 182, column: 32, scope: !4956)
!5084 = !DILocation(line: 181, column: 11, scope: !4956)
!5085 = !DILocation(line: 181, column: 2, scope: !4956)
!5086 = !DILocation(line: 181, column: 9, scope: !4956)
!5087 = !DILocation(line: 184, column: 26, scope: !4956)
!5088 = !DILocation(line: 184, column: 12, scope: !4956)
!5089 = !DILocation(line: 184, column: 29, scope: !4956)
!5090 = !DILocation(line: 184, column: 33, scope: !4956)
!5091 = !DILocation(line: 184, column: 39, scope: !4956)
!5092 = !DILocation(line: 184, column: 11, scope: !4956)
!5093 = !DILocation(line: 184, column: 2, scope: !4956)
!5094 = !DILocation(line: 184, column: 9, scope: !4956)
!5095 = !DILocation(line: 185, column: 2, scope: !4956)
!5096 = !DILocation(line: 185, column: 9, scope: !4956)
!5097 = !DILocation(line: 186, column: 2, scope: !4956)
!5098 = !DILocation(line: 186, column: 9, scope: !4956)
!5099 = !DILocation(line: 187, column: 2, scope: !4956)
!5100 = !DILocation(line: 187, column: 9, scope: !4956)
!5101 = !DILocation(line: 188, column: 2, scope: !4956)
!5102 = !DILocation(line: 188, column: 10, scope: !4956)
!5103 = !DILocation(line: 189, column: 2, scope: !4956)
!5104 = !DILocation(line: 189, column: 10, scope: !4956)
!5105 = !DILocation(line: 190, column: 2, scope: !4956)
!5106 = !DILocation(line: 190, column: 10, scope: !4956)
!5107 = !DILocation(line: 191, column: 2, scope: !4956)
!5108 = !DILocation(line: 191, column: 10, scope: !4956)
!5109 = !DILocation(line: 193, column: 6, scope: !4956)
!5110 = !DILocation(line: 193, column: 10, scope: !4956)
!5111 = !DILocation(line: 194, column: 22, scope: !4956)
!5112 = !DILocation(line: 194, column: 7, scope: !4956)
!5113 = !DILocation(line: 194, column: 5, scope: !4956)
!5114 = !DILocation(line: 195, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 195, column: 6)
!5116 = !DILocation(line: 195, column: 9, scope: !5115)
!5117 = !DILocation(line: 195, column: 6, scope: !4956)
!5118 = !DILocation(line: 196, column: 3, scope: !5115)
!5119 = !DILocation(line: 198, column: 2, scope: !4956)
!5120 = !DILocation(line: 200, column: 2, scope: !4956)
!5121 = !DILocation(line: 200, column: 9, scope: !4956)
!5122 = !DILocation(line: 201, column: 32, scope: !4956)
!5123 = !DILocation(line: 201, column: 18, scope: !4956)
!5124 = !DILocation(line: 201, column: 35, scope: !4956)
!5125 = !DILocation(line: 201, column: 16, scope: !4956)
!5126 = !DILocation(line: 201, column: 11, scope: !4956)
!5127 = !DILocation(line: 201, column: 2, scope: !4956)
!5128 = !DILocation(line: 201, column: 9, scope: !4956)
!5129 = !DILocation(line: 202, column: 6, scope: !4956)
!5130 = !DILocation(line: 202, column: 10, scope: !4956)
!5131 = !DILocation(line: 204, column: 22, scope: !4956)
!5132 = !DILocation(line: 204, column: 7, scope: !4956)
!5133 = !DILocation(line: 204, column: 5, scope: !4956)
!5134 = !DILocation(line: 205, column: 6, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 205, column: 6)
!5136 = !DILocation(line: 205, column: 9, scope: !5135)
!5137 = !DILocation(line: 205, column: 6, scope: !4956)
!5138 = !DILocation(line: 206, column: 3, scope: !5135)
!5139 = !DILocation(line: 208, column: 20, scope: !4956)
!5140 = !DILocation(line: 208, column: 23, scope: !4956)
!5141 = !DILocation(line: 208, column: 2, scope: !4956)
!5142 = !DILocation(line: 208, column: 8, scope: !4956)
!5143 = !DILocation(line: 208, column: 18, scope: !4956)
!5144 = !DILocation(line: 209, column: 20, scope: !4956)
!5145 = !DILocation(line: 209, column: 23, scope: !4956)
!5146 = !DILocation(line: 209, column: 2, scope: !4956)
!5147 = !DILocation(line: 209, column: 8, scope: !4956)
!5148 = !DILocation(line: 209, column: 18, scope: !4956)
!5149 = !DILocation(line: 211, column: 2, scope: !4956)
!5150 = !DILabel(scope: !4956, name: "err", file: !3, line: 213)
!5151 = !DILocation(line: 213, column: 1, scope: !4956)
!5152 = !DILocation(line: 215, column: 19, scope: !4956)
!5153 = !DILocation(line: 215, column: 25, scope: !4956)
!5154 = !DILocation(line: 215, column: 34, scope: !4956)
!5155 = !DILocation(line: 214, column: 2, scope: !4956)
!5156 = !DILocation(line: 216, column: 9, scope: !4956)
!5157 = !DILocation(line: 216, column: 2, scope: !4956)
!5158 = !DILocation(line: 217, column: 1, scope: !4956)
!5159 = distinct !DISubprogram(name: "tda827xo_set_analog_params", scope: !3, file: !3, line: 237, type: !4298, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5160 = !DILocalVariable(name: "fe", arg: 1, scope: !5159, file: !3, line: 237, type: !446)
!5161 = !DILocation(line: 237, column: 60, scope: !5159)
!5162 = !DILocalVariable(name: "params", arg: 2, scope: !5159, file: !3, line: 238, type: !685)
!5163 = !DILocation(line: 238, column: 37, scope: !5159)
!5164 = !DILocalVariable(name: "tuner_reg", scope: !5159, file: !3, line: 240, type: !5165)
!5165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 64, elements: !480)
!5166 = !DILocation(line: 240, column: 16, scope: !5159)
!5167 = !DILocalVariable(name: "reg2", scope: !5159, file: !3, line: 241, type: !5168)
!5168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 16, elements: !1963)
!5169 = !DILocation(line: 241, column: 16, scope: !5159)
!5170 = !DILocalVariable(name: "N", scope: !5159, file: !3, line: 242, type: !435)
!5171 = !DILocation(line: 242, column: 6, scope: !5159)
!5172 = !DILocalVariable(name: "i", scope: !5159, file: !3, line: 243, type: !339)
!5173 = !DILocation(line: 243, column: 6, scope: !5159)
!5174 = !DILocalVariable(name: "priv", scope: !5159, file: !3, line: 244, type: !4510)
!5175 = !DILocation(line: 244, column: 23, scope: !5159)
!5176 = !DILocation(line: 244, column: 30, scope: !5159)
!5177 = !DILocation(line: 244, column: 34, scope: !5159)
!5178 = !DILocalVariable(name: "msg", scope: !5159, file: !3, line: 245, type: !4386)
!5179 = !DILocation(line: 245, column: 17, scope: !5159)
!5180 = !DILocation(line: 245, column: 23, scope: !5159)
!5181 = !DILocation(line: 245, column: 33, scope: !5159)
!5182 = !DILocation(line: 245, column: 39, scope: !5159)
!5183 = !DILocalVariable(name: "freq", scope: !5159, file: !3, line: 246, type: !7)
!5184 = !DILocation(line: 246, column: 15, scope: !5159)
!5185 = !DILocation(line: 246, column: 22, scope: !5159)
!5186 = !DILocation(line: 246, column: 30, scope: !5159)
!5187 = !DILocation(line: 248, column: 18, scope: !5159)
!5188 = !DILocation(line: 248, column: 22, scope: !5159)
!5189 = !DILocation(line: 248, column: 2, scope: !5159)
!5190 = !DILocation(line: 250, column: 6, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 250, column: 6)
!5192 = !DILocation(line: 250, column: 14, scope: !5191)
!5193 = !DILocation(line: 250, column: 19, scope: !5191)
!5194 = !DILocation(line: 250, column: 6, scope: !5159)
!5195 = !DILocation(line: 251, column: 10, scope: !5191)
!5196 = !DILocation(line: 251, column: 15, scope: !5191)
!5197 = !DILocation(line: 251, column: 8, scope: !5191)
!5198 = !DILocation(line: 251, column: 3, scope: !5191)
!5199 = !DILocation(line: 253, column: 6, scope: !5159)
!5200 = !DILocation(line: 253, column: 13, scope: !5159)
!5201 = !DILocation(line: 253, column: 19, scope: !5159)
!5202 = !DILocation(line: 253, column: 11, scope: !5159)
!5203 = !DILocation(line: 253, column: 4, scope: !5159)
!5204 = !DILocation(line: 255, column: 4, scope: !5159)
!5205 = !DILocation(line: 256, column: 2, scope: !5159)
!5206 = !DILocation(line: 256, column: 23, scope: !5159)
!5207 = !DILocation(line: 256, column: 9, scope: !5159)
!5208 = !DILocation(line: 256, column: 26, scope: !5159)
!5209 = !DILocation(line: 256, column: 34, scope: !5159)
!5210 = !DILocation(line: 256, column: 36, scope: !5159)
!5211 = !DILocation(line: 256, column: 32, scope: !5159)
!5212 = !DILocation(line: 257, column: 21, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5214, file: !3, line: 257, column: 7)
!5214 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 256, column: 45)
!5215 = !DILocation(line: 257, column: 23, scope: !5213)
!5216 = !DILocation(line: 257, column: 7, scope: !5213)
!5217 = !DILocation(line: 257, column: 28, scope: !5213)
!5218 = !DILocation(line: 257, column: 34, scope: !5213)
!5219 = !DILocation(line: 257, column: 7, scope: !5214)
!5220 = !DILocation(line: 258, column: 4, scope: !5213)
!5221 = !DILocation(line: 259, column: 4, scope: !5214)
!5222 = distinct !{!5222, !5205, !5223}
!5223 = !DILocation(line: 260, column: 2, scope: !5159)
!5224 = !DILocation(line: 262, column: 6, scope: !5159)
!5225 = !DILocation(line: 262, column: 25, scope: !5159)
!5226 = !DILocation(line: 262, column: 11, scope: !5159)
!5227 = !DILocation(line: 262, column: 28, scope: !5159)
!5228 = !DILocation(line: 262, column: 8, scope: !5159)
!5229 = !DILocation(line: 262, column: 4, scope: !5159)
!5230 = !DILocation(line: 264, column: 2, scope: !5159)
!5231 = !DILocation(line: 264, column: 15, scope: !5159)
!5232 = !DILocation(line: 265, column: 33, scope: !5159)
!5233 = !DILocation(line: 265, column: 34, scope: !5159)
!5234 = !DILocation(line: 265, column: 17, scope: !5159)
!5235 = !DILocation(line: 265, column: 2, scope: !5159)
!5236 = !DILocation(line: 265, column: 15, scope: !5159)
!5237 = !DILocation(line: 266, column: 33, scope: !5159)
!5238 = !DILocation(line: 266, column: 17, scope: !5159)
!5239 = !DILocation(line: 266, column: 2, scope: !5159)
!5240 = !DILocation(line: 266, column: 15, scope: !5159)
!5241 = !DILocation(line: 267, column: 2, scope: !5159)
!5242 = !DILocation(line: 267, column: 15, scope: !5159)
!5243 = !DILocation(line: 268, column: 25, scope: !5159)
!5244 = !DILocation(line: 268, column: 31, scope: !5159)
!5245 = !DILocation(line: 268, column: 37, scope: !5159)
!5246 = !DILocation(line: 268, column: 22, scope: !5159)
!5247 = !DILocation(line: 268, column: 17, scope: !5159)
!5248 = !DILocation(line: 268, column: 2, scope: !5159)
!5249 = !DILocation(line: 268, column: 15, scope: !5159)
!5250 = !DILocation(line: 269, column: 32, scope: !5159)
!5251 = !DILocation(line: 269, column: 18, scope: !5159)
!5252 = !DILocation(line: 269, column: 35, scope: !5159)
!5253 = !DILocation(line: 269, column: 42, scope: !5159)
!5254 = !DILocation(line: 270, column: 25, scope: !5159)
!5255 = !DILocation(line: 270, column: 11, scope: !5159)
!5256 = !DILocation(line: 270, column: 28, scope: !5159)
!5257 = !DILocation(line: 270, column: 35, scope: !5159)
!5258 = !DILocation(line: 269, column: 48, scope: !5159)
!5259 = !DILocation(line: 271, column: 25, scope: !5159)
!5260 = !DILocation(line: 271, column: 11, scope: !5159)
!5261 = !DILocation(line: 271, column: 28, scope: !5159)
!5262 = !DILocation(line: 271, column: 35, scope: !5159)
!5263 = !DILocation(line: 270, column: 41, scope: !5159)
!5264 = !DILocation(line: 271, column: 57, scope: !5159)
!5265 = !DILocation(line: 271, column: 43, scope: !5159)
!5266 = !DILocation(line: 271, column: 60, scope: !5159)
!5267 = !DILocation(line: 271, column: 41, scope: !5159)
!5268 = !DILocation(line: 269, column: 17, scope: !5159)
!5269 = !DILocation(line: 269, column: 2, scope: !5159)
!5270 = !DILocation(line: 269, column: 15, scope: !5159)
!5271 = !DILocation(line: 272, column: 39, scope: !5159)
!5272 = !DILocation(line: 272, column: 25, scope: !5159)
!5273 = !DILocation(line: 272, column: 42, scope: !5159)
!5274 = !DILocation(line: 272, column: 46, scope: !5159)
!5275 = !DILocation(line: 272, column: 22, scope: !5159)
!5276 = !DILocation(line: 272, column: 17, scope: !5159)
!5277 = !DILocation(line: 272, column: 2, scope: !5159)
!5278 = !DILocation(line: 272, column: 15, scope: !5159)
!5279 = !DILocation(line: 273, column: 2, scope: !5159)
!5280 = !DILocation(line: 273, column: 15, scope: !5159)
!5281 = !DILocation(line: 275, column: 12, scope: !5159)
!5282 = !DILocation(line: 275, column: 6, scope: !5159)
!5283 = !DILocation(line: 275, column: 10, scope: !5159)
!5284 = !DILocation(line: 276, column: 6, scope: !5159)
!5285 = !DILocation(line: 276, column: 10, scope: !5159)
!5286 = !DILocation(line: 277, column: 17, scope: !5159)
!5287 = !DILocation(line: 277, column: 2, scope: !5159)
!5288 = !DILocation(line: 279, column: 12, scope: !5159)
!5289 = !DILocation(line: 279, column: 6, scope: !5159)
!5290 = !DILocation(line: 279, column: 10, scope: !5159)
!5291 = !DILocation(line: 280, column: 6, scope: !5159)
!5292 = !DILocation(line: 280, column: 10, scope: !5159)
!5293 = !DILocation(line: 281, column: 2, scope: !5159)
!5294 = !DILocation(line: 281, column: 10, scope: !5159)
!5295 = !DILocation(line: 282, column: 2, scope: !5159)
!5296 = !DILocation(line: 282, column: 10, scope: !5159)
!5297 = !DILocation(line: 283, column: 17, scope: !5159)
!5298 = !DILocation(line: 283, column: 2, scope: !5159)
!5299 = !DILocation(line: 285, column: 2, scope: !5159)
!5300 = !DILocation(line: 285, column: 10, scope: !5159)
!5301 = !DILocation(line: 286, column: 2, scope: !5159)
!5302 = !DILocation(line: 286, column: 10, scope: !5159)
!5303 = !DILocation(line: 287, column: 17, scope: !5159)
!5304 = !DILocation(line: 287, column: 2, scope: !5159)
!5305 = !DILocation(line: 289, column: 2, scope: !5159)
!5306 = !DILocation(line: 289, column: 10, scope: !5159)
!5307 = !DILocation(line: 290, column: 12, scope: !5159)
!5308 = !DILocation(line: 290, column: 25, scope: !5159)
!5309 = !DILocation(line: 290, column: 2, scope: !5159)
!5310 = !DILocation(line: 290, column: 10, scope: !5159)
!5311 = !DILocation(line: 291, column: 17, scope: !5159)
!5312 = !DILocation(line: 291, column: 2, scope: !5159)
!5313 = !DILocation(line: 293, column: 2, scope: !5159)
!5314 = !DILocation(line: 294, column: 2, scope: !5159)
!5315 = !DILocation(line: 294, column: 10, scope: !5159)
!5316 = !DILocation(line: 295, column: 12, scope: !5159)
!5317 = !DILocation(line: 295, column: 25, scope: !5159)
!5318 = !DILocation(line: 295, column: 2, scope: !5159)
!5319 = !DILocation(line: 295, column: 10, scope: !5159)
!5320 = !DILocation(line: 296, column: 17, scope: !5159)
!5321 = !DILocation(line: 296, column: 2, scope: !5159)
!5322 = !DILocation(line: 298, column: 2, scope: !5159)
!5323 = !DILocation(line: 299, column: 2, scope: !5159)
!5324 = !DILocation(line: 299, column: 10, scope: !5159)
!5325 = !DILocation(line: 300, column: 12, scope: !5159)
!5326 = !DILocation(line: 300, column: 2, scope: !5159)
!5327 = !DILocation(line: 300, column: 10, scope: !5159)
!5328 = !DILocation(line: 301, column: 17, scope: !5159)
!5329 = !DILocation(line: 301, column: 2, scope: !5159)
!5330 = !DILocation(line: 303, column: 2, scope: !5159)
!5331 = !DILocation(line: 304, column: 2, scope: !5159)
!5332 = !DILocation(line: 304, column: 10, scope: !5159)
!5333 = !DILocation(line: 305, column: 13, scope: !5159)
!5334 = !DILocation(line: 305, column: 26, scope: !5159)
!5335 = !DILocation(line: 305, column: 50, scope: !5159)
!5336 = !DILocation(line: 305, column: 36, scope: !5159)
!5337 = !DILocation(line: 305, column: 53, scope: !5159)
!5338 = !DILocation(line: 305, column: 34, scope: !5159)
!5339 = !DILocation(line: 305, column: 12, scope: !5159)
!5340 = !DILocation(line: 305, column: 2, scope: !5159)
!5341 = !DILocation(line: 305, column: 10, scope: !5159)
!5342 = !DILocation(line: 306, column: 17, scope: !5159)
!5343 = !DILocation(line: 306, column: 2, scope: !5159)
!5344 = !DILocation(line: 308, column: 2, scope: !5159)
!5345 = !DILocation(line: 308, column: 10, scope: !5159)
!5346 = !DILocation(line: 309, column: 2, scope: !5159)
!5347 = !DILocation(line: 309, column: 10, scope: !5159)
!5348 = !DILocation(line: 310, column: 17, scope: !5159)
!5349 = !DILocation(line: 310, column: 2, scope: !5159)
!5350 = !DILocation(line: 312, column: 2, scope: !5159)
!5351 = !DILocation(line: 312, column: 10, scope: !5159)
!5352 = !DILocation(line: 313, column: 2, scope: !5159)
!5353 = !DILocation(line: 313, column: 10, scope: !5159)
!5354 = !DILocation(line: 314, column: 17, scope: !5159)
!5355 = !DILocation(line: 314, column: 2, scope: !5159)
!5356 = !DILocation(line: 316, column: 20, scope: !5159)
!5357 = !DILocation(line: 316, column: 28, scope: !5159)
!5358 = !DILocation(line: 316, column: 2, scope: !5159)
!5359 = !DILocation(line: 316, column: 8, scope: !5159)
!5360 = !DILocation(line: 316, column: 18, scope: !5159)
!5361 = !DILocation(line: 318, column: 2, scope: !5159)
!5362 = distinct !DISubprogram(name: "tda827x_get_frequency", scope: !3, file: !3, line: 763, type: !607, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5363 = !DILocalVariable(name: "fe", arg: 1, scope: !5362, file: !3, line: 763, type: !446)
!5364 = !DILocation(line: 763, column: 55, scope: !5362)
!5365 = !DILocalVariable(name: "frequency", arg: 2, scope: !5362, file: !3, line: 763, type: !609)
!5366 = !DILocation(line: 763, column: 64, scope: !5362)
!5367 = !DILocalVariable(name: "priv", scope: !5362, file: !3, line: 765, type: !4510)
!5368 = !DILocation(line: 765, column: 23, scope: !5362)
!5369 = !DILocation(line: 765, column: 30, scope: !5362)
!5370 = !DILocation(line: 765, column: 34, scope: !5362)
!5371 = !DILocation(line: 766, column: 15, scope: !5362)
!5372 = !DILocation(line: 766, column: 21, scope: !5362)
!5373 = !DILocation(line: 766, column: 3, scope: !5362)
!5374 = !DILocation(line: 766, column: 13, scope: !5362)
!5375 = !DILocation(line: 767, column: 2, scope: !5362)
!5376 = distinct !DISubprogram(name: "tda827x_get_bandwidth", scope: !3, file: !3, line: 770, type: !607, scopeLine: 771, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5377 = !DILocalVariable(name: "fe", arg: 1, scope: !5376, file: !3, line: 770, type: !446)
!5378 = !DILocation(line: 770, column: 55, scope: !5376)
!5379 = !DILocalVariable(name: "bandwidth", arg: 2, scope: !5376, file: !3, line: 770, type: !609)
!5380 = !DILocation(line: 770, column: 64, scope: !5376)
!5381 = !DILocalVariable(name: "priv", scope: !5376, file: !3, line: 772, type: !4510)
!5382 = !DILocation(line: 772, column: 23, scope: !5376)
!5383 = !DILocation(line: 772, column: 30, scope: !5376)
!5384 = !DILocation(line: 772, column: 34, scope: !5376)
!5385 = !DILocation(line: 773, column: 15, scope: !5376)
!5386 = !DILocation(line: 773, column: 21, scope: !5376)
!5387 = !DILocation(line: 773, column: 3, scope: !5376)
!5388 = !DILocation(line: 773, column: 13, scope: !5376)
!5389 = !DILocation(line: 774, column: 2, scope: !5376)
!5390 = distinct !DISubprogram(name: "tda827x_probe_version", scope: !3, file: !3, line: 839, type: !487, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5391 = !DILocalVariable(name: "fe", arg: 1, scope: !5390, file: !3, line: 839, type: !446)
!5392 = !DILocation(line: 839, column: 55, scope: !5390)
!5393 = !DILocalVariable(name: "data", scope: !5390, file: !3, line: 841, type: !361)
!5394 = !DILocation(line: 841, column: 5, scope: !5390)
!5395 = !DILocalVariable(name: "rc", scope: !5390, file: !3, line: 842, type: !339)
!5396 = !DILocation(line: 842, column: 6, scope: !5390)
!5397 = !DILocalVariable(name: "priv", scope: !5390, file: !3, line: 843, type: !4510)
!5398 = !DILocation(line: 843, column: 23, scope: !5390)
!5399 = !DILocation(line: 843, column: 30, scope: !5390)
!5400 = !DILocation(line: 843, column: 34, scope: !5390)
!5401 = !DILocalVariable(name: "msg", scope: !5390, file: !3, line: 844, type: !4386)
!5402 = !DILocation(line: 844, column: 17, scope: !5390)
!5403 = !DILocation(line: 844, column: 23, scope: !5390)
!5404 = !DILocation(line: 844, column: 33, scope: !5390)
!5405 = !DILocation(line: 844, column: 39, scope: !5390)
!5406 = !DILocation(line: 847, column: 22, scope: !5390)
!5407 = !DILocation(line: 847, column: 7, scope: !5390)
!5408 = !DILocation(line: 847, column: 5, scope: !5390)
!5409 = !DILocation(line: 849, column: 6, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 849, column: 6)
!5411 = !DILocation(line: 849, column: 9, scope: !5410)
!5412 = !DILocation(line: 849, column: 6, scope: !5390)
!5413 = !DILocation(line: 851, column: 24, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5410, file: !3, line: 849, column: 14)
!5415 = !DILocation(line: 851, column: 20, scope: !5414)
!5416 = !DILocation(line: 851, column: 29, scope: !5414)
!5417 = !DILocation(line: 850, column: 3, scope: !5414)
!5418 = !DILocation(line: 852, column: 10, scope: !5414)
!5419 = !DILocation(line: 852, column: 3, scope: !5414)
!5420 = !DILocation(line: 854, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 854, column: 6)
!5422 = !DILocation(line: 854, column: 12, scope: !5421)
!5423 = !DILocation(line: 854, column: 20, scope: !5421)
!5424 = !DILocation(line: 854, column: 6, scope: !5390)
!5425 = !DILocation(line: 855, column: 3, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 854, column: 26)
!5427 = !DILocation(line: 855, column: 3, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 855, column: 3)
!5429 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 855, column: 3)
!5430 = !DILocation(line: 855, column: 3, scope: !5429)
!5431 = !DILocation(line: 856, column: 3, scope: !5426)
!5432 = !DILocation(line: 856, column: 7, scope: !5426)
!5433 = !DILocation(line: 856, column: 11, scope: !5426)
!5434 = !DILocation(line: 856, column: 21, scope: !5426)
!5435 = !DILocation(line: 856, column: 27, scope: !5426)
!5436 = !DILocation(line: 857, column: 3, scope: !5426)
!5437 = !DILocation(line: 857, column: 7, scope: !5426)
!5438 = !DILocation(line: 857, column: 11, scope: !5426)
!5439 = !DILocation(line: 857, column: 21, scope: !5426)
!5440 = !DILocation(line: 857, column: 27, scope: !5426)
!5441 = !DILocation(line: 858, column: 7, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5426, file: !3, line: 858, column: 7)
!5443 = !DILocation(line: 858, column: 13, scope: !5442)
!5444 = !DILocation(line: 858, column: 7, scope: !5426)
!5445 = !DILocation(line: 859, column: 4, scope: !5442)
!5446 = !DILocation(line: 859, column: 10, scope: !5442)
!5447 = !DILocation(line: 859, column: 15, scope: !5442)
!5448 = !DILocation(line: 859, column: 20, scope: !5442)
!5449 = !DILocation(line: 860, column: 2, scope: !5426)
!5450 = !DILocation(line: 861, column: 3, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5421, file: !3, line: 860, column: 9)
!5452 = !DILocation(line: 861, column: 3, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 861, column: 3)
!5454 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 861, column: 3)
!5455 = !DILocation(line: 861, column: 3, scope: !5454)
!5456 = !DILocation(line: 862, column: 11, scope: !5451)
!5457 = !DILocation(line: 862, column: 15, scope: !5451)
!5458 = !DILocation(line: 862, column: 19, scope: !5451)
!5459 = !DILocation(line: 862, column: 3, scope: !5451)
!5460 = !DILocation(line: 863, column: 7, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 863, column: 7)
!5462 = !DILocation(line: 863, column: 13, scope: !5461)
!5463 = !DILocation(line: 863, column: 7, scope: !5451)
!5464 = !DILocation(line: 864, column: 4, scope: !5461)
!5465 = !DILocation(line: 864, column: 10, scope: !5461)
!5466 = !DILocation(line: 864, column: 15, scope: !5461)
!5467 = !DILocation(line: 864, column: 20, scope: !5461)
!5468 = !DILocation(line: 866, column: 2, scope: !5390)
!5469 = !DILocation(line: 867, column: 1, scope: !5390)
!5470 = distinct !DISubprogram(name: "tuner_transfer", scope: !3, file: !3, line: 123, type: !5471, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{!339, !446, !4385, !5473}
!5473 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!5474 = !DILocalVariable(name: "fe", arg: 1, scope: !5470, file: !3, line: 123, type: !446)
!5475 = !DILocation(line: 123, column: 48, scope: !5470)
!5476 = !DILocalVariable(name: "msg", arg: 2, scope: !5470, file: !3, line: 124, type: !4385)
!5477 = !DILocation(line: 124, column: 22, scope: !5470)
!5478 = !DILocalVariable(name: "size", arg: 3, scope: !5470, file: !3, line: 125, type: !5473)
!5479 = !DILocation(line: 125, column: 16, scope: !5470)
!5480 = !DILocalVariable(name: "rc", scope: !5470, file: !3, line: 127, type: !339)
!5481 = !DILocation(line: 127, column: 6, scope: !5470)
!5482 = !DILocalVariable(name: "priv", scope: !5470, file: !3, line: 128, type: !4510)
!5483 = !DILocation(line: 128, column: 23, scope: !5470)
!5484 = !DILocation(line: 128, column: 30, scope: !5470)
!5485 = !DILocation(line: 128, column: 34, scope: !5470)
!5486 = !DILocation(line: 130, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 130, column: 6)
!5488 = !DILocation(line: 130, column: 10, scope: !5487)
!5489 = !DILocation(line: 130, column: 14, scope: !5487)
!5490 = !DILocation(line: 130, column: 6, scope: !5470)
!5491 = !DILocation(line: 131, column: 3, scope: !5487)
!5492 = !DILocation(line: 131, column: 7, scope: !5487)
!5493 = !DILocation(line: 131, column: 11, scope: !5487)
!5494 = !DILocation(line: 131, column: 25, scope: !5487)
!5495 = !DILocation(line: 132, column: 20, scope: !5470)
!5496 = !DILocation(line: 132, column: 26, scope: !5470)
!5497 = !DILocation(line: 132, column: 36, scope: !5470)
!5498 = !DILocation(line: 132, column: 41, scope: !5470)
!5499 = !DILocation(line: 132, column: 7, scope: !5470)
!5500 = !DILocation(line: 132, column: 5, scope: !5470)
!5501 = !DILocation(line: 133, column: 6, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 133, column: 6)
!5503 = !DILocation(line: 133, column: 10, scope: !5502)
!5504 = !DILocation(line: 133, column: 14, scope: !5502)
!5505 = !DILocation(line: 133, column: 6, scope: !5470)
!5506 = !DILocation(line: 134, column: 3, scope: !5502)
!5507 = !DILocation(line: 134, column: 7, scope: !5502)
!5508 = !DILocation(line: 134, column: 11, scope: !5502)
!5509 = !DILocation(line: 134, column: 25, scope: !5502)
!5510 = !DILocation(line: 136, column: 6, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5470, file: !3, line: 136, column: 6)
!5512 = !DILocation(line: 136, column: 9, scope: !5511)
!5513 = !DILocation(line: 136, column: 14, scope: !5511)
!5514 = !DILocation(line: 136, column: 17, scope: !5511)
!5515 = !DILocation(line: 136, column: 23, scope: !5511)
!5516 = !DILocation(line: 136, column: 20, scope: !5511)
!5517 = !DILocation(line: 136, column: 6, scope: !5470)
!5518 = !DILocation(line: 137, column: 3, scope: !5511)
!5519 = !DILocation(line: 139, column: 9, scope: !5470)
!5520 = !DILocation(line: 139, column: 2, scope: !5470)
!5521 = !DILocation(line: 140, column: 1, scope: !5470)
!5522 = distinct !DISubprogram(name: "tda827x_init", scope: !3, file: !3, line: 777, type: !487, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5523 = !DILocalVariable(name: "fe", arg: 1, scope: !5522, file: !3, line: 777, type: !446)
!5524 = !DILocation(line: 777, column: 46, scope: !5522)
!5525 = !DILocalVariable(name: "priv", scope: !5522, file: !3, line: 779, type: !4510)
!5526 = !DILocation(line: 779, column: 23, scope: !5522)
!5527 = !DILocation(line: 779, column: 30, scope: !5522)
!5528 = !DILocation(line: 779, column: 34, scope: !5522)
!5529 = !DILocation(line: 780, column: 2, scope: !5522)
!5530 = !DILocation(line: 780, column: 2, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5532, file: !3, line: 780, column: 2)
!5532 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 780, column: 2)
!5533 = !DILocation(line: 780, column: 2, scope: !5532)
!5534 = !DILocation(line: 781, column: 6, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5522, file: !3, line: 781, column: 6)
!5536 = !DILocation(line: 781, column: 12, scope: !5535)
!5537 = !DILocation(line: 781, column: 16, scope: !5535)
!5538 = !DILocation(line: 781, column: 19, scope: !5535)
!5539 = !DILocation(line: 781, column: 25, scope: !5535)
!5540 = !DILocation(line: 781, column: 30, scope: !5535)
!5541 = !DILocation(line: 781, column: 6, scope: !5522)
!5542 = !DILocation(line: 782, column: 3, scope: !5535)
!5543 = !DILocation(line: 782, column: 9, scope: !5535)
!5544 = !DILocation(line: 782, column: 14, scope: !5535)
!5545 = !DILocation(line: 782, column: 19, scope: !5535)
!5546 = !DILocation(line: 784, column: 2, scope: !5522)
!5547 = !DILocalVariable(name: "fe", arg: 1, scope: !4319, file: !3, line: 219, type: !446)
!5548 = !DILocation(line: 219, column: 48, scope: !4319)
!5549 = !DILocalVariable(name: "priv", scope: !4319, file: !3, line: 221, type: !4510)
!5550 = !DILocation(line: 221, column: 23, scope: !4319)
!5551 = !DILocation(line: 221, column: 30, scope: !4319)
!5552 = !DILocation(line: 221, column: 34, scope: !4319)
!5553 = !DILocalVariable(name: "msg", scope: !4319, file: !3, line: 223, type: !4386)
!5554 = !DILocation(line: 223, column: 17, scope: !4319)
!5555 = !DILocation(line: 223, column: 23, scope: !4319)
!5556 = !DILocation(line: 223, column: 33, scope: !4319)
!5557 = !DILocation(line: 223, column: 39, scope: !4319)
!5558 = !DILocation(line: 226, column: 2, scope: !4319)
!5559 = !DILocation(line: 226, column: 2, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 226, column: 2)
!5561 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 226, column: 2)
!5562 = !DILocation(line: 226, column: 2, scope: !5561)
!5563 = !DILocation(line: 227, column: 17, scope: !4319)
!5564 = !DILocation(line: 227, column: 2, scope: !4319)
!5565 = !DILocation(line: 229, column: 6, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 229, column: 6)
!5567 = !DILocation(line: 229, column: 12, scope: !5566)
!5568 = !DILocation(line: 229, column: 16, scope: !5566)
!5569 = !DILocation(line: 229, column: 19, scope: !5566)
!5570 = !DILocation(line: 229, column: 25, scope: !5566)
!5571 = !DILocation(line: 229, column: 30, scope: !5566)
!5572 = !DILocation(line: 229, column: 6, scope: !4319)
!5573 = !DILocation(line: 230, column: 3, scope: !5566)
!5574 = !DILocation(line: 230, column: 9, scope: !5566)
!5575 = !DILocation(line: 230, column: 14, scope: !5566)
!5576 = !DILocation(line: 230, column: 20, scope: !5566)
!5577 = !DILocation(line: 232, column: 2, scope: !4319)
!5578 = distinct !DISubprogram(name: "tda827xo_agcf", scope: !3, file: !3, line: 321, type: !444, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5579 = !DILocalVariable(name: "fe", arg: 1, scope: !5578, file: !3, line: 321, type: !446)
!5580 = !DILocation(line: 321, column: 48, scope: !5578)
!5581 = !DILocalVariable(name: "priv", scope: !5578, file: !3, line: 323, type: !4510)
!5582 = !DILocation(line: 323, column: 23, scope: !5578)
!5583 = !DILocation(line: 323, column: 30, scope: !5578)
!5584 = !DILocation(line: 323, column: 34, scope: !5578)
!5585 = !DILocalVariable(name: "data", scope: !5578, file: !3, line: 324, type: !5168)
!5586 = !DILocation(line: 324, column: 16, scope: !5578)
!5587 = !DILocalVariable(name: "msg", scope: !5578, file: !3, line: 325, type: !4386)
!5588 = !DILocation(line: 325, column: 17, scope: !5578)
!5589 = !DILocation(line: 325, column: 23, scope: !5578)
!5590 = !DILocation(line: 325, column: 33, scope: !5578)
!5591 = !DILocation(line: 325, column: 39, scope: !5578)
!5592 = !DILocation(line: 326, column: 18, scope: !5578)
!5593 = !DILocation(line: 328, column: 17, scope: !5578)
!5594 = !DILocation(line: 328, column: 2, scope: !5578)
!5595 = !DILocation(line: 329, column: 1, scope: !5578)
!5596 = distinct !DISubprogram(name: "tda827xa_agcf", scope: !3, file: !3, line: 746, type: !444, scopeLine: 747, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5597 = !DILocalVariable(name: "fe", arg: 1, scope: !5596, file: !3, line: 746, type: !446)
!5598 = !DILocation(line: 746, column: 48, scope: !5596)
!5599 = !DILocalVariable(name: "priv", scope: !5596, file: !3, line: 748, type: !4510)
!5600 = !DILocation(line: 748, column: 23, scope: !5596)
!5601 = !DILocation(line: 748, column: 30, scope: !5596)
!5602 = !DILocation(line: 748, column: 34, scope: !5596)
!5603 = !DILocalVariable(name: "data", scope: !5596, file: !3, line: 749, type: !5168)
!5604 = !DILocation(line: 749, column: 16, scope: !5596)
!5605 = !DILocalVariable(name: "msg", scope: !5596, file: !3, line: 750, type: !4386)
!5606 = !DILocation(line: 750, column: 17, scope: !5596)
!5607 = !DILocation(line: 750, column: 23, scope: !5596)
!5608 = !DILocation(line: 750, column: 32, scope: !5596)
!5609 = !DILocation(line: 750, column: 38, scope: !5596)
!5610 = !DILocation(line: 751, column: 17, scope: !5596)
!5611 = !DILocation(line: 752, column: 17, scope: !5596)
!5612 = !DILocation(line: 752, column: 2, scope: !5596)
!5613 = !DILocation(line: 753, column: 1, scope: !5596)
!5614 = !DILocalVariable(name: "fe", arg: 1, scope: !4325, file: !3, line: 431, type: !446)
!5615 = !DILocation(line: 431, column: 48, scope: !4325)
!5616 = !DILocalVariable(name: "priv", scope: !4325, file: !3, line: 433, type: !4510)
!5617 = !DILocation(line: 433, column: 23, scope: !4325)
!5618 = !DILocation(line: 433, column: 30, scope: !4325)
!5619 = !DILocation(line: 433, column: 34, scope: !4325)
!5620 = !DILocalVariable(name: "msg", scope: !4325, file: !3, line: 435, type: !4386)
!5621 = !DILocation(line: 435, column: 17, scope: !4325)
!5622 = !DILocation(line: 435, column: 23, scope: !4325)
!5623 = !DILocation(line: 435, column: 33, scope: !4325)
!5624 = !DILocation(line: 435, column: 39, scope: !4325)
!5625 = !DILocation(line: 438, column: 2, scope: !4325)
!5626 = !DILocation(line: 438, column: 2, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 438, column: 2)
!5628 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 438, column: 2)
!5629 = !DILocation(line: 438, column: 2, scope: !5628)
!5630 = !DILocation(line: 440, column: 17, scope: !4325)
!5631 = !DILocation(line: 440, column: 2, scope: !4325)
!5632 = !DILocation(line: 442, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 442, column: 6)
!5634 = !DILocation(line: 442, column: 12, scope: !5633)
!5635 = !DILocation(line: 442, column: 16, scope: !5633)
!5636 = !DILocation(line: 442, column: 19, scope: !5633)
!5637 = !DILocation(line: 442, column: 25, scope: !5633)
!5638 = !DILocation(line: 442, column: 30, scope: !5633)
!5639 = !DILocation(line: 442, column: 6, scope: !4325)
!5640 = !DILocation(line: 443, column: 3, scope: !5633)
!5641 = !DILocation(line: 443, column: 9, scope: !5633)
!5642 = !DILocation(line: 443, column: 14, scope: !5633)
!5643 = !DILocation(line: 443, column: 20, scope: !5633)
!5644 = !DILocation(line: 445, column: 2, scope: !4325)
!5645 = distinct !DISubprogram(name: "tda827xa_set_params", scope: !3, file: !3, line: 501, type: !487, scopeLine: 502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5646 = !DILocalVariable(name: "fe", arg: 1, scope: !5645, file: !3, line: 501, type: !446)
!5647 = !DILocation(line: 501, column: 53, scope: !5645)
!5648 = !DILocalVariable(name: "c", scope: !5645, file: !3, line: 503, type: !522)
!5649 = !DILocation(line: 503, column: 34, scope: !5645)
!5650 = !DILocation(line: 503, column: 39, scope: !5645)
!5651 = !DILocation(line: 503, column: 43, scope: !5645)
!5652 = !DILocalVariable(name: "priv", scope: !5645, file: !3, line: 504, type: !4510)
!5653 = !DILocation(line: 504, column: 23, scope: !5645)
!5654 = !DILocation(line: 504, column: 30, scope: !5645)
!5655 = !DILocation(line: 504, column: 34, scope: !5645)
!5656 = !DILocalVariable(name: "frequency_map", scope: !5645, file: !3, line: 505, type: !5657)
!5657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!5658 = !DILocation(line: 505, column: 24, scope: !5645)
!5659 = !DILocalVariable(name: "buf", scope: !5645, file: !3, line: 506, type: !5660)
!5660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !361, size: 88, elements: !5661)
!5661 = !{!5662}
!5662 = !DISubrange(count: 11)
!5663 = !DILocation(line: 506, column: 5, scope: !5645)
!5664 = !DILocalVariable(name: "msg", scope: !5645, file: !3, line: 508, type: !4386)
!5665 = !DILocation(line: 508, column: 17, scope: !5645)
!5666 = !DILocation(line: 508, column: 23, scope: !5645)
!5667 = !DILocation(line: 508, column: 33, scope: !5645)
!5668 = !DILocation(line: 508, column: 39, scope: !5645)
!5669 = !DILocation(line: 509, column: 18, scope: !5645)
!5670 = !DILocalVariable(name: "i", scope: !5645, file: !3, line: 511, type: !339)
!5671 = !DILocation(line: 511, column: 6, scope: !5645)
!5672 = !DILocalVariable(name: "tuner_freq", scope: !5645, file: !3, line: 511, type: !339)
!5673 = !DILocation(line: 511, column: 9, scope: !5645)
!5674 = !DILocalVariable(name: "if_freq", scope: !5645, file: !3, line: 511, type: !339)
!5675 = !DILocation(line: 511, column: 21, scope: !5645)
!5676 = !DILocalVariable(name: "rc", scope: !5645, file: !3, line: 511, type: !339)
!5677 = !DILocation(line: 511, column: 30, scope: !5645)
!5678 = !DILocalVariable(name: "N", scope: !5645, file: !3, line: 512, type: !435)
!5679 = !DILocation(line: 512, column: 6, scope: !5645)
!5680 = !DILocation(line: 514, column: 2, scope: !5645)
!5681 = !DILocation(line: 514, column: 2, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5683, file: !3, line: 514, column: 2)
!5683 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 514, column: 2)
!5684 = !DILocation(line: 514, column: 2, scope: !5683)
!5685 = !DILocation(line: 516, column: 20, scope: !5645)
!5686 = !DILocation(line: 516, column: 2, scope: !5645)
!5687 = !DILocation(line: 517, column: 2, scope: !5645)
!5688 = !DILocation(line: 519, column: 6, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 519, column: 6)
!5690 = !DILocation(line: 519, column: 9, scope: !5689)
!5691 = !DILocation(line: 519, column: 22, scope: !5689)
!5692 = !DILocation(line: 519, column: 6, scope: !5645)
!5693 = !DILocation(line: 520, column: 11, scope: !5694)
!5694 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 519, column: 28)
!5695 = !DILocation(line: 521, column: 2, scope: !5694)
!5696 = !DILocation(line: 521, column: 13, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5689, file: !3, line: 521, column: 13)
!5698 = !DILocation(line: 521, column: 16, scope: !5697)
!5699 = !DILocation(line: 521, column: 29, scope: !5697)
!5700 = !DILocation(line: 521, column: 13, scope: !5689)
!5701 = !DILocation(line: 522, column: 11, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 521, column: 41)
!5703 = !DILocation(line: 523, column: 2, scope: !5702)
!5704 = !DILocation(line: 523, column: 13, scope: !5705)
!5705 = distinct !DILexicalBlock(scope: !5697, file: !3, line: 523, column: 13)
!5706 = !DILocation(line: 523, column: 16, scope: !5705)
!5707 = !DILocation(line: 523, column: 29, scope: !5705)
!5708 = !DILocation(line: 523, column: 13, scope: !5697)
!5709 = !DILocation(line: 524, column: 11, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 523, column: 41)
!5711 = !DILocation(line: 525, column: 2, scope: !5710)
!5712 = !DILocation(line: 526, column: 11, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5705, file: !3, line: 525, column: 9)
!5714 = !DILocation(line: 528, column: 15, scope: !5645)
!5715 = !DILocation(line: 528, column: 18, scope: !5645)
!5716 = !DILocation(line: 528, column: 13, scope: !5645)
!5717 = !DILocation(line: 530, column: 10, scope: !5645)
!5718 = !DILocation(line: 530, column: 13, scope: !5645)
!5719 = !DILocation(line: 530, column: 2, scope: !5645)
!5720 = !DILocation(line: 533, column: 3, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 530, column: 30)
!5722 = !DILocation(line: 533, column: 3, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5724, file: !3, line: 533, column: 3)
!5724 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 533, column: 3)
!5725 = !DILocation(line: 533, column: 3, scope: !5724)
!5726 = !DILocation(line: 534, column: 17, scope: !5721)
!5727 = !DILocation(line: 535, column: 3, scope: !5721)
!5728 = !DILocation(line: 537, column: 3, scope: !5721)
!5729 = !DILocation(line: 540, column: 4, scope: !5645)
!5730 = !DILocation(line: 541, column: 2, scope: !5645)
!5731 = !DILocation(line: 541, column: 9, scope: !5645)
!5732 = !DILocation(line: 541, column: 23, scope: !5645)
!5733 = !DILocation(line: 541, column: 26, scope: !5645)
!5734 = !DILocation(line: 541, column: 34, scope: !5645)
!5735 = !DILocation(line: 541, column: 32, scope: !5645)
!5736 = !DILocation(line: 542, column: 7, scope: !5737)
!5737 = distinct !DILexicalBlock(scope: !5738, file: !3, line: 542, column: 7)
!5738 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 541, column: 46)
!5739 = !DILocation(line: 542, column: 21, scope: !5737)
!5740 = !DILocation(line: 542, column: 23, scope: !5737)
!5741 = !DILocation(line: 542, column: 28, scope: !5737)
!5742 = !DILocation(line: 542, column: 34, scope: !5737)
!5743 = !DILocation(line: 542, column: 7, scope: !5738)
!5744 = !DILocation(line: 543, column: 4, scope: !5737)
!5745 = !DILocation(line: 544, column: 4, scope: !5738)
!5746 = distinct !{!5746, !5730, !5747}
!5747 = !DILocation(line: 545, column: 2, scope: !5645)
!5748 = !DILocation(line: 547, column: 16, scope: !5645)
!5749 = !DILocation(line: 547, column: 13, scope: !5645)
!5750 = !DILocation(line: 549, column: 8, scope: !5645)
!5751 = !DILocation(line: 549, column: 19, scope: !5645)
!5752 = !DILocation(line: 549, column: 28, scope: !5645)
!5753 = !DILocation(line: 549, column: 40, scope: !5645)
!5754 = !DILocation(line: 549, column: 54, scope: !5645)
!5755 = !DILocation(line: 549, column: 57, scope: !5645)
!5756 = !DILocation(line: 549, column: 37, scope: !5645)
!5757 = !DILocation(line: 549, column: 4, scope: !5645)
!5758 = !DILocation(line: 550, column: 2, scope: !5645)
!5759 = !DILocation(line: 550, column: 9, scope: !5645)
!5760 = !DILocation(line: 551, column: 11, scope: !5645)
!5761 = !DILocation(line: 551, column: 13, scope: !5645)
!5762 = !DILocation(line: 551, column: 2, scope: !5645)
!5763 = !DILocation(line: 551, column: 9, scope: !5645)
!5764 = !DILocation(line: 552, column: 11, scope: !5645)
!5765 = !DILocation(line: 552, column: 13, scope: !5645)
!5766 = !DILocation(line: 552, column: 2, scope: !5645)
!5767 = !DILocation(line: 552, column: 9, scope: !5645)
!5768 = !DILocation(line: 553, column: 2, scope: !5645)
!5769 = !DILocation(line: 553, column: 9, scope: !5645)
!5770 = !DILocation(line: 554, column: 2, scope: !5645)
!5771 = !DILocation(line: 554, column: 9, scope: !5645)
!5772 = !DILocation(line: 555, column: 12, scope: !5645)
!5773 = !DILocation(line: 555, column: 26, scope: !5645)
!5774 = !DILocation(line: 555, column: 29, scope: !5645)
!5775 = !DILocation(line: 555, column: 33, scope: !5645)
!5776 = !DILocation(line: 555, column: 42, scope: !5645)
!5777 = !DILocation(line: 555, column: 56, scope: !5645)
!5778 = !DILocation(line: 555, column: 59, scope: !5645)
!5779 = !DILocation(line: 555, column: 64, scope: !5645)
!5780 = !DILocation(line: 555, column: 39, scope: !5645)
!5781 = !DILocation(line: 556, column: 4, scope: !5645)
!5782 = !DILocation(line: 556, column: 18, scope: !5645)
!5783 = !DILocation(line: 556, column: 21, scope: !5645)
!5784 = !DILocation(line: 555, column: 70, scope: !5645)
!5785 = !DILocation(line: 555, column: 11, scope: !5645)
!5786 = !DILocation(line: 555, column: 2, scope: !5645)
!5787 = !DILocation(line: 555, column: 9, scope: !5645)
!5788 = !DILocation(line: 557, column: 19, scope: !5645)
!5789 = !DILocation(line: 557, column: 33, scope: !5645)
!5790 = !DILocation(line: 557, column: 36, scope: !5645)
!5791 = !DILocation(line: 557, column: 40, scope: !5645)
!5792 = !DILocation(line: 557, column: 16, scope: !5645)
!5793 = !DILocation(line: 557, column: 11, scope: !5645)
!5794 = !DILocation(line: 557, column: 2, scope: !5645)
!5795 = !DILocation(line: 557, column: 9, scope: !5645)
!5796 = !DILocation(line: 558, column: 2, scope: !5645)
!5797 = !DILocation(line: 558, column: 9, scope: !5645)
!5798 = !DILocation(line: 559, column: 2, scope: !5645)
!5799 = !DILocation(line: 559, column: 9, scope: !5645)
!5800 = !DILocation(line: 560, column: 2, scope: !5645)
!5801 = !DILocation(line: 560, column: 9, scope: !5645)
!5802 = !DILocation(line: 561, column: 2, scope: !5645)
!5803 = !DILocation(line: 561, column: 10, scope: !5645)
!5804 = !DILocation(line: 562, column: 6, scope: !5645)
!5805 = !DILocation(line: 562, column: 10, scope: !5645)
!5806 = !DILocation(line: 563, column: 22, scope: !5645)
!5807 = !DILocation(line: 563, column: 7, scope: !5645)
!5808 = !DILocation(line: 563, column: 5, scope: !5645)
!5809 = !DILocation(line: 564, column: 6, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 564, column: 6)
!5811 = !DILocation(line: 564, column: 9, scope: !5810)
!5812 = !DILocation(line: 564, column: 6, scope: !5645)
!5813 = !DILocation(line: 565, column: 3, scope: !5810)
!5814 = !DILocation(line: 567, column: 2, scope: !5645)
!5815 = !DILocation(line: 567, column: 9, scope: !5645)
!5816 = !DILocation(line: 568, column: 2, scope: !5645)
!5817 = !DILocation(line: 568, column: 9, scope: !5645)
!5818 = !DILocation(line: 569, column: 2, scope: !5645)
!5819 = !DILocation(line: 569, column: 9, scope: !5645)
!5820 = !DILocation(line: 570, column: 2, scope: !5645)
!5821 = !DILocation(line: 570, column: 9, scope: !5645)
!5822 = !DILocation(line: 571, column: 2, scope: !5645)
!5823 = !DILocation(line: 571, column: 9, scope: !5645)
!5824 = !DILocation(line: 572, column: 6, scope: !5645)
!5825 = !DILocation(line: 572, column: 10, scope: !5645)
!5826 = !DILocation(line: 573, column: 22, scope: !5645)
!5827 = !DILocation(line: 573, column: 7, scope: !5645)
!5828 = !DILocation(line: 573, column: 5, scope: !5645)
!5829 = !DILocation(line: 574, column: 6, scope: !5830)
!5830 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 574, column: 6)
!5831 = !DILocation(line: 574, column: 9, scope: !5830)
!5832 = !DILocation(line: 574, column: 6, scope: !5645)
!5833 = !DILocation(line: 575, column: 3, scope: !5830)
!5834 = !DILocation(line: 577, column: 2, scope: !5645)
!5835 = !DILocation(line: 577, column: 9, scope: !5645)
!5836 = !DILocation(line: 578, column: 2, scope: !5645)
!5837 = !DILocation(line: 578, column: 9, scope: !5645)
!5838 = !DILocation(line: 579, column: 6, scope: !5645)
!5839 = !DILocation(line: 579, column: 10, scope: !5645)
!5840 = !DILocation(line: 580, column: 22, scope: !5645)
!5841 = !DILocation(line: 580, column: 7, scope: !5645)
!5842 = !DILocation(line: 580, column: 5, scope: !5645)
!5843 = !DILocation(line: 581, column: 6, scope: !5844)
!5844 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 581, column: 6)
!5845 = !DILocation(line: 581, column: 9, scope: !5844)
!5846 = !DILocation(line: 581, column: 6, scope: !5645)
!5847 = !DILocation(line: 582, column: 3, scope: !5844)
!5848 = !DILocation(line: 584, column: 2, scope: !5645)
!5849 = !DILocation(line: 585, column: 6, scope: !5645)
!5850 = !DILocation(line: 585, column: 12, scope: !5645)
!5851 = !DILocation(line: 586, column: 22, scope: !5645)
!5852 = !DILocation(line: 586, column: 7, scope: !5645)
!5853 = !DILocation(line: 586, column: 5, scope: !5645)
!5854 = !DILocation(line: 587, column: 6, scope: !5855)
!5855 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 587, column: 6)
!5856 = !DILocation(line: 587, column: 9, scope: !5855)
!5857 = !DILocation(line: 587, column: 6, scope: !5645)
!5858 = !DILocation(line: 588, column: 3, scope: !5855)
!5859 = !DILocation(line: 589, column: 6, scope: !5645)
!5860 = !DILocation(line: 589, column: 12, scope: !5645)
!5861 = !DILocation(line: 591, column: 2, scope: !5645)
!5862 = !DILocation(line: 591, column: 9, scope: !5645)
!5863 = !DILocation(line: 592, column: 2, scope: !5645)
!5864 = !DILocation(line: 592, column: 2, scope: !5865)
!5865 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 592, column: 2)
!5866 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 592, column: 2)
!5867 = !DILocation(line: 592, column: 2, scope: !5866)
!5868 = !DILocation(line: 593, column: 7, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 593, column: 6)
!5870 = !DILocation(line: 593, column: 6, scope: !5869)
!5871 = !DILocation(line: 593, column: 15, scope: !5869)
!5872 = !DILocation(line: 593, column: 6, scope: !5645)
!5873 = !DILocation(line: 594, column: 21, scope: !5874)
!5874 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 593, column: 20)
!5875 = !DILocation(line: 594, column: 3, scope: !5874)
!5876 = !DILocation(line: 595, column: 3, scope: !5874)
!5877 = !DILocation(line: 595, column: 10, scope: !5874)
!5878 = !DILocation(line: 596, column: 3, scope: !5874)
!5879 = !DILocation(line: 596, column: 10, scope: !5874)
!5880 = !DILocation(line: 597, column: 23, scope: !5874)
!5881 = !DILocation(line: 597, column: 8, scope: !5874)
!5882 = !DILocation(line: 597, column: 6, scope: !5874)
!5883 = !DILocation(line: 598, column: 7, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5874, file: !3, line: 598, column: 7)
!5885 = !DILocation(line: 598, column: 10, scope: !5884)
!5886 = !DILocation(line: 598, column: 7, scope: !5874)
!5887 = !DILocation(line: 599, column: 4, scope: !5884)
!5888 = !DILocation(line: 600, column: 2, scope: !5874)
!5889 = !DILocation(line: 602, column: 2, scope: !5645)
!5890 = !DILocation(line: 602, column: 9, scope: !5645)
!5891 = !DILocation(line: 603, column: 2, scope: !5645)
!5892 = !DILocation(line: 603, column: 9, scope: !5645)
!5893 = !DILocation(line: 604, column: 22, scope: !5645)
!5894 = !DILocation(line: 604, column: 7, scope: !5645)
!5895 = !DILocation(line: 604, column: 5, scope: !5645)
!5896 = !DILocation(line: 605, column: 6, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 605, column: 6)
!5898 = !DILocation(line: 605, column: 9, scope: !5897)
!5899 = !DILocation(line: 605, column: 6, scope: !5645)
!5900 = !DILocation(line: 606, column: 3, scope: !5897)
!5901 = !DILocation(line: 608, column: 2, scope: !5645)
!5902 = !DILocation(line: 608, column: 9, scope: !5645)
!5903 = !DILocation(line: 609, column: 2, scope: !5645)
!5904 = !DILocation(line: 609, column: 9, scope: !5645)
!5905 = !DILocation(line: 610, column: 22, scope: !5645)
!5906 = !DILocation(line: 610, column: 7, scope: !5645)
!5907 = !DILocation(line: 610, column: 5, scope: !5645)
!5908 = !DILocation(line: 611, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 611, column: 6)
!5910 = !DILocation(line: 611, column: 9, scope: !5909)
!5911 = !DILocation(line: 611, column: 6, scope: !5645)
!5912 = !DILocation(line: 612, column: 3, scope: !5909)
!5913 = !DILocation(line: 615, column: 2, scope: !5645)
!5914 = !DILocation(line: 615, column: 9, scope: !5645)
!5915 = !DILocation(line: 616, column: 18, scope: !5645)
!5916 = !DILocation(line: 616, column: 32, scope: !5645)
!5917 = !DILocation(line: 616, column: 35, scope: !5645)
!5918 = !DILocation(line: 616, column: 16, scope: !5645)
!5919 = !DILocation(line: 616, column: 11, scope: !5645)
!5920 = !DILocation(line: 616, column: 2, scope: !5645)
!5921 = !DILocation(line: 616, column: 9, scope: !5645)
!5922 = !DILocation(line: 617, column: 22, scope: !5645)
!5923 = !DILocation(line: 617, column: 7, scope: !5645)
!5924 = !DILocation(line: 617, column: 5, scope: !5645)
!5925 = !DILocation(line: 618, column: 6, scope: !5926)
!5926 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 618, column: 6)
!5927 = !DILocation(line: 618, column: 9, scope: !5926)
!5928 = !DILocation(line: 618, column: 6, scope: !5645)
!5929 = !DILocation(line: 619, column: 3, scope: !5926)
!5930 = !DILocation(line: 621, column: 2, scope: !5645)
!5931 = !DILocation(line: 622, column: 2, scope: !5645)
!5932 = !DILocation(line: 622, column: 9, scope: !5645)
!5933 = !DILocation(line: 623, column: 2, scope: !5645)
!5934 = !DILocation(line: 623, column: 9, scope: !5645)
!5935 = !DILocation(line: 624, column: 22, scope: !5645)
!5936 = !DILocation(line: 624, column: 7, scope: !5645)
!5937 = !DILocation(line: 624, column: 5, scope: !5645)
!5938 = !DILocation(line: 625, column: 6, scope: !5939)
!5939 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 625, column: 6)
!5940 = !DILocation(line: 625, column: 9, scope: !5939)
!5941 = !DILocation(line: 625, column: 6, scope: !5645)
!5942 = !DILocation(line: 626, column: 3, scope: !5939)
!5943 = !DILocation(line: 628, column: 2, scope: !5645)
!5944 = !DILocation(line: 630, column: 2, scope: !5645)
!5945 = !DILocation(line: 630, column: 9, scope: !5645)
!5946 = !DILocation(line: 631, column: 19, scope: !5645)
!5947 = !DILocation(line: 631, column: 33, scope: !5645)
!5948 = !DILocation(line: 631, column: 36, scope: !5645)
!5949 = !DILocation(line: 631, column: 40, scope: !5645)
!5950 = !DILocation(line: 631, column: 16, scope: !5645)
!5951 = !DILocation(line: 631, column: 11, scope: !5645)
!5952 = !DILocation(line: 631, column: 2, scope: !5645)
!5953 = !DILocation(line: 631, column: 9, scope: !5645)
!5954 = !DILocation(line: 632, column: 22, scope: !5645)
!5955 = !DILocation(line: 632, column: 7, scope: !5645)
!5956 = !DILocation(line: 632, column: 5, scope: !5645)
!5957 = !DILocation(line: 633, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5645, file: !3, line: 633, column: 6)
!5959 = !DILocation(line: 633, column: 9, scope: !5958)
!5960 = !DILocation(line: 633, column: 6, scope: !5645)
!5961 = !DILocation(line: 634, column: 3, scope: !5958)
!5962 = !DILocation(line: 636, column: 20, scope: !5645)
!5963 = !DILocation(line: 636, column: 23, scope: !5645)
!5964 = !DILocation(line: 636, column: 2, scope: !5645)
!5965 = !DILocation(line: 636, column: 8, scope: !5645)
!5966 = !DILocation(line: 636, column: 18, scope: !5645)
!5967 = !DILocation(line: 637, column: 20, scope: !5645)
!5968 = !DILocation(line: 637, column: 23, scope: !5645)
!5969 = !DILocation(line: 637, column: 2, scope: !5645)
!5970 = !DILocation(line: 637, column: 8, scope: !5645)
!5971 = !DILocation(line: 637, column: 18, scope: !5645)
!5972 = !DILocation(line: 639, column: 2, scope: !5645)
!5973 = !DILabel(scope: !5645, name: "err", file: !3, line: 641)
!5974 = !DILocation(line: 641, column: 1, scope: !5645)
!5975 = !DILocation(line: 643, column: 19, scope: !5645)
!5976 = !DILocation(line: 643, column: 25, scope: !5645)
!5977 = !DILocation(line: 643, column: 34, scope: !5645)
!5978 = !DILocation(line: 642, column: 2, scope: !5645)
!5979 = !DILocation(line: 644, column: 9, scope: !5645)
!5980 = !DILocation(line: 644, column: 2, scope: !5645)
!5981 = !DILocation(line: 645, column: 1, scope: !5645)
!5982 = distinct !DISubprogram(name: "tda827xa_set_analog_params", scope: !3, file: !3, line: 648, type: !4298, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!5983 = !DILocalVariable(name: "fe", arg: 1, scope: !5982, file: !3, line: 648, type: !446)
!5984 = !DILocation(line: 648, column: 60, scope: !5982)
!5985 = !DILocalVariable(name: "params", arg: 2, scope: !5982, file: !3, line: 649, type: !685)
!5986 = !DILocation(line: 649, column: 37, scope: !5982)
!5987 = !DILocalVariable(name: "tuner_reg", scope: !5982, file: !3, line: 651, type: !5988)
!5988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 88, elements: !5661)
!5989 = !DILocation(line: 651, column: 16, scope: !5982)
!5990 = !DILocalVariable(name: "N", scope: !5982, file: !3, line: 652, type: !435)
!5991 = !DILocation(line: 652, column: 6, scope: !5982)
!5992 = !DILocalVariable(name: "i", scope: !5982, file: !3, line: 653, type: !339)
!5993 = !DILocation(line: 653, column: 6, scope: !5982)
!5994 = !DILocalVariable(name: "priv", scope: !5982, file: !3, line: 654, type: !4510)
!5995 = !DILocation(line: 654, column: 23, scope: !5982)
!5996 = !DILocation(line: 654, column: 30, scope: !5982)
!5997 = !DILocation(line: 654, column: 34, scope: !5982)
!5998 = !DILocalVariable(name: "msg", scope: !5982, file: !3, line: 655, type: !4386)
!5999 = !DILocation(line: 655, column: 17, scope: !5982)
!6000 = !DILocation(line: 655, column: 23, scope: !5982)
!6001 = !DILocation(line: 655, column: 33, scope: !5982)
!6002 = !DILocation(line: 655, column: 39, scope: !5982)
!6003 = !DILocation(line: 656, column: 18, scope: !5982)
!6004 = !DILocalVariable(name: "freq", scope: !5982, file: !3, line: 657, type: !7)
!6005 = !DILocation(line: 657, column: 15, scope: !5982)
!6006 = !DILocation(line: 657, column: 22, scope: !5982)
!6007 = !DILocation(line: 657, column: 30, scope: !5982)
!6008 = !DILocation(line: 659, column: 18, scope: !5982)
!6009 = !DILocation(line: 659, column: 22, scope: !5982)
!6010 = !DILocation(line: 659, column: 2, scope: !5982)
!6011 = !DILocation(line: 661, column: 20, scope: !5982)
!6012 = !DILocation(line: 661, column: 27, scope: !5982)
!6013 = !DILocation(line: 661, column: 2, scope: !5982)
!6014 = !DILocation(line: 662, column: 2, scope: !5982)
!6015 = !DILocation(line: 664, column: 6, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 664, column: 6)
!6017 = !DILocation(line: 664, column: 14, scope: !6016)
!6018 = !DILocation(line: 664, column: 19, scope: !6016)
!6019 = !DILocation(line: 664, column: 6, scope: !5982)
!6020 = !DILocation(line: 665, column: 10, scope: !6016)
!6021 = !DILocation(line: 665, column: 15, scope: !6016)
!6022 = !DILocation(line: 665, column: 8, scope: !6016)
!6023 = !DILocation(line: 665, column: 3, scope: !6016)
!6024 = !DILocation(line: 667, column: 6, scope: !5982)
!6025 = !DILocation(line: 667, column: 13, scope: !5982)
!6026 = !DILocation(line: 667, column: 19, scope: !5982)
!6027 = !DILocation(line: 667, column: 11, scope: !5982)
!6028 = !DILocation(line: 667, column: 4, scope: !5982)
!6029 = !DILocation(line: 669, column: 4, scope: !5982)
!6030 = !DILocation(line: 670, column: 2, scope: !5982)
!6031 = !DILocation(line: 670, column: 25, scope: !5982)
!6032 = !DILocation(line: 670, column: 9, scope: !5982)
!6033 = !DILocation(line: 670, column: 28, scope: !5982)
!6034 = !DILocation(line: 670, column: 36, scope: !5982)
!6035 = !DILocation(line: 670, column: 38, scope: !5982)
!6036 = !DILocation(line: 670, column: 34, scope: !5982)
!6037 = !DILocation(line: 671, column: 23, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6039, file: !3, line: 671, column: 7)
!6039 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 670, column: 47)
!6040 = !DILocation(line: 671, column: 25, scope: !6038)
!6041 = !DILocation(line: 671, column: 7, scope: !6038)
!6042 = !DILocation(line: 671, column: 30, scope: !6038)
!6043 = !DILocation(line: 671, column: 36, scope: !6038)
!6044 = !DILocation(line: 671, column: 7, scope: !6039)
!6045 = !DILocation(line: 672, column: 4, scope: !6038)
!6046 = !DILocation(line: 673, column: 4, scope: !6039)
!6047 = distinct !{!6047, !6030, !6048}
!6048 = !DILocation(line: 674, column: 2, scope: !5982)
!6049 = !DILocation(line: 676, column: 6, scope: !5982)
!6050 = !DILocation(line: 676, column: 27, scope: !5982)
!6051 = !DILocation(line: 676, column: 11, scope: !5982)
!6052 = !DILocation(line: 676, column: 30, scope: !5982)
!6053 = !DILocation(line: 676, column: 8, scope: !5982)
!6054 = !DILocation(line: 676, column: 4, scope: !5982)
!6055 = !DILocation(line: 678, column: 2, scope: !5982)
!6056 = !DILocation(line: 678, column: 15, scope: !5982)
!6057 = !DILocation(line: 679, column: 33, scope: !5982)
!6058 = !DILocation(line: 679, column: 34, scope: !5982)
!6059 = !DILocation(line: 679, column: 17, scope: !5982)
!6060 = !DILocation(line: 679, column: 2, scope: !5982)
!6061 = !DILocation(line: 679, column: 15, scope: !5982)
!6062 = !DILocation(line: 680, column: 33, scope: !5982)
!6063 = !DILocation(line: 680, column: 17, scope: !5982)
!6064 = !DILocation(line: 680, column: 2, scope: !5982)
!6065 = !DILocation(line: 680, column: 15, scope: !5982)
!6066 = !DILocation(line: 681, column: 2, scope: !5982)
!6067 = !DILocation(line: 681, column: 15, scope: !5982)
!6068 = !DILocation(line: 682, column: 2, scope: !5982)
!6069 = !DILocation(line: 682, column: 15, scope: !5982)
!6070 = !DILocation(line: 683, column: 34, scope: !5982)
!6071 = !DILocation(line: 683, column: 18, scope: !5982)
!6072 = !DILocation(line: 683, column: 37, scope: !5982)
!6073 = !DILocation(line: 683, column: 41, scope: !5982)
!6074 = !DILocation(line: 684, column: 27, scope: !5982)
!6075 = !DILocation(line: 684, column: 11, scope: !5982)
!6076 = !DILocation(line: 684, column: 30, scope: !5982)
!6077 = !DILocation(line: 684, column: 35, scope: !5982)
!6078 = !DILocation(line: 683, column: 47, scope: !5982)
!6079 = !DILocation(line: 685, column: 20, scope: !5982)
!6080 = !DILocation(line: 685, column: 4, scope: !5982)
!6081 = !DILocation(line: 685, column: 23, scope: !5982)
!6082 = !DILocation(line: 684, column: 41, scope: !5982)
!6083 = !DILocation(line: 683, column: 17, scope: !5982)
!6084 = !DILocation(line: 683, column: 2, scope: !5982)
!6085 = !DILocation(line: 683, column: 15, scope: !5982)
!6086 = !DILocation(line: 686, column: 41, scope: !5982)
!6087 = !DILocation(line: 686, column: 25, scope: !5982)
!6088 = !DILocation(line: 686, column: 44, scope: !5982)
!6089 = !DILocation(line: 686, column: 48, scope: !5982)
!6090 = !DILocation(line: 686, column: 22, scope: !5982)
!6091 = !DILocation(line: 686, column: 17, scope: !5982)
!6092 = !DILocation(line: 686, column: 2, scope: !5982)
!6093 = !DILocation(line: 686, column: 15, scope: !5982)
!6094 = !DILocation(line: 687, column: 2, scope: !5982)
!6095 = !DILocation(line: 687, column: 15, scope: !5982)
!6096 = !DILocation(line: 688, column: 2, scope: !5982)
!6097 = !DILocation(line: 688, column: 15, scope: !5982)
!6098 = !DILocation(line: 689, column: 2, scope: !5982)
!6099 = !DILocation(line: 689, column: 15, scope: !5982)
!6100 = !DILocation(line: 690, column: 2, scope: !5982)
!6101 = !DILocation(line: 690, column: 16, scope: !5982)
!6102 = !DILocation(line: 691, column: 6, scope: !5982)
!6103 = !DILocation(line: 691, column: 10, scope: !5982)
!6104 = !DILocation(line: 692, column: 17, scope: !5982)
!6105 = !DILocation(line: 692, column: 2, scope: !5982)
!6106 = !DILocation(line: 694, column: 2, scope: !5982)
!6107 = !DILocation(line: 694, column: 15, scope: !5982)
!6108 = !DILocation(line: 695, column: 2, scope: !5982)
!6109 = !DILocation(line: 695, column: 15, scope: !5982)
!6110 = !DILocation(line: 696, column: 2, scope: !5982)
!6111 = !DILocation(line: 696, column: 15, scope: !5982)
!6112 = !DILocation(line: 697, column: 2, scope: !5982)
!6113 = !DILocation(line: 697, column: 15, scope: !5982)
!6114 = !DILocation(line: 698, column: 25, scope: !5982)
!6115 = !DILocation(line: 698, column: 31, scope: !5982)
!6116 = !DILocation(line: 698, column: 37, scope: !5982)
!6117 = !DILocation(line: 698, column: 22, scope: !5982)
!6118 = !DILocation(line: 698, column: 17, scope: !5982)
!6119 = !DILocation(line: 698, column: 2, scope: !5982)
!6120 = !DILocation(line: 698, column: 15, scope: !5982)
!6121 = !DILocation(line: 699, column: 6, scope: !5982)
!6122 = !DILocation(line: 699, column: 10, scope: !5982)
!6123 = !DILocation(line: 700, column: 17, scope: !5982)
!6124 = !DILocation(line: 700, column: 2, scope: !5982)
!6125 = !DILocation(line: 702, column: 2, scope: !5982)
!6126 = !DILocation(line: 702, column: 15, scope: !5982)
!6127 = !DILocation(line: 703, column: 2, scope: !5982)
!6128 = !DILocation(line: 703, column: 15, scope: !5982)
!6129 = !DILocation(line: 704, column: 6, scope: !5982)
!6130 = !DILocation(line: 704, column: 10, scope: !5982)
!6131 = !DILocation(line: 705, column: 17, scope: !5982)
!6132 = !DILocation(line: 705, column: 2, scope: !5982)
!6133 = !DILocation(line: 707, column: 2, scope: !5982)
!6134 = !DILocation(line: 707, column: 15, scope: !5982)
!6135 = !DILocation(line: 708, column: 40, scope: !5982)
!6136 = !DILocation(line: 708, column: 24, scope: !5982)
!6137 = !DILocation(line: 708, column: 43, scope: !5982)
!6138 = !DILocation(line: 708, column: 22, scope: !5982)
!6139 = !DILocation(line: 708, column: 17, scope: !5982)
!6140 = !DILocation(line: 708, column: 2, scope: !5982)
!6141 = !DILocation(line: 708, column: 15, scope: !5982)
!6142 = !DILocation(line: 709, column: 17, scope: !5982)
!6143 = !DILocation(line: 709, column: 2, scope: !5982)
!6144 = !DILocation(line: 711, column: 6, scope: !5982)
!6145 = !DILocation(line: 711, column: 12, scope: !5982)
!6146 = !DILocation(line: 712, column: 17, scope: !5982)
!6147 = !DILocation(line: 712, column: 2, scope: !5982)
!6148 = !DILocation(line: 713, column: 6, scope: !5982)
!6149 = !DILocation(line: 713, column: 12, scope: !5982)
!6150 = !DILocation(line: 714, column: 2, scope: !5982)
!6151 = !DILocation(line: 714, column: 15, scope: !5982)
!6152 = !DILocation(line: 715, column: 2, scope: !5982)
!6153 = !DILocation(line: 715, column: 2, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6155, file: !3, line: 715, column: 2)
!6155 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 715, column: 2)
!6156 = !DILocation(line: 715, column: 2, scope: !6155)
!6157 = !DILocation(line: 716, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 716, column: 6)
!6159 = !DILocation(line: 716, column: 19, scope: !6158)
!6160 = !DILocation(line: 716, column: 6, scope: !5982)
!6161 = !DILocation(line: 717, column: 21, scope: !6158)
!6162 = !DILocation(line: 717, column: 28, scope: !6158)
!6163 = !DILocation(line: 717, column: 3, scope: !6158)
!6164 = !DILocation(line: 719, column: 2, scope: !5982)
!6165 = !DILocation(line: 720, column: 2, scope: !5982)
!6166 = !DILocation(line: 720, column: 15, scope: !5982)
!6167 = !DILocation(line: 721, column: 2, scope: !5982)
!6168 = !DILocation(line: 721, column: 15, scope: !5982)
!6169 = !DILocation(line: 722, column: 17, scope: !5982)
!6170 = !DILocation(line: 722, column: 2, scope: !5982)
!6171 = !DILocation(line: 724, column: 2, scope: !5982)
!6172 = !DILocation(line: 725, column: 2, scope: !5982)
!6173 = !DILocation(line: 725, column: 15, scope: !5982)
!6174 = !DILocation(line: 726, column: 41, scope: !5982)
!6175 = !DILocation(line: 726, column: 25, scope: !5982)
!6176 = !DILocation(line: 726, column: 44, scope: !5982)
!6177 = !DILocation(line: 726, column: 48, scope: !5982)
!6178 = !DILocation(line: 726, column: 22, scope: !5982)
!6179 = !DILocation(line: 726, column: 17, scope: !5982)
!6180 = !DILocation(line: 726, column: 2, scope: !5982)
!6181 = !DILocation(line: 726, column: 15, scope: !5982)
!6182 = !DILocation(line: 727, column: 17, scope: !5982)
!6183 = !DILocation(line: 727, column: 2, scope: !5982)
!6184 = !DILocation(line: 729, column: 2, scope: !5982)
!6185 = !DILocation(line: 729, column: 15, scope: !5982)
!6186 = !DILocation(line: 730, column: 2, scope: !5982)
!6187 = !DILocation(line: 730, column: 15, scope: !5982)
!6188 = !DILocation(line: 731, column: 17, scope: !5982)
!6189 = !DILocation(line: 731, column: 2, scope: !5982)
!6190 = !DILocation(line: 733, column: 2, scope: !5982)
!6191 = !DILocation(line: 733, column: 15, scope: !5982)
!6192 = !DILocation(line: 734, column: 2, scope: !5982)
!6193 = !DILocation(line: 734, column: 15, scope: !5982)
!6194 = !DILocation(line: 735, column: 17, scope: !5982)
!6195 = !DILocation(line: 735, column: 2, scope: !5982)
!6196 = !DILocation(line: 737, column: 2, scope: !5982)
!6197 = !DILocation(line: 737, column: 15, scope: !5982)
!6198 = !DILocation(line: 738, column: 25, scope: !5982)
!6199 = !DILocation(line: 738, column: 31, scope: !5982)
!6200 = !DILocation(line: 738, column: 37, scope: !5982)
!6201 = !DILocation(line: 738, column: 22, scope: !5982)
!6202 = !DILocation(line: 738, column: 17, scope: !5982)
!6203 = !DILocation(line: 738, column: 2, scope: !5982)
!6204 = !DILocation(line: 738, column: 15, scope: !5982)
!6205 = !DILocation(line: 739, column: 17, scope: !5982)
!6206 = !DILocation(line: 739, column: 2, scope: !5982)
!6207 = !DILocation(line: 741, column: 20, scope: !5982)
!6208 = !DILocation(line: 741, column: 28, scope: !5982)
!6209 = !DILocation(line: 741, column: 2, scope: !5982)
!6210 = !DILocation(line: 741, column: 8, scope: !5982)
!6211 = !DILocation(line: 741, column: 18, scope: !5982)
!6212 = !DILocation(line: 743, column: 2, scope: !5982)
!6213 = distinct !DISubprogram(name: "tda827xa_lna_gain", scope: !3, file: !3, line: 448, type: !6214, scopeLine: 450, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!6214 = !DISubroutineType(types: !6215)
!6215 = !{null, !446, !339, !685}
!6216 = !DILocalVariable(name: "fe", arg: 1, scope: !6213, file: !3, line: 448, type: !446)
!6217 = !DILocation(line: 448, column: 52, scope: !6213)
!6218 = !DILocalVariable(name: "high", arg: 2, scope: !6213, file: !3, line: 448, type: !339)
!6219 = !DILocation(line: 448, column: 60, scope: !6213)
!6220 = !DILocalVariable(name: "params", arg: 3, scope: !6213, file: !3, line: 449, type: !685)
!6221 = !DILocation(line: 449, column: 36, scope: !6213)
!6222 = !DILocalVariable(name: "priv", scope: !6213, file: !3, line: 451, type: !4510)
!6223 = !DILocation(line: 451, column: 23, scope: !6213)
!6224 = !DILocation(line: 451, column: 30, scope: !6213)
!6225 = !DILocation(line: 451, column: 34, scope: !6213)
!6226 = !DILocalVariable(name: "buf", scope: !6213, file: !3, line: 452, type: !5168)
!6227 = !DILocation(line: 452, column: 16, scope: !6213)
!6228 = !DILocalVariable(name: "arg", scope: !6213, file: !3, line: 453, type: !339)
!6229 = !DILocation(line: 453, column: 6, scope: !6213)
!6230 = !DILocalVariable(name: "gp_func", scope: !6213, file: !3, line: 454, type: !339)
!6231 = !DILocation(line: 454, column: 6, scope: !6213)
!6232 = !DILocalVariable(name: "msg", scope: !6213, file: !3, line: 455, type: !4386)
!6233 = !DILocation(line: 455, column: 17, scope: !6213)
!6234 = !DILocation(line: 455, column: 23, scope: !6213)
!6235 = !DILocation(line: 455, column: 44, scope: !6213)
!6236 = !DILocation(line: 457, column: 14, scope: !6237)
!6237 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 457, column: 6)
!6238 = !DILocation(line: 457, column: 20, scope: !6237)
!6239 = !DILocation(line: 457, column: 11, scope: !6237)
!6240 = !DILocation(line: 457, column: 6, scope: !6213)
!6241 = !DILocation(line: 458, column: 3, scope: !6242)
!6242 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 457, column: 25)
!6243 = !DILocation(line: 458, column: 3, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !3, line: 458, column: 3)
!6245 = distinct !DILexicalBlock(scope: !6242, file: !3, line: 458, column: 3)
!6246 = !DILocation(line: 458, column: 3, scope: !6245)
!6247 = !DILocation(line: 459, column: 3, scope: !6242)
!6248 = !DILocation(line: 461, column: 13, scope: !6213)
!6249 = !DILocation(line: 461, column: 19, scope: !6213)
!6250 = !DILocation(line: 461, column: 24, scope: !6213)
!6251 = !DILocation(line: 461, column: 6, scope: !6213)
!6252 = !DILocation(line: 461, column: 11, scope: !6213)
!6253 = !DILocation(line: 462, column: 6, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 462, column: 6)
!6255 = !DILocation(line: 462, column: 12, scope: !6254)
!6256 = !DILocation(line: 462, column: 17, scope: !6254)
!6257 = !DILocation(line: 462, column: 6, scope: !6213)
!6258 = !DILocation(line: 463, column: 7, scope: !6259)
!6259 = distinct !DILexicalBlock(scope: !6260, file: !3, line: 463, column: 7)
!6260 = distinct !DILexicalBlock(scope: !6254, file: !3, line: 462, column: 25)
!6261 = !DILocation(line: 463, column: 7, scope: !6260)
!6262 = !DILocation(line: 464, column: 4, scope: !6259)
!6263 = !DILocation(line: 464, column: 4, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6265, file: !3, line: 464, column: 4)
!6265 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 464, column: 4)
!6266 = !DILocation(line: 464, column: 4, scope: !6265)
!6267 = !DILocation(line: 466, column: 4, scope: !6259)
!6268 = !DILocation(line: 466, column: 4, scope: !6269)
!6269 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 466, column: 4)
!6270 = distinct !DILexicalBlock(scope: !6259, file: !3, line: 466, column: 4)
!6271 = !DILocation(line: 466, column: 4, scope: !6270)
!6272 = !DILocation(line: 467, column: 2, scope: !6260)
!6273 = !DILocation(line: 468, column: 10, scope: !6213)
!6274 = !DILocation(line: 468, column: 16, scope: !6213)
!6275 = !DILocation(line: 468, column: 21, scope: !6213)
!6276 = !DILocation(line: 468, column: 2, scope: !6213)
!6277 = !DILocation(line: 470, column: 3, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !6213, file: !3, line: 468, column: 29)
!6279 = !DILocation(line: 473, column: 7, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 473, column: 7)
!6281 = !DILocation(line: 473, column: 14, scope: !6280)
!6282 = !DILocation(line: 473, column: 7, scope: !6278)
!6283 = !DILocation(line: 474, column: 12, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 473, column: 23)
!6285 = !DILocation(line: 475, column: 9, scope: !6284)
!6286 = !DILocation(line: 476, column: 3, scope: !6284)
!6287 = !DILocation(line: 478, column: 12, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6280, file: !3, line: 476, column: 10)
!6289 = !DILocation(line: 479, column: 8, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6288, file: !3, line: 479, column: 8)
!6291 = !DILocation(line: 479, column: 16, scope: !6290)
!6292 = !DILocation(line: 479, column: 20, scope: !6290)
!6293 = !DILocation(line: 479, column: 8, scope: !6288)
!6294 = !DILocation(line: 480, column: 9, scope: !6290)
!6295 = !DILocation(line: 480, column: 5, scope: !6290)
!6296 = !DILocation(line: 482, column: 9, scope: !6290)
!6297 = !DILocation(line: 484, column: 7, scope: !6298)
!6298 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 484, column: 7)
!6299 = !DILocation(line: 484, column: 11, scope: !6298)
!6300 = !DILocation(line: 484, column: 7, scope: !6278)
!6301 = !DILocation(line: 485, column: 4, scope: !6298)
!6302 = !DILocation(line: 485, column: 8, scope: !6298)
!6303 = !DILocation(line: 485, column: 17, scope: !6298)
!6304 = !DILocation(line: 485, column: 23, scope: !6298)
!6305 = !DILocation(line: 485, column: 33, scope: !6298)
!6306 = !DILocation(line: 487, column: 10, scope: !6298)
!6307 = !DILocation(line: 487, column: 19, scope: !6298)
!6308 = !DILocation(line: 488, column: 12, scope: !6278)
!6309 = !DILocation(line: 488, column: 3, scope: !6278)
!6310 = !DILocation(line: 488, column: 10, scope: !6278)
!6311 = !DILocation(line: 489, column: 7, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 489, column: 7)
!6313 = !DILocation(line: 489, column: 13, scope: !6312)
!6314 = !DILocation(line: 489, column: 18, scope: !6312)
!6315 = !DILocation(line: 489, column: 25, scope: !6312)
!6316 = !DILocation(line: 489, column: 7, scope: !6278)
!6317 = !DILocation(line: 490, column: 13, scope: !6312)
!6318 = !DILocation(line: 490, column: 4, scope: !6312)
!6319 = !DILocation(line: 490, column: 11, scope: !6312)
!6320 = !DILocation(line: 491, column: 18, scope: !6278)
!6321 = !DILocation(line: 491, column: 3, scope: !6278)
!6322 = !DILocation(line: 492, column: 3, scope: !6278)
!6323 = !DILocation(line: 494, column: 7, scope: !6324)
!6324 = distinct !DILexicalBlock(scope: !6278, file: !3, line: 494, column: 7)
!6325 = !DILocation(line: 494, column: 11, scope: !6324)
!6326 = !DILocation(line: 494, column: 7, scope: !6278)
!6327 = !DILocation(line: 495, column: 4, scope: !6324)
!6328 = !DILocation(line: 495, column: 8, scope: !6324)
!6329 = !DILocation(line: 495, column: 17, scope: !6324)
!6330 = !DILocation(line: 495, column: 23, scope: !6324)
!6331 = !DILocation(line: 495, column: 33, scope: !6324)
!6332 = !DILocation(line: 496, column: 43, scope: !6324)
!6333 = !DILocation(line: 497, column: 3, scope: !6278)
!6334 = !DILocation(line: 499, column: 1, scope: !6213)
!6335 = distinct !DISubprogram(name: "tda827x_set_std", scope: !3, file: !3, line: 37, type: !683, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !757)
!6336 = !DILocalVariable(name: "fe", arg: 1, scope: !6335, file: !3, line: 37, type: !446)
!6337 = !DILocation(line: 37, column: 50, scope: !6335)
!6338 = !DILocalVariable(name: "params", arg: 2, scope: !6335, file: !3, line: 38, type: !685)
!6339 = !DILocation(line: 38, column: 34, scope: !6335)
!6340 = !DILocalVariable(name: "priv", scope: !6335, file: !3, line: 40, type: !4510)
!6341 = !DILocation(line: 40, column: 23, scope: !6335)
!6342 = !DILocation(line: 40, column: 30, scope: !6335)
!6343 = !DILocation(line: 40, column: 34, scope: !6335)
!6344 = !DILocalVariable(name: "mode", scope: !6335, file: !3, line: 41, type: !345)
!6345 = !DILocation(line: 41, column: 8, scope: !6335)
!6346 = !DILocation(line: 43, column: 2, scope: !6335)
!6347 = !DILocation(line: 43, column: 8, scope: !6335)
!6348 = !DILocation(line: 43, column: 14, scope: !6335)
!6349 = !DILocation(line: 44, column: 6, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 44, column: 6)
!6351 = !DILocation(line: 44, column: 14, scope: !6350)
!6352 = !DILocation(line: 44, column: 18, scope: !6350)
!6353 = !DILocation(line: 44, column: 6, scope: !6335)
!6354 = !DILocation(line: 45, column: 3, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 44, column: 33)
!6356 = !DILocation(line: 45, column: 9, scope: !6355)
!6357 = !DILocation(line: 45, column: 14, scope: !6355)
!6358 = !DILocation(line: 46, column: 3, scope: !6355)
!6359 = !DILocation(line: 46, column: 9, scope: !6355)
!6360 = !DILocation(line: 46, column: 15, scope: !6355)
!6361 = !DILocation(line: 47, column: 8, scope: !6355)
!6362 = !DILocation(line: 48, column: 2, scope: !6355)
!6363 = !DILocation(line: 48, column: 13, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6350, file: !3, line: 48, column: 13)
!6365 = !DILocation(line: 48, column: 21, scope: !6364)
!6366 = !DILocation(line: 48, column: 25, scope: !6364)
!6367 = !DILocation(line: 48, column: 13, scope: !6350)
!6368 = !DILocation(line: 49, column: 3, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 48, column: 39)
!6370 = !DILocation(line: 49, column: 9, scope: !6369)
!6371 = !DILocation(line: 49, column: 14, scope: !6369)
!6372 = !DILocation(line: 50, column: 8, scope: !6369)
!6373 = !DILocation(line: 51, column: 2, scope: !6369)
!6374 = !DILocation(line: 51, column: 13, scope: !6375)
!6375 = distinct !DILexicalBlock(scope: !6364, file: !3, line: 51, column: 13)
!6376 = !DILocation(line: 51, column: 21, scope: !6375)
!6377 = !DILocation(line: 51, column: 25, scope: !6375)
!6378 = !DILocation(line: 51, column: 13, scope: !6364)
!6379 = !DILocation(line: 52, column: 3, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 51, column: 40)
!6381 = !DILocation(line: 52, column: 9, scope: !6380)
!6382 = !DILocation(line: 52, column: 14, scope: !6380)
!6383 = !DILocation(line: 53, column: 8, scope: !6380)
!6384 = !DILocation(line: 54, column: 2, scope: !6380)
!6385 = !DILocation(line: 54, column: 13, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6375, file: !3, line: 54, column: 13)
!6387 = !DILocation(line: 54, column: 21, scope: !6386)
!6388 = !DILocation(line: 54, column: 25, scope: !6386)
!6389 = !DILocation(line: 54, column: 13, scope: !6375)
!6390 = !DILocation(line: 55, column: 3, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 54, column: 43)
!6392 = !DILocation(line: 55, column: 9, scope: !6391)
!6393 = !DILocation(line: 55, column: 14, scope: !6391)
!6394 = !DILocation(line: 56, column: 8, scope: !6391)
!6395 = !DILocation(line: 57, column: 2, scope: !6391)
!6396 = !DILocation(line: 57, column: 13, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6386, file: !3, line: 57, column: 13)
!6398 = !DILocation(line: 57, column: 21, scope: !6397)
!6399 = !DILocation(line: 57, column: 25, scope: !6397)
!6400 = !DILocation(line: 57, column: 13, scope: !6386)
!6401 = !DILocation(line: 58, column: 3, scope: !6402)
!6402 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 57, column: 40)
!6403 = !DILocation(line: 58, column: 9, scope: !6402)
!6404 = !DILocation(line: 58, column: 14, scope: !6402)
!6405 = !DILocation(line: 59, column: 8, scope: !6402)
!6406 = !DILocation(line: 60, column: 2, scope: !6402)
!6407 = !DILocation(line: 60, column: 13, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 60, column: 13)
!6409 = !DILocation(line: 60, column: 21, scope: !6408)
!6410 = !DILocation(line: 60, column: 25, scope: !6408)
!6411 = !DILocation(line: 60, column: 13, scope: !6397)
!6412 = !DILocation(line: 61, column: 3, scope: !6413)
!6413 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 60, column: 45)
!6414 = !DILocation(line: 61, column: 9, scope: !6413)
!6415 = !DILocation(line: 61, column: 14, scope: !6413)
!6416 = !DILocation(line: 62, column: 8, scope: !6413)
!6417 = !DILocation(line: 63, column: 2, scope: !6413)
!6418 = !DILocation(line: 63, column: 13, scope: !6419)
!6419 = distinct !DILexicalBlock(scope: !6408, file: !3, line: 63, column: 13)
!6420 = !DILocation(line: 63, column: 21, scope: !6419)
!6421 = !DILocation(line: 63, column: 25, scope: !6419)
!6422 = !DILocation(line: 63, column: 13, scope: !6408)
!6423 = !DILocation(line: 64, column: 3, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 63, column: 46)
!6425 = !DILocation(line: 64, column: 9, scope: !6424)
!6426 = !DILocation(line: 64, column: 14, scope: !6424)
!6427 = !DILocation(line: 65, column: 8, scope: !6424)
!6428 = !DILocation(line: 66, column: 2, scope: !6424)
!6429 = !DILocation(line: 67, column: 3, scope: !6430)
!6430 = distinct !DILexicalBlock(scope: !6419, file: !3, line: 66, column: 9)
!6431 = !DILocation(line: 67, column: 9, scope: !6430)
!6432 = !DILocation(line: 67, column: 14, scope: !6430)
!6433 = !DILocation(line: 68, column: 8, scope: !6430)
!6434 = !DILocation(line: 71, column: 6, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6335, file: !3, line: 71, column: 6)
!6436 = !DILocation(line: 71, column: 14, scope: !6435)
!6437 = !DILocation(line: 71, column: 19, scope: !6435)
!6438 = !DILocation(line: 71, column: 6, scope: !6335)
!6439 = !DILocation(line: 72, column: 3, scope: !6440)
!6440 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 71, column: 40)
!6441 = !DILocation(line: 72, column: 9, scope: !6440)
!6442 = !DILocation(line: 72, column: 14, scope: !6440)
!6443 = !DILocation(line: 73, column: 3, scope: !6440)
!6444 = !DILocation(line: 73, column: 3, scope: !6445)
!6445 = distinct !DILexicalBlock(scope: !6446, file: !3, line: 73, column: 3)
!6446 = distinct !DILexicalBlock(scope: !6440, file: !3, line: 73, column: 3)
!6447 = !DILocation(line: 73, column: 3, scope: !6446)
!6448 = !DILocation(line: 74, column: 2, scope: !6440)
!6449 = !DILocation(line: 75, column: 3, scope: !6435)
!6450 = !DILocation(line: 75, column: 3, scope: !6451)
!6451 = distinct !DILexicalBlock(scope: !6452, file: !3, line: 75, column: 3)
!6452 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 75, column: 3)
!6453 = !DILocation(line: 75, column: 3, scope: !6452)
!6454 = !DILocation(line: 76, column: 1, scope: !6335)
