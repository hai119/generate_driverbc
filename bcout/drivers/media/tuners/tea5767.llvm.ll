; ModuleID = '../bcout/drivers/media/tuners/tea5767.llvm.bc'
source_filename = "drivers/media/tuners/tea5767.c"
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
%struct.kmem_cache = type opaque
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
%struct.tuner_i2c_props = type { i8, %struct.i2c_adapter*, i32, i8* }
%struct.tea5767_priv = type { %struct.tuner_i2c_props, i32, %struct.tea5767_ctrl }
%struct.tea5767_ctrl = type { i8, i32 }

@__param_str_debug = internal constant [14 x i8] c"tea5767.debug\00", align 1, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !404
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !302
@__UNIQUE_ID_debugtype220 = internal constant [27 x i8] c"tea5767.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !374
@__UNIQUE_ID_debug221 = internal constant [49 x i8] c"tea5767.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1, !dbg !379
@__const.tea5767_autodetection.buffer = private unnamed_addr constant [7 x i8] c"\FF\FF\FF\FF\FF\FF\FF", align 1
@.str = private unnamed_addr constant [52 x i8] c"\014tea5767: It is not a TEA5767. Received %i bytes.\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\014tea5767: All bytes are equal. It is not a TEA5767\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\014tea5767: Chip ID is not zero. It is not a TEA5767\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"tea5767\00", align 1
@tea5767_tuner_ops = internal constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"tea5767\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, void (%struct.dvb_frontend*)* @tea5767_release, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* @tea5767_standby, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*)* null, i32 (%struct.dvb_frontend*, %struct.analog_parameters*)* @set_radio_freq, i32 (%struct.dvb_frontend*, i8*)* @tea5767_set_config, i32 (%struct.dvb_frontend*, i32*)* @tea5767_get_frequency, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i32*)* @tea5767_get_status, i32 (%struct.dvb_frontend*, i16*)* @tea5767_get_rf_strength, i32 (%struct.dvb_frontend*, i32*)* null, i32 (%struct.dvb_frontend*, i8*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null, i32 (%struct.dvb_frontend*, i32)* null }, align 8, !dbg !406
@.str.4 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Philips TEA5767HN FM Radio\00", align 1
@__UNIQUE_ID_description222 = internal constant [52 x i8] c"tea5767.description=Philips TEA5767 FM tuner driver\00", section ".modinfo", align 1, !dbg !384
@__UNIQUE_ID_author223 = internal constant [58 x i8] c"tea5767.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1, !dbg !389
@__UNIQUE_ID_file224 = internal constant [42 x i8] c"tea5767.file=drivers/media/tuners/tea5767\00", section ".modinfo", align 1, !dbg !394
@__UNIQUE_ID_license225 = internal constant [23 x i8] c"tea5767.license=GPL v2\00", section ".modinfo", align 1, !dbg !399
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 5)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"\017%s %d-%04x: radio freq = %d.%03d MHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: TEA5767 set to mono\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\017%s %d-%04x: TEA5767 set to stereo\0A\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 13 MHz\0A\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 13 MHz\0A\00", align 1
@.str.13 = private unnamed_addr constant [53 x i8] c"\017%s %d-%04x: radio LOW LO inject xtal @ 32,768 MHz\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: radio HIGH LO inject xtal @ 32,768 MHz\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\016%s %d-%04x: Ready Flag ON\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: Ready Flag OFF\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: Tuner at band limit\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"\016%s %d-%04x: Tuner not at band limit\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c"\016%s %d-%04x: Frequency %d.%03d KHz (divider = 0x%04x)\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\016%s %d-%04x: Stereo\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"\016%s %d-%04x: Mono\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\016%s %d-%04x: IF Counter = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: ADC Level = %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"\016%s %d-%04x: Chip ID = %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"\016%s %d-%04x: Reserved = 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Radio ST GET = %02x\0A\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_debugtype220, i32 0, i32 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__UNIQUE_ID_debug221, i32 0, i32 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__UNIQUE_ID_description222, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_author223, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__UNIQUE_ID_file224, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_license225, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @tea5767_autodetection(%struct.i2c_adapter* %i2c_adap, i8 zeroext %i2c_addr) #0 !dbg !4312 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %i2c = alloca %struct.tuner_i2c_props, align 8
  %buffer = alloca [7 x i8], align 1
  %rc = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  call void @llvm.dbg.declare(metadata %struct.tuner_i2c_props* %i2c, metadata !4441, metadata !DIExpression()), !dbg !4449
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c, i32 0, i32 0, !dbg !4450
  %0 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4451
  store i8 %0, i8* %addr, align 8, !dbg !4450
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c, i32 0, i32 1, !dbg !4450
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !4452
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %adap, align 8, !dbg !4450
  %count = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c, i32 0, i32 2, !dbg !4450
  store i32 0, i32* %count, align 8, !dbg !4450
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c, i32 0, i32 3, !dbg !4450
  store i8* null, i8** %name, align 8, !dbg !4450
  call void @llvm.dbg.declare(metadata [7 x i8]* %buffer, metadata !4453, metadata !DIExpression()), !dbg !4457
  %2 = bitcast [7 x i8]* %buffer to i8*, !dbg !4457
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.tea5767_autodetection.buffer, i32 0, i32 0), i64 7, i1 false), !dbg !4457
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4458, metadata !DIExpression()), !dbg !4459
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %buffer, i64 0, i64 0, !dbg !4460
  %call = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %i2c, i8* %arraydecay, i32 7) #8, !dbg !4462
  store i32 %call, i32* %rc, align 4, !dbg !4463
  %cmp = icmp slt i32 %call, 5, !dbg !4464
  br i1 %cmp, label %if.then, label %if.end, !dbg !4465

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %rc, align 4, !dbg !4466
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %3) #9, !dbg !4466
  store i32 -22, i32* %retval, align 4, !dbg !4468
  br label %return, !dbg !4468

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 0, !dbg !4469
  %4 = load i8, i8* %arrayidx, align 1, !dbg !4469
  %conv = zext i8 %4 to i32, !dbg !4469
  %arrayidx2 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 1, !dbg !4471
  %5 = load i8, i8* %arrayidx2, align 1, !dbg !4471
  %conv3 = zext i8 %5 to i32, !dbg !4471
  %cmp4 = icmp eq i32 %conv, %conv3, !dbg !4472
  br i1 %cmp4, label %land.lhs.true, label %if.end28, !dbg !4473

land.lhs.true:                                    ; preds = %if.end
  %arrayidx6 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 0, !dbg !4474
  %6 = load i8, i8* %arrayidx6, align 1, !dbg !4474
  %conv7 = zext i8 %6 to i32, !dbg !4474
  %arrayidx8 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 2, !dbg !4475
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !4475
  %conv9 = zext i8 %7 to i32, !dbg !4475
  %cmp10 = icmp eq i32 %conv7, %conv9, !dbg !4476
  br i1 %cmp10, label %land.lhs.true12, label %if.end28, !dbg !4477

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx13 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 0, !dbg !4478
  %8 = load i8, i8* %arrayidx13, align 1, !dbg !4478
  %conv14 = zext i8 %8 to i32, !dbg !4478
  %arrayidx15 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 3, !dbg !4479
  %9 = load i8, i8* %arrayidx15, align 1, !dbg !4479
  %conv16 = zext i8 %9 to i32, !dbg !4479
  %cmp17 = icmp eq i32 %conv14, %conv16, !dbg !4480
  br i1 %cmp17, label %land.lhs.true19, label %if.end28, !dbg !4481

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %arrayidx20 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 0, !dbg !4482
  %10 = load i8, i8* %arrayidx20, align 1, !dbg !4482
  %conv21 = zext i8 %10 to i32, !dbg !4482
  %arrayidx22 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 4, !dbg !4483
  %11 = load i8, i8* %arrayidx22, align 1, !dbg !4483
  %conv23 = zext i8 %11 to i32, !dbg !4483
  %cmp24 = icmp eq i32 %conv21, %conv23, !dbg !4484
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !4485

if.then26:                                        ; preds = %land.lhs.true19
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !4486
  store i32 -22, i32* %retval, align 4, !dbg !4488
  br label %return, !dbg !4488

if.end28:                                         ; preds = %land.lhs.true19, %land.lhs.true12, %land.lhs.true, %if.end
  %arrayidx29 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 3, !dbg !4489
  %12 = load i8, i8* %arrayidx29, align 1, !dbg !4489
  %conv30 = zext i8 %12 to i32, !dbg !4489
  %and = and i32 %conv30, 15, !dbg !4491
  %cmp31 = icmp ne i32 %and, 0, !dbg !4492
  br i1 %cmp31, label %if.then37, label %lor.lhs.false, !dbg !4493

lor.lhs.false:                                    ; preds = %if.end28
  %arrayidx33 = getelementptr [7 x i8], [7 x i8]* %buffer, i64 0, i64 4, !dbg !4494
  %13 = load i8, i8* %arrayidx33, align 1, !dbg !4494
  %conv34 = zext i8 %13 to i32, !dbg !4494
  %cmp35 = icmp ne i32 %conv34, 0, !dbg !4495
  br i1 %cmp35, label %if.then37, label %if.end39, !dbg !4496

if.then37:                                        ; preds = %lor.lhs.false, %if.end28
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !4497
  store i32 -22, i32* %retval, align 4, !dbg !4499
  br label %return, !dbg !4499

if.end39:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %retval, align 4, !dbg !4500
  br label %return, !dbg !4500

return:                                           ; preds = %if.end39, %if.then37, %if.then26, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4501
  ret i32 %14, !dbg !4501
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %props, i8* %buf, i32 %len) #0 !dbg !4502 {
entry:
  %props.addr = alloca %struct.tuner_i2c_props*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.tuner_i2c_props* %props, %struct.tuner_i2c_props** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tuner_i2c_props** %props.addr, metadata !4507, metadata !DIExpression()), !dbg !4508
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4509, metadata !DIExpression()), !dbg !4510
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !4511, metadata !DIExpression()), !dbg !4512
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !4513, metadata !DIExpression()), !dbg !4514
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !4515
  %0 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !4516
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %0, i32 0, i32 0, !dbg !4517
  %1 = load i8, i8* %addr1, align 8, !dbg !4517
  %conv = zext i8 %1 to i16, !dbg !4516
  store i16 %conv, i16* %addr, align 8, !dbg !4515
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !4515
  store i16 1, i16* %flags, align 2, !dbg !4515
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !4515
  %2 = load i32, i32* %len.addr, align 4, !dbg !4518
  %conv3 = trunc i32 %2 to i16, !dbg !4518
  store i16 %conv3, i16* %len2, align 4, !dbg !4515
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !4515
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4519
  store i8* %3, i8** %buf4, align 8, !dbg !4515
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4520, metadata !DIExpression()), !dbg !4521
  %4 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !4522
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %4, i32 0, i32 1, !dbg !4523
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !4523
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg, i32 1) #8, !dbg !4524
  store i32 %call, i32* %ret, align 4, !dbg !4521
  %6 = load i32, i32* %ret, align 4, !dbg !4525
  %cmp = icmp eq i32 %6, 1, !dbg !4526
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4527

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %len.addr, align 4, !dbg !4528
  br label %cond.end, !dbg !4527

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !4529
  br label %cond.end, !dbg !4527

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !4527
  ret i32 %cond, !dbg !4530
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.dvb_frontend* @tea5767_attach(%struct.dvb_frontend* %fe, %struct.i2c_adapter* %i2c_adap, i8 zeroext %i2c_addr) #0 !dbg !4531 {
entry:
  %retval = alloca %struct.dvb_frontend*, align 8
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %priv = alloca %struct.tea5767_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !4536, metadata !DIExpression()), !dbg !4537
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !4538, metadata !DIExpression()), !dbg !4539
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !4540, metadata !DIExpression()), !dbg !4558
  store %struct.tea5767_priv* null, %struct.tea5767_priv** %priv, align 8, !dbg !4558
  %call = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !4559
  %0 = bitcast i8* %call to %struct.tea5767_priv*, !dbg !4559
  store %struct.tea5767_priv* %0, %struct.tea5767_priv** %priv, align 8, !dbg !4560
  %1 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4561
  %cmp = icmp eq %struct.tea5767_priv* %1, null, !dbg !4563
  br i1 %cmp, label %if.then, label %if.end, !dbg !4564

if.then:                                          ; preds = %entry
  store %struct.dvb_frontend* null, %struct.dvb_frontend** %retval, align 8, !dbg !4565
  br label %return, !dbg !4565

if.end:                                           ; preds = %entry
  %2 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4566
  %3 = bitcast %struct.tea5767_priv* %2 to i8*, !dbg !4566
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4567
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 4, !dbg !4568
  store i8* %3, i8** %tuner_priv, align 8, !dbg !4569
  %5 = load i8, i8* %i2c_addr.addr, align 1, !dbg !4570
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4571
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !4572
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 0, !dbg !4573
  store i8 %5, i8* %addr, align 8, !dbg !4574
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !4575
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4576
  %i2c_props1 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !4577
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props1, i32 0, i32 1, !dbg !4578
  store %struct.i2c_adapter* %7, %struct.i2c_adapter** %adap, align 8, !dbg !4579
  %9 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4580
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %9, i32 0, i32 0, !dbg !4581
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 3, !dbg !4582
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %name, align 8, !dbg !4583
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4584
  %ctrl = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 2, !dbg !4585
  %xtal_freq = getelementptr inbounds %struct.tea5767_ctrl, %struct.tea5767_ctrl* %ctrl, i32 0, i32 1, !dbg !4586
  store i32 1, i32* %xtal_freq, align 4, !dbg !4587
  %11 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4588
  %ctrl3 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %11, i32 0, i32 2, !dbg !4589
  %12 = bitcast %struct.tea5767_ctrl* %ctrl3 to i8*, !dbg !4590
  %bf.load = load i8, i8* %12, align 4, !dbg !4591
  %bf.clear = and i8 %bf.load, -2, !dbg !4591
  %bf.set = or i8 %bf.clear, 1, !dbg !4591
  store i8 %bf.set, i8* %12, align 4, !dbg !4591
  %13 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4592
  %ctrl4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %13, i32 0, i32 2, !dbg !4593
  %14 = bitcast %struct.tea5767_ctrl* %ctrl4 to i8*, !dbg !4594
  %bf.load5 = load i8, i8* %14, align 4, !dbg !4595
  %bf.clear6 = and i8 %bf.load5, -3, !dbg !4595
  %bf.set7 = or i8 %bf.clear6, 2, !dbg !4595
  store i8 %bf.set7, i8* %14, align 4, !dbg !4595
  %15 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4596
  %ctrl8 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %15, i32 0, i32 2, !dbg !4597
  %16 = bitcast %struct.tea5767_ctrl* %ctrl8 to i8*, !dbg !4598
  %bf.load9 = load i8, i8* %16, align 4, !dbg !4599
  %bf.clear10 = and i8 %bf.load9, -5, !dbg !4599
  %bf.set11 = or i8 %bf.clear10, 4, !dbg !4599
  store i8 %bf.set11, i8* %16, align 4, !dbg !4599
  %17 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4600
  %ctrl12 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %17, i32 0, i32 2, !dbg !4601
  %18 = bitcast %struct.tea5767_ctrl* %ctrl12 to i8*, !dbg !4602
  %bf.load13 = load i8, i8* %18, align 4, !dbg !4603
  %bf.clear14 = and i8 %bf.load13, -9, !dbg !4603
  %bf.set15 = or i8 %bf.clear14, 8, !dbg !4603
  store i8 %bf.set15, i8* %18, align 4, !dbg !4603
  %19 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4604
  %ctrl16 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %19, i32 0, i32 2, !dbg !4605
  %20 = bitcast %struct.tea5767_ctrl* %ctrl16 to i8*, !dbg !4606
  %bf.load17 = load i8, i8* %20, align 4, !dbg !4607
  %bf.clear18 = and i8 %bf.load17, -33, !dbg !4607
  %bf.set19 = or i8 %bf.clear18, 32, !dbg !4607
  store i8 %bf.set19, i8* %20, align 4, !dbg !4607
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4608
  %ops = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %21, i32 0, i32 1, !dbg !4609
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend_ops, %struct.dvb_frontend_ops* %ops, i32 0, i32 30, !dbg !4610
  %22 = bitcast %struct.dvb_tuner_ops* %tuner_ops to i8*, !dbg !4611
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 getelementptr inbounds (%struct.dvb_tuner_ops, %struct.dvb_tuner_ops* @tea5767_tuner_ops, i32 0, i32 0, i32 0, i32 0), i64 288, i1 false), !dbg !4611
  br label %do.body, !dbg !4612

do.body:                                          ; preds = %if.end
  br label %do.body20, !dbg !4613

do.body20:                                        ; preds = %do.body
  %23 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4615
  %i2c_props21 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %23, i32 0, i32 0, !dbg !4615
  %name22 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props21, i32 0, i32 3, !dbg !4615
  %24 = load i8*, i8** %name22, align 8, !dbg !4615
  %25 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4615
  %i2c_props23 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %25, i32 0, i32 0, !dbg !4615
  %adap24 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props23, i32 0, i32 1, !dbg !4615
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap24, align 8, !dbg !4615
  %tobool = icmp ne %struct.i2c_adapter* %26, null, !dbg !4615
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4615

cond.true:                                        ; preds = %do.body20
  %27 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4615
  %i2c_props25 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %27, i32 0, i32 0, !dbg !4615
  %adap26 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props25, i32 0, i32 1, !dbg !4615
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap26, align 8, !dbg !4615
  %call27 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %28) #8, !dbg !4615
  br label %cond.end, !dbg !4615

cond.false:                                       ; preds = %do.body20
  br label %cond.end, !dbg !4615

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call27, %cond.true ], [ -1, %cond.false ], !dbg !4615
  %29 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !4615
  %i2c_props28 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %29, i32 0, i32 0, !dbg !4615
  %addr29 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props28, i32 0, i32 0, !dbg !4615
  %30 = load i8, i8* %addr29, align 8, !dbg !4615
  %conv = zext i8 %30 to i32, !dbg !4615
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %24, i32 %cond, i32 %conv, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !4615
  br label %do.end, !dbg !4615

do.end:                                           ; preds = %cond.end
  br label %do.end31, !dbg !4613

do.end31:                                         ; preds = %do.end
  %31 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4617
  store %struct.dvb_frontend* %31, %struct.dvb_frontend** %retval, align 8, !dbg !4618
  br label %return, !dbg !4618

return:                                           ; preds = %do.end31, %if.then
  %32 = load %struct.dvb_frontend*, %struct.dvb_frontend** %retval, align 8, !dbg !4619
  ret %struct.dvb_frontend* %32, !dbg !4619
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4620 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4623, metadata !DIExpression()), !dbg !4627
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4633, metadata !DIExpression()), !dbg !4634
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4635, metadata !DIExpression()), !dbg !4636
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4637, metadata !DIExpression()), !dbg !4638
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4639, metadata !DIExpression()), !dbg !4643
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4645, metadata !DIExpression()), !dbg !4649
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4651, metadata !DIExpression()), !dbg !4655
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4660, metadata !DIExpression()), !dbg !4661
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4662, metadata !DIExpression()), !dbg !4663
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4664, metadata !DIExpression()), !dbg !4665
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4666, metadata !DIExpression()), !dbg !4667
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4668, metadata !DIExpression()), !dbg !4669
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4670, metadata !DIExpression()), !dbg !4671
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4672, metadata !DIExpression()), !dbg !4673
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4674, metadata !DIExpression()), !dbg !4675
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4676, metadata !DIExpression()), !dbg !4677
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4678, metadata !DIExpression()), !dbg !4679
  %0 = load i64, i64* %size.addr, align 8, !dbg !4680
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4681
  %or = or i32 %1, 256, !dbg !4682
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4683
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4684
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4685

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4686
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4687
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4688

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4689
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4690
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4691
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4692
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4669
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4693
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4694
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4695
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4696
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4697
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4698
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4699
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4699
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4699
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4699
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4699
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4700
  br label %kmalloc.exit, !dbg !4700

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4701
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4702
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4702
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4704

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4705
  br label %kmalloc_index.exit.i, !dbg !4705

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4706
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4708
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4709

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4710
  br label %kmalloc_index.exit.i, !dbg !4710

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4711
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4713
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4714

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4715
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4716
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4717

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4718
  br label %kmalloc_index.exit.i, !dbg !4718

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4719
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4721
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4722

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4723
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4724
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4725

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4726
  br label %kmalloc_index.exit.i, !dbg !4726

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4727
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4729
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4730

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4731
  br label %kmalloc_index.exit.i, !dbg !4731

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4732
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4734
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4735

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4736
  br label %kmalloc_index.exit.i, !dbg !4736

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4737
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4739
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4740

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4741
  br label %kmalloc_index.exit.i, !dbg !4741

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4742
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4744
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4745

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4746
  br label %kmalloc_index.exit.i, !dbg !4746

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4747
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4749
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4750

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4751
  br label %kmalloc_index.exit.i, !dbg !4751

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4752
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4754
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4755

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4756
  br label %kmalloc_index.exit.i, !dbg !4756

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4757
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4759
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4760

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4761
  br label %kmalloc_index.exit.i, !dbg !4761

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4762
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4764
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4765

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4766
  br label %kmalloc_index.exit.i, !dbg !4766

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4767
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4769
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4770

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4771
  br label %kmalloc_index.exit.i, !dbg !4771

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4772
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4774
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4775

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4776
  br label %kmalloc_index.exit.i, !dbg !4776

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4777
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4779
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4780

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4781
  br label %kmalloc_index.exit.i, !dbg !4781

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4782
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4784
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4785

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4786
  br label %kmalloc_index.exit.i, !dbg !4786

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4787
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4789
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4790

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4791
  br label %kmalloc_index.exit.i, !dbg !4791

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4792
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4794
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4795

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4796
  br label %kmalloc_index.exit.i, !dbg !4796

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4797
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4799
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4800

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4801
  br label %kmalloc_index.exit.i, !dbg !4801

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4802
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4804
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4805

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4806
  br label %kmalloc_index.exit.i, !dbg !4806

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4807
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4809
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4810

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4811
  br label %kmalloc_index.exit.i, !dbg !4811

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4812
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4814
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4815

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4816
  br label %kmalloc_index.exit.i, !dbg !4816

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4817
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4819
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4820

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4821
  br label %kmalloc_index.exit.i, !dbg !4821

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4822
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4824
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4825

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4826
  br label %kmalloc_index.exit.i, !dbg !4826

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4827
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4829
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4830

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4831
  br label %kmalloc_index.exit.i, !dbg !4831

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4832
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4834
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4835

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4836
  br label %kmalloc_index.exit.i, !dbg !4836

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4837
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4839
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4840

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4841
  br label %kmalloc_index.exit.i, !dbg !4841

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4842
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4844
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4845

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4846
  br label %kmalloc_index.exit.i, !dbg !4846

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4847, !srcloc !4850
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 102) #10, !dbg !4851, !srcloc !4854
  unreachable, !dbg !4855

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4856
  store i32 %45, i32* %index.i, align 4, !dbg !4857
  %46 = load i32, i32* %index.i, align 4, !dbg !4858
  %tobool.i = icmp ne i32 %46, 0, !dbg !4858
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4860

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4861
  br label %kmalloc.exit, !dbg !4861

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4862
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4863
  %and.i.i = and i32 %48, 17, !dbg !4863
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4863
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4863
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4863
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4863
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4865

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4866
  br label %kmalloc_type.exit.i, !dbg !4866

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4867
  %and2.i.i = and i32 %49, 1, !dbg !4868
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4867
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4867
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4867
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4869
  br label %kmalloc_type.exit.i, !dbg !4869

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4870
  %idxprom.i = zext i32 %51 to i64, !dbg !4871
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4871
  %52 = load i32, i32* %index.i, align 4, !dbg !4872
  %idxprom6.i = zext i32 %52 to i64, !dbg !4871
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4871
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4871
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4873
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4874
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4875
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4876
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4877
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4877
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4877
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4877
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4877
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4638
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4878
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4879
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4880
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4881
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4882
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4883
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4884
  store i8* %62, i8** %retval.i, align 8, !dbg !4885
  br label %kmalloc.exit, !dbg !4885

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4886
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4887
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4888
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4888
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4888
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4888
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4888
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4889
  br label %kmalloc.exit, !dbg !4889

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4890
  ret i8* %65, !dbg !4891
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_id(%struct.i2c_adapter* %adap) #0 !dbg !4892 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !4893, metadata !DIExpression()), !dbg !4894
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !4895
  %nr = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 11, !dbg !4896
  %1 = load i32, i32* %nr, align 8, !dbg !4896
  ret i32 %1, !dbg !4897
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #4

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4898 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4902, metadata !DIExpression()), !dbg !4907
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4909, metadata !DIExpression()), !dbg !4910
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4911, metadata !DIExpression()), !dbg !4912
  %0 = load i64, i64* %size.addr, align 8, !dbg !4913
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4915
  br i1 %1, label %if.then, label %if.end447, !dbg !4916

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4917
  %tobool = icmp ne i64 %2, 0, !dbg !4917
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4920

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4921
  br label %return, !dbg !4921

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4922
  %cmp = icmp ult i64 %3, 4096, !dbg !4924
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4925

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4926
  br label %return, !dbg !4926

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub = sub i64 %4, 1, !dbg !4927
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4927
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4927

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub4 = sub i64 %6, 1, !dbg !4927
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4927
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4927

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub6 = sub i64 %8, 1, !dbg !4927
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4927
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4927

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4927

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub9 = sub i64 %9, 1, !dbg !4927
  %and = and i64 %sub9, -9223372036854775808, !dbg !4927
  %tobool10 = icmp ne i64 %and, 0, !dbg !4927
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4927

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4927

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub13 = sub i64 %10, 1, !dbg !4927
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4927
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4927
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4927

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4927

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub18 = sub i64 %11, 1, !dbg !4927
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4927
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4927
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4927

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4927

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub23 = sub i64 %12, 1, !dbg !4927
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4927
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4927
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4927

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4927

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub28 = sub i64 %13, 1, !dbg !4927
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4927
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4927
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4927

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4927

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub33 = sub i64 %14, 1, !dbg !4927
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4927
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4927
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4927

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4927

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub38 = sub i64 %15, 1, !dbg !4927
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4927
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4927
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4927

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4927

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub43 = sub i64 %16, 1, !dbg !4927
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4927
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4927
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4927

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4927

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub48 = sub i64 %17, 1, !dbg !4927
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4927
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4927
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4927

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4927

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub53 = sub i64 %18, 1, !dbg !4927
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4927
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4927
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4927

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4927

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub58 = sub i64 %19, 1, !dbg !4927
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4927
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4927
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4927

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4927

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub63 = sub i64 %20, 1, !dbg !4927
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4927
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4927
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4927

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4927

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub68 = sub i64 %21, 1, !dbg !4927
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4927
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4927
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4927

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4927

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub73 = sub i64 %22, 1, !dbg !4927
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4927
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4927
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4927

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4927

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub78 = sub i64 %23, 1, !dbg !4927
  %and79 = and i64 %sub78, 562949953421312, !dbg !4927
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4927
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4927

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4927

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub83 = sub i64 %24, 1, !dbg !4927
  %and84 = and i64 %sub83, 281474976710656, !dbg !4927
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4927
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4927

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4927

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub88 = sub i64 %25, 1, !dbg !4927
  %and89 = and i64 %sub88, 140737488355328, !dbg !4927
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4927
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4927

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4927

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub93 = sub i64 %26, 1, !dbg !4927
  %and94 = and i64 %sub93, 70368744177664, !dbg !4927
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4927
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4927

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4927

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub98 = sub i64 %27, 1, !dbg !4927
  %and99 = and i64 %sub98, 35184372088832, !dbg !4927
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4927
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4927

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4927

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub103 = sub i64 %28, 1, !dbg !4927
  %and104 = and i64 %sub103, 17592186044416, !dbg !4927
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4927
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4927

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4927

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub108 = sub i64 %29, 1, !dbg !4927
  %and109 = and i64 %sub108, 8796093022208, !dbg !4927
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4927
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4927

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4927

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub113 = sub i64 %30, 1, !dbg !4927
  %and114 = and i64 %sub113, 4398046511104, !dbg !4927
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4927
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4927

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4927

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub118 = sub i64 %31, 1, !dbg !4927
  %and119 = and i64 %sub118, 2199023255552, !dbg !4927
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4927
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4927

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4927

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub123 = sub i64 %32, 1, !dbg !4927
  %and124 = and i64 %sub123, 1099511627776, !dbg !4927
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4927
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4927

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4927

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub128 = sub i64 %33, 1, !dbg !4927
  %and129 = and i64 %sub128, 549755813888, !dbg !4927
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4927
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4927

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4927

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub133 = sub i64 %34, 1, !dbg !4927
  %and134 = and i64 %sub133, 274877906944, !dbg !4927
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4927
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4927

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4927

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub138 = sub i64 %35, 1, !dbg !4927
  %and139 = and i64 %sub138, 137438953472, !dbg !4927
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4927
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4927

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4927

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub143 = sub i64 %36, 1, !dbg !4927
  %and144 = and i64 %sub143, 68719476736, !dbg !4927
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4927
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4927

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4927

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub148 = sub i64 %37, 1, !dbg !4927
  %and149 = and i64 %sub148, 34359738368, !dbg !4927
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4927
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4927

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4927

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub153 = sub i64 %38, 1, !dbg !4927
  %and154 = and i64 %sub153, 17179869184, !dbg !4927
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4927
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4927

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4927

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub158 = sub i64 %39, 1, !dbg !4927
  %and159 = and i64 %sub158, 8589934592, !dbg !4927
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4927
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4927

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4927

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub163 = sub i64 %40, 1, !dbg !4927
  %and164 = and i64 %sub163, 4294967296, !dbg !4927
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4927
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4927

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4927

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub168 = sub i64 %41, 1, !dbg !4927
  %and169 = and i64 %sub168, 2147483648, !dbg !4927
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4927
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4927

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4927

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub173 = sub i64 %42, 1, !dbg !4927
  %and174 = and i64 %sub173, 1073741824, !dbg !4927
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4927
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4927

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4927

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub178 = sub i64 %43, 1, !dbg !4927
  %and179 = and i64 %sub178, 536870912, !dbg !4927
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4927
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4927

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4927

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub183 = sub i64 %44, 1, !dbg !4927
  %and184 = and i64 %sub183, 268435456, !dbg !4927
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4927
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4927

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4927

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub188 = sub i64 %45, 1, !dbg !4927
  %and189 = and i64 %sub188, 134217728, !dbg !4927
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4927
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4927

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4927

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub193 = sub i64 %46, 1, !dbg !4927
  %and194 = and i64 %sub193, 67108864, !dbg !4927
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4927
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4927

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4927

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub198 = sub i64 %47, 1, !dbg !4927
  %and199 = and i64 %sub198, 33554432, !dbg !4927
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4927
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4927

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4927

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub203 = sub i64 %48, 1, !dbg !4927
  %and204 = and i64 %sub203, 16777216, !dbg !4927
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4927
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4927

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4927

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub208 = sub i64 %49, 1, !dbg !4927
  %and209 = and i64 %sub208, 8388608, !dbg !4927
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4927
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4927

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4927

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub213 = sub i64 %50, 1, !dbg !4927
  %and214 = and i64 %sub213, 4194304, !dbg !4927
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4927
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4927

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4927

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub218 = sub i64 %51, 1, !dbg !4927
  %and219 = and i64 %sub218, 2097152, !dbg !4927
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4927
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4927

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4927

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub223 = sub i64 %52, 1, !dbg !4927
  %and224 = and i64 %sub223, 1048576, !dbg !4927
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4927
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4927

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4927

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub228 = sub i64 %53, 1, !dbg !4927
  %and229 = and i64 %sub228, 524288, !dbg !4927
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4927
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4927

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4927

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub233 = sub i64 %54, 1, !dbg !4927
  %and234 = and i64 %sub233, 262144, !dbg !4927
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4927
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4927

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4927

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub238 = sub i64 %55, 1, !dbg !4927
  %and239 = and i64 %sub238, 131072, !dbg !4927
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4927
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4927

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4927

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub243 = sub i64 %56, 1, !dbg !4927
  %and244 = and i64 %sub243, 65536, !dbg !4927
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4927
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4927

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4927

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub248 = sub i64 %57, 1, !dbg !4927
  %and249 = and i64 %sub248, 32768, !dbg !4927
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4927
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4927

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4927

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub253 = sub i64 %58, 1, !dbg !4927
  %and254 = and i64 %sub253, 16384, !dbg !4927
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4927
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4927

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4927

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub258 = sub i64 %59, 1, !dbg !4927
  %and259 = and i64 %sub258, 8192, !dbg !4927
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4927
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4927

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4927

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub263 = sub i64 %60, 1, !dbg !4927
  %and264 = and i64 %sub263, 4096, !dbg !4927
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4927
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4927

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4927

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub268 = sub i64 %61, 1, !dbg !4927
  %and269 = and i64 %sub268, 2048, !dbg !4927
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4927
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4927

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4927

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub273 = sub i64 %62, 1, !dbg !4927
  %and274 = and i64 %sub273, 1024, !dbg !4927
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4927
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4927

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4927

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub278 = sub i64 %63, 1, !dbg !4927
  %and279 = and i64 %sub278, 512, !dbg !4927
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4927
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4927

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4927

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub283 = sub i64 %64, 1, !dbg !4927
  %and284 = and i64 %sub283, 256, !dbg !4927
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4927
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4927

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4927

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub288 = sub i64 %65, 1, !dbg !4927
  %and289 = and i64 %sub288, 128, !dbg !4927
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4927
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4927

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4927

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub293 = sub i64 %66, 1, !dbg !4927
  %and294 = and i64 %sub293, 64, !dbg !4927
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4927
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4927

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4927

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub298 = sub i64 %67, 1, !dbg !4927
  %and299 = and i64 %sub298, 32, !dbg !4927
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4927
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4927

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4927

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub303 = sub i64 %68, 1, !dbg !4927
  %and304 = and i64 %sub303, 16, !dbg !4927
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4927
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4927

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4927

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub308 = sub i64 %69, 1, !dbg !4927
  %and309 = and i64 %sub308, 8, !dbg !4927
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4927
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4927

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4927

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub313 = sub i64 %70, 1, !dbg !4927
  %and314 = and i64 %sub313, 4, !dbg !4927
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4927
  %71 = zext i1 %tobool315 to i64, !dbg !4927
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4927
  br label %cond.end, !dbg !4927

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4927
  br label %cond.end317, !dbg !4927

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4927
  br label %cond.end319, !dbg !4927

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4927
  br label %cond.end321, !dbg !4927

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4927
  br label %cond.end323, !dbg !4927

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4927
  br label %cond.end325, !dbg !4927

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4927
  br label %cond.end327, !dbg !4927

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4927
  br label %cond.end329, !dbg !4927

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4927
  br label %cond.end331, !dbg !4927

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4927
  br label %cond.end333, !dbg !4927

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4927
  br label %cond.end335, !dbg !4927

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4927
  br label %cond.end337, !dbg !4927

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4927
  br label %cond.end339, !dbg !4927

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4927
  br label %cond.end341, !dbg !4927

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4927
  br label %cond.end343, !dbg !4927

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4927
  br label %cond.end345, !dbg !4927

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4927
  br label %cond.end347, !dbg !4927

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4927
  br label %cond.end349, !dbg !4927

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4927
  br label %cond.end351, !dbg !4927

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4927
  br label %cond.end353, !dbg !4927

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4927
  br label %cond.end355, !dbg !4927

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4927
  br label %cond.end357, !dbg !4927

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4927
  br label %cond.end359, !dbg !4927

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4927
  br label %cond.end361, !dbg !4927

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4927
  br label %cond.end363, !dbg !4927

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4927
  br label %cond.end365, !dbg !4927

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4927
  br label %cond.end367, !dbg !4927

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4927
  br label %cond.end369, !dbg !4927

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4927
  br label %cond.end371, !dbg !4927

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4927
  br label %cond.end373, !dbg !4927

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4927
  br label %cond.end375, !dbg !4927

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4927
  br label %cond.end377, !dbg !4927

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4927
  br label %cond.end379, !dbg !4927

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4927
  br label %cond.end381, !dbg !4927

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4927
  br label %cond.end383, !dbg !4927

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4927
  br label %cond.end385, !dbg !4927

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4927
  br label %cond.end387, !dbg !4927

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4927
  br label %cond.end389, !dbg !4927

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4927
  br label %cond.end391, !dbg !4927

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4927
  br label %cond.end393, !dbg !4927

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4927
  br label %cond.end395, !dbg !4927

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4927
  br label %cond.end397, !dbg !4927

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4927
  br label %cond.end399, !dbg !4927

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4927
  br label %cond.end401, !dbg !4927

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4927
  br label %cond.end403, !dbg !4927

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4927
  br label %cond.end405, !dbg !4927

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4927
  br label %cond.end407, !dbg !4927

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4927
  br label %cond.end409, !dbg !4927

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4927
  br label %cond.end411, !dbg !4927

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4927
  br label %cond.end413, !dbg !4927

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4927
  br label %cond.end415, !dbg !4927

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4927
  br label %cond.end417, !dbg !4927

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4927
  br label %cond.end419, !dbg !4927

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4927
  br label %cond.end421, !dbg !4927

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4927
  br label %cond.end423, !dbg !4927

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4927
  br label %cond.end425, !dbg !4927

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4927
  br label %cond.end427, !dbg !4927

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4927
  br label %cond.end429, !dbg !4927

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4927
  br label %cond.end431, !dbg !4927

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4927
  br label %cond.end433, !dbg !4927

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4927
  br label %cond.end435, !dbg !4927

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4927
  br label %cond.end437, !dbg !4927

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4927
  br label %cond.end440, !dbg !4927

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4927

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4927
  br label %cond.end444, !dbg !4927

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4927
  %sub443 = sub i64 %72, 1, !dbg !4927
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4927
  br label %cond.end444, !dbg !4927

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4927
  %sub446 = sub i32 %cond445, 12, !dbg !4928
  %add = add i32 %sub446, 1, !dbg !4929
  store i32 %add, i32* %retval, align 4, !dbg !4930
  br label %return, !dbg !4930

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4931
  %dec = add i64 %73, -1, !dbg !4931
  store i64 %dec, i64* %size.addr, align 8, !dbg !4931
  %74 = load i64, i64* %size.addr, align 8, !dbg !4932
  %shr = lshr i64 %74, 12, !dbg !4932
  store i64 %shr, i64* %size.addr, align 8, !dbg !4932
  %75 = load i64, i64* %size.addr, align 8, !dbg !4933
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4910
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4934
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4935
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4934, !srcloc !4936
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4934
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4937
  %add.i = add i32 %79, 1, !dbg !4938
  store i32 %add.i, i32* %retval, align 4, !dbg !4939
  br label %return, !dbg !4939

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4940
  ret i32 %80, !dbg !4940
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4941 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4902, metadata !DIExpression()), !dbg !4945
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4909, metadata !DIExpression()), !dbg !4947
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4948, metadata !DIExpression()), !dbg !4949
  %0 = load i64, i64* %n.addr, align 8, !dbg !4950
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4947
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4951
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4952
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4951, !srcloc !4936
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4951
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4953
  %add.i = add i32 %4, 1, !dbg !4954
  %sub = sub i32 %add.i, 1, !dbg !4955
  ret i32 %sub, !dbg !4956
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4957 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4961, metadata !DIExpression()), !dbg !4962
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4963, metadata !DIExpression()), !dbg !4964
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4969
  ret i8* %0, !dbg !4970
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tea5767_release(%struct.dvb_frontend* %fe) #0 !dbg !4971 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4974
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4975
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4975
  call void @kfree(i8* %1) #8, !dbg !4976
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4977
  %tuner_priv1 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %2, i32 0, i32 4, !dbg !4978
  store i8* null, i8** %tuner_priv1, align 8, !dbg !4979
  ret void, !dbg !4980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_standby(%struct.dvb_frontend* %fe) #0 !dbg !4981 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buffer = alloca [5 x i8], align 1
  %priv = alloca %struct.tea5767_priv*, align 8
  %div = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata [5 x i8]* %buffer, metadata !4984, metadata !DIExpression()), !dbg !4988
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !4989, metadata !DIExpression()), !dbg !4990
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !4991
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !4992
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !4992
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !4991
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !4990
  call void @llvm.dbg.declare(metadata i32* %div, metadata !4993, metadata !DIExpression()), !dbg !4994
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4995, metadata !DIExpression()), !dbg !4996
  store i32 7019, i32* %div, align 4, !dbg !4997
  %3 = load i32, i32* %div, align 4, !dbg !4998
  %shr = lshr i32 %3, 8, !dbg !4999
  %and = and i32 %shr, 63, !dbg !5000
  %conv = trunc i32 %and to i8, !dbg !5001
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5002
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5003
  %4 = load i32, i32* %div, align 4, !dbg !5004
  %and1 = and i32 %4, 255, !dbg !5005
  %conv2 = trunc i32 %and1 to i8, !dbg !5004
  %arrayidx3 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 1, !dbg !5006
  store i8 %conv2, i8* %arrayidx3, align 1, !dbg !5007
  %arrayidx4 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5008
  store i8 1, i8* %arrayidx4, align 1, !dbg !5009
  %arrayidx5 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5010
  store i8 -26, i8* %arrayidx5, align 1, !dbg !5011
  %arrayidx6 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 4, !dbg !5012
  store i8 0, i8* %arrayidx6, align 1, !dbg !5013
  %5 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5014
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %5, i32 0, i32 0, !dbg !5016
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5017
  %call = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %i2c_props, i8* %arraydecay, i32 5) #8, !dbg !5018
  store i32 %call, i32* %rc, align 4, !dbg !5019
  %cmp = icmp ne i32 5, %call, !dbg !5020
  br i1 %cmp, label %if.then, label %if.end, !dbg !5021

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5022

do.body:                                          ; preds = %if.then
  br label %do.body8, !dbg !5023

do.body8:                                         ; preds = %do.body
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5025
  %i2c_props9 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5025
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props9, i32 0, i32 3, !dbg !5025
  %7 = load i8*, i8** %name, align 8, !dbg !5025
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5025
  %i2c_props10 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5025
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props10, i32 0, i32 1, !dbg !5025
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5025
  %tobool = icmp ne %struct.i2c_adapter* %9, null, !dbg !5025
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5025

cond.true:                                        ; preds = %do.body8
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5025
  %i2c_props11 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5025
  %adap12 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props11, i32 0, i32 1, !dbg !5025
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap12, align 8, !dbg !5025
  %call13 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !5025
  br label %cond.end, !dbg !5025

cond.false:                                       ; preds = %do.body8
  br label %cond.end, !dbg !5025

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call13, %cond.true ], [ -1, %cond.false ], !dbg !5025
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5025
  %i2c_props14 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5025
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props14, i32 0, i32 0, !dbg !5025
  %13 = load i8, i8* %addr, align 8, !dbg !5025
  %conv15 = zext i8 %13 to i32, !dbg !5025
  %14 = load i32, i32* %rc, align 4, !dbg !5025
  %call16 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %7, i32 %cond, i32 %conv15, i32 %14) #9, !dbg !5025
  br label %do.end, !dbg !5025

do.end:                                           ; preds = %cond.end
  br label %do.end17, !dbg !5023

do.end17:                                         ; preds = %do.end
  br label %if.end, !dbg !5023

if.end:                                           ; preds = %do.end17, %entry
  ret i32 0, !dbg !5027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_radio_freq(%struct.dvb_frontend* %fe, %struct.analog_parameters* %params) #0 !dbg !5028 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %params.addr = alloca %struct.analog_parameters*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  %frq = alloca i32, align 4
  %buffer = alloca [5 x i8], align 1
  %div = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  store %struct.analog_parameters* %params, %struct.analog_parameters** %params.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.analog_parameters** %params.addr, metadata !5031, metadata !DIExpression()), !dbg !5032
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5033, metadata !DIExpression()), !dbg !5034
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5035
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5036
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5036
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5035
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5034
  call void @llvm.dbg.declare(metadata i32* %frq, metadata !5037, metadata !DIExpression()), !dbg !5038
  %3 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5039
  %frequency = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %3, i32 0, i32 0, !dbg !5040
  %4 = load i32, i32* %frequency, align 8, !dbg !5040
  store i32 %4, i32* %frq, align 4, !dbg !5038
  call void @llvm.dbg.declare(metadata [5 x i8]* %buffer, metadata !5041, metadata !DIExpression()), !dbg !5042
  call void @llvm.dbg.declare(metadata i32* %div, metadata !5043, metadata !DIExpression()), !dbg !5044
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5045, metadata !DIExpression()), !dbg !5046
  br label %do.body, !dbg !5047

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5048
  %tobool = icmp ne i32 %5, 0, !dbg !5048
  br i1 %tobool, label %if.then, label %if.end, !dbg !5051

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !5048

do.body1:                                         ; preds = %if.then
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5052
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5052
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5052
  %7 = load i8*, i8** %name, align 8, !dbg !5052
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5052
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5052
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5052
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5052
  %tobool3 = icmp ne %struct.i2c_adapter* %9, null, !dbg !5052
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5052

cond.true:                                        ; preds = %do.body1
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5052
  %i2c_props4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5052
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5052
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5052
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !5052
  br label %cond.end, !dbg !5052

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5052

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5052
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5052
  %i2c_props6 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5052
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props6, i32 0, i32 0, !dbg !5052
  %13 = load i8, i8* %addr, align 8, !dbg !5052
  %conv = zext i8 %13 to i32, !dbg !5052
  %14 = load i32, i32* %frq, align 4, !dbg !5052
  %div7 = udiv i32 %14, 16000, !dbg !5052
  %15 = load i32, i32* %frq, align 4, !dbg !5052
  %div8 = udiv i32 %15, 16, !dbg !5052
  %rem = urem i32 %div8, 1000, !dbg !5052
  %call9 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* %7, i32 %cond, i32 %conv, i32 %div7, i32 %rem) #9, !dbg !5052
  br label %do.end, !dbg !5052

do.end:                                           ; preds = %cond.end
  br label %if.end, !dbg !5052

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end10, !dbg !5051

do.end10:                                         ; preds = %if.end
  %arrayidx = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5054
  store i8 0, i8* %arrayidx, align 1, !dbg !5055
  %16 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5056
  %ctrl = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %16, i32 0, i32 2, !dbg !5058
  %17 = bitcast %struct.tea5767_ctrl* %ctrl to i8*, !dbg !5059
  %bf.load = load i8, i8* %17, align 4, !dbg !5059
  %bf.clear = and i8 %bf.load, 1, !dbg !5059
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5059
  %tobool11 = icmp ne i32 %bf.cast, 0, !dbg !5056
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5060

if.then12:                                        ; preds = %do.end10
  %arrayidx13 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5061
  %18 = load i8, i8* %arrayidx13, align 1, !dbg !5062
  %conv14 = zext i8 %18 to i32, !dbg !5062
  %or = or i32 %conv14, 1, !dbg !5062
  %conv15 = trunc i32 %or to i8, !dbg !5062
  store i8 %conv15, i8* %arrayidx13, align 1, !dbg !5062
  br label %if.end16, !dbg !5061

if.end16:                                         ; preds = %if.then12, %do.end10
  %19 = load %struct.analog_parameters*, %struct.analog_parameters** %params.addr, align 8, !dbg !5063
  %audmode = getelementptr inbounds %struct.analog_parameters, %struct.analog_parameters* %19, i32 0, i32 2, !dbg !5065
  %20 = load i32, i32* %audmode, align 8, !dbg !5065
  %cmp = icmp eq i32 %20, 0, !dbg !5066
  br i1 %cmp, label %if.then18, label %if.else, !dbg !5067

if.then18:                                        ; preds = %if.end16
  br label %do.body19, !dbg !5068

do.body19:                                        ; preds = %if.then18
  %21 = load i32, i32* @debug, align 4, !dbg !5070
  %tobool20 = icmp ne i32 %21, 0, !dbg !5070
  br i1 %tobool20, label %if.then21, label %if.end40, !dbg !5073

if.then21:                                        ; preds = %do.body19
  br label %do.body22, !dbg !5070

do.body22:                                        ; preds = %if.then21
  %22 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5074
  %i2c_props23 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %22, i32 0, i32 0, !dbg !5074
  %name24 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props23, i32 0, i32 3, !dbg !5074
  %23 = load i8*, i8** %name24, align 8, !dbg !5074
  %24 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5074
  %i2c_props25 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %24, i32 0, i32 0, !dbg !5074
  %adap26 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props25, i32 0, i32 1, !dbg !5074
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap26, align 8, !dbg !5074
  %tobool27 = icmp ne %struct.i2c_adapter* %25, null, !dbg !5074
  br i1 %tobool27, label %cond.true28, label %cond.false32, !dbg !5074

cond.true28:                                      ; preds = %do.body22
  %26 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5074
  %i2c_props29 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %26, i32 0, i32 0, !dbg !5074
  %adap30 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props29, i32 0, i32 1, !dbg !5074
  %27 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap30, align 8, !dbg !5074
  %call31 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %27) #8, !dbg !5074
  br label %cond.end33, !dbg !5074

cond.false32:                                     ; preds = %do.body22
  br label %cond.end33, !dbg !5074

cond.end33:                                       ; preds = %cond.false32, %cond.true28
  %cond34 = phi i32 [ %call31, %cond.true28 ], [ -1, %cond.false32 ], !dbg !5074
  %28 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5074
  %i2c_props35 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %28, i32 0, i32 0, !dbg !5074
  %addr36 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props35, i32 0, i32 0, !dbg !5074
  %29 = load i8, i8* %addr36, align 8, !dbg !5074
  %conv37 = zext i8 %29 to i32, !dbg !5074
  %call38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i8* %23, i32 %cond34, i32 %conv37) #9, !dbg !5074
  br label %do.end39, !dbg !5074

do.end39:                                         ; preds = %cond.end33
  br label %if.end40, !dbg !5074

if.end40:                                         ; preds = %do.end39, %do.body19
  br label %do.end41, !dbg !5073

do.end41:                                         ; preds = %if.end40
  %arrayidx42 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5076
  %30 = load i8, i8* %arrayidx42, align 1, !dbg !5077
  %conv43 = zext i8 %30 to i32, !dbg !5077
  %or44 = or i32 %conv43, 8, !dbg !5077
  %conv45 = trunc i32 %or44 to i8, !dbg !5077
  store i8 %conv45, i8* %arrayidx42, align 1, !dbg !5077
  br label %if.end69, !dbg !5078

if.else:                                          ; preds = %if.end16
  br label %do.body46, !dbg !5079

do.body46:                                        ; preds = %if.else
  %31 = load i32, i32* @debug, align 4, !dbg !5081
  %tobool47 = icmp ne i32 %31, 0, !dbg !5081
  br i1 %tobool47, label %if.then48, label %if.end67, !dbg !5084

if.then48:                                        ; preds = %do.body46
  br label %do.body49, !dbg !5081

do.body49:                                        ; preds = %if.then48
  %32 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5085
  %i2c_props50 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %32, i32 0, i32 0, !dbg !5085
  %name51 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props50, i32 0, i32 3, !dbg !5085
  %33 = load i8*, i8** %name51, align 8, !dbg !5085
  %34 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5085
  %i2c_props52 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %34, i32 0, i32 0, !dbg !5085
  %adap53 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props52, i32 0, i32 1, !dbg !5085
  %35 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap53, align 8, !dbg !5085
  %tobool54 = icmp ne %struct.i2c_adapter* %35, null, !dbg !5085
  br i1 %tobool54, label %cond.true55, label %cond.false59, !dbg !5085

cond.true55:                                      ; preds = %do.body49
  %36 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5085
  %i2c_props56 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %36, i32 0, i32 0, !dbg !5085
  %adap57 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props56, i32 0, i32 1, !dbg !5085
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap57, align 8, !dbg !5085
  %call58 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %37) #8, !dbg !5085
  br label %cond.end60, !dbg !5085

cond.false59:                                     ; preds = %do.body49
  br label %cond.end60, !dbg !5085

cond.end60:                                       ; preds = %cond.false59, %cond.true55
  %cond61 = phi i32 [ %call58, %cond.true55 ], [ -1, %cond.false59 ], !dbg !5085
  %38 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5085
  %i2c_props62 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %38, i32 0, i32 0, !dbg !5085
  %addr63 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props62, i32 0, i32 0, !dbg !5085
  %39 = load i8, i8* %addr63, align 8, !dbg !5085
  %conv64 = zext i8 %39 to i32, !dbg !5085
  %call65 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i8* %33, i32 %cond61, i32 %conv64) #9, !dbg !5085
  br label %do.end66, !dbg !5085

do.end66:                                         ; preds = %cond.end60
  br label %if.end67, !dbg !5085

if.end67:                                         ; preds = %do.end66, %do.body46
  br label %do.end68, !dbg !5084

do.end68:                                         ; preds = %if.end67
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %do.end41
  %arrayidx70 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5087
  store i8 0, i8* %arrayidx70, align 1, !dbg !5088
  %40 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5089
  %ctrl71 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %40, i32 0, i32 2, !dbg !5091
  %41 = bitcast %struct.tea5767_ctrl* %ctrl71 to i8*, !dbg !5092
  %bf.load72 = load i8, i8* %41, align 4, !dbg !5092
  %bf.lshr = lshr i8 %bf.load72, 1, !dbg !5092
  %bf.clear73 = and i8 %bf.lshr, 1, !dbg !5092
  %bf.cast74 = zext i8 %bf.clear73 to i32, !dbg !5092
  %tobool75 = icmp ne i32 %bf.cast74, 0, !dbg !5089
  br i1 %tobool75, label %if.then76, label %if.end81, !dbg !5093

if.then76:                                        ; preds = %if.end69
  %arrayidx77 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5094
  %42 = load i8, i8* %arrayidx77, align 1, !dbg !5095
  %conv78 = zext i8 %42 to i32, !dbg !5095
  %or79 = or i32 %conv78, 128, !dbg !5095
  %conv80 = trunc i32 %or79 to i8, !dbg !5095
  store i8 %conv80, i8* %arrayidx77, align 1, !dbg !5095
  br label %if.end81, !dbg !5094

if.end81:                                         ; preds = %if.then76, %if.end69
  %43 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5096
  %ctrl82 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %43, i32 0, i32 2, !dbg !5098
  %44 = bitcast %struct.tea5767_ctrl* %ctrl82 to i8*, !dbg !5099
  %bf.load83 = load i8, i8* %44, align 4, !dbg !5099
  %bf.lshr84 = lshr i8 %bf.load83, 2, !dbg !5099
  %bf.clear85 = and i8 %bf.lshr84, 1, !dbg !5099
  %bf.cast86 = zext i8 %bf.clear85 to i32, !dbg !5099
  %tobool87 = icmp ne i32 %bf.cast86, 0, !dbg !5096
  br i1 %tobool87, label %if.then88, label %if.end93, !dbg !5100

if.then88:                                        ; preds = %if.end81
  %arrayidx89 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5101
  %45 = load i8, i8* %arrayidx89, align 1, !dbg !5102
  %conv90 = zext i8 %45 to i32, !dbg !5102
  %or91 = or i32 %conv90, 4, !dbg !5102
  %conv92 = trunc i32 %or91 to i8, !dbg !5102
  store i8 %conv92, i8* %arrayidx89, align 1, !dbg !5102
  br label %if.end93, !dbg !5101

if.end93:                                         ; preds = %if.then88, %if.end81
  %46 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5103
  %ctrl94 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %46, i32 0, i32 2, !dbg !5105
  %47 = bitcast %struct.tea5767_ctrl* %ctrl94 to i8*, !dbg !5106
  %bf.load95 = load i8, i8* %47, align 4, !dbg !5106
  %bf.lshr96 = lshr i8 %bf.load95, 3, !dbg !5106
  %bf.clear97 = and i8 %bf.lshr96, 1, !dbg !5106
  %bf.cast98 = zext i8 %bf.clear97 to i32, !dbg !5106
  %tobool99 = icmp ne i32 %bf.cast98, 0, !dbg !5103
  br i1 %tobool99, label %if.then100, label %if.end105, !dbg !5107

if.then100:                                       ; preds = %if.end93
  %arrayidx101 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5108
  %48 = load i8, i8* %arrayidx101, align 1, !dbg !5109
  %conv102 = zext i8 %48 to i32, !dbg !5109
  %or103 = or i32 %conv102, 2, !dbg !5109
  %conv104 = trunc i32 %or103 to i8, !dbg !5109
  store i8 %conv104, i8* %arrayidx101, align 1, !dbg !5109
  br label %if.end105, !dbg !5108

if.end105:                                        ; preds = %if.then100, %if.end93
  %49 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5110
  %ctrl106 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %49, i32 0, i32 2, !dbg !5112
  %50 = bitcast %struct.tea5767_ctrl* %ctrl106 to i8*, !dbg !5113
  %bf.load107 = load i8, i8* %50, align 4, !dbg !5113
  %bf.lshr108 = lshr i8 %bf.load107, 4, !dbg !5113
  %bf.clear109 = and i8 %bf.lshr108, 1, !dbg !5113
  %bf.cast110 = zext i8 %bf.clear109 to i32, !dbg !5113
  %tobool111 = icmp ne i32 %bf.cast110, 0, !dbg !5110
  br i1 %tobool111, label %if.then112, label %if.end117, !dbg !5114

if.then112:                                       ; preds = %if.end105
  %arrayidx113 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5115
  %51 = load i8, i8* %arrayidx113, align 1, !dbg !5116
  %conv114 = zext i8 %51 to i32, !dbg !5116
  %or115 = or i32 %conv114, 8, !dbg !5116
  %conv116 = trunc i32 %or115 to i8, !dbg !5116
  store i8 %conv116, i8* %arrayidx113, align 1, !dbg !5116
  br label %if.end117, !dbg !5115

if.end117:                                        ; preds = %if.then112, %if.end105
  %52 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5117
  %ctrl118 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %52, i32 0, i32 2, !dbg !5119
  %53 = bitcast %struct.tea5767_ctrl* %ctrl118 to i8*, !dbg !5120
  %bf.load119 = load i8, i8* %53, align 4, !dbg !5120
  %bf.lshr120 = lshr i8 %bf.load119, 5, !dbg !5120
  %bf.clear121 = and i8 %bf.lshr120, 1, !dbg !5120
  %bf.cast122 = zext i8 %bf.clear121 to i32, !dbg !5120
  %tobool123 = icmp ne i32 %bf.cast122, 0, !dbg !5117
  br i1 %tobool123, label %if.then124, label %if.end129, !dbg !5121

if.then124:                                       ; preds = %if.end117
  %arrayidx125 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5122
  %54 = load i8, i8* %arrayidx125, align 1, !dbg !5123
  %conv126 = zext i8 %54 to i32, !dbg !5123
  %or127 = or i32 %conv126, 32, !dbg !5123
  %conv128 = trunc i32 %or127 to i8, !dbg !5123
  store i8 %conv128, i8* %arrayidx125, align 1, !dbg !5123
  br label %if.end129, !dbg !5122

if.end129:                                        ; preds = %if.then124, %if.end117
  %arrayidx130 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 4, !dbg !5124
  store i8 0, i8* %arrayidx130, align 1, !dbg !5125
  %55 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5126
  %ctrl131 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %55, i32 0, i32 2, !dbg !5128
  %56 = bitcast %struct.tea5767_ctrl* %ctrl131 to i8*, !dbg !5129
  %bf.load132 = load i8, i8* %56, align 4, !dbg !5129
  %bf.lshr133 = lshr i8 %bf.load132, 6, !dbg !5129
  %bf.clear134 = and i8 %bf.lshr133, 1, !dbg !5129
  %bf.cast135 = zext i8 %bf.clear134 to i32, !dbg !5129
  %tobool136 = icmp ne i32 %bf.cast135, 0, !dbg !5126
  br i1 %tobool136, label %if.then137, label %if.end142, !dbg !5130

if.then137:                                       ; preds = %if.end129
  %arrayidx138 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 4, !dbg !5131
  %57 = load i8, i8* %arrayidx138, align 1, !dbg !5132
  %conv139 = zext i8 %57 to i32, !dbg !5132
  %or140 = or i32 %conv139, 64, !dbg !5132
  %conv141 = trunc i32 %or140 to i8, !dbg !5132
  store i8 %conv141, i8* %arrayidx138, align 1, !dbg !5132
  br label %if.end142, !dbg !5131

if.end142:                                        ; preds = %if.then137, %if.end129
  %58 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5133
  %ctrl143 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %58, i32 0, i32 2, !dbg !5135
  %59 = bitcast %struct.tea5767_ctrl* %ctrl143 to i8*, !dbg !5136
  %bf.load144 = load i8, i8* %59, align 4, !dbg !5136
  %bf.lshr145 = lshr i8 %bf.load144, 7, !dbg !5136
  %bf.cast146 = zext i8 %bf.lshr145 to i32, !dbg !5136
  %tobool147 = icmp ne i32 %bf.cast146, 0, !dbg !5133
  br i1 %tobool147, label %if.then148, label %if.end153, !dbg !5137

if.then148:                                       ; preds = %if.end142
  %arrayidx149 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 4, !dbg !5138
  %60 = load i8, i8* %arrayidx149, align 1, !dbg !5139
  %conv150 = zext i8 %60 to i32, !dbg !5139
  %or151 = or i32 %conv150, 128, !dbg !5139
  %conv152 = trunc i32 %or151 to i8, !dbg !5139
  store i8 %conv152, i8* %arrayidx149, align 1, !dbg !5139
  br label %if.end153, !dbg !5138

if.end153:                                        ; preds = %if.then148, %if.end142
  %61 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5140
  %ctrl154 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %61, i32 0, i32 2, !dbg !5141
  %xtal_freq = getelementptr inbounds %struct.tea5767_ctrl, %struct.tea5767_ctrl* %ctrl154, i32 0, i32 1, !dbg !5142
  %62 = load i32, i32* %xtal_freq, align 4, !dbg !5142
  switch i32 %62, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb185
    i32 0, label %sw.bb213
    i32 1, label %sw.bb245
  ], !dbg !5143

sw.bb:                                            ; preds = %if.end153
  br label %do.body155, !dbg !5144

do.body155:                                       ; preds = %sw.bb
  %63 = load i32, i32* @debug, align 4, !dbg !5146
  %tobool156 = icmp ne i32 %63, 0, !dbg !5146
  br i1 %tobool156, label %if.then157, label %if.end176, !dbg !5149

if.then157:                                       ; preds = %do.body155
  br label %do.body158, !dbg !5146

do.body158:                                       ; preds = %if.then157
  %64 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5150
  %i2c_props159 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %64, i32 0, i32 0, !dbg !5150
  %name160 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props159, i32 0, i32 3, !dbg !5150
  %65 = load i8*, i8** %name160, align 8, !dbg !5150
  %66 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5150
  %i2c_props161 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %66, i32 0, i32 0, !dbg !5150
  %adap162 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props161, i32 0, i32 1, !dbg !5150
  %67 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap162, align 8, !dbg !5150
  %tobool163 = icmp ne %struct.i2c_adapter* %67, null, !dbg !5150
  br i1 %tobool163, label %cond.true164, label %cond.false168, !dbg !5150

cond.true164:                                     ; preds = %do.body158
  %68 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5150
  %i2c_props165 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %68, i32 0, i32 0, !dbg !5150
  %adap166 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props165, i32 0, i32 1, !dbg !5150
  %69 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap166, align 8, !dbg !5150
  %call167 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %69) #8, !dbg !5150
  br label %cond.end169, !dbg !5150

cond.false168:                                    ; preds = %do.body158
  br label %cond.end169, !dbg !5150

cond.end169:                                      ; preds = %cond.false168, %cond.true164
  %cond170 = phi i32 [ %call167, %cond.true164 ], [ -1, %cond.false168 ], !dbg !5150
  %70 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5150
  %i2c_props171 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %70, i32 0, i32 0, !dbg !5150
  %addr172 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props171, i32 0, i32 0, !dbg !5150
  %71 = load i8, i8* %addr172, align 8, !dbg !5150
  %conv173 = zext i8 %71 to i32, !dbg !5150
  %call174 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0), i8* %65, i32 %cond170, i32 %conv173) #9, !dbg !5150
  br label %do.end175, !dbg !5150

do.end175:                                        ; preds = %cond.end169
  br label %if.end176, !dbg !5150

if.end176:                                        ; preds = %do.end175, %do.body155
  br label %do.end177, !dbg !5149

do.end177:                                        ; preds = %if.end176
  %arrayidx178 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5152
  %72 = load i8, i8* %arrayidx178, align 1, !dbg !5153
  %conv179 = zext i8 %72 to i32, !dbg !5153
  %or180 = or i32 %conv179, 16, !dbg !5153
  %conv181 = trunc i32 %or180 to i8, !dbg !5153
  store i8 %conv181, i8* %arrayidx178, align 1, !dbg !5153
  %73 = load i32, i32* %frq, align 4, !dbg !5154
  %mul = mul i32 %73, 250, !dbg !5155
  %add = add i32 %mul, 700000, !dbg !5156
  %add182 = add i32 %add, 225000, !dbg !5157
  %add183 = add i32 %add182, 25000, !dbg !5158
  %div184 = udiv i32 %add183, 50000, !dbg !5159
  store i32 %div184, i32* %div, align 4, !dbg !5160
  br label %sw.epilog, !dbg !5161

sw.bb185:                                         ; preds = %if.end153
  br label %do.body186, !dbg !5162

do.body186:                                       ; preds = %sw.bb185
  %74 = load i32, i32* @debug, align 4, !dbg !5163
  %tobool187 = icmp ne i32 %74, 0, !dbg !5163
  br i1 %tobool187, label %if.then188, label %if.end207, !dbg !5166

if.then188:                                       ; preds = %do.body186
  br label %do.body189, !dbg !5163

do.body189:                                       ; preds = %if.then188
  %75 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5167
  %i2c_props190 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %75, i32 0, i32 0, !dbg !5167
  %name191 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props190, i32 0, i32 3, !dbg !5167
  %76 = load i8*, i8** %name191, align 8, !dbg !5167
  %77 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5167
  %i2c_props192 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %77, i32 0, i32 0, !dbg !5167
  %adap193 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props192, i32 0, i32 1, !dbg !5167
  %78 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap193, align 8, !dbg !5167
  %tobool194 = icmp ne %struct.i2c_adapter* %78, null, !dbg !5167
  br i1 %tobool194, label %cond.true195, label %cond.false199, !dbg !5167

cond.true195:                                     ; preds = %do.body189
  %79 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5167
  %i2c_props196 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %79, i32 0, i32 0, !dbg !5167
  %adap197 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props196, i32 0, i32 1, !dbg !5167
  %80 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap197, align 8, !dbg !5167
  %call198 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %80) #8, !dbg !5167
  br label %cond.end200, !dbg !5167

cond.false199:                                    ; preds = %do.body189
  br label %cond.end200, !dbg !5167

cond.end200:                                      ; preds = %cond.false199, %cond.true195
  %cond201 = phi i32 [ %call198, %cond.true195 ], [ -1, %cond.false199 ], !dbg !5167
  %81 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5167
  %i2c_props202 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %81, i32 0, i32 0, !dbg !5167
  %addr203 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props202, i32 0, i32 0, !dbg !5167
  %82 = load i8, i8* %addr203, align 8, !dbg !5167
  %conv204 = zext i8 %82 to i32, !dbg !5167
  %call205 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %76, i32 %cond201, i32 %conv204) #9, !dbg !5167
  br label %do.end206, !dbg !5167

do.end206:                                        ; preds = %cond.end200
  br label %if.end207, !dbg !5167

if.end207:                                        ; preds = %do.end206, %do.body186
  br label %do.end208, !dbg !5166

do.end208:                                        ; preds = %if.end207
  %83 = load i32, i32* %frq, align 4, !dbg !5169
  %mul209 = mul i32 %83, 250, !dbg !5170
  %sub = sub i32 %mul209, 700000, !dbg !5171
  %sub210 = sub i32 %sub, 225000, !dbg !5172
  %add211 = add i32 %sub210, 25000, !dbg !5173
  %div212 = udiv i32 %add211, 50000, !dbg !5174
  store i32 %div212, i32* %div, align 4, !dbg !5175
  br label %sw.epilog, !dbg !5176

sw.bb213:                                         ; preds = %if.end153
  br label %do.body214, !dbg !5177

do.body214:                                       ; preds = %sw.bb213
  %84 = load i32, i32* @debug, align 4, !dbg !5178
  %tobool215 = icmp ne i32 %84, 0, !dbg !5178
  br i1 %tobool215, label %if.then216, label %if.end235, !dbg !5181

if.then216:                                       ; preds = %do.body214
  br label %do.body217, !dbg !5178

do.body217:                                       ; preds = %if.then216
  %85 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5182
  %i2c_props218 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %85, i32 0, i32 0, !dbg !5182
  %name219 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props218, i32 0, i32 3, !dbg !5182
  %86 = load i8*, i8** %name219, align 8, !dbg !5182
  %87 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5182
  %i2c_props220 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %87, i32 0, i32 0, !dbg !5182
  %adap221 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props220, i32 0, i32 1, !dbg !5182
  %88 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap221, align 8, !dbg !5182
  %tobool222 = icmp ne %struct.i2c_adapter* %88, null, !dbg !5182
  br i1 %tobool222, label %cond.true223, label %cond.false227, !dbg !5182

cond.true223:                                     ; preds = %do.body217
  %89 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5182
  %i2c_props224 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %89, i32 0, i32 0, !dbg !5182
  %adap225 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props224, i32 0, i32 1, !dbg !5182
  %90 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap225, align 8, !dbg !5182
  %call226 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %90) #8, !dbg !5182
  br label %cond.end228, !dbg !5182

cond.false227:                                    ; preds = %do.body217
  br label %cond.end228, !dbg !5182

cond.end228:                                      ; preds = %cond.false227, %cond.true223
  %cond229 = phi i32 [ %call226, %cond.true223 ], [ -1, %cond.false227 ], !dbg !5182
  %91 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5182
  %i2c_props230 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %91, i32 0, i32 0, !dbg !5182
  %addr231 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props230, i32 0, i32 0, !dbg !5182
  %92 = load i8, i8* %addr231, align 8, !dbg !5182
  %conv232 = zext i8 %92 to i32, !dbg !5182
  %call233 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.13, i64 0, i64 0), i8* %86, i32 %cond229, i32 %conv232) #9, !dbg !5182
  br label %do.end234, !dbg !5182

do.end234:                                        ; preds = %cond.end228
  br label %if.end235, !dbg !5182

if.end235:                                        ; preds = %do.end234, %do.body214
  br label %do.end236, !dbg !5181

do.end236:                                        ; preds = %if.end235
  %arrayidx237 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5184
  %93 = load i8, i8* %arrayidx237, align 1, !dbg !5185
  %conv238 = zext i8 %93 to i32, !dbg !5185
  %or239 = or i32 %conv238, 16, !dbg !5185
  %conv240 = trunc i32 %or239 to i8, !dbg !5185
  store i8 %conv240, i8* %arrayidx237, align 1, !dbg !5185
  %94 = load i32, i32* %frq, align 4, !dbg !5186
  %mul241 = mul i32 %94, 250, !dbg !5187
  %sub242 = sub i32 %mul241, 700000, !dbg !5188
  %sub243 = sub i32 %sub242, 225000, !dbg !5189
  %add244 = add i32 %sub243, 16384, !dbg !5190
  %shr = lshr i32 %add244, 15, !dbg !5191
  store i32 %shr, i32* %div, align 4, !dbg !5192
  br label %sw.epilog, !dbg !5193

sw.bb245:                                         ; preds = %if.end153
  br label %sw.default, !dbg !5193

sw.default:                                       ; preds = %if.end153, %sw.bb245
  br label %do.body246, !dbg !5194

do.body246:                                       ; preds = %sw.default
  %95 = load i32, i32* @debug, align 4, !dbg !5195
  %tobool247 = icmp ne i32 %95, 0, !dbg !5195
  br i1 %tobool247, label %if.then248, label %if.end267, !dbg !5198

if.then248:                                       ; preds = %do.body246
  br label %do.body249, !dbg !5195

do.body249:                                       ; preds = %if.then248
  %96 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5199
  %i2c_props250 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %96, i32 0, i32 0, !dbg !5199
  %name251 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props250, i32 0, i32 3, !dbg !5199
  %97 = load i8*, i8** %name251, align 8, !dbg !5199
  %98 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5199
  %i2c_props252 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %98, i32 0, i32 0, !dbg !5199
  %adap253 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props252, i32 0, i32 1, !dbg !5199
  %99 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap253, align 8, !dbg !5199
  %tobool254 = icmp ne %struct.i2c_adapter* %99, null, !dbg !5199
  br i1 %tobool254, label %cond.true255, label %cond.false259, !dbg !5199

cond.true255:                                     ; preds = %do.body249
  %100 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5199
  %i2c_props256 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %100, i32 0, i32 0, !dbg !5199
  %adap257 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props256, i32 0, i32 1, !dbg !5199
  %101 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap257, align 8, !dbg !5199
  %call258 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %101) #8, !dbg !5199
  br label %cond.end260, !dbg !5199

cond.false259:                                    ; preds = %do.body249
  br label %cond.end260, !dbg !5199

cond.end260:                                      ; preds = %cond.false259, %cond.true255
  %cond261 = phi i32 [ %call258, %cond.true255 ], [ -1, %cond.false259 ], !dbg !5199
  %102 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5199
  %i2c_props262 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %102, i32 0, i32 0, !dbg !5199
  %addr263 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props262, i32 0, i32 0, !dbg !5199
  %103 = load i8, i8* %addr263, align 8, !dbg !5199
  %conv264 = zext i8 %103 to i32, !dbg !5199
  %call265 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i8* %97, i32 %cond261, i32 %conv264) #9, !dbg !5199
  br label %do.end266, !dbg !5199

do.end266:                                        ; preds = %cond.end260
  br label %if.end267, !dbg !5199

if.end267:                                        ; preds = %do.end266, %do.body246
  br label %do.end268, !dbg !5198

do.end268:                                        ; preds = %if.end267
  %arrayidx269 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 2, !dbg !5201
  %104 = load i8, i8* %arrayidx269, align 1, !dbg !5202
  %conv270 = zext i8 %104 to i32, !dbg !5202
  %or271 = or i32 %conv270, 16, !dbg !5202
  %conv272 = trunc i32 %or271 to i8, !dbg !5202
  store i8 %conv272, i8* %arrayidx269, align 1, !dbg !5202
  %arrayidx273 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 3, !dbg !5203
  %105 = load i8, i8* %arrayidx273, align 1, !dbg !5204
  %conv274 = zext i8 %105 to i32, !dbg !5204
  %or275 = or i32 %conv274, 16, !dbg !5204
  %conv276 = trunc i32 %or275 to i8, !dbg !5204
  store i8 %conv276, i8* %arrayidx273, align 1, !dbg !5204
  %106 = load i32, i32* %frq, align 4, !dbg !5205
  %mul277 = mul i32 %106, 250, !dbg !5206
  %add278 = add i32 %mul277, 700000, !dbg !5207
  %add279 = add i32 %add278, 225000, !dbg !5208
  %add280 = add i32 %add279, 16384, !dbg !5209
  %shr281 = lshr i32 %add280, 15, !dbg !5210
  store i32 %shr281, i32* %div, align 4, !dbg !5211
  br label %sw.epilog, !dbg !5212

sw.epilog:                                        ; preds = %do.end268, %do.end236, %do.end208, %do.end177
  %107 = load i32, i32* %div, align 4, !dbg !5213
  %shr282 = lshr i32 %107, 8, !dbg !5214
  %and = and i32 %shr282, 63, !dbg !5215
  %conv283 = trunc i32 %and to i8, !dbg !5216
  %arrayidx284 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5217
  store i8 %conv283, i8* %arrayidx284, align 1, !dbg !5218
  %108 = load i32, i32* %div, align 4, !dbg !5219
  %and285 = and i32 %108, 255, !dbg !5220
  %conv286 = trunc i32 %and285 to i8, !dbg !5219
  %arrayidx287 = getelementptr [5 x i8], [5 x i8]* %buffer, i64 0, i64 1, !dbg !5221
  store i8 %conv286, i8* %arrayidx287, align 1, !dbg !5222
  %109 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5223
  %i2c_props288 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %109, i32 0, i32 0, !dbg !5225
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5226
  %call289 = call i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %i2c_props288, i8* %arraydecay, i32 5) #8, !dbg !5227
  store i32 %call289, i32* %rc, align 4, !dbg !5228
  %cmp290 = icmp ne i32 5, %call289, !dbg !5229
  br i1 %cmp290, label %if.then292, label %if.end313, !dbg !5230

if.then292:                                       ; preds = %sw.epilog
  br label %do.body293, !dbg !5231

do.body293:                                       ; preds = %if.then292
  br label %do.body294, !dbg !5232

do.body294:                                       ; preds = %do.body293
  %110 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5234
  %i2c_props295 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %110, i32 0, i32 0, !dbg !5234
  %name296 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props295, i32 0, i32 3, !dbg !5234
  %111 = load i8*, i8** %name296, align 8, !dbg !5234
  %112 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5234
  %i2c_props297 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %112, i32 0, i32 0, !dbg !5234
  %adap298 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props297, i32 0, i32 1, !dbg !5234
  %113 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap298, align 8, !dbg !5234
  %tobool299 = icmp ne %struct.i2c_adapter* %113, null, !dbg !5234
  br i1 %tobool299, label %cond.true300, label %cond.false304, !dbg !5234

cond.true300:                                     ; preds = %do.body294
  %114 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5234
  %i2c_props301 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %114, i32 0, i32 0, !dbg !5234
  %adap302 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props301, i32 0, i32 1, !dbg !5234
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap302, align 8, !dbg !5234
  %call303 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %115) #8, !dbg !5234
  br label %cond.end305, !dbg !5234

cond.false304:                                    ; preds = %do.body294
  br label %cond.end305, !dbg !5234

cond.end305:                                      ; preds = %cond.false304, %cond.true300
  %cond306 = phi i32 [ %call303, %cond.true300 ], [ -1, %cond.false304 ], !dbg !5234
  %116 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5234
  %i2c_props307 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %116, i32 0, i32 0, !dbg !5234
  %addr308 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props307, i32 0, i32 0, !dbg !5234
  %117 = load i8, i8* %addr308, align 8, !dbg !5234
  %conv309 = zext i8 %117 to i32, !dbg !5234
  %118 = load i32, i32* %rc, align 4, !dbg !5234
  %call310 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %111, i32 %cond306, i32 %conv309, i32 %118) #9, !dbg !5234
  br label %do.end311, !dbg !5234

do.end311:                                        ; preds = %cond.end305
  br label %do.end312, !dbg !5232

do.end312:                                        ; preds = %do.end311
  br label %if.end313, !dbg !5232

if.end313:                                        ; preds = %do.end312, %sw.epilog
  %119 = load i32, i32* @debug, align 4, !dbg !5236
  %tobool314 = icmp ne i32 %119, 0, !dbg !5236
  br i1 %tobool314, label %if.then315, label %if.end345, !dbg !5238

if.then315:                                       ; preds = %if.end313
  %120 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5239
  %i2c_props316 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %120, i32 0, i32 0, !dbg !5242
  %arraydecay317 = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5243
  %call318 = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %i2c_props316, i8* %arraydecay317, i32 5) #8, !dbg !5244
  store i32 %call318, i32* %rc, align 4, !dbg !5245
  %cmp319 = icmp ne i32 5, %call318, !dbg !5246
  br i1 %cmp319, label %if.then321, label %if.else342, !dbg !5247

if.then321:                                       ; preds = %if.then315
  br label %do.body322, !dbg !5248

do.body322:                                       ; preds = %if.then321
  br label %do.body323, !dbg !5249

do.body323:                                       ; preds = %do.body322
  %121 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5251
  %i2c_props324 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %121, i32 0, i32 0, !dbg !5251
  %name325 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props324, i32 0, i32 3, !dbg !5251
  %122 = load i8*, i8** %name325, align 8, !dbg !5251
  %123 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5251
  %i2c_props326 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %123, i32 0, i32 0, !dbg !5251
  %adap327 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props326, i32 0, i32 1, !dbg !5251
  %124 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap327, align 8, !dbg !5251
  %tobool328 = icmp ne %struct.i2c_adapter* %124, null, !dbg !5251
  br i1 %tobool328, label %cond.true329, label %cond.false333, !dbg !5251

cond.true329:                                     ; preds = %do.body323
  %125 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5251
  %i2c_props330 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %125, i32 0, i32 0, !dbg !5251
  %adap331 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props330, i32 0, i32 1, !dbg !5251
  %126 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap331, align 8, !dbg !5251
  %call332 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %126) #8, !dbg !5251
  br label %cond.end334, !dbg !5251

cond.false333:                                    ; preds = %do.body323
  br label %cond.end334, !dbg !5251

cond.end334:                                      ; preds = %cond.false333, %cond.true329
  %cond335 = phi i32 [ %call332, %cond.true329 ], [ -1, %cond.false333 ], !dbg !5251
  %127 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5251
  %i2c_props336 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %127, i32 0, i32 0, !dbg !5251
  %addr337 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props336, i32 0, i32 0, !dbg !5251
  %128 = load i8, i8* %addr337, align 8, !dbg !5251
  %conv338 = zext i8 %128 to i32, !dbg !5251
  %129 = load i32, i32* %rc, align 4, !dbg !5251
  %call339 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %122, i32 %cond335, i32 %conv338, i32 %129) #9, !dbg !5251
  br label %do.end340, !dbg !5251

do.end340:                                        ; preds = %cond.end334
  br label %do.end341, !dbg !5249

do.end341:                                        ; preds = %do.end340
  br label %if.end344, !dbg !5249

if.else342:                                       ; preds = %if.then315
  %130 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5253
  %arraydecay343 = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5254
  call void @tea5767_status_dump(%struct.tea5767_priv* %130, i8* %arraydecay343) #8, !dbg !5255
  br label %if.end344

if.end344:                                        ; preds = %if.else342, %do.end341
  br label %if.end345, !dbg !5256

if.end345:                                        ; preds = %if.end344, %if.end313
  %131 = load i32, i32* %frq, align 4, !dbg !5257
  %mul346 = mul i32 %131, 125, !dbg !5258
  %div347 = udiv i32 %mul346, 2, !dbg !5259
  %132 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5260
  %frequency348 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %132, i32 0, i32 1, !dbg !5261
  store i32 %div347, i32* %frequency348, align 8, !dbg !5262
  ret i32 0, !dbg !5263
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_set_config(%struct.dvb_frontend* %fe, i8* %priv_cfg) #0 !dbg !5264 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %priv_cfg.addr = alloca i8*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5265, metadata !DIExpression()), !dbg !5266
  store i8* %priv_cfg, i8** %priv_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv_cfg.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5269, metadata !DIExpression()), !dbg !5270
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5271
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5272
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5272
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5271
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5270
  %3 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5273
  %ctrl = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %3, i32 0, i32 2, !dbg !5274
  %4 = bitcast %struct.tea5767_ctrl* %ctrl to i8*, !dbg !5275
  %5 = load i8*, i8** %priv_cfg.addr, align 8, !dbg !5276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 1 %5, i64 8, i1 false), !dbg !5275
  ret i32 0, !dbg !5277
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_get_frequency(%struct.dvb_frontend* %fe, i32* %frequency) #0 !dbg !5278 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %frequency.addr = alloca i32*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  store i32* %frequency, i32** %frequency.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %frequency.addr, metadata !5281, metadata !DIExpression()), !dbg !5282
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5283, metadata !DIExpression()), !dbg !5284
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5285
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5286
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5286
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5285
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5284
  %3 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5287
  %frequency1 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %3, i32 0, i32 1, !dbg !5288
  %4 = load i32, i32* %frequency1, align 8, !dbg !5288
  %5 = load i32*, i32** %frequency.addr, align 8, !dbg !5289
  store i32 %4, i32* %5, align 4, !dbg !5290
  ret i32 0, !dbg !5291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_get_status(%struct.dvb_frontend* %fe, i32* %status) #0 !dbg !5292 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %status.addr = alloca i32*, align 8
  %buffer = alloca [5 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5293, metadata !DIExpression()), !dbg !5294
  store i32* %status, i32** %status.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %status.addr, metadata !5295, metadata !DIExpression()), !dbg !5296
  call void @llvm.dbg.declare(metadata [5 x i8]* %buffer, metadata !5297, metadata !DIExpression()), !dbg !5298
  %0 = load i32*, i32** %status.addr, align 8, !dbg !5299
  store i32 0, i32* %0, align 4, !dbg !5300
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5301
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5303
  %call = call i32 @tea5767_read_status(%struct.dvb_frontend* %1, i8* %arraydecay) #8, !dbg !5304
  %cmp = icmp eq i32 0, %call, !dbg !5305
  br i1 %cmp, label %if.then, label %if.end9, !dbg !5306

if.then:                                          ; preds = %entry
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5307
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5310
  %call2 = call i32 @tea5767_signal(%struct.dvb_frontend* %2, i8* %arraydecay1) #8, !dbg !5311
  %tobool = icmp ne i32 %call2, 0, !dbg !5311
  br i1 %tobool, label %if.then3, label %if.end, !dbg !5312

if.then3:                                         ; preds = %if.then
  %3 = load i32*, i32** %status.addr, align 8, !dbg !5313
  store i32 1, i32* %3, align 4, !dbg !5314
  br label %if.end, !dbg !5315

if.end:                                           ; preds = %if.then3, %if.then
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5316
  %arraydecay4 = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5318
  %call5 = call i32 @tea5767_stereo(%struct.dvb_frontend* %4, i8* %arraydecay4) #8, !dbg !5319
  %tobool6 = icmp ne i32 %call5, 0, !dbg !5319
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5320

if.then7:                                         ; preds = %if.end
  %5 = load i32*, i32** %status.addr, align 8, !dbg !5321
  %6 = load i32, i32* %5, align 4, !dbg !5322
  %or = or i32 %6, 2, !dbg !5322
  store i32 %or, i32* %5, align 4, !dbg !5322
  br label %if.end8, !dbg !5323

if.end8:                                          ; preds = %if.then7, %if.end
  br label %if.end9, !dbg !5324

if.end9:                                          ; preds = %if.end8, %entry
  ret i32 0, !dbg !5325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_get_rf_strength(%struct.dvb_frontend* %fe, i16* %strength) #0 !dbg !5326 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %strength.addr = alloca i16*, align 8
  %buffer = alloca [5 x i8], align 1
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5327, metadata !DIExpression()), !dbg !5328
  store i16* %strength, i16** %strength.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %strength.addr, metadata !5329, metadata !DIExpression()), !dbg !5330
  call void @llvm.dbg.declare(metadata [5 x i8]* %buffer, metadata !5331, metadata !DIExpression()), !dbg !5332
  %0 = load i16*, i16** %strength.addr, align 8, !dbg !5333
  store i16 0, i16* %0, align 2, !dbg !5334
  %1 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5335
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5337
  %call = call i32 @tea5767_read_status(%struct.dvb_frontend* %1, i8* %arraydecay) #8, !dbg !5338
  %cmp = icmp eq i32 0, %call, !dbg !5339
  br i1 %cmp, label %if.then, label %if.end, !dbg !5340

if.then:                                          ; preds = %entry
  %2 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5341
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %buffer, i64 0, i64 0, !dbg !5342
  %call2 = call i32 @tea5767_signal(%struct.dvb_frontend* %2, i8* %arraydecay1) #8, !dbg !5343
  %conv = trunc i32 %call2 to i16, !dbg !5343
  %3 = load i16*, i16** %strength.addr, align 8, !dbg !5344
  store i16 %conv, i16* %3, align 2, !dbg !5345
  br label %if.end, !dbg !5346

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !5347
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tuner_i2c_xfer_send(%struct.tuner_i2c_props* %props, i8* %buf, i32 %len) #0 !dbg !5348 {
entry:
  %props.addr = alloca %struct.tuner_i2c_props*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %msg = alloca %struct.i2c_msg, align 8
  %ret = alloca i32, align 4
  store %struct.tuner_i2c_props* %props, %struct.tuner_i2c_props** %props.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tuner_i2c_props** %props.addr, metadata !5349, metadata !DIExpression()), !dbg !5350
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5351, metadata !DIExpression()), !dbg !5352
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !5353, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %msg, metadata !5355, metadata !DIExpression()), !dbg !5356
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 0, !dbg !5357
  %0 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5358
  %addr1 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %0, i32 0, i32 0, !dbg !5359
  %1 = load i8, i8* %addr1, align 8, !dbg !5359
  %conv = zext i8 %1 to i16, !dbg !5358
  store i16 %conv, i16* %addr, align 8, !dbg !5357
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 1, !dbg !5357
  store i16 0, i16* %flags, align 2, !dbg !5357
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 2, !dbg !5357
  %2 = load i32, i32* %len.addr, align 4, !dbg !5360
  %conv3 = trunc i32 %2 to i16, !dbg !5360
  store i16 %conv3, i16* %len2, align 4, !dbg !5357
  %buf4 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %msg, i32 0, i32 3, !dbg !5357
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !5361
  store i8* %3, i8** %buf4, align 8, !dbg !5357
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5362, metadata !DIExpression()), !dbg !5363
  %4 = load %struct.tuner_i2c_props*, %struct.tuner_i2c_props** %props.addr, align 8, !dbg !5364
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %4, i32 0, i32 1, !dbg !5365
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5365
  %call = call i32 @i2c_transfer(%struct.i2c_adapter* %5, %struct.i2c_msg* %msg, i32 1) #8, !dbg !5366
  store i32 %call, i32* %ret, align 4, !dbg !5363
  %6 = load i32, i32* %ret, align 4, !dbg !5367
  %cmp = icmp eq i32 %6, 1, !dbg !5368
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5369

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* %len.addr, align 4, !dbg !5370
  br label %cond.end, !dbg !5369

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !5371
  br label %cond.end, !dbg !5369

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !5369
  ret i32 %cond, !dbg !5372
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @tea5767_status_dump(%struct.tea5767_priv* %priv, i8* %buffer) #0 !dbg !5373 {
entry:
  %priv.addr = alloca %struct.tea5767_priv*, align 8
  %buffer.addr = alloca i8*, align 8
  %div = alloca i32, align 4
  %frq = alloca i32, align 4
  store %struct.tea5767_priv* %priv, %struct.tea5767_priv** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv.addr, metadata !5376, metadata !DIExpression()), !dbg !5377
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5378, metadata !DIExpression()), !dbg !5379
  call void @llvm.dbg.declare(metadata i32* %div, metadata !5380, metadata !DIExpression()), !dbg !5381
  call void @llvm.dbg.declare(metadata i32* %frq, metadata !5382, metadata !DIExpression()), !dbg !5383
  %0 = load i8*, i8** %buffer.addr, align 8, !dbg !5384
  %arrayidx = getelementptr i8, i8* %0, i64 0, !dbg !5384
  %1 = load i8, i8* %arrayidx, align 1, !dbg !5384
  %conv = zext i8 %1 to i32, !dbg !5384
  %and = and i32 128, %conv, !dbg !5386
  %tobool = icmp ne i32 %and, 0, !dbg !5386
  br i1 %tobool, label %if.then, label %if.else, !dbg !5387

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5388

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5389

do.body1:                                         ; preds = %do.body
  %2 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5391
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %2, i32 0, i32 0, !dbg !5391
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5391
  %3 = load i8*, i8** %name, align 8, !dbg !5391
  %4 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5391
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %4, i32 0, i32 0, !dbg !5391
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5391
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5391
  %tobool3 = icmp ne %struct.i2c_adapter* %5, null, !dbg !5391
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5391

cond.true:                                        ; preds = %do.body1
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5391
  %i2c_props4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5391
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5391
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5391
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %7) #8, !dbg !5391
  br label %cond.end, !dbg !5391

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5391
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5391
  %i2c_props6 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5391
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props6, i32 0, i32 0, !dbg !5391
  %9 = load i8, i8* %addr, align 8, !dbg !5391
  %conv7 = zext i8 %9 to i32, !dbg !5391
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %3, i32 %cond, i32 %conv7) #9, !dbg !5391
  br label %do.end, !dbg !5391

do.end:                                           ; preds = %cond.end
  br label %do.end9, !dbg !5389

do.end9:                                          ; preds = %do.end
  br label %if.end, !dbg !5389

if.else:                                          ; preds = %entry
  br label %do.body10, !dbg !5393

do.body10:                                        ; preds = %if.else
  br label %do.body11, !dbg !5394

do.body11:                                        ; preds = %do.body10
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5396
  %i2c_props12 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5396
  %name13 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props12, i32 0, i32 3, !dbg !5396
  %11 = load i8*, i8** %name13, align 8, !dbg !5396
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5396
  %i2c_props14 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5396
  %adap15 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props14, i32 0, i32 1, !dbg !5396
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap15, align 8, !dbg !5396
  %tobool16 = icmp ne %struct.i2c_adapter* %13, null, !dbg !5396
  br i1 %tobool16, label %cond.true17, label %cond.false21, !dbg !5396

cond.true17:                                      ; preds = %do.body11
  %14 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5396
  %i2c_props18 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %14, i32 0, i32 0, !dbg !5396
  %adap19 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props18, i32 0, i32 1, !dbg !5396
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap19, align 8, !dbg !5396
  %call20 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %15) #8, !dbg !5396
  br label %cond.end22, !dbg !5396

cond.false21:                                     ; preds = %do.body11
  br label %cond.end22, !dbg !5396

cond.end22:                                       ; preds = %cond.false21, %cond.true17
  %cond23 = phi i32 [ %call20, %cond.true17 ], [ -1, %cond.false21 ], !dbg !5396
  %16 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5396
  %i2c_props24 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %16, i32 0, i32 0, !dbg !5396
  %addr25 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props24, i32 0, i32 0, !dbg !5396
  %17 = load i8, i8* %addr25, align 8, !dbg !5396
  %conv26 = zext i8 %17 to i32, !dbg !5396
  %call27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i8* %11, i32 %cond23, i32 %conv26) #9, !dbg !5396
  br label %do.end28, !dbg !5396

do.end28:                                         ; preds = %cond.end22
  br label %do.end29, !dbg !5394

do.end29:                                         ; preds = %do.end28
  br label %if.end

if.end:                                           ; preds = %do.end29, %do.end9
  %18 = load i8*, i8** %buffer.addr, align 8, !dbg !5398
  %arrayidx30 = getelementptr i8, i8* %18, i64 0, !dbg !5398
  %19 = load i8, i8* %arrayidx30, align 1, !dbg !5398
  %conv31 = zext i8 %19 to i32, !dbg !5398
  %and32 = and i32 64, %conv31, !dbg !5400
  %tobool33 = icmp ne i32 %and32, 0, !dbg !5400
  br i1 %tobool33, label %if.then34, label %if.else55, !dbg !5401

if.then34:                                        ; preds = %if.end
  br label %do.body35, !dbg !5402

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !5403

do.body36:                                        ; preds = %do.body35
  %20 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5405
  %i2c_props37 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %20, i32 0, i32 0, !dbg !5405
  %name38 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props37, i32 0, i32 3, !dbg !5405
  %21 = load i8*, i8** %name38, align 8, !dbg !5405
  %22 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5405
  %i2c_props39 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %22, i32 0, i32 0, !dbg !5405
  %adap40 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props39, i32 0, i32 1, !dbg !5405
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap40, align 8, !dbg !5405
  %tobool41 = icmp ne %struct.i2c_adapter* %23, null, !dbg !5405
  br i1 %tobool41, label %cond.true42, label %cond.false46, !dbg !5405

cond.true42:                                      ; preds = %do.body36
  %24 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5405
  %i2c_props43 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %24, i32 0, i32 0, !dbg !5405
  %adap44 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props43, i32 0, i32 1, !dbg !5405
  %25 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap44, align 8, !dbg !5405
  %call45 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %25) #8, !dbg !5405
  br label %cond.end47, !dbg !5405

cond.false46:                                     ; preds = %do.body36
  br label %cond.end47, !dbg !5405

cond.end47:                                       ; preds = %cond.false46, %cond.true42
  %cond48 = phi i32 [ %call45, %cond.true42 ], [ -1, %cond.false46 ], !dbg !5405
  %26 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5405
  %i2c_props49 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %26, i32 0, i32 0, !dbg !5405
  %addr50 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props49, i32 0, i32 0, !dbg !5405
  %27 = load i8, i8* %addr50, align 8, !dbg !5405
  %conv51 = zext i8 %27 to i32, !dbg !5405
  %call52 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i8* %21, i32 %cond48, i32 %conv51) #9, !dbg !5405
  br label %do.end53, !dbg !5405

do.end53:                                         ; preds = %cond.end47
  br label %do.end54, !dbg !5403

do.end54:                                         ; preds = %do.end53
  br label %if.end76, !dbg !5403

if.else55:                                        ; preds = %if.end
  br label %do.body56, !dbg !5407

do.body56:                                        ; preds = %if.else55
  br label %do.body57, !dbg !5408

do.body57:                                        ; preds = %do.body56
  %28 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5410
  %i2c_props58 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %28, i32 0, i32 0, !dbg !5410
  %name59 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props58, i32 0, i32 3, !dbg !5410
  %29 = load i8*, i8** %name59, align 8, !dbg !5410
  %30 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5410
  %i2c_props60 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %30, i32 0, i32 0, !dbg !5410
  %adap61 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props60, i32 0, i32 1, !dbg !5410
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap61, align 8, !dbg !5410
  %tobool62 = icmp ne %struct.i2c_adapter* %31, null, !dbg !5410
  br i1 %tobool62, label %cond.true63, label %cond.false67, !dbg !5410

cond.true63:                                      ; preds = %do.body57
  %32 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5410
  %i2c_props64 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %32, i32 0, i32 0, !dbg !5410
  %adap65 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props64, i32 0, i32 1, !dbg !5410
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap65, align 8, !dbg !5410
  %call66 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %33) #8, !dbg !5410
  br label %cond.end68, !dbg !5410

cond.false67:                                     ; preds = %do.body57
  br label %cond.end68, !dbg !5410

cond.end68:                                       ; preds = %cond.false67, %cond.true63
  %cond69 = phi i32 [ %call66, %cond.true63 ], [ -1, %cond.false67 ], !dbg !5410
  %34 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5410
  %i2c_props70 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %34, i32 0, i32 0, !dbg !5410
  %addr71 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props70, i32 0, i32 0, !dbg !5410
  %35 = load i8, i8* %addr71, align 8, !dbg !5410
  %conv72 = zext i8 %35 to i32, !dbg !5410
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i8* %29, i32 %cond69, i32 %conv72) #9, !dbg !5410
  br label %do.end74, !dbg !5410

do.end74:                                         ; preds = %cond.end68
  br label %do.end75, !dbg !5408

do.end75:                                         ; preds = %do.end74
  br label %if.end76

if.end76:                                         ; preds = %do.end75, %do.end54
  %36 = load i8*, i8** %buffer.addr, align 8, !dbg !5412
  %arrayidx77 = getelementptr i8, i8* %36, i64 0, !dbg !5412
  %37 = load i8, i8* %arrayidx77, align 1, !dbg !5412
  %conv78 = zext i8 %37 to i32, !dbg !5412
  %and79 = and i32 %conv78, 63, !dbg !5413
  %shl = shl i32 %and79, 8, !dbg !5414
  %38 = load i8*, i8** %buffer.addr, align 8, !dbg !5415
  %arrayidx80 = getelementptr i8, i8* %38, i64 1, !dbg !5415
  %39 = load i8, i8* %arrayidx80, align 1, !dbg !5415
  %conv81 = zext i8 %39 to i32, !dbg !5415
  %or = or i32 %shl, %conv81, !dbg !5416
  store i32 %or, i32* %div, align 4, !dbg !5417
  %40 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5418
  %ctrl = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %40, i32 0, i32 2, !dbg !5419
  %xtal_freq = getelementptr inbounds %struct.tea5767_ctrl, %struct.tea5767_ctrl* %ctrl, i32 0, i32 1, !dbg !5420
  %41 = load i32, i32* %xtal_freq, align 4, !dbg !5420
  switch i32 %41, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb84
    i32 0, label %sw.bb88
    i32 1, label %sw.bb93
  ], !dbg !5421

sw.bb:                                            ; preds = %if.end76
  %42 = load i32, i32* %div, align 4, !dbg !5422
  %mul = mul i32 %42, 50000, !dbg !5424
  %sub = sub i32 %mul, 700000, !dbg !5425
  %sub82 = sub i32 %sub, 225000, !dbg !5426
  %div83 = udiv i32 %sub82, 4, !dbg !5427
  store i32 %div83, i32* %frq, align 4, !dbg !5428
  br label %sw.epilog, !dbg !5429

sw.bb84:                                          ; preds = %if.end76
  %43 = load i32, i32* %div, align 4, !dbg !5430
  %mul85 = mul i32 %43, 50000, !dbg !5431
  %add = add i32 %mul85, 700000, !dbg !5432
  %add86 = add i32 %add, 225000, !dbg !5433
  %div87 = udiv i32 %add86, 4, !dbg !5434
  store i32 %div87, i32* %frq, align 4, !dbg !5435
  br label %sw.epilog, !dbg !5436

sw.bb88:                                          ; preds = %if.end76
  %44 = load i32, i32* %div, align 4, !dbg !5437
  %mul89 = mul i32 %44, 32768, !dbg !5438
  %add90 = add i32 %mul89, 700000, !dbg !5439
  %add91 = add i32 %add90, 225000, !dbg !5440
  %div92 = udiv i32 %add91, 4, !dbg !5441
  store i32 %div92, i32* %frq, align 4, !dbg !5442
  br label %sw.epilog, !dbg !5443

sw.bb93:                                          ; preds = %if.end76
  br label %sw.default, !dbg !5443

sw.default:                                       ; preds = %if.end76, %sw.bb93
  %45 = load i32, i32* %div, align 4, !dbg !5444
  %mul94 = mul i32 %45, 32768, !dbg !5445
  %sub95 = sub i32 %mul94, 700000, !dbg !5446
  %sub96 = sub i32 %sub95, 225000, !dbg !5447
  %div97 = udiv i32 %sub96, 4, !dbg !5448
  store i32 %div97, i32* %frq, align 4, !dbg !5449
  br label %sw.epilog, !dbg !5450

sw.epilog:                                        ; preds = %sw.default, %sw.bb88, %sw.bb84, %sw.bb
  %46 = load i32, i32* %div, align 4, !dbg !5451
  %shr = lshr i32 %46, 8, !dbg !5452
  %and98 = and i32 %shr, 63, !dbg !5453
  %conv99 = trunc i32 %and98 to i8, !dbg !5454
  %47 = load i8*, i8** %buffer.addr, align 8, !dbg !5455
  %arrayidx100 = getelementptr i8, i8* %47, i64 0, !dbg !5455
  store i8 %conv99, i8* %arrayidx100, align 1, !dbg !5456
  %48 = load i32, i32* %div, align 4, !dbg !5457
  %and101 = and i32 %48, 255, !dbg !5458
  %conv102 = trunc i32 %and101 to i8, !dbg !5457
  %49 = load i8*, i8** %buffer.addr, align 8, !dbg !5459
  %arrayidx103 = getelementptr i8, i8* %49, i64 1, !dbg !5459
  store i8 %conv102, i8* %arrayidx103, align 1, !dbg !5460
  br label %do.body104, !dbg !5461

do.body104:                                       ; preds = %sw.epilog
  br label %do.body105, !dbg !5462

do.body105:                                       ; preds = %do.body104
  %50 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5464
  %i2c_props106 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %50, i32 0, i32 0, !dbg !5464
  %name107 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props106, i32 0, i32 3, !dbg !5464
  %51 = load i8*, i8** %name107, align 8, !dbg !5464
  %52 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5464
  %i2c_props108 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %52, i32 0, i32 0, !dbg !5464
  %adap109 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props108, i32 0, i32 1, !dbg !5464
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap109, align 8, !dbg !5464
  %tobool110 = icmp ne %struct.i2c_adapter* %53, null, !dbg !5464
  br i1 %tobool110, label %cond.true111, label %cond.false115, !dbg !5464

cond.true111:                                     ; preds = %do.body105
  %54 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5464
  %i2c_props112 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %54, i32 0, i32 0, !dbg !5464
  %adap113 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props112, i32 0, i32 1, !dbg !5464
  %55 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap113, align 8, !dbg !5464
  %call114 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %55) #8, !dbg !5464
  br label %cond.end116, !dbg !5464

cond.false115:                                    ; preds = %do.body105
  br label %cond.end116, !dbg !5464

cond.end116:                                      ; preds = %cond.false115, %cond.true111
  %cond117 = phi i32 [ %call114, %cond.true111 ], [ -1, %cond.false115 ], !dbg !5464
  %56 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5464
  %i2c_props118 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %56, i32 0, i32 0, !dbg !5464
  %addr119 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props118, i32 0, i32 0, !dbg !5464
  %57 = load i8, i8* %addr119, align 8, !dbg !5464
  %conv120 = zext i8 %57 to i32, !dbg !5464
  %58 = load i32, i32* %frq, align 4, !dbg !5464
  %div121 = udiv i32 %58, 1000, !dbg !5464
  %59 = load i32, i32* %frq, align 4, !dbg !5464
  %rem = urem i32 %59, 1000, !dbg !5464
  %60 = load i32, i32* %div, align 4, !dbg !5464
  %call122 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0), i8* %51, i32 %cond117, i32 %conv120, i32 %div121, i32 %rem, i32 %60) #9, !dbg !5464
  br label %do.end123, !dbg !5464

do.end123:                                        ; preds = %cond.end116
  br label %do.end124, !dbg !5462

do.end124:                                        ; preds = %do.end123
  %61 = load i8*, i8** %buffer.addr, align 8, !dbg !5466
  %arrayidx125 = getelementptr i8, i8* %61, i64 2, !dbg !5466
  %62 = load i8, i8* %arrayidx125, align 1, !dbg !5466
  %conv126 = zext i8 %62 to i32, !dbg !5466
  %and127 = and i32 128, %conv126, !dbg !5468
  %tobool128 = icmp ne i32 %and127, 0, !dbg !5468
  br i1 %tobool128, label %if.then129, label %if.else150, !dbg !5469

if.then129:                                       ; preds = %do.end124
  br label %do.body130, !dbg !5470

do.body130:                                       ; preds = %if.then129
  br label %do.body131, !dbg !5471

do.body131:                                       ; preds = %do.body130
  %63 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5473
  %i2c_props132 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %63, i32 0, i32 0, !dbg !5473
  %name133 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props132, i32 0, i32 3, !dbg !5473
  %64 = load i8*, i8** %name133, align 8, !dbg !5473
  %65 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5473
  %i2c_props134 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %65, i32 0, i32 0, !dbg !5473
  %adap135 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props134, i32 0, i32 1, !dbg !5473
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap135, align 8, !dbg !5473
  %tobool136 = icmp ne %struct.i2c_adapter* %66, null, !dbg !5473
  br i1 %tobool136, label %cond.true137, label %cond.false141, !dbg !5473

cond.true137:                                     ; preds = %do.body131
  %67 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5473
  %i2c_props138 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %67, i32 0, i32 0, !dbg !5473
  %adap139 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props138, i32 0, i32 1, !dbg !5473
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap139, align 8, !dbg !5473
  %call140 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %68) #8, !dbg !5473
  br label %cond.end142, !dbg !5473

cond.false141:                                    ; preds = %do.body131
  br label %cond.end142, !dbg !5473

cond.end142:                                      ; preds = %cond.false141, %cond.true137
  %cond143 = phi i32 [ %call140, %cond.true137 ], [ -1, %cond.false141 ], !dbg !5473
  %69 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5473
  %i2c_props144 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %69, i32 0, i32 0, !dbg !5473
  %addr145 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props144, i32 0, i32 0, !dbg !5473
  %70 = load i8, i8* %addr145, align 8, !dbg !5473
  %conv146 = zext i8 %70 to i32, !dbg !5473
  %call147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i8* %64, i32 %cond143, i32 %conv146) #9, !dbg !5473
  br label %do.end148, !dbg !5473

do.end148:                                        ; preds = %cond.end142
  br label %do.end149, !dbg !5471

do.end149:                                        ; preds = %do.end148
  br label %if.end171, !dbg !5471

if.else150:                                       ; preds = %do.end124
  br label %do.body151, !dbg !5475

do.body151:                                       ; preds = %if.else150
  br label %do.body152, !dbg !5476

do.body152:                                       ; preds = %do.body151
  %71 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5478
  %i2c_props153 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %71, i32 0, i32 0, !dbg !5478
  %name154 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props153, i32 0, i32 3, !dbg !5478
  %72 = load i8*, i8** %name154, align 8, !dbg !5478
  %73 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5478
  %i2c_props155 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %73, i32 0, i32 0, !dbg !5478
  %adap156 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props155, i32 0, i32 1, !dbg !5478
  %74 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap156, align 8, !dbg !5478
  %tobool157 = icmp ne %struct.i2c_adapter* %74, null, !dbg !5478
  br i1 %tobool157, label %cond.true158, label %cond.false162, !dbg !5478

cond.true158:                                     ; preds = %do.body152
  %75 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5478
  %i2c_props159 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %75, i32 0, i32 0, !dbg !5478
  %adap160 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props159, i32 0, i32 1, !dbg !5478
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap160, align 8, !dbg !5478
  %call161 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %76) #8, !dbg !5478
  br label %cond.end163, !dbg !5478

cond.false162:                                    ; preds = %do.body152
  br label %cond.end163, !dbg !5478

cond.end163:                                      ; preds = %cond.false162, %cond.true158
  %cond164 = phi i32 [ %call161, %cond.true158 ], [ -1, %cond.false162 ], !dbg !5478
  %77 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5478
  %i2c_props165 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %77, i32 0, i32 0, !dbg !5478
  %addr166 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props165, i32 0, i32 0, !dbg !5478
  %78 = load i8, i8* %addr166, align 8, !dbg !5478
  %conv167 = zext i8 %78 to i32, !dbg !5478
  %call168 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i8* %72, i32 %cond164, i32 %conv167) #9, !dbg !5478
  br label %do.end169, !dbg !5478

do.end169:                                        ; preds = %cond.end163
  br label %do.end170, !dbg !5476

do.end170:                                        ; preds = %do.end169
  br label %if.end171

if.end171:                                        ; preds = %do.end170, %do.end149
  br label %do.body172, !dbg !5480

do.body172:                                       ; preds = %if.end171
  br label %do.body173, !dbg !5481

do.body173:                                       ; preds = %do.body172
  %79 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5483
  %i2c_props174 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %79, i32 0, i32 0, !dbg !5483
  %name175 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props174, i32 0, i32 3, !dbg !5483
  %80 = load i8*, i8** %name175, align 8, !dbg !5483
  %81 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5483
  %i2c_props176 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %81, i32 0, i32 0, !dbg !5483
  %adap177 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props176, i32 0, i32 1, !dbg !5483
  %82 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap177, align 8, !dbg !5483
  %tobool178 = icmp ne %struct.i2c_adapter* %82, null, !dbg !5483
  br i1 %tobool178, label %cond.true179, label %cond.false183, !dbg !5483

cond.true179:                                     ; preds = %do.body173
  %83 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5483
  %i2c_props180 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %83, i32 0, i32 0, !dbg !5483
  %adap181 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props180, i32 0, i32 1, !dbg !5483
  %84 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap181, align 8, !dbg !5483
  %call182 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %84) #8, !dbg !5483
  br label %cond.end184, !dbg !5483

cond.false183:                                    ; preds = %do.body173
  br label %cond.end184, !dbg !5483

cond.end184:                                      ; preds = %cond.false183, %cond.true179
  %cond185 = phi i32 [ %call182, %cond.true179 ], [ -1, %cond.false183 ], !dbg !5483
  %85 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5483
  %i2c_props186 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %85, i32 0, i32 0, !dbg !5483
  %addr187 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props186, i32 0, i32 0, !dbg !5483
  %86 = load i8, i8* %addr187, align 8, !dbg !5483
  %conv188 = zext i8 %86 to i32, !dbg !5483
  %87 = load i8*, i8** %buffer.addr, align 8, !dbg !5483
  %arrayidx189 = getelementptr i8, i8* %87, i64 2, !dbg !5483
  %88 = load i8, i8* %arrayidx189, align 1, !dbg !5483
  %conv190 = zext i8 %88 to i32, !dbg !5483
  %and191 = and i32 %conv190, 127, !dbg !5483
  %call192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %80, i32 %cond185, i32 %conv188, i32 %and191) #9, !dbg !5483
  br label %do.end193, !dbg !5483

do.end193:                                        ; preds = %cond.end184
  br label %do.end194, !dbg !5481

do.end194:                                        ; preds = %do.end193
  br label %do.body195, !dbg !5485

do.body195:                                       ; preds = %do.end194
  br label %do.body196, !dbg !5486

do.body196:                                       ; preds = %do.body195
  %89 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5488
  %i2c_props197 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %89, i32 0, i32 0, !dbg !5488
  %name198 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props197, i32 0, i32 3, !dbg !5488
  %90 = load i8*, i8** %name198, align 8, !dbg !5488
  %91 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5488
  %i2c_props199 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %91, i32 0, i32 0, !dbg !5488
  %adap200 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props199, i32 0, i32 1, !dbg !5488
  %92 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap200, align 8, !dbg !5488
  %tobool201 = icmp ne %struct.i2c_adapter* %92, null, !dbg !5488
  br i1 %tobool201, label %cond.true202, label %cond.false206, !dbg !5488

cond.true202:                                     ; preds = %do.body196
  %93 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5488
  %i2c_props203 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %93, i32 0, i32 0, !dbg !5488
  %adap204 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props203, i32 0, i32 1, !dbg !5488
  %94 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap204, align 8, !dbg !5488
  %call205 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %94) #8, !dbg !5488
  br label %cond.end207, !dbg !5488

cond.false206:                                    ; preds = %do.body196
  br label %cond.end207, !dbg !5488

cond.end207:                                      ; preds = %cond.false206, %cond.true202
  %cond208 = phi i32 [ %call205, %cond.true202 ], [ -1, %cond.false206 ], !dbg !5488
  %95 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5488
  %i2c_props209 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %95, i32 0, i32 0, !dbg !5488
  %addr210 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props209, i32 0, i32 0, !dbg !5488
  %96 = load i8, i8* %addr210, align 8, !dbg !5488
  %conv211 = zext i8 %96 to i32, !dbg !5488
  %97 = load i8*, i8** %buffer.addr, align 8, !dbg !5488
  %arrayidx212 = getelementptr i8, i8* %97, i64 3, !dbg !5488
  %98 = load i8, i8* %arrayidx212, align 1, !dbg !5488
  %conv213 = zext i8 %98 to i32, !dbg !5488
  %and214 = and i32 %conv213, 240, !dbg !5488
  %shr215 = ashr i32 %and214, 4, !dbg !5488
  %call216 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0), i8* %90, i32 %cond208, i32 %conv211, i32 %shr215) #9, !dbg !5488
  br label %do.end217, !dbg !5488

do.end217:                                        ; preds = %cond.end207
  br label %do.end218, !dbg !5486

do.end218:                                        ; preds = %do.end217
  br label %do.body219, !dbg !5490

do.body219:                                       ; preds = %do.end218
  br label %do.body220, !dbg !5491

do.body220:                                       ; preds = %do.body219
  %99 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5493
  %i2c_props221 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %99, i32 0, i32 0, !dbg !5493
  %name222 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props221, i32 0, i32 3, !dbg !5493
  %100 = load i8*, i8** %name222, align 8, !dbg !5493
  %101 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5493
  %i2c_props223 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %101, i32 0, i32 0, !dbg !5493
  %adap224 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props223, i32 0, i32 1, !dbg !5493
  %102 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap224, align 8, !dbg !5493
  %tobool225 = icmp ne %struct.i2c_adapter* %102, null, !dbg !5493
  br i1 %tobool225, label %cond.true226, label %cond.false230, !dbg !5493

cond.true226:                                     ; preds = %do.body220
  %103 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5493
  %i2c_props227 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %103, i32 0, i32 0, !dbg !5493
  %adap228 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props227, i32 0, i32 1, !dbg !5493
  %104 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap228, align 8, !dbg !5493
  %call229 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %104) #8, !dbg !5493
  br label %cond.end231, !dbg !5493

cond.false230:                                    ; preds = %do.body220
  br label %cond.end231, !dbg !5493

cond.end231:                                      ; preds = %cond.false230, %cond.true226
  %cond232 = phi i32 [ %call229, %cond.true226 ], [ -1, %cond.false230 ], !dbg !5493
  %105 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5493
  %i2c_props233 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %105, i32 0, i32 0, !dbg !5493
  %addr234 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props233, i32 0, i32 0, !dbg !5493
  %106 = load i8, i8* %addr234, align 8, !dbg !5493
  %conv235 = zext i8 %106 to i32, !dbg !5493
  %107 = load i8*, i8** %buffer.addr, align 8, !dbg !5493
  %arrayidx236 = getelementptr i8, i8* %107, i64 3, !dbg !5493
  %108 = load i8, i8* %arrayidx236, align 1, !dbg !5493
  %conv237 = zext i8 %108 to i32, !dbg !5493
  %and238 = and i32 %conv237, 15, !dbg !5493
  %call239 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0), i8* %100, i32 %cond232, i32 %conv235, i32 %and238) #9, !dbg !5493
  br label %do.end240, !dbg !5493

do.end240:                                        ; preds = %cond.end231
  br label %do.end241, !dbg !5491

do.end241:                                        ; preds = %do.end240
  br label %do.body242, !dbg !5495

do.body242:                                       ; preds = %do.end241
  br label %do.body243, !dbg !5496

do.body243:                                       ; preds = %do.body242
  %109 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5498
  %i2c_props244 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %109, i32 0, i32 0, !dbg !5498
  %name245 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props244, i32 0, i32 3, !dbg !5498
  %110 = load i8*, i8** %name245, align 8, !dbg !5498
  %111 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5498
  %i2c_props246 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %111, i32 0, i32 0, !dbg !5498
  %adap247 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props246, i32 0, i32 1, !dbg !5498
  %112 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap247, align 8, !dbg !5498
  %tobool248 = icmp ne %struct.i2c_adapter* %112, null, !dbg !5498
  br i1 %tobool248, label %cond.true249, label %cond.false253, !dbg !5498

cond.true249:                                     ; preds = %do.body243
  %113 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5498
  %i2c_props250 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %113, i32 0, i32 0, !dbg !5498
  %adap251 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props250, i32 0, i32 1, !dbg !5498
  %114 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap251, align 8, !dbg !5498
  %call252 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %114) #8, !dbg !5498
  br label %cond.end254, !dbg !5498

cond.false253:                                    ; preds = %do.body243
  br label %cond.end254, !dbg !5498

cond.end254:                                      ; preds = %cond.false253, %cond.true249
  %cond255 = phi i32 [ %call252, %cond.true249 ], [ -1, %cond.false253 ], !dbg !5498
  %115 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv.addr, align 8, !dbg !5498
  %i2c_props256 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %115, i32 0, i32 0, !dbg !5498
  %addr257 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props256, i32 0, i32 0, !dbg !5498
  %116 = load i8, i8* %addr257, align 8, !dbg !5498
  %conv258 = zext i8 %116 to i32, !dbg !5498
  %117 = load i8*, i8** %buffer.addr, align 8, !dbg !5498
  %arrayidx259 = getelementptr i8, i8* %117, i64 4, !dbg !5498
  %118 = load i8, i8* %arrayidx259, align 1, !dbg !5498
  %conv260 = zext i8 %118 to i32, !dbg !5498
  %and261 = and i32 %conv260, 255, !dbg !5498
  %call262 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i8* %110, i32 %cond255, i32 %conv258, i32 %and261) #9, !dbg !5498
  br label %do.end263, !dbg !5498

do.end263:                                        ; preds = %cond.end254
  br label %do.end264, !dbg !5496

do.end264:                                        ; preds = %do.end263
  ret void, !dbg !5500
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_read_status(%struct.dvb_frontend* %fe, i8* %buffer) #0 !dbg !5501 {
entry:
  %retval = alloca i32, align 4
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buffer.addr = alloca i8*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  %rc = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5504, metadata !DIExpression()), !dbg !5505
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5508, metadata !DIExpression()), !dbg !5509
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5510
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5511
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5511
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5510
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5509
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5512, metadata !DIExpression()), !dbg !5513
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !5514
  call void @llvm.memset.p0i8.i64(i8* align 1 %3, i8 0, i64 5, i1 false), !dbg !5515
  %4 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5516
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %4, i32 0, i32 0, !dbg !5518
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !5519
  %call = call i32 @tuner_i2c_xfer_recv(%struct.tuner_i2c_props* %i2c_props, i8* %5, i32 5) #8, !dbg !5520
  store i32 %call, i32* %rc, align 4, !dbg !5521
  %cmp = icmp ne i32 5, %call, !dbg !5522
  br i1 %cmp, label %if.then, label %if.end, !dbg !5523

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5524

do.body:                                          ; preds = %if.then
  br label %do.body1, !dbg !5526

do.body1:                                         ; preds = %do.body
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5528
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5528
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 3, !dbg !5528
  %7 = load i8*, i8** %name, align 8, !dbg !5528
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5528
  %i2c_props3 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5528
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props3, i32 0, i32 1, !dbg !5528
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5528
  %tobool = icmp ne %struct.i2c_adapter* %9, null, !dbg !5528
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5528

cond.true:                                        ; preds = %do.body1
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5528
  %i2c_props4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5528
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5528
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5528
  %call6 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !5528
  br label %cond.end, !dbg !5528

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5528

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ -1, %cond.false ], !dbg !5528
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5528
  %i2c_props7 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5528
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props7, i32 0, i32 0, !dbg !5528
  %13 = load i8, i8* %addr, align 8, !dbg !5528
  %conv = zext i8 %13 to i32, !dbg !5528
  %14 = load i32, i32* %rc, align 4, !dbg !5528
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %7, i32 %cond, i32 %conv, i32 %14) #9, !dbg !5528
  br label %do.end, !dbg !5528

do.end:                                           ; preds = %cond.end
  br label %do.end9, !dbg !5526

do.end9:                                          ; preds = %do.end
  store i32 -121, i32* %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5531
  br label %return, !dbg !5531

return:                                           ; preds = %if.end, %do.end9
  %15 = load i32, i32* %retval, align 4, !dbg !5532
  ret i32 %15, !dbg !5532
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_signal(%struct.dvb_frontend* %fe, i8* %buffer) #0 !dbg !5533 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buffer.addr = alloca i8*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  %signal = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5536, metadata !DIExpression()), !dbg !5537
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5538, metadata !DIExpression()), !dbg !5539
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5540, metadata !DIExpression()), !dbg !5541
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5542
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5543
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5543
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5542
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5541
  call void @llvm.dbg.declare(metadata i32* %signal, metadata !5544, metadata !DIExpression()), !dbg !5545
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !5546
  %arrayidx = getelementptr i8, i8* %3, i64 3, !dbg !5546
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5546
  %conv = sext i8 %4 to i32, !dbg !5546
  %and = and i32 %conv, 240, !dbg !5547
  %shl = shl i32 %and, 8, !dbg !5548
  store i32 %shl, i32* %signal, align 4, !dbg !5545
  br label %do.body, !dbg !5549

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5550
  %tobool = icmp ne i32 %5, 0, !dbg !5550
  br i1 %tobool, label %if.then, label %if.end, !dbg !5553

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !5550

do.body1:                                         ; preds = %if.then
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5554
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5554
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5554
  %7 = load i8*, i8** %name, align 8, !dbg !5554
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5554
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5554
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5554
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5554
  %tobool3 = icmp ne %struct.i2c_adapter* %9, null, !dbg !5554
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5554

cond.true:                                        ; preds = %do.body1
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5554
  %i2c_props4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5554
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5554
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5554
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !5554
  br label %cond.end, !dbg !5554

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5554

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5554
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5554
  %i2c_props6 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5554
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props6, i32 0, i32 0, !dbg !5554
  %13 = load i8, i8* %addr, align 8, !dbg !5554
  %conv7 = zext i8 %13 to i32, !dbg !5554
  %14 = load i32, i32* %signal, align 4, !dbg !5554
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i8* %7, i32 %cond, i32 %conv7, i32 %14) #9, !dbg !5554
  br label %do.end, !dbg !5554

do.end:                                           ; preds = %cond.end
  br label %if.end, !dbg !5554

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end9, !dbg !5553

do.end9:                                          ; preds = %if.end
  %15 = load i32, i32* %signal, align 4, !dbg !5556
  ret i32 %15, !dbg !5557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tea5767_stereo(%struct.dvb_frontend* %fe, i8* %buffer) #0 !dbg !5558 {
entry:
  %fe.addr = alloca %struct.dvb_frontend*, align 8
  %buffer.addr = alloca i8*, align 8
  %priv = alloca %struct.tea5767_priv*, align 8
  %stereo = alloca i32, align 4
  store %struct.dvb_frontend* %fe, %struct.dvb_frontend** %fe.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_frontend** %fe.addr, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5561, metadata !DIExpression()), !dbg !5562
  call void @llvm.dbg.declare(metadata %struct.tea5767_priv** %priv, metadata !5563, metadata !DIExpression()), !dbg !5564
  %0 = load %struct.dvb_frontend*, %struct.dvb_frontend** %fe.addr, align 8, !dbg !5565
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %0, i32 0, i32 4, !dbg !5566
  %1 = load i8*, i8** %tuner_priv, align 8, !dbg !5566
  %2 = bitcast i8* %1 to %struct.tea5767_priv*, !dbg !5565
  store %struct.tea5767_priv* %2, %struct.tea5767_priv** %priv, align 8, !dbg !5564
  call void @llvm.dbg.declare(metadata i32* %stereo, metadata !5567, metadata !DIExpression()), !dbg !5568
  %3 = load i8*, i8** %buffer.addr, align 8, !dbg !5569
  %arrayidx = getelementptr i8, i8* %3, i64 2, !dbg !5569
  %4 = load i8, i8* %arrayidx, align 1, !dbg !5569
  %conv = sext i8 %4 to i32, !dbg !5569
  %and = and i32 %conv, 128, !dbg !5570
  store i32 %and, i32* %stereo, align 4, !dbg !5568
  br label %do.body, !dbg !5571

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @debug, align 4, !dbg !5572
  %tobool = icmp ne i32 %5, 0, !dbg !5572
  br i1 %tobool, label %if.then, label %if.end, !dbg !5575

if.then:                                          ; preds = %do.body
  br label %do.body1, !dbg !5572

do.body1:                                         ; preds = %if.then
  %6 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5576
  %i2c_props = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %6, i32 0, i32 0, !dbg !5576
  %name = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props, i32 0, i32 3, !dbg !5576
  %7 = load i8*, i8** %name, align 8, !dbg !5576
  %8 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5576
  %i2c_props2 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %8, i32 0, i32 0, !dbg !5576
  %adap = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props2, i32 0, i32 1, !dbg !5576
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !5576
  %tobool3 = icmp ne %struct.i2c_adapter* %9, null, !dbg !5576
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5576

cond.true:                                        ; preds = %do.body1
  %10 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5576
  %i2c_props4 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %10, i32 0, i32 0, !dbg !5576
  %adap5 = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props4, i32 0, i32 1, !dbg !5576
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap5, align 8, !dbg !5576
  %call = call i32 @i2c_adapter_id(%struct.i2c_adapter* %11) #8, !dbg !5576
  br label %cond.end, !dbg !5576

cond.false:                                       ; preds = %do.body1
  br label %cond.end, !dbg !5576

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ -1, %cond.false ], !dbg !5576
  %12 = load %struct.tea5767_priv*, %struct.tea5767_priv** %priv, align 8, !dbg !5576
  %i2c_props6 = getelementptr inbounds %struct.tea5767_priv, %struct.tea5767_priv* %12, i32 0, i32 0, !dbg !5576
  %addr = getelementptr inbounds %struct.tuner_i2c_props, %struct.tuner_i2c_props* %i2c_props6, i32 0, i32 0, !dbg !5576
  %13 = load i8, i8* %addr, align 8, !dbg !5576
  %conv7 = zext i8 %13 to i32, !dbg !5576
  %14 = load i32, i32* %stereo, align 4, !dbg !5576
  %call8 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %7, i32 %cond, i32 %conv7, i32 %14) #9, !dbg !5576
  br label %do.end, !dbg !5576

do.end:                                           ; preds = %cond.end
  br label %if.end, !dbg !5576

if.end:                                           ; preds = %do.end, %do.body
  br label %do.end9, !dbg !5575

do.end9:                                          ; preds = %if.end
  %15 = load i32, i32* %stereo, align 4, !dbg !5578
  %tobool10 = icmp ne i32 %15, 0, !dbg !5578
  %16 = zext i1 %tobool10 to i64, !dbg !5578
  %cond11 = select i1 %tobool10, i32 2, i32 0, !dbg !5578
  ret i32 %cond11, !dbg !5579
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!llvm.module.flags = !{!4307, !4308, !4309, !4310}
!llvm.ident = !{!4311}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 20, type: !4304, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !297, globals: !301, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/tuners/tea5767.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !128, !138, !145, !161, !166, !170, !175, !190, !201, !214, !221, !226, !232, !253, !259, !263, !271, !283, !290}
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
!283 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tea5767_xtal", file: !284, line: 11, baseType: !7, size: 32, elements: !285)
!284 = !DIFile(filename: "drivers/media/tuners/tea5767.h", directory: "/home/lizy2001/genbc/linux")
!285 = !{!286, !287, !288, !289}
!286 = !DIEnumerator(name: "TEA5767_LOW_LO_32768", value: 0, isUnsigned: true)
!287 = !DIEnumerator(name: "TEA5767_HIGH_LO_32768", value: 1, isUnsigned: true)
!288 = !DIEnumerator(name: "TEA5767_LOW_LO_13MHz", value: 2, isUnsigned: true)
!289 = !DIEnumerator(name: "TEA5767_HIGH_LO_13MHz", value: 3, isUnsigned: true)
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !291, line: 305, baseType: !7, size: 32, elements: !292)
!291 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!292 = !{!293, !294, !295, !296}
!293 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!294 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!295 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!296 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!297 = !{!298, !300}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !299, line: 148, baseType: !7)
!299 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!301 = !{!302, !374, !379, !384, !389, !394, !399, !404, !0, !406}
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 20, type: !304, isLocal: true, isDefinition: true, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !306, line: 69, size: 320, elements: !307)
!306 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!307 = !{!308, !312, !316, !337, !344, !348, !352}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 70, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!311 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !305, file: !306, line: 71, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !315, line: 76, flags: DIFlagFwdDecl)
!315 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !305, file: !306, line: 72, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !306, line: 47, size: 256, elements: !320)
!320 = !{!321, !322, !328, !333}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !306, line: 49, baseType: !7, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !319, file: !306, line: 51, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !309, !327}
!326 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !319, file: !306, line: 53, baseType: !329, size: 64, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!326, !332, !327}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !319, file: !306, line: 55, baseType: !334, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !300}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !305, file: !306, line: 73, baseType: !338, size: 16, offset: 192)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !340, line: 19, baseType: !341)
!340 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !342, line: 24, baseType: !343)
!342 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!343 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !305, file: !306, line: 74, baseType: !345, size: 8, offset: 208)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !340, line: 16, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !342, line: 20, baseType: !347)
!347 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !305, file: !306, line: 75, baseType: !349, size: 8, offset: 216)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !340, line: 17, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !342, line: 21, baseType: !351)
!351 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!352 = !DIDerivedType(tag: DW_TAG_member, scope: !305, file: !306, line: 76, baseType: !353, size: 64, offset: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !305, file: !306, line: 76, size: 64, elements: !354)
!354 = !{!355, !356, !363}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !353, file: !306, line: 77, baseType: !300, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !353, file: !306, line: 78, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !306, line: 86, size: 128, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !359, file: !306, line: 87, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !359, file: !306, line: 88, baseType: !332, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !353, file: !306, line: 79, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !306, line: 92, size: 256, elements: !367)
!367 = !{!368, !369, !370, !372, !373}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !366, file: !306, line: 94, baseType: !7, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !366, file: !306, line: 95, baseType: !7, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !366, file: !306, line: 96, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !366, file: !306, line: 97, baseType: !317, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !366, file: !306, line: 98, baseType: !300, size: 64, offset: 192)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype220", scope: !2, file: !3, line: 20, type: !376, isLocal: true, isDefinition: true, align: 8)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 216, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 27)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug221", scope: !2, file: !3, line: 21, type: !381, isLocal: true, isDefinition: true, align: 8)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 392, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 49)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description222", scope: !2, file: !3, line: 471, type: !386, isLocal: true, isDefinition: true, align: 8)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 416, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 52)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author223", scope: !2, file: !3, line: 472, type: !391, isLocal: true, isDefinition: true, align: 8)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 464, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 58)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file224", scope: !2, file: !3, line: 473, type: !396, isLocal: true, isDefinition: true, align: 8)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 336, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 42)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license225", scope: !2, file: !3, line: 473, type: !401, isLocal: true, isDefinition: true, align: 8)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 184, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 23)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 19, type: !326, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "tea5767_tuner_ops", scope: !2, file: !3, line: 424, type: !408, isLocal: true, isDefinition: true)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_ops", file: !139, line: 226, size: 2304, elements: !410)
!410 = !{!411, !426, !4278, !4279, !4280, !4281, !4282, !4283, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4299, !4303}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !409, file: !139, line: 228, baseType: !412, size: 1216)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_tuner_info", file: !139, line: 88, size: 1216, elements: !413)
!413 = !{!414, !418, !421, !422, !423, !424, !425}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !139, line: 89, baseType: !415, size: 1024)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 1024, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !412, file: !139, line: 91, baseType: !419, size: 32, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !340, line: 21, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !342, line: 27, baseType: !7)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !412, file: !139, line: 92, baseType: !419, size: 32, offset: 1056)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_step_hz", scope: !412, file: !139, line: 93, baseType: !419, size: 32, offset: 1088)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_min", scope: !412, file: !139, line: 95, baseType: !419, size: 32, offset: 1120)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_max", scope: !412, file: !139, line: 96, baseType: !419, size: 32, offset: 1152)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_step", scope: !412, file: !139, line: 97, baseType: !419, size: 32, offset: 1184)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !409, file: !139, line: 230, baseType: !427, size: 64, offset: 1216)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend", file: !139, line: 686, size: 10240, elements: !432)
!432 = !{!433, !447, !695, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4276, !4277}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !431, file: !139, line: 687, baseType: !434, size: 32)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !435, line: 19, size: 32, elements: !436)
!435 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !434, file: !435, line: 20, baseType: !438, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !439, line: 113, baseType: !440)
!439 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !439, line: 111, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !440, file: !439, line: 112, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !299, line: 168, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 166, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !444, file: !299, line: 167, baseType: !326, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !431, file: !139, line: 688, baseType: !448, size: 6016, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_ops", file: !139, line: 435, size: 6016, elements: !449)
!449 = !{!450, !462, !466, !467, !468, !469, !473, !474, !480, !487, !491, !492, !502, !587, !591, !596, !601, !602, !603, !604, !616, !627, !631, !635, !639, !644, !649, !653, !654, !655, !659, !660}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !448, file: !139, line: 436, baseType: !451, size: 1280)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_internal_info", file: !139, line: 338, size: 1280, elements: !452)
!452 = !{!453, !454, !455, !456, !457, !458, !459, !460, !461}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !451, file: !139, line: 339, baseType: !415, size: 1024)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_min_hz", scope: !451, file: !139, line: 340, baseType: !419, size: 32, offset: 1024)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_max_hz", scope: !451, file: !139, line: 341, baseType: !419, size: 32, offset: 1056)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_stepsize_hz", scope: !451, file: !139, line: 342, baseType: !419, size: 32, offset: 1088)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_tolerance_hz", scope: !451, file: !139, line: 343, baseType: !419, size: 32, offset: 1120)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_min", scope: !451, file: !139, line: 344, baseType: !419, size: 32, offset: 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_max", scope: !451, file: !139, line: 345, baseType: !419, size: 32, offset: 1184)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate_tolerance", scope: !451, file: !139, line: 346, baseType: !419, size: 32, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "caps", scope: !451, file: !139, line: 347, baseType: !94, size: 32, offset: 1248)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "delsys", scope: !448, file: !139, line: 438, baseType: !463, size: 64, offset: 1280)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 64, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 8)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !448, file: !139, line: 440, baseType: !427, size: 64, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !448, file: !139, line: 441, baseType: !427, size: 64, offset: 1408)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "release_sec", scope: !448, file: !139, line: 442, baseType: !427, size: 64, offset: 1472)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !448, file: !139, line: 444, baseType: !470, size: 64, offset: 1536)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!326, !430}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !448, file: !139, line: 445, baseType: !470, size: 64, offset: 1600)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !448, file: !139, line: 447, baseType: !475, size: 64, offset: 1664)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!326, !430, !478, !326}
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !448, file: !139, line: 450, baseType: !481, size: 64, offset: 1728)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!326, !430, !484, !7, !371, !486}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !299, line: 30, baseType: !485)
!485 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend_algo", scope: !448, file: !139, line: 457, baseType: !488, size: 64, offset: 1792)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!138, !430}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "set_frontend", scope: !448, file: !139, line: 460, baseType: !470, size: 64, offset: 1856)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "get_tune_settings", scope: !448, file: !139, line: 461, baseType: !493, size: 64, offset: 1920)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!326, !430, !496}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_frontend_tune_settings", file: !139, line: 69, size: 96, elements: !498)
!498 = !{!499, !500, !501}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "min_delay_ms", scope: !497, file: !139, line: 70, baseType: !326, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !497, file: !139, line: 71, baseType: !326, size: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "max_drift", scope: !497, file: !139, line: 72, baseType: !326, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "get_frontend", scope: !448, file: !139, line: 463, baseType: !503, size: 64, offset: 1984)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!326, !430, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_frontend_properties", file: !139, line: 586, size: 3648, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !580, !581, !582, !583, !584, !585, !586}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !507, file: !139, line: 587, baseType: !419, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !507, file: !139, line: 588, baseType: !145, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "voltage", scope: !507, file: !139, line: 590, baseType: !161, size: 32, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sectone", scope: !507, file: !139, line: 591, baseType: !166, size: 32, offset: 96)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "inversion", scope: !507, file: !139, line: 592, baseType: !170, size: 32, offset: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "fec_inner", scope: !507, file: !139, line: 593, baseType: !175, size: 32, offset: 160)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "transmission_mode", scope: !507, file: !139, line: 594, baseType: !190, size: 32, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_hz", scope: !507, file: !139, line: 595, baseType: !419, size: 32, offset: 224)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "guard_interval", scope: !507, file: !139, line: 596, baseType: !201, size: 32, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy", scope: !507, file: !139, line: 597, baseType: !214, size: 32, offset: 288)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_rate", scope: !507, file: !139, line: 598, baseType: !419, size: 32, offset: 320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_HP", scope: !507, file: !139, line: 599, baseType: !175, size: 32, offset: 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "code_rate_LP", scope: !507, file: !139, line: 600, baseType: !175, size: 32, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pilot", scope: !507, file: !139, line: 602, baseType: !221, size: 32, offset: 416)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rolloff", scope: !507, file: !139, line: 603, baseType: !226, size: 32, offset: 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_system", scope: !507, file: !139, line: 605, baseType: !232, size: 32, offset: 480)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !507, file: !139, line: 607, baseType: !253, size: 32, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_partial_reception", scope: !507, file: !139, line: 610, baseType: !349, size: 8, offset: 544)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_mode", scope: !507, file: !139, line: 611, baseType: !349, size: 8, offset: 552)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_subchannel", scope: !507, file: !139, line: 612, baseType: !349, size: 8, offset: 560)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_idx", scope: !507, file: !139, line: 613, baseType: !419, size: 32, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_sb_segment_count", scope: !507, file: !139, line: 614, baseType: !419, size: 32, offset: 608)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "isdbt_layer_enabled", scope: !507, file: !139, line: 615, baseType: !349, size: 8, offset: 640)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "layer", scope: !507, file: !139, line: 621, baseType: !533, size: 384, offset: 672)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !534, size: 384, elements: !540)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !507, file: !139, line: 616, size: 128, elements: !535)
!535 = !{!536, !537, !538, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "segment_count", scope: !534, file: !139, line: 617, baseType: !349, size: 8)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "fec", scope: !534, file: !139, line: 618, baseType: !175, size: 32, offset: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "modulation", scope: !534, file: !139, line: 619, baseType: !145, size: 32, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "interleaving", scope: !534, file: !139, line: 620, baseType: !349, size: 8, offset: 96)
!540 = !{!541}
!541 = !DISubrange(count: 3)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !507, file: !139, line: 624, baseType: !419, size: 32, offset: 1056)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling_sequence_index", scope: !507, file: !139, line: 627, baseType: !419, size: 32, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_fic_ver", scope: !507, file: !139, line: 630, baseType: !349, size: 8, offset: 1120)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_parade_id", scope: !507, file: !139, line: 631, baseType: !349, size: 8, offset: 1128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_nog", scope: !507, file: !139, line: 632, baseType: !349, size: 8, offset: 1136)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_tnog", scope: !507, file: !139, line: 633, baseType: !349, size: 8, offset: 1144)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sgn", scope: !507, file: !139, line: 634, baseType: !349, size: 8, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_prc", scope: !507, file: !139, line: 635, baseType: !349, size: 8, offset: 1160)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_mode", scope: !507, file: !139, line: 637, baseType: !349, size: 8, offset: 1168)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_frame_ensemble", scope: !507, file: !139, line: 638, baseType: !349, size: 8, offset: 1176)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_pri", scope: !507, file: !139, line: 639, baseType: !349, size: 8, offset: 1184)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_rs_code_mode_sec", scope: !507, file: !139, line: 640, baseType: !349, size: 8, offset: 1192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_block_mode", scope: !507, file: !139, line: 641, baseType: !349, size: 8, offset: 1200)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_a", scope: !507, file: !139, line: 642, baseType: !349, size: 8, offset: 1208)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_b", scope: !507, file: !139, line: 643, baseType: !349, size: 8, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_c", scope: !507, file: !139, line: 644, baseType: !349, size: 8, offset: 1224)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "atscmh_sccc_code_mode_d", scope: !507, file: !139, line: 645, baseType: !349, size: 8, offset: 1232)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "lna", scope: !507, file: !139, line: 647, baseType: !419, size: 32, offset: 1248)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !507, file: !139, line: 650, baseType: !561, size: 296, offset: 1280)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_fe_stats", file: !95, line: 825, size: 296, elements: !562)
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !561, file: !95, line: 826, baseType: !350, size: 8)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !561, file: !95, line: 827, baseType: !565, size: 288, offset: 8)
!565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 288, elements: !578)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dtv_stats", file: !95, line: 803, size: 72, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !566, file: !95, line: 804, baseType: !350, size: 8)
!569 = !DIDerivedType(tag: DW_TAG_member, scope: !566, file: !95, line: 805, baseType: !570, size: 64, offset: 8)
!570 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !566, file: !95, line: 805, size: 64, elements: !571)
!571 = !{!572, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !570, file: !95, line: 806, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !342, line: 31, baseType: !574)
!574 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !570, file: !95, line: 807, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !342, line: 30, baseType: !577)
!577 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!578 = !{!579}
!579 = !DISubrange(count: 4)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cnr", scope: !507, file: !139, line: 651, baseType: !561, size: 296, offset: 1576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_error", scope: !507, file: !139, line: 652, baseType: !561, size: 296, offset: 1872)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pre_bit_count", scope: !507, file: !139, line: 653, baseType: !561, size: 296, offset: 2168)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_error", scope: !507, file: !139, line: 654, baseType: !561, size: 296, offset: 2464)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "post_bit_count", scope: !507, file: !139, line: 655, baseType: !561, size: 296, offset: 2760)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "block_error", scope: !507, file: !139, line: 656, baseType: !561, size: 296, offset: 3056)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "block_count", scope: !507, file: !139, line: 657, baseType: !561, size: 296, offset: 3352)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "read_status", scope: !448, file: !139, line: 466, baseType: !588, size: 64, offset: 2048)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!326, !430, !486}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "read_ber", scope: !448, file: !139, line: 467, baseType: !592, size: 64, offset: 2112)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!326, !430, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "read_signal_strength", scope: !448, file: !139, line: 468, baseType: !597, size: 64, offset: 2176)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DISubroutineType(types: !599)
!599 = !{!326, !430, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "read_snr", scope: !448, file: !139, line: 469, baseType: !597, size: 64, offset: 2240)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "read_ucblocks", scope: !448, file: !139, line: 470, baseType: !592, size: 64, offset: 2304)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_reset_overload", scope: !448, file: !139, line: 472, baseType: !470, size: 64, offset: 2368)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_master_cmd", scope: !448, file: !139, line: 473, baseType: !605, size: 64, offset: 2432)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!326, !430, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_master_cmd", file: !95, line: 173, size: 56, elements: !610)
!610 = !{!611, !615}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !609, file: !95, line: 174, baseType: !612, size: 48)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 48, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 6)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !609, file: !95, line: 175, baseType: !350, size: 8, offset: 48)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_recv_slave_reply", scope: !448, file: !139, line: 474, baseType: !617, size: 64, offset: 2496)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!326, !430, !620}
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_diseqc_slave_reply", file: !95, line: 195, size: 96, elements: !622)
!622 = !{!623, !625, !626}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !621, file: !95, line: 196, baseType: !624, size: 32)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 32, elements: !578)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "msg_len", scope: !621, file: !95, line: 197, baseType: !350, size: 8, offset: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !621, file: !95, line: 198, baseType: !326, size: 32, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "diseqc_send_burst", scope: !448, file: !139, line: 475, baseType: !628, size: 64, offset: 2560)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!326, !430, !259}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "set_tone", scope: !448, file: !139, line: 477, baseType: !632, size: 64, offset: 2624)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!326, !430, !166}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "set_voltage", scope: !448, file: !139, line: 478, baseType: !636, size: 64, offset: 2688)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!326, !430, !161}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "enable_high_lnb_voltage", scope: !448, file: !139, line: 480, baseType: !640, size: 64, offset: 2752)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!326, !430, !643}
!643 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dishnetwork_send_legacy_command", scope: !448, file: !139, line: 481, baseType: !645, size: 64, offset: 2816)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!326, !430, !648}
!648 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !448, file: !139, line: 482, baseType: !650, size: 64, offset: 2880)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!326, !430, !326}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ts_bus_ctrl", scope: !448, file: !139, line: 483, baseType: !650, size: 64, offset: 2944)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "set_lna", scope: !448, file: !139, line: 484, baseType: !470, size: 64, offset: 3008)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "search", scope: !448, file: !139, line: 490, baseType: !656, size: 64, offset: 3072)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!263, !430}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_ops", scope: !448, file: !139, line: 492, baseType: !409, size: 2304, offset: 3136)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "analog_ops", scope: !448, file: !139, line: 493, baseType: !661, size: 576, offset: 5440)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_ops", file: !139, line: 302, size: 576, elements: !662)
!662 = !{!663, !667, !679, !680, !687, !688, !689, !690, !691}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !661, file: !139, line: 304, baseType: !664, size: 64)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_demod_info", file: !139, line: 276, size: 64, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !664, file: !139, line: 277, baseType: !332, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !661, file: !139, line: 306, baseType: !668, size: 64, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !430, !671}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "analog_parameters", file: !139, line: 114, size: 192, elements: !673)
!673 = !{!674, !675, !676, !677}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !672, file: !139, line: 115, baseType: !7, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !672, file: !139, line: 116, baseType: !7, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "audmode", scope: !672, file: !139, line: 117, baseType: !7, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "std", scope: !672, file: !139, line: 118, baseType: !678, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !340, line: 23, baseType: !573)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "has_signal", scope: !661, file: !139, line: 308, baseType: !597, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !661, file: !139, line: 309, baseType: !681, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{!326, !430, !684}
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !340, line: 20, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !342, line: 26, baseType: !326)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_status", scope: !661, file: !139, line: 310, baseType: !427, size: 64, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "standby", scope: !661, file: !139, line: 311, baseType: !427, size: 64, offset: 320)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !661, file: !139, line: 312, baseType: !427, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_gate_ctrl", scope: !661, file: !139, line: 313, baseType: !650, size: 64, offset: 448)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !661, file: !139, line: 316, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DISubroutineType(types: !694)
!694 = !{!326, !430, !300}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dvb", scope: !431, file: !139, line: 689, baseType: !696, size: 64, offset: 6080)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !272, line: 101, size: 960, elements: !698)
!698 = !{!699, !700, !706, !707, !708, !710, !711, !4244, !4245, !4246, !4265}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !697, file: !272, line: 102, baseType: !326, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !697, file: !272, line: 103, baseType: !701, size: 128, offset: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !299, line: 178, size: 128, elements: !702)
!702 = !{!703, !705}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !701, file: !299, line: 179, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !701, file: !299, line: 179, baseType: !704, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !697, file: !272, line: 104, baseType: !701, size: 128, offset: 192)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !272, line: 105, baseType: !309, size: 64, offset: 320)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !697, file: !272, line: 106, baseType: !709, size: 48, offset: 384)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 48, elements: !613)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !697, file: !272, line: 107, baseType: !300, size: 64, offset: 448)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !697, file: !272, line: 109, baseType: !712, size: 64, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !714)
!714 = !{!715, !3701, !3702, !3705, !3706, !3757, !3845, !3846, !3847, !3848, !3849, !3858, !3963, !3976, !4171, !4172, !4176, !4178, !4179, !4180, !4184, !4190, !4191, !4194, !4195, !4196, !4197, !4198, !4199, !4200, !4232, !4233, !4234, !4237, !4240, !4241, !4242, !4243}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !713, file: !60, line: 462, baseType: !716, size: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !717, line: 64, size: 512, elements: !718)
!717 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720, !721, !723, !780, !3556, !3695, !3696, !3697, !3698, !3699, !3700}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !716, file: !717, line: 65, baseType: !309, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !716, file: !717, line: 66, baseType: !701, size: 128, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !716, file: !717, line: 67, baseType: !722, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !716, file: !717, line: 68, baseType: !724, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !717, line: 192, size: 704, elements: !726)
!726 = !{!727, !728, !744, !745}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !725, file: !717, line: 193, baseType: !701, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !725, file: !717, line: 194, baseType: !729, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !730, line: 83, baseType: !731)
!730 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !730, line: 71, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !730, line: 72, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !730, line: 72, elements: !735)
!735 = !{!736}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !734, file: !730, line: 73, baseType: !737)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !730, line: 20, elements: !738)
!738 = !{!739}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !737, file: !730, line: 21, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !741, line: 25, baseType: !742)
!741 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !741, line: 25, elements: !743)
!743 = !{}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !725, file: !717, line: 195, baseType: !716, size: 512, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !725, file: !717, line: 196, baseType: !746, size: 64, offset: 640)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !717, line: 156, size: 192, elements: !749)
!749 = !{!750, !755, !760}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !748, file: !717, line: 157, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!326, !724, !722}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !748, file: !717, line: 158, baseType: !756, size: 64, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!309, !724, !722}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !748, file: !717, line: 159, baseType: !761, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!326, !724, !722, !765}
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !717, line: 148, size: 20736, elements: !767)
!767 = !{!768, !770, !774, !775, !779}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !766, file: !717, line: 149, baseType: !769, size: 192)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !540)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !766, file: !717, line: 150, baseType: !771, size: 4096, offset: 192)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 4096, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !766, file: !717, line: 151, baseType: !326, size: 32, offset: 4288)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !766, file: !717, line: 152, baseType: !776, size: 16384, offset: 4320)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 16384, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 2048)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !766, file: !717, line: 153, baseType: !326, size: 32, offset: 20704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !716, file: !717, line: 69, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !717, line: 138, size: 448, elements: !783)
!783 = !{!784, !788, !815, !817, !3518, !3546, !3550}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !782, file: !717, line: 139, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !722}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !782, file: !717, line: 140, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !792, line: 230, size: 128, elements: !793)
!792 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !808}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !791, file: !792, line: 231, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!798, !722, !802, !332}
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !299, line: 60, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !800, line: 73, baseType: !801)
!800 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !800, line: 15, baseType: !643)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !792, line: 30, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !803, file: !792, line: 31, baseType: !309, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !803, file: !792, line: 32, baseType: !807, size: 16, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !299, line: 19, baseType: !343)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !791, file: !792, line: 232, baseType: !809, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!798, !722, !802, !309, !812}
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !299, line: 55, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !800, line: 72, baseType: !814)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !800, line: 16, baseType: !648)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !782, file: !717, line: 141, baseType: !816, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !782, file: !717, line: 142, baseType: !818, size: 64, offset: 192)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !792, line: 84, size: 320, elements: !822)
!822 = !{!823, !824, !828, !3515, !3516}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !821, file: !792, line: 85, baseType: !309, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !821, file: !792, line: 86, baseType: !825, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!807, !722, !802, !326}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !821, file: !792, line: 88, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!807, !722, !832, !326}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !792, line: 168, size: 448, elements: !834)
!834 = !{!835, !836, !837, !838, !3510, !3511}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !833, file: !792, line: 169, baseType: !803, size: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !833, file: !792, line: 170, baseType: !812, size: 64, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !833, file: !792, line: 171, baseType: !300, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !833, file: !792, line: 172, baseType: !839, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!798, !842, !722, !832, !332, !1008, !812}
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !844)
!844 = !{!845, !863, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3493, !3494, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !843, file: !31, line: 920, baseType: !846, size: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !31, line: 917, size: 128, elements: !847)
!847 = !{!848, !854}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !846, file: !31, line: 918, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !850, line: 58, size: 64, elements: !851)
!850 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!851 = !{!852}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !850, line: 59, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !846, file: !31, line: 919, baseType: !855, size: 128, align: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !299, line: 216, size: 128, align: 64, elements: !856)
!856 = !{!857, !859}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !855, file: !299, line: 217, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !855, file: !299, line: 218, baseType: !860, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !858}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !843, file: !31, line: 921, baseType: !864, size: 128, offset: 128)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !865, line: 8, size: 128, elements: !866)
!865 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!866 = !{!867, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !864, file: !865, line: 9, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !870, line: 18, flags: DIFlagFwdDecl)
!870 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !864, file: !865, line: 10, baseType: !872, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !870, line: 89, size: 1536, elements: !874)
!874 = !{!875, !876, !886, !894, !895, !910, !3444, !3446, !3458, !3459, !3460, !3461, !3462, !3467, !3468, !3469}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !873, file: !870, line: 91, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !873, file: !870, line: 92, baseType: !877, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !878, line: 277, baseType: !879)
!878 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !878, line: 277, size: 32, elements: !880)
!880 = !{!881}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !879, file: !878, line: 277, baseType: !882, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !878, line: 70, baseType: !883)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !878, line: 65, size: 32, elements: !884)
!884 = !{!885}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !883, file: !878, line: 66, baseType: !7, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !873, file: !870, line: 93, baseType: !887, size: 128, offset: 64)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !888, line: 38, size: 128, elements: !889)
!888 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!889 = !{!890, !892}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !888, line: 39, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !887, file: !888, line: 39, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !873, file: !870, line: 94, baseType: !872, size: 64, offset: 192)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !873, file: !870, line: 95, baseType: !896, size: 128, offset: 256)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !870, line: 47, size: 128, elements: !897)
!897 = !{!898, !907}
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !896, file: !870, line: 48, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !896, file: !870, line: 48, size: 64, elements: !900)
!900 = !{!901, !906}
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !870, line: 49, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !899, file: !870, line: 49, size: 64, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !902, file: !870, line: 50, baseType: !419, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !902, file: !870, line: 50, baseType: !419, size: 32, offset: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !899, file: !870, line: 52, baseType: !678, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !896, file: !870, line: 54, baseType: !908, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !873, file: !870, line: 96, baseType: !911, size: 64, offset: 384)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !913)
!913 = !{!914, !915, !916, !924, !931, !932, !1073, !3138, !3139, !3140, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3412, !3420, !3421, !3422, !3440, !3441, !3442, !3443}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !912, file: !31, line: 611, baseType: !807, size: 16)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !912, file: !31, line: 612, baseType: !343, size: 16, offset: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !912, file: !31, line: 613, baseType: !917, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !918, line: 23, baseType: !919)
!918 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 21, size: 32, elements: !920)
!920 = !{!921}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !919, file: !918, line: 22, baseType: !922, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !299, line: 32, baseType: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !800, line: 49, baseType: !7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !912, file: !31, line: 614, baseType: !925, size: 32, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !918, line: 28, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !918, line: 26, size: 32, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !926, file: !918, line: 27, baseType: !929, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !299, line: 33, baseType: !930)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !800, line: 50, baseType: !7)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !912, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !912, file: !31, line: 622, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !936)
!936 = !{!937, !941, !951, !955, !961, !965, !969, !973, !977, !981, !985, !986, !992, !996, !1020, !1049, !1053, !1059, !1064, !1068, !1069}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !935, file: !31, line: 1865, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!872, !911, !872, !7}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !935, file: !31, line: 1866, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{!309, !872, !911, !945}
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !947, line: 10, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !946, file: !947, line: 11, baseType: !334, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !946, file: !947, line: 12, baseType: !300, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !935, file: !31, line: 1867, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!326, !911, !326}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !935, file: !31, line: 1868, baseType: !956, size: 64, offset: 192)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{!959, !911, !326}
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !935, file: !31, line: 1870, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!326, !872, !332, !326}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !935, file: !31, line: 1872, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!326, !911, !872, !807, !484}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !935, file: !31, line: 1873, baseType: !970, size: 64, offset: 384)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!326, !872, !911, !872}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !935, file: !31, line: 1874, baseType: !974, size: 64, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!326, !911, !872}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !935, file: !31, line: 1875, baseType: !978, size: 64, offset: 512)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!326, !911, !872, !309}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !935, file: !31, line: 1876, baseType: !982, size: 64, offset: 576)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DISubroutineType(types: !984)
!984 = !{!326, !911, !872, !807}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !935, file: !31, line: 1877, baseType: !974, size: 64, offset: 640)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !935, file: !31, line: 1878, baseType: !987, size: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!326, !911, !872, !807, !990}
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !299, line: 16, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !299, line: 13, baseType: !419)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !935, file: !31, line: 1879, baseType: !993, size: 64, offset: 768)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!326, !911, !872, !911, !872, !7}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !935, file: !31, line: 1881, baseType: !997, size: 64, offset: 832)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!326, !872, !1000}
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1010, !1017, !1018, !1019}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1001, file: !31, line: 220, baseType: !7, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1001, file: !31, line: 221, baseType: !807, size: 16, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1001, file: !31, line: 222, baseType: !917, size: 32, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1001, file: !31, line: 223, baseType: !925, size: 32, offset: 96)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1001, file: !31, line: 224, baseType: !1008, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !299, line: 46, baseType: !1009)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !800, line: 88, baseType: !577)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1001, file: !31, line: 225, baseType: !1011, size: 128, offset: 192)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1012, line: 13, size: 128, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1013 = !{!1014, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1011, file: !1012, line: 14, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1012, line: 8, baseType: !576)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1011, file: !1012, line: 15, baseType: !643, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1001, file: !31, line: 226, baseType: !1011, size: 128, offset: 320)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1001, file: !31, line: 227, baseType: !1011, size: 128, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1001, file: !31, line: 234, baseType: !842, size: 64, offset: 576)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !935, file: !31, line: 1882, baseType: !1021, size: 64, offset: 896)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!326, !1024, !1026, !419, !7}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !864)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1028, line: 22, size: 1152, elements: !1029)
!1028 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!1029 = !{!1030, !1031, !1032, !1033, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1027, file: !1028, line: 23, baseType: !419, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1027, file: !1028, line: 24, baseType: !807, size: 16, offset: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1027, file: !1028, line: 25, baseType: !7, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1027, file: !1028, line: 26, baseType: !1034, size: 32, offset: 96)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !299, line: 104, baseType: !419)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1027, file: !1028, line: 27, baseType: !678, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1027, file: !1028, line: 28, baseType: !678, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1027, file: !1028, line: 37, baseType: !678, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1027, file: !1028, line: 38, baseType: !990, size: 32, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1027, file: !1028, line: 39, baseType: !990, size: 32, offset: 352)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1027, file: !1028, line: 40, baseType: !917, size: 32, offset: 384)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1027, file: !1028, line: 41, baseType: !925, size: 32, offset: 416)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1027, file: !1028, line: 42, baseType: !1008, size: 64, offset: 448)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1027, file: !1028, line: 43, baseType: !1011, size: 128, offset: 512)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1027, file: !1028, line: 44, baseType: !1011, size: 128, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1027, file: !1028, line: 45, baseType: !1011, size: 128, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1027, file: !1028, line: 46, baseType: !1011, size: 128, offset: 896)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1027, file: !1028, line: 47, baseType: !678, size: 64, offset: 1024)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1027, file: !1028, line: 48, baseType: !678, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !935, file: !31, line: 1883, baseType: !1050, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!798, !872, !332, !812}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !935, file: !31, line: 1884, baseType: !1054, size: 64, offset: 1024)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!326, !911, !1057, !678, !678}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !935, file: !31, line: 1886, baseType: !1060, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!326, !911, !1063, !326}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !935, file: !31, line: 1887, baseType: !1065, size: 64, offset: 1152)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!326, !911, !872, !842, !7, !807}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !935, file: !31, line: 1890, baseType: !982, size: 64, offset: 1216)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !935, file: !31, line: 1891, baseType: !1070, size: 64, offset: 1280)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!326, !911, !959, !326}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !912, file: !31, line: 623, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1129, !2746, !2828, !2911, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2927, !2931, !2932, !2935, !2936, !2939, !2940, !2941, !2982, !3008, !3009, !3010, !3011, !3012, !3013, !3016, !3018, !3025, !3026, !3028, !3029, !3030, !3089, !3090, !3105, !3106, !3107, !3108, !3109, !3112, !3113, !3114, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1075, file: !31, line: 1417, baseType: !701, size: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1075, file: !31, line: 1418, baseType: !990, size: 32, offset: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1075, file: !31, line: 1419, baseType: !351, size: 8, offset: 160)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1075, file: !31, line: 1420, baseType: !648, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1075, file: !31, line: 1421, baseType: !1008, size: 64, offset: 256)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1075, file: !31, line: 1422, baseType: !1083, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !1085)
!1085 = !{!1086, !1087, !1088, !1095, !1099, !1103, !1107, !1108, !1109, !1119, !1122, !1123, !1124, !1126, !1127, !1128}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !31, line: 2229, baseType: !309, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1084, file: !31, line: 2230, baseType: !326, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1084, file: !31, line: 2238, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!326, !1092}
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1094, line: 28, flags: DIFlagFwdDecl)
!1094 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1084, file: !31, line: 2239, baseType: !1096, size: 64, offset: 192)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1084, file: !31, line: 2240, baseType: !1100, size: 64, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!872, !1083, !326, !309, !300}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1084, file: !31, line: 2242, baseType: !1104, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{null, !1074}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1084, file: !31, line: 2243, baseType: !313, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !31, line: 2244, baseType: !1083, size: 64, offset: 448)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1084, file: !31, line: 2245, baseType: !1110, size: 64, offset: 512)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !299, line: 182, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1110, file: !299, line: 183, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !299, line: 186, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !299, line: 187, baseType: !1113, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1114, file: !299, line: 187, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1084, file: !31, line: 2247, baseType: !1120, offset: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1121, line: 187, elements: !743)
!1121 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1084, file: !31, line: 2248, baseType: !1120, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1084, file: !31, line: 2249, baseType: !1120, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1084, file: !31, line: 2250, baseType: !1125, offset: 576)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1120, elements: !540)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1084, file: !31, line: 2252, baseType: !1120, offset: 576)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1084, file: !31, line: 2253, baseType: !1120, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1084, file: !31, line: 2254, baseType: !1120, offset: 576)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1075, file: !31, line: 1423, baseType: !1130, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !1133)
!1133 = !{!1134, !1138, !1142, !1143, !1147, !1153, !1157, !1158, !1159, !1163, !1167, !1168, !1169, !1170, !1176, !1181, !1182, !1189, !1190, !1191, !1192, !2730, !2745}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1132, file: !31, line: 1936, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!911, !1074}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1132, file: !31, line: 1937, baseType: !1139, size: 64, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{null, !911}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1132, file: !31, line: 1938, baseType: !1139, size: 64, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1132, file: !31, line: 1940, baseType: !1144, size: 64, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !911, !326}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1132, file: !31, line: 1941, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!326, !911, !1151}
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1132, file: !31, line: 1942, baseType: !1154, size: 64, offset: 320)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1155, size: 64)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!326, !911}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1132, file: !31, line: 1943, baseType: !1139, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1132, file: !31, line: 1944, baseType: !1104, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1132, file: !31, line: 1945, baseType: !1160, size: 64, offset: 512)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!326, !1074, !326}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1132, file: !31, line: 1946, baseType: !1164, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!326, !1074}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1132, file: !31, line: 1947, baseType: !1164, size: 64, offset: 640)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1132, file: !31, line: 1948, baseType: !1164, size: 64, offset: 704)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1132, file: !31, line: 1949, baseType: !1164, size: 64, offset: 768)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1132, file: !31, line: 1950, baseType: !1171, size: 64, offset: 832)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!326, !872, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1132, file: !31, line: 1951, baseType: !1177, size: 64, offset: 896)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!326, !1074, !1180, !332}
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1132, file: !31, line: 1952, baseType: !1104, size: 64, offset: 960)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1132, file: !31, line: 1954, baseType: !1183, size: 64, offset: 1024)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!326, !1186, !872}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1188, line: 539, flags: DIFlagFwdDecl)
!1188 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1132, file: !31, line: 1955, baseType: !1183, size: 64, offset: 1088)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1132, file: !31, line: 1956, baseType: !1183, size: 64, offset: 1152)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1132, file: !31, line: 1957, baseType: !1183, size: 64, offset: 1216)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !1132, file: !31, line: 1963, baseType: !1193, size: 64, offset: 1280)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!326, !1074, !1196, !298}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1198, line: 68, size: 512, align: 128, elements: !1199)
!1198 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!1199 = !{!1200, !1201, !2722, !2729}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1197, file: !1198, line: 69, baseType: !648, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 77, baseType: !1202, size: 320, offset: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 77, size: 320, elements: !1203)
!1203 = !{!1204, !1385, !1390, !1418, !1426, !1432, !2714, !2721}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 78, baseType: !1205, size: 320)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 78, size: 320, elements: !1206)
!1206 = !{!1207, !1208, !1383, !1384}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1205, file: !1198, line: 84, baseType: !701, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1205, file: !1198, line: 86, baseType: !1209, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !1211)
!1211 = !{!1212, !1213, !1220, !1221, !1222, !1237, !1253, !1254, !1255, !1256, !1376, !1377, !1380, !1381, !1382}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1210, file: !31, line: 452, baseType: !911, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1210, file: !31, line: 453, baseType: !1214, size: 128, offset: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1215, line: 292, size: 128, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1216 = !{!1217, !1218, !1219}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1214, file: !1215, line: 293, baseType: !729)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1214, file: !1215, line: 295, baseType: !298, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1214, file: !1215, line: 296, baseType: !300, size: 64, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1210, file: !31, line: 454, baseType: !298, size: 32, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1210, file: !31, line: 455, baseType: !443, size: 32, offset: 224)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1210, file: !31, line: 460, baseType: !1223, size: 128, offset: 256)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1224, line: 125, size: 128, elements: !1225)
!1224 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!1225 = !{!1226, !1236}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1223, file: !1224, line: 126, baseType: !1227, size: 64)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1224, line: 31, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1227, file: !1224, line: 32, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1224, line: 24, size: 192, align: 64, elements: !1232)
!1232 = !{!1233, !1234, !1235}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1231, file: !1224, line: 25, baseType: !648, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1231, file: !1224, line: 26, baseType: !1230, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1231, file: !1224, line: 27, baseType: !1230, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1223, file: !1224, line: 127, baseType: !1230, size: 64, offset: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1210, file: !31, line: 461, baseType: !1238, size: 256, offset: 384)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1239, line: 35, size: 256, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1240 = !{!1241, !1249, !1250, !1252}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1238, file: !1239, line: 36, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !1243, line: 13, baseType: !1244)
!1243 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !299, line: 175, baseType: !1245)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !299, line: 173, size: 64, elements: !1246)
!1246 = !{!1247}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1245, file: !299, line: 174, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !340, line: 22, baseType: !576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1238, file: !1239, line: 42, baseType: !1242, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1238, file: !1239, line: 46, baseType: !1251, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !730, line: 29, baseType: !737)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1238, file: !1239, line: 47, baseType: !701, size: 128, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1210, file: !31, line: 462, baseType: !648, size: 64, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1210, file: !31, line: 463, baseType: !648, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1210, file: !31, line: 464, baseType: !648, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1210, file: !31, line: 465, baseType: !1257, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !1260)
!1260 = !{!1261, !1265, !1269, !1273, !1277, !1281, !1287, !1293, !1297, !1302, !1306, !1310, !1314, !1340, !1344, !1350, !1351, !1352, !1356, !1361, !1365, !1372}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1259, file: !31, line: 368, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!326, !1196, !1151}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1259, file: !31, line: 369, baseType: !1266, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!326, !842, !1196}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1259, file: !31, line: 372, baseType: !1270, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!326, !1209, !1151}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1259, file: !31, line: 375, baseType: !1274, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!326, !1196}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1259, file: !31, line: 381, baseType: !1278, size: 64, offset: 256)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!326, !842, !1209, !704, !7}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1259, file: !31, line: 383, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !1285}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1259, file: !31, line: 385, baseType: !1288, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!326, !842, !1209, !1008, !7, !7, !1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1259, file: !31, line: 388, baseType: !1294, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!326, !842, !1209, !1008, !7, !7, !1196, !300}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1259, file: !31, line: 393, baseType: !1298, size: 64, offset: 512)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!1301, !1209, !1301}
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !299, line: 125, baseType: !678)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1259, file: !31, line: 394, baseType: !1303, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{null, !1196, !7, !7}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1259, file: !31, line: 395, baseType: !1307, size: 64, offset: 640)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!326, !1196, !298}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1259, file: !31, line: 396, baseType: !1311, size: 64, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1196}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1259, file: !31, line: 397, baseType: !1315, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!798, !1318, !1338}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1327, !1328, !1329, !1330, !1331}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1319, file: !31, line: 321, baseType: !842, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1319, file: !31, line: 326, baseType: !1008, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1319, file: !31, line: 327, baseType: !1324, size: 64, offset: 128)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1318, !643, !643}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1319, file: !31, line: 328, baseType: !300, size: 64, offset: 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1319, file: !31, line: 329, baseType: !326, size: 32, offset: 256)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1319, file: !31, line: 330, baseType: !339, size: 16, offset: 288)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1319, file: !31, line: 331, baseType: !339, size: 16, offset: 304)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1319, file: !31, line: 332, baseType: !1332, size: 64, offset: 320)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1319, file: !31, line: 332, size: 64, elements: !1333)
!1333 = !{!1334, !1335}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1332, file: !31, line: 333, baseType: !7, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1332, file: !31, line: 334, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1259, file: !31, line: 402, baseType: !1341, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!326, !1209, !1196, !1196, !11}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1259, file: !31, line: 404, baseType: !1345, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!484, !1196, !1348}
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1349, line: 305, baseType: !7)
!1349 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1259, file: !31, line: 405, baseType: !1311, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1259, file: !31, line: 406, baseType: !1274, size: 64, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1259, file: !31, line: 407, baseType: !1353, size: 64, offset: 1088)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{!326, !1196, !648, !648}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1259, file: !31, line: 409, baseType: !1357, size: 64, offset: 1152)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{null, !1196, !1360, !1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1259, file: !31, line: 410, baseType: !1362, size: 64, offset: 1216)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DISubroutineType(types: !1364)
!1364 = !{!326, !1209, !1196}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1259, file: !31, line: 413, baseType: !1366, size: 64, offset: 1280)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DISubroutineType(types: !1368)
!1368 = !{!326, !1369, !842, !1371}
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1259, file: !31, line: 415, baseType: !1373, size: 64, offset: 1344)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{null, !842}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1210, file: !31, line: 466, baseType: !648, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1210, file: !31, line: 467, baseType: !1378, size: 32, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1379, line: 8, baseType: !419)
!1379 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1210, file: !31, line: 468, baseType: !729, offset: 992)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1210, file: !31, line: 469, baseType: !701, size: 128, offset: 1024)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1210, file: !31, line: 470, baseType: !300, size: 64, offset: 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1205, file: !1198, line: 87, baseType: !648, size: 64, offset: 192)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1205, file: !1198, line: 94, baseType: !648, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 96, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 96, size: 64, elements: !1387)
!1387 = !{!1388}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1386, file: !1198, line: 101, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !299, line: 143, baseType: !678)
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 103, baseType: !1391, size: 320)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 103, size: 320, elements: !1392)
!1392 = !{!1393, !1403, !1406, !1407}
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1198, line: 104, baseType: !1394, size: 128)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1198, line: 104, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1394, file: !1198, line: 105, baseType: !701, size: 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1198, line: 106, baseType: !1398, size: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1394, file: !1198, line: 106, size: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1398, file: !1198, line: 107, baseType: !1196, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1398, file: !1198, line: 109, baseType: !326, size: 32, offset: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1398, file: !1198, line: 110, baseType: !326, size: 32, offset: 96)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1391, file: !1198, line: 117, baseType: !1404, size: 64, offset: 128)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1198, line: 117, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1391, file: !1198, line: 119, baseType: !300, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1198, line: 120, baseType: !1408, size: 64, offset: 256)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1198, line: 120, size: 64, elements: !1409)
!1409 = !{!1410, !1411, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1408, file: !1198, line: 121, baseType: !300, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1408, file: !1198, line: 122, baseType: !648, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1198, line: 123, baseType: !1413, size: 32)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1198, line: 123, size: 32, elements: !1414)
!1414 = !{!1415, !1416, !1417}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1413, file: !1198, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1413, file: !1198, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1413, file: !1198, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 130, baseType: !1419, size: 192)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 130, size: 192, elements: !1420)
!1420 = !{!1421, !1422, !1423, !1424, !1425}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1419, file: !1198, line: 131, baseType: !648, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1419, file: !1198, line: 134, baseType: !351, size: 8, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1419, file: !1198, line: 135, baseType: !351, size: 8, offset: 72)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1419, file: !1198, line: 136, baseType: !443, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1419, file: !1198, line: 137, baseType: !7, size: 32, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 139, baseType: !1427, size: 256)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 139, size: 256, elements: !1428)
!1428 = !{!1429, !1430, !1431}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1427, file: !1198, line: 140, baseType: !648, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1427, file: !1198, line: 141, baseType: !443, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1427, file: !1198, line: 143, baseType: !701, size: 128, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 145, baseType: !1433, size: 256)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 145, size: 256, elements: !1434)
!1434 = !{!1435, !1436, !1438, !1439, !2713}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1433, file: !1198, line: 146, baseType: !648, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1433, file: !1198, line: 147, baseType: !1437, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1188, line: 509, baseType: !1196)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1433, file: !1198, line: 148, baseType: !648, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1198, line: 149, baseType: !1440, size: 64, offset: 192)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1198, line: 149, size: 64, elements: !1441)
!1441 = !{!1442, !2712}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1440, file: !1198, line: 150, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1198, line: 388, size: 7296, elements: !1445)
!1445 = !{!1446, !2708}
!1446 = !DIDerivedType(tag: DW_TAG_member, scope: !1444, file: !1198, line: 389, baseType: !1447, size: 7296)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1444, file: !1198, line: 389, size: 7296, elements: !1448)
!1448 = !{!1449, !1487, !1488, !1489, !1493, !1494, !1495, !1496, !1497, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1538, !1544, !1547, !1593, !1594, !2692, !2693, !2696, !2697, !2698, !2701, !2702, !2703, !2706, !2707}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1447, file: !1198, line: 390, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1198, line: 305, size: 1472, elements: !1452)
!1452 = !{!1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1467, !1468, !1473, !1474, !1477, !1481, !1482, !1483, !1484, !1485}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1451, file: !1198, line: 308, baseType: !648, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1451, file: !1198, line: 309, baseType: !648, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1451, file: !1198, line: 313, baseType: !1450, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1451, file: !1198, line: 313, baseType: !1450, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1451, file: !1198, line: 315, baseType: !1231, size: 192, align: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1451, file: !1198, line: 323, baseType: !648, size: 64, offset: 448)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1451, file: !1198, line: 327, baseType: !1443, size: 64, offset: 512)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1451, file: !1198, line: 333, baseType: !1461, size: 64, offset: 576)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1188, line: 284, baseType: !1462)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1188, line: 284, size: 64, elements: !1463)
!1463 = !{!1464}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1462, file: !1188, line: 284, baseType: !1465, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1466, line: 19, baseType: !648)
!1466 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1451, file: !1198, line: 334, baseType: !648, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1451, file: !1198, line: 343, baseType: !1469, size: 256, offset: 704)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1451, file: !1198, line: 340, size: 256, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1469, file: !1198, line: 341, baseType: !1231, size: 192, align: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1469, file: !1198, line: 342, baseType: !648, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1451, file: !1198, line: 351, baseType: !701, size: 128, offset: 960)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1451, file: !1198, line: 353, baseType: !1475, size: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1198, line: 353, flags: DIFlagFwdDecl)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1451, file: !1198, line: 356, baseType: !1478, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1480)
!1480 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1198, line: 356, flags: DIFlagFwdDecl)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1451, file: !1198, line: 359, baseType: !648, size: 64, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1451, file: !1198, line: 361, baseType: !842, size: 64, offset: 1280)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1451, file: !1198, line: 362, baseType: !300, size: 64, offset: 1344)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1451, file: !1198, line: 365, baseType: !1242, size: 64, offset: 1408)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1451, file: !1198, line: 373, baseType: !1486, offset: 1472)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1198, line: 296, elements: !743)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1447, file: !1198, line: 391, baseType: !1227, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1447, file: !1198, line: 392, baseType: !678, size: 64, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1447, file: !1198, line: 394, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!648, !842, !648, !648, !648, !648}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1447, file: !1198, line: 398, baseType: !648, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1447, file: !1198, line: 399, baseType: !648, size: 64, offset: 320)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1447, file: !1198, line: 405, baseType: !648, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1447, file: !1198, line: 406, baseType: !648, size: 64, offset: 448)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1447, file: !1198, line: 407, baseType: !1498, size: 64, offset: 512)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1188, line: 286, baseType: !1500)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 286, size: 64, elements: !1501)
!1501 = !{!1502}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1500, file: !1188, line: 286, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1466, line: 18, baseType: !648)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1447, file: !1198, line: 416, baseType: !443, size: 32, offset: 576)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1447, file: !1198, line: 428, baseType: !443, size: 32, offset: 608)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1447, file: !1198, line: 437, baseType: !443, size: 32, offset: 640)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1447, file: !1198, line: 447, baseType: !443, size: 32, offset: 672)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1447, file: !1198, line: 450, baseType: !1242, size: 64, offset: 704)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1447, file: !1198, line: 452, baseType: !326, size: 32, offset: 768)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1447, file: !1198, line: 454, baseType: !729, offset: 800)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1447, file: !1198, line: 457, baseType: !1238, size: 256, offset: 832)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1447, file: !1198, line: 459, baseType: !701, size: 128, offset: 1088)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1447, file: !1198, line: 466, baseType: !648, size: 64, offset: 1216)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1447, file: !1198, line: 467, baseType: !648, size: 64, offset: 1280)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1447, file: !1198, line: 469, baseType: !648, size: 64, offset: 1344)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1447, file: !1198, line: 470, baseType: !648, size: 64, offset: 1408)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1447, file: !1198, line: 471, baseType: !1244, size: 64, offset: 1472)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1447, file: !1198, line: 472, baseType: !648, size: 64, offset: 1536)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1447, file: !1198, line: 473, baseType: !648, size: 64, offset: 1600)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1447, file: !1198, line: 474, baseType: !648, size: 64, offset: 1664)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1447, file: !1198, line: 475, baseType: !648, size: 64, offset: 1728)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1447, file: !1198, line: 477, baseType: !729, offset: 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1447, file: !1198, line: 478, baseType: !648, size: 64, offset: 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1447, file: !1198, line: 478, baseType: !648, size: 64, offset: 1856)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1447, file: !1198, line: 478, baseType: !648, size: 64, offset: 1920)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1447, file: !1198, line: 478, baseType: !648, size: 64, offset: 1984)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1447, file: !1198, line: 479, baseType: !648, size: 64, offset: 2048)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1447, file: !1198, line: 479, baseType: !648, size: 64, offset: 2112)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1447, file: !1198, line: 479, baseType: !648, size: 64, offset: 2176)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1447, file: !1198, line: 480, baseType: !648, size: 64, offset: 2240)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1447, file: !1198, line: 480, baseType: !648, size: 64, offset: 2304)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1447, file: !1198, line: 480, baseType: !648, size: 64, offset: 2368)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1447, file: !1198, line: 480, baseType: !648, size: 64, offset: 2432)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1447, file: !1198, line: 482, baseType: !1535, size: 2816, offset: 2496)
!1535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 2816, elements: !1536)
!1536 = !{!1537}
!1537 = !DISubrange(count: 44)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1447, file: !1198, line: 488, baseType: !1539, size: 256, offset: 5312)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1540, line: 60, size: 256, elements: !1541)
!1540 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1541 = !{!1542}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1539, file: !1540, line: 61, baseType: !1543, size: 256)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 256, elements: !578)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1447, file: !1198, line: 490, baseType: !1545, size: 64, offset: 5568)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1198, line: 490, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1447, file: !1198, line: 493, baseType: !1548, size: 896, offset: 5632)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1549, line: 53, baseType: !1550)
!1549 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1549, line: 13, size: 896, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1558, !1559, !1566, !1567, !1587, !1588, !1589}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1550, file: !1549, line: 18, baseType: !678, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1550, file: !1549, line: 28, baseType: !1244, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1550, file: !1549, line: 31, baseType: !1238, size: 256, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1550, file: !1549, line: 32, baseType: !1556, size: 64, offset: 384)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1549, line: 32, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1550, file: !1549, line: 37, baseType: !343, size: 16, offset: 448)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1550, file: !1549, line: 40, baseType: !1560, size: 192, offset: 512)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1561, line: 53, size: 192, elements: !1562)
!1561 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1560, file: !1561, line: 54, baseType: !1242, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1560, file: !1561, line: 55, baseType: !729, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1560, file: !1561, line: 59, baseType: !701, size: 128, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1550, file: !1549, line: 41, baseType: !300, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1550, file: !1549, line: 42, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1571, line: 13, size: 896, elements: !1572)
!1571 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1572 = !{!1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1570, file: !1571, line: 14, baseType: !300, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1570, file: !1571, line: 15, baseType: !648, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1570, file: !1571, line: 17, baseType: !648, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1570, file: !1571, line: 17, baseType: !648, size: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1570, file: !1571, line: 19, baseType: !643, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1570, file: !1571, line: 21, baseType: !643, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1570, file: !1571, line: 22, baseType: !643, size: 64, offset: 384)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1570, file: !1571, line: 23, baseType: !643, size: 64, offset: 448)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1570, file: !1571, line: 24, baseType: !643, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1570, file: !1571, line: 25, baseType: !643, size: 64, offset: 576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1570, file: !1571, line: 26, baseType: !643, size: 64, offset: 640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1570, file: !1571, line: 27, baseType: !643, size: 64, offset: 704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1570, file: !1571, line: 28, baseType: !643, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1570, file: !1571, line: 29, baseType: !643, size: 64, offset: 832)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1550, file: !1549, line: 44, baseType: !443, size: 32, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1550, file: !1549, line: 50, baseType: !339, size: 16, offset: 864)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1550, file: !1549, line: 51, baseType: !1590, size: 16, offset: 880)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !340, line: 18, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !342, line: 23, baseType: !1592)
!1592 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1447, file: !1198, line: 495, baseType: !648, size: 64, offset: 6528)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1447, file: !1198, line: 497, baseType: !1595, size: 64, offset: 6592)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !1198, line: 381, size: 384, elements: !1597)
!1597 = !{!1598, !1599, !2691}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1596, file: !1198, line: 382, baseType: !443, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1596, file: !1198, line: 383, baseType: !1600, size: 128, offset: 64)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !1198, line: 376, size: 128, elements: !1601)
!1601 = !{!1602, !2689}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1600, file: !1198, line: 377, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1605, line: 640, size: 48640, elements: !1606)
!1605 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1606 = !{!1607, !1613, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1628, !1646, !1657, !1738, !1739, !1740, !1751, !1752, !1754, !1755, !1756, !1757, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1838, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1876, !1878, !1879, !1880, !1892, !1893, !1894, !1895, !1896, !1897, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1921, !1926, !2108, !2109, !2110, !2111, !2115, !2118, !2121, !2124, !2127, !2130, !2231, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2277, !2278, !2279, !2280, !2281, !2286, !2287, !2288, !2291, !2292, !2295, !2298, !2301, !2304, !2347, !2350, !2351, !2430, !2431, !2434, !2435, !2438, !2439, !2440, !2444, !2445, !2446, !2459, !2460, !2461, !2471, !2476, !2479, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1604, file: !1605, line: 646, baseType: !1608, size: 128)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1609, line: 56, size: 128, elements: !1610)
!1609 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1609, line: 57, baseType: !648, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1608, file: !1609, line: 58, baseType: !419, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1604, file: !1605, line: 649, baseType: !1614, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !643)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1604, file: !1605, line: 657, baseType: !300, size: 64, offset: 192)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1604, file: !1605, line: 658, baseType: !438, size: 32, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1604, file: !1605, line: 660, baseType: !7, size: 32, offset: 288)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1604, file: !1605, line: 661, baseType: !7, size: 32, offset: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1604, file: !1605, line: 684, baseType: !326, size: 32, offset: 352)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1604, file: !1605, line: 686, baseType: !326, size: 32, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1604, file: !1605, line: 687, baseType: !326, size: 32, offset: 416)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1604, file: !1605, line: 688, baseType: !326, size: 32, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1604, file: !1605, line: 689, baseType: !7, size: 32, offset: 480)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1604, file: !1605, line: 691, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1605, line: 691, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1604, file: !1605, line: 692, baseType: !1629, size: 832, offset: 576)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1605, line: 451, size: 832, elements: !1630)
!1630 = !{!1631, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1629, file: !1605, line: 453, baseType: !1632, size: 128)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1605, line: 325, size: 128, elements: !1633)
!1633 = !{!1634, !1635}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1632, file: !1605, line: 326, baseType: !648, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1632, file: !1605, line: 327, baseType: !419, size: 32, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1629, file: !1605, line: 454, baseType: !1231, size: 192, align: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1629, file: !1605, line: 455, baseType: !701, size: 128, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1629, file: !1605, line: 456, baseType: !7, size: 32, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1629, file: !1605, line: 458, baseType: !678, size: 64, offset: 512)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1629, file: !1605, line: 459, baseType: !678, size: 64, offset: 576)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1629, file: !1605, line: 460, baseType: !678, size: 64, offset: 640)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1629, file: !1605, line: 461, baseType: !678, size: 64, offset: 704)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1629, file: !1605, line: 463, baseType: !678, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1629, file: !1605, line: 465, baseType: !1645, offset: 832)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1605, line: 415, elements: !743)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1604, file: !1605, line: 693, baseType: !1647, size: 384, offset: 1408)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1605, line: 489, size: 384, elements: !1648)
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1654, !1655}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1647, file: !1605, line: 490, baseType: !701, size: 128)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1647, file: !1605, line: 491, baseType: !648, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1647, file: !1605, line: 492, baseType: !648, size: 64, offset: 192)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1647, file: !1605, line: 493, baseType: !7, size: 32, offset: 256)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1647, file: !1605, line: 494, baseType: !343, size: 16, offset: 288)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1647, file: !1605, line: 495, baseType: !343, size: 16, offset: 304)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1647, file: !1605, line: 497, baseType: !1656, size: 64, offset: 320)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1604, file: !1605, line: 697, baseType: !1658, size: 1792, offset: 1792)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1605, line: 507, size: 1792, elements: !1659)
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1735, !1736}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1658, file: !1605, line: 508, baseType: !1231, size: 192, align: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1658, file: !1605, line: 515, baseType: !678, size: 64, offset: 192)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1658, file: !1605, line: 516, baseType: !678, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1658, file: !1605, line: 517, baseType: !678, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1658, file: !1605, line: 518, baseType: !678, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1658, file: !1605, line: 519, baseType: !678, size: 64, offset: 448)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1658, file: !1605, line: 526, baseType: !1248, size: 64, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1658, file: !1605, line: 527, baseType: !678, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1658, file: !1605, line: 528, baseType: !7, size: 32, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1658, file: !1605, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1658, file: !1605, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1658, file: !1605, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1658, file: !1605, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1658, file: !1605, line: 563, baseType: !1674, size: 512, offset: 704)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !1675)
!1675 = !{!1676, !1684, !1685, !1690, !1731, !1732, !1733, !1734}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1674, file: !6, line: 119, baseType: !1677, size: 256)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1678, line: 9, size: 256, elements: !1679)
!1678 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1679 = !{!1680, !1681}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1677, file: !1678, line: 10, baseType: !1231, size: 192, align: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1677, file: !1678, line: 11, baseType: !1682, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1683, line: 29, baseType: !1248)
!1683 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1674, file: !6, line: 120, baseType: !1682, size: 64, offset: 256)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1674, file: !6, line: 121, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!5, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1674, file: !6, line: 122, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !1693)
!1693 = !{!1694, !1712, !1713, !1716, !1721, !1722, !1726, !1730}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1692, file: !6, line: 160, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1696, file: !6, line: 215, baseType: !1251)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1696, file: !6, line: 216, baseType: !7, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1696, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1696, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1696, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1696, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1696, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1696, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1696, file: !6, line: 233, baseType: !1682, size: 64, offset: 128)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1696, file: !6, line: 234, baseType: !1689, size: 64, offset: 192)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1696, file: !6, line: 235, baseType: !1682, size: 64, offset: 256)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1696, file: !6, line: 236, baseType: !1689, size: 64, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1696, file: !6, line: 237, baseType: !1711, size: 4096, offset: 512)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1692, size: 4096, elements: !464)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1692, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1692, file: !6, line: 162, baseType: !1714, size: 32, offset: 96)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !299, line: 27, baseType: !1715)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !800, line: 96, baseType: !326)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1692, file: !6, line: 163, baseType: !1717, size: 32, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !878, line: 276, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !878, line: 276, size: 32, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1718, file: !878, line: 276, baseType: !882, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1692, file: !6, line: 164, baseType: !1689, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1692, file: !6, line: 165, baseType: !1723, size: 128, offset: 256)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1678, line: 14, size: 128, elements: !1724)
!1724 = !{!1725}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1723, file: !1678, line: 15, baseType: !1223, size: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1692, file: !6, line: 166, baseType: !1727, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!1682}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1692, file: !6, line: 167, baseType: !1682, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1674, file: !6, line: 123, baseType: !349, size: 8, offset: 448)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1674, file: !6, line: 124, baseType: !349, size: 8, offset: 456)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1674, file: !6, line: 125, baseType: !349, size: 8, offset: 464)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1674, file: !6, line: 126, baseType: !349, size: 8, offset: 472)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1658, file: !1605, line: 572, baseType: !1674, size: 512, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1658, file: !1605, line: 580, baseType: !1737, size: 64, offset: 1728)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1604, file: !1605, line: 721, baseType: !7, size: 32, offset: 3584)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1604, file: !1605, line: 722, baseType: !326, size: 32, offset: 3616)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1604, file: !1605, line: 723, baseType: !1741, size: 64, offset: 3648)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1744, line: 17, baseType: !1745)
!1744 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1744, line: 17, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1745, file: !1744, line: 17, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 64, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 1)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1604, file: !1605, line: 724, baseType: !1743, size: 64, offset: 3712)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1604, file: !1605, line: 749, baseType: !1753, offset: 3776)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1605, line: 290, elements: !743)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1604, file: !1605, line: 751, baseType: !701, size: 128, offset: 3776)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1604, file: !1605, line: 757, baseType: !1443, size: 64, offset: 3904)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1604, file: !1605, line: 758, baseType: !1443, size: 64, offset: 3968)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1604, file: !1605, line: 761, baseType: !1758, size: 320, offset: 4032)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1540, line: 34, size: 320, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1758, file: !1540, line: 35, baseType: !678, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1758, file: !1540, line: 36, baseType: !1762, size: 256, offset: 64)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 256, elements: !578)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1604, file: !1605, line: 766, baseType: !326, size: 32, offset: 4352)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1604, file: !1605, line: 767, baseType: !326, size: 32, offset: 4384)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1604, file: !1605, line: 768, baseType: !326, size: 32, offset: 4416)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1604, file: !1605, line: 770, baseType: !326, size: 32, offset: 4448)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1604, file: !1605, line: 772, baseType: !648, size: 64, offset: 4480)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1604, file: !1605, line: 775, baseType: !7, size: 32, offset: 4544)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1604, file: !1605, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1604, file: !1605, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1604, file: !1605, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1604, file: !1605, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1604, file: !1605, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1604, file: !1605, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1604, file: !1605, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1604, file: !1605, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1604, file: !1605, line: 831, baseType: !648, size: 64, offset: 4672)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1604, file: !1605, line: 833, baseType: !1779, size: 384, offset: 4736)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !48, line: 25, size: 384, elements: !1780)
!1780 = !{!1781, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1779, file: !48, line: 26, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!643, !1785}
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !1779, file: !48, line: 27, baseType: !1787, size: 320, offset: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1779, file: !48, line: 27, size: 320, elements: !1788)
!1788 = !{!1789, !1798, !1823}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1787, file: !48, line: 36, baseType: !1790, size: 320)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !48, line: 29, size: 320, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1790, file: !48, line: 30, baseType: !595, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1790, file: !48, line: 31, baseType: !419, size: 32, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1790, file: !48, line: 32, baseType: !419, size: 32, offset: 96)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1790, file: !48, line: 33, baseType: !419, size: 32, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1790, file: !48, line: 34, baseType: !678, size: 64, offset: 192)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1790, file: !48, line: 35, baseType: !595, size: 64, offset: 256)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1787, file: !48, line: 46, baseType: !1799, size: 192)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !48, line: 38, size: 192, elements: !1800)
!1800 = !{!1801, !1802, !1803, !1822}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1799, file: !48, line: 39, baseType: !1714, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !48, line: 40, baseType: !47, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !48, line: 41, baseType: !1804, size: 64, offset: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !48, line: 41, size: 64, elements: !1805)
!1805 = !{!1806, !1814}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1804, file: !48, line: 42, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1809, line: 7, size: 128, elements: !1810)
!1809 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1810 = !{!1811, !1813}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1808, file: !1809, line: 8, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !800, line: 93, baseType: !577)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1808, file: !1809, line: 9, baseType: !577, size: 64, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1804, file: !48, line: 43, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1817, line: 7, size: 64, elements: !1818)
!1817 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1816, file: !1817, line: 8, baseType: !1820, size: 32)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1817, line: 5, baseType: !685)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1816, file: !1817, line: 9, baseType: !685, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1799, file: !48, line: 45, baseType: !678, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1787, file: !48, line: 54, baseType: !1824, size: 256)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1787, file: !48, line: 48, size: 256, elements: !1825)
!1825 = !{!1826, !1834, !1835, !1836, !1837}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1824, file: !48, line: 49, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1829, line: 36, size: 64, elements: !1830)
!1829 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1828, file: !1829, line: 37, baseType: !326, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1828, file: !1829, line: 38, baseType: !1592, size: 16, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1828, file: !1829, line: 39, baseType: !1592, size: 16, offset: 48)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1824, file: !48, line: 50, baseType: !326, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1824, file: !48, line: 51, baseType: !326, size: 32, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1824, file: !48, line: 52, baseType: !648, size: 64, offset: 128)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1824, file: !48, line: 53, baseType: !648, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1604, file: !1605, line: 835, baseType: !1839, size: 32, offset: 5120)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !299, line: 22, baseType: !1840)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !800, line: 28, baseType: !326)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1604, file: !1605, line: 836, baseType: !1839, size: 32, offset: 5152)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1604, file: !1605, line: 840, baseType: !648, size: 64, offset: 5184)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1604, file: !1605, line: 849, baseType: !1603, size: 64, offset: 5248)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1604, file: !1605, line: 852, baseType: !1603, size: 64, offset: 5312)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1604, file: !1605, line: 857, baseType: !701, size: 128, offset: 5376)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1604, file: !1605, line: 858, baseType: !701, size: 128, offset: 5504)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1604, file: !1605, line: 859, baseType: !1603, size: 64, offset: 5632)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1604, file: !1605, line: 867, baseType: !701, size: 128, offset: 5696)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1604, file: !1605, line: 868, baseType: !701, size: 128, offset: 5824)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1604, file: !1605, line: 871, baseType: !1851, size: 64, offset: 5952)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1853)
!1853 = !{!1854, !1855, !1856, !1857, !1859, !1860, !1867, !1868}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1852, file: !40, line: 61, baseType: !438, size: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1852, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1852, file: !40, line: 63, baseType: !729, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1852, file: !40, line: 65, baseType: !1858, size: 256, offset: 64)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1110, size: 256, elements: !578)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1852, file: !40, line: 66, baseType: !1110, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1852, file: !40, line: 68, baseType: !1861, size: 128, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1862, line: 40, baseType: !1863)
!1862 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1862, line: 36, size: 128, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1863, file: !1862, line: 37, baseType: !729)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1863, file: !1862, line: 38, baseType: !701, size: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1852, file: !40, line: 69, baseType: !855, size: 128, align: 64, offset: 512)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1852, file: !40, line: 70, baseType: !1869, size: 128, offset: 640)
!1869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1870, size: 128, elements: !1749)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1870, file: !40, line: 55, baseType: !326, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1870, file: !40, line: 56, baseType: !1874, size: 64, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1604, file: !1605, line: 872, baseType: !1877, size: 512, offset: 6016)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1114, size: 512, elements: !578)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1604, file: !1605, line: 873, baseType: !701, size: 128, offset: 6528)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1604, file: !1605, line: 874, baseType: !701, size: 128, offset: 6656)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1604, file: !1605, line: 876, baseType: !1881, size: 64, offset: 6784)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1883, line: 26, size: 192, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1882, file: !1883, line: 27, baseType: !7, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1882, file: !1883, line: 28, baseType: !1887, size: 128, offset: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1888, line: 43, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1889 = !{!1890, !1891}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1887, file: !1888, line: 44, baseType: !1251)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1887, file: !1888, line: 45, baseType: !701, size: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1604, file: !1605, line: 879, baseType: !1180, size: 64, offset: 6848)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1604, file: !1605, line: 882, baseType: !1180, size: 64, offset: 6912)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1604, file: !1605, line: 884, baseType: !678, size: 64, offset: 6976)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1604, file: !1605, line: 885, baseType: !678, size: 64, offset: 7040)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1604, file: !1605, line: 890, baseType: !678, size: 64, offset: 7104)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1604, file: !1605, line: 891, baseType: !1898, size: 128, offset: 7168)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1605, line: 242, size: 128, elements: !1899)
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1898, file: !1605, line: 244, baseType: !678, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1898, file: !1605, line: 245, baseType: !678, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1898, file: !1605, line: 246, baseType: !1251, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1604, file: !1605, line: 900, baseType: !648, size: 64, offset: 7296)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1604, file: !1605, line: 901, baseType: !648, size: 64, offset: 7360)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1604, file: !1605, line: 904, baseType: !678, size: 64, offset: 7424)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1604, file: !1605, line: 907, baseType: !678, size: 64, offset: 7488)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1604, file: !1605, line: 910, baseType: !648, size: 64, offset: 7552)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1604, file: !1605, line: 911, baseType: !648, size: 64, offset: 7616)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1604, file: !1605, line: 914, baseType: !1910, size: 640, offset: 7680)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1911, line: 123, size: 640, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1919, !1920}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1910, file: !1911, line: 124, baseType: !1914, size: 576)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1915, size: 576, elements: !540)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1911, line: 108, size: 192, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1915, file: !1911, line: 109, baseType: !678, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1915, file: !1911, line: 110, baseType: !1723, size: 128, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1910, file: !1911, line: 125, baseType: !7, size: 32, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1910, file: !1911, line: 126, baseType: !7, size: 32, offset: 608)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1604, file: !1605, line: 917, baseType: !1922, size: 192, offset: 8320)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1911, line: 134, size: 192, elements: !1923)
!1923 = !{!1924, !1925}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1922, file: !1911, line: 135, baseType: !855, size: 128, align: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1922, file: !1911, line: 136, baseType: !7, size: 32, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1604, file: !1605, line: 923, baseType: !1927, size: 64, offset: 8512)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1929)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1930, line: 111, size: 1280, elements: !1931)
!1930 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1951, !1952, !1953, !1954, !1955, !1956, !2061, !2062, !2063, !2064, !2090, !2093, !2103}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1929, file: !1930, line: 112, baseType: !443, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1929, file: !1930, line: 120, baseType: !917, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1929, file: !1930, line: 121, baseType: !925, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1929, file: !1930, line: 122, baseType: !917, size: 32, offset: 96)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1929, file: !1930, line: 123, baseType: !925, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1929, file: !1930, line: 124, baseType: !917, size: 32, offset: 160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1929, file: !1930, line: 125, baseType: !925, size: 32, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1929, file: !1930, line: 126, baseType: !917, size: 32, offset: 224)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1929, file: !1930, line: 127, baseType: !925, size: 32, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1929, file: !1930, line: 128, baseType: !7, size: 32, offset: 288)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1929, file: !1930, line: 129, baseType: !1943, size: 64, offset: 320)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1944, line: 26, baseType: !1945)
!1944 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1944, line: 24, size: 64, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1945, file: !1944, line: 25, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 64, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 2)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1929, file: !1930, line: 130, baseType: !1943, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1929, file: !1930, line: 131, baseType: !1943, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1929, file: !1930, line: 132, baseType: !1943, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1929, file: !1930, line: 133, baseType: !1943, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1929, file: !1930, line: 135, baseType: !351, size: 8, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1929, file: !1930, line: 137, baseType: !1957, size: 64, offset: 704)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1959, line: 189, size: 1664, elements: !1960)
!1959 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1960 = !{!1961, !1962, !1965, !1970, !1971, !1974, !1975, !1980, !1981, !1982, !1983, !1985, !1986, !1987, !1988, !1989, !2025, !2046}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1958, file: !1959, line: 190, baseType: !438, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1958, file: !1959, line: 191, baseType: !1963, size: 32, offset: 32)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1959, line: 28, baseType: !1964)
!1964 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !299, line: 98, baseType: !685)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 192, baseType: !1966, size: 192, offset: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 192, size: 192, elements: !1967)
!1967 = !{!1968, !1969}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1966, file: !1959, line: 193, baseType: !701, size: 128)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1966, file: !1959, line: 194, baseType: !1231, size: 192, align: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1958, file: !1959, line: 199, baseType: !1238, size: 256, offset: 256)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1958, file: !1959, line: 200, baseType: !1972, size: 64, offset: 512)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1959, line: 200, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1958, file: !1959, line: 201, baseType: !300, size: 64, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 202, baseType: !1976, size: 64, offset: 640)
!1976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 202, size: 64, elements: !1977)
!1977 = !{!1978, !1979}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1976, file: !1959, line: 203, baseType: !1015, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1976, file: !1959, line: 204, baseType: !1015, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1958, file: !1959, line: 206, baseType: !1015, size: 64, offset: 704)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1958, file: !1959, line: 207, baseType: !917, size: 32, offset: 768)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1958, file: !1959, line: 208, baseType: !925, size: 32, offset: 800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1958, file: !1959, line: 209, baseType: !1984, size: 32, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1959, line: 31, baseType: !1034)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1958, file: !1959, line: 210, baseType: !343, size: 16, offset: 864)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1958, file: !1959, line: 211, baseType: !343, size: 16, offset: 880)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1958, file: !1959, line: 215, baseType: !1592, size: 16, offset: 896)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1958, file: !1959, line: 222, baseType: !648, size: 64, offset: 960)
!1989 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 239, baseType: !1990, size: 320, offset: 1024)
!1990 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 239, size: 320, elements: !1991)
!1991 = !{!1992, !2017}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1990, file: !1959, line: 240, baseType: !1993, size: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1959, line: 108, size: 320, elements: !1994)
!1994 = !{!1995, !1996, !2006, !2009, !2016}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1993, file: !1959, line: 110, baseType: !648, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, scope: !1993, file: !1959, line: 111, baseType: !1997, size: 64, offset: 64)
!1997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1993, file: !1959, line: 111, size: 64, elements: !1998)
!1998 = !{!1999, !2005}
!1999 = !DIDerivedType(tag: DW_TAG_member, scope: !1997, file: !1959, line: 112, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1997, file: !1959, line: 112, size: 64, elements: !2001)
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2000, file: !1959, line: 114, baseType: !339, size: 16)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2000, file: !1959, line: 115, baseType: !2004, size: 48, offset: 16)
!2004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 48, elements: !613)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1997, file: !1959, line: 121, baseType: !648, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1993, file: !1959, line: 123, baseType: !2007, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1959, line: 96, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1993, file: !1959, line: 124, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1959, line: 102, size: 192, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2011, file: !1959, line: 103, baseType: !855, size: 128, align: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2011, file: !1959, line: 104, baseType: !438, size: 32, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2011, file: !1959, line: 105, baseType: !484, size: 8, offset: 160)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1993, file: !1959, line: 125, baseType: !309, size: 64, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, scope: !1990, file: !1959, line: 241, baseType: !2018, size: 320)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1990, file: !1959, line: 241, size: 320, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2018, file: !1959, line: 242, baseType: !648, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2018, file: !1959, line: 243, baseType: !648, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2018, file: !1959, line: 244, baseType: !2007, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2018, file: !1959, line: 245, baseType: !2010, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2018, file: !1959, line: 246, baseType: !332, size: 64, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, scope: !1958, file: !1959, line: 254, baseType: !2026, size: 256, offset: 1344)
!2026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1958, file: !1959, line: 254, size: 256, elements: !2027)
!2027 = !{!2028, !2034}
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2026, file: !1959, line: 255, baseType: !2029, size: 256)
!2029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1959, line: 128, size: 256, elements: !2030)
!2030 = !{!2031, !2032}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2029, file: !1959, line: 129, baseType: !300, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2029, file: !1959, line: 130, baseType: !2033, size: 256)
!2033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 256, elements: !578)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2026, file: !1959, line: 256, baseType: !2035, size: 256)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2026, file: !1959, line: 256, size: 256, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2035, file: !1959, line: 258, baseType: !701, size: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2035, file: !1959, line: 259, baseType: !2039, size: 128, offset: 128)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2040, line: 22, size: 128, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2045}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2039, file: !2040, line: 23, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2040, line: 23, flags: DIFlagFwdDecl)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2039, file: !2040, line: 24, baseType: !648, size: 64, offset: 64)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1958, file: !1959, line: 274, baseType: !2047, size: 64, offset: 1600)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1959, line: 170, size: 192, elements: !2049)
!2049 = !{!2050, !2059, !2060}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2048, file: !1959, line: 171, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1959, line: 165, baseType: !2052)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!326, !1957, !2055, !2057, !1957}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2029)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2048, file: !1959, line: 172, baseType: !1957, size: 64, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2048, file: !1959, line: 173, baseType: !2007, size: 64, offset: 128)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1929, file: !1930, line: 138, baseType: !1957, size: 64, offset: 768)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1929, file: !1930, line: 139, baseType: !1957, size: 64, offset: 832)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1929, file: !1930, line: 140, baseType: !1957, size: 64, offset: 896)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1929, file: !1930, line: 145, baseType: !2065, size: 64, offset: 960)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2067, line: 13, size: 896, elements: !2068)
!2067 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!2068 = !{!2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2066, file: !2067, line: 14, baseType: !438, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !2066, file: !2067, line: 15, baseType: !443, size: 32, offset: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !2066, file: !2067, line: 16, baseType: !443, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2066, file: !2067, line: 21, baseType: !1242, size: 64, offset: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !2066, file: !2067, line: 27, baseType: !648, size: 64, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2066, file: !2067, line: 28, baseType: !648, size: 64, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2066, file: !2067, line: 29, baseType: !1242, size: 64, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2066, file: !2067, line: 32, baseType: !1114, size: 128, offset: 384)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2066, file: !2067, line: 33, baseType: !917, size: 32, offset: 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2066, file: !2067, line: 37, baseType: !1242, size: 64, offset: 576)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2066, file: !2067, line: 44, baseType: !2080, size: 256, offset: 640)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2081, line: 15, size: 256, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2080, file: !2081, line: 16, baseType: !1251)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2080, file: !2081, line: 18, baseType: !326, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2080, file: !2081, line: 19, baseType: !326, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2080, file: !2081, line: 20, baseType: !326, size: 32, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2080, file: !2081, line: 21, baseType: !326, size: 32, offset: 96)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2080, file: !2081, line: 22, baseType: !648, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2080, file: !2081, line: 23, baseType: !648, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1929, file: !1930, line: 146, baseType: !2091, size: 64, offset: 1024)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1198, line: 516, flags: DIFlagFwdDecl)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1929, file: !1930, line: 147, baseType: !2094, size: 64, offset: 1088)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1930, line: 25, size: 64, elements: !2096)
!2096 = !{!2097, !2098, !2099}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2095, file: !1930, line: 26, baseType: !443, size: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2095, file: !1930, line: 27, baseType: !326, size: 32, offset: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2095, file: !1930, line: 28, baseType: !2100, offset: 64)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !925, elements: !2101)
!2101 = !{!2102}
!2102 = !DISubrange(count: 0)
!2103 = !DIDerivedType(tag: DW_TAG_member, scope: !1929, file: !1930, line: 149, baseType: !2104, size: 128, offset: 1152)
!2104 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1929, file: !1930, line: 149, size: 128, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2104, file: !1930, line: 150, baseType: !326, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2104, file: !1930, line: 151, baseType: !855, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1604, file: !1605, line: 926, baseType: !1927, size: 64, offset: 8576)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1604, file: !1605, line: 929, baseType: !1927, size: 64, offset: 8640)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1604, file: !1605, line: 933, baseType: !1957, size: 64, offset: 8704)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1604, file: !1605, line: 943, baseType: !2112, size: 128, offset: 8768)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 128, elements: !2113)
!2113 = !{!2114}
!2114 = !DISubrange(count: 16)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1604, file: !1605, line: 945, baseType: !2116, size: 64, offset: 8896)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1605, line: 49, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1604, file: !1605, line: 956, baseType: !2119, size: 64, offset: 8960)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1605, line: 45, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1604, file: !1605, line: 959, baseType: !2122, size: 64, offset: 9024)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1605, line: 959, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1604, file: !1605, line: 962, baseType: !2125, size: 64, offset: 9088)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1605, line: 66, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1604, file: !1605, line: 966, baseType: !2128, size: 64, offset: 9152)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1605, line: 50, flags: DIFlagFwdDecl)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1604, file: !1605, line: 969, baseType: !2131, size: 64, offset: 9216)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2133, line: 82, size: 7296, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2170, !2179, !2180, !2182, !2183, !2184, !2187, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2217, !2218, !2225, !2226, !2227, !2228, !2229, !2230}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2132, file: !2133, line: 83, baseType: !438, size: 32)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2132, file: !2133, line: 84, baseType: !443, size: 32, offset: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2132, file: !2133, line: 85, baseType: !326, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2132, file: !2133, line: 86, baseType: !701, size: 128, offset: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2132, file: !2133, line: 88, baseType: !1861, size: 128, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2132, file: !2133, line: 91, baseType: !1603, size: 64, offset: 384)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2132, file: !2133, line: 94, baseType: !2142, size: 192, offset: 448)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2143, line: 30, size: 192, elements: !2144)
!2143 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2144 = !{!2145, !2146}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2142, file: !2143, line: 31, baseType: !701, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2142, file: !2143, line: 32, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2148, line: 25, baseType: !2149)
!2148 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2148, line: 23, size: 64, elements: !2150)
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2149, file: !2148, line: 24, baseType: !1748, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2132, file: !2133, line: 97, baseType: !1110, size: 64, offset: 640)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2132, file: !2133, line: 100, baseType: !326, size: 32, offset: 704)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2132, file: !2133, line: 106, baseType: !326, size: 32, offset: 736)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2132, file: !2133, line: 107, baseType: !1603, size: 64, offset: 768)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2132, file: !2133, line: 110, baseType: !326, size: 32, offset: 832)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2132, file: !2133, line: 111, baseType: !7, size: 32, offset: 864)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2132, file: !2133, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2132, file: !2133, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2132, file: !2133, line: 128, baseType: !326, size: 32, offset: 928)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2132, file: !2133, line: 129, baseType: !701, size: 128, offset: 960)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2132, file: !2133, line: 132, baseType: !1674, size: 512, offset: 1088)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2132, file: !2133, line: 133, baseType: !1682, size: 64, offset: 1600)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2132, file: !2133, line: 140, baseType: !2165, size: 256, offset: 1664)
!2165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2166, size: 256, elements: !1949)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2133, line: 38, size: 128, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2166, file: !2133, line: 39, baseType: !678, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2166, file: !2133, line: 40, baseType: !678, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2132, file: !2133, line: 146, baseType: !2171, size: 192, offset: 1920)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2133, line: 66, size: 192, elements: !2172)
!2172 = !{!2173}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2171, file: !2133, line: 67, baseType: !2174, size: 192)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2133, line: 47, size: 192, elements: !2175)
!2175 = !{!2176, !2177, !2178}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2174, file: !2133, line: 48, baseType: !1244, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2174, file: !2133, line: 49, baseType: !1244, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2174, file: !2133, line: 50, baseType: !1244, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2132, file: !2133, line: 150, baseType: !1910, size: 640, offset: 2112)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2132, file: !2133, line: 153, baseType: !2181, size: 256, offset: 2752)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1851, size: 256, elements: !578)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2132, file: !2133, line: 159, baseType: !1851, size: 64, offset: 3008)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2132, file: !2133, line: 162, baseType: !326, size: 32, offset: 3072)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2132, file: !2133, line: 164, baseType: !2185, size: 64, offset: 3136)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2133, line: 164, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2132, file: !2133, line: 175, baseType: !2188, size: 32, offset: 3200)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !878, line: 805, baseType: !2189)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !878, line: 798, size: 32, elements: !2190)
!2190 = !{!2191, !2192}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2189, file: !878, line: 803, baseType: !877, size: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2189, file: !878, line: 804, baseType: !729, offset: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2132, file: !2133, line: 176, baseType: !678, size: 64, offset: 3264)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2132, file: !2133, line: 176, baseType: !678, size: 64, offset: 3328)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2132, file: !2133, line: 176, baseType: !678, size: 64, offset: 3392)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2132, file: !2133, line: 176, baseType: !678, size: 64, offset: 3456)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2132, file: !2133, line: 177, baseType: !678, size: 64, offset: 3520)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2132, file: !2133, line: 178, baseType: !678, size: 64, offset: 3584)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2132, file: !2133, line: 179, baseType: !1898, size: 128, offset: 3648)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2132, file: !2133, line: 180, baseType: !648, size: 64, offset: 3776)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2132, file: !2133, line: 180, baseType: !648, size: 64, offset: 3840)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2132, file: !2133, line: 180, baseType: !648, size: 64, offset: 3904)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2132, file: !2133, line: 180, baseType: !648, size: 64, offset: 3968)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2132, file: !2133, line: 181, baseType: !648, size: 64, offset: 4032)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2132, file: !2133, line: 181, baseType: !648, size: 64, offset: 4096)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2132, file: !2133, line: 181, baseType: !648, size: 64, offset: 4160)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2132, file: !2133, line: 181, baseType: !648, size: 64, offset: 4224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2132, file: !2133, line: 182, baseType: !648, size: 64, offset: 4288)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2132, file: !2133, line: 182, baseType: !648, size: 64, offset: 4352)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2132, file: !2133, line: 182, baseType: !648, size: 64, offset: 4416)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2132, file: !2133, line: 182, baseType: !648, size: 64, offset: 4480)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2132, file: !2133, line: 183, baseType: !648, size: 64, offset: 4544)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2132, file: !2133, line: 183, baseType: !648, size: 64, offset: 4608)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2132, file: !2133, line: 184, baseType: !2215, offset: 4672)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2216, line: 12, elements: !743)
!2216 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2132, file: !2133, line: 192, baseType: !574, size: 64, offset: 4672)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2132, file: !2133, line: 203, baseType: !2219, size: 2048, offset: 4736)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2220, size: 2048, elements: !2113)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2221, line: 43, size: 128, elements: !2222)
!2221 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2220, file: !2221, line: 44, baseType: !814, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2220, file: !2221, line: 45, baseType: !814, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2132, file: !2133, line: 220, baseType: !484, size: 8, offset: 6784)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2132, file: !2133, line: 221, baseType: !1592, size: 16, offset: 6800)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2132, file: !2133, line: 222, baseType: !1592, size: 16, offset: 6816)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2132, file: !2133, line: 224, baseType: !1443, size: 64, offset: 6848)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2132, file: !2133, line: 227, baseType: !1560, size: 192, offset: 6912)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2132, file: !2133, line: 233, baseType: !1560, size: 192, offset: 7104)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1604, file: !1605, line: 970, baseType: !2232, size: 64, offset: 9280)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2133, line: 20, size: 16576, elements: !2234)
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2233, file: !2133, line: 21, baseType: !729)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2233, file: !2133, line: 22, baseType: !438, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2233, file: !2133, line: 23, baseType: !1861, size: 128, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2233, file: !2133, line: 24, baseType: !2239, size: 16384, offset: 192)
!2239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2240, size: 16384, elements: !772)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2143, line: 49, size: 256, elements: !2241)
!2241 = !{!2242}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2240, file: !2143, line: 50, baseType: !2243, size: 256)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2143, line: 35, size: 256, elements: !2244)
!2244 = !{!2245, !2252, !2253, !2259}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2243, file: !2143, line: 37, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2247, line: 19, baseType: !2248)
!2247 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2247, line: 18, baseType: !2250)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{null, !326}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2243, file: !2143, line: 38, baseType: !648, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2243, file: !2143, line: 44, baseType: !2254, size: 64, offset: 128)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2247, line: 22, baseType: !2255)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2247, line: 21, baseType: !2257)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2243, file: !2143, line: 46, baseType: !2147, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1604, file: !1605, line: 971, baseType: !2147, size: 64, offset: 9344)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1604, file: !1605, line: 972, baseType: !2147, size: 64, offset: 9408)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1604, file: !1605, line: 974, baseType: !2147, size: 64, offset: 9472)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1604, file: !1605, line: 975, baseType: !2142, size: 192, offset: 9536)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1604, file: !1605, line: 976, baseType: !648, size: 64, offset: 9728)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1604, file: !1605, line: 977, baseType: !812, size: 64, offset: 9792)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1604, file: !1605, line: 978, baseType: !7, size: 32, offset: 9856)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1604, file: !1605, line: 980, baseType: !858, size: 64, offset: 9920)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1604, file: !1605, line: 989, baseType: !2269, size: 128, offset: 9984)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2270, line: 35, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2269, file: !2270, line: 36, baseType: !326, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2269, file: !2270, line: 37, baseType: !443, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2269, file: !2270, line: 38, baseType: !2275, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2270, line: 23, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1604, file: !1605, line: 992, baseType: !678, size: 64, offset: 10112)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1604, file: !1605, line: 993, baseType: !678, size: 64, offset: 10176)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1604, file: !1605, line: 996, baseType: !729, offset: 10240)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1604, file: !1605, line: 999, baseType: !1251, offset: 10240)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1604, file: !1605, line: 1001, baseType: !2282, size: 64, offset: 10240)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1605, line: 636, size: 64, elements: !2283)
!2283 = !{!2284}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2282, file: !1605, line: 637, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1604, file: !1605, line: 1005, baseType: !1223, size: 128, offset: 10304)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1604, file: !1605, line: 1007, baseType: !1603, size: 64, offset: 10432)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1604, file: !1605, line: 1009, baseType: !2289, size: 64, offset: 10496)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1605, line: 1009, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1604, file: !1605, line: 1043, baseType: !300, size: 64, offset: 10560)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1604, file: !1605, line: 1046, baseType: !2293, size: 64, offset: 10624)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1605, line: 41, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1604, file: !1605, line: 1050, baseType: !2296, size: 64, offset: 10688)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1605, line: 42, flags: DIFlagFwdDecl)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1604, file: !1605, line: 1054, baseType: !2299, size: 64, offset: 10752)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1605, line: 55, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1604, file: !1605, line: 1056, baseType: !2302, size: 64, offset: 10816)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1605, line: 40, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1604, file: !1605, line: 1058, baseType: !2305, size: 64, offset: 10880)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2307, line: 99, size: 704, elements: !2308)
!2307 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2334, !2335}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2306, file: !2307, line: 100, baseType: !1242, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2306, file: !2307, line: 101, baseType: !443, size: 32, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2306, file: !2307, line: 102, baseType: !443, size: 32, offset: 96)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2306, file: !2307, line: 105, baseType: !729, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2306, file: !2307, line: 107, baseType: !343, size: 16, offset: 128)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2306, file: !2307, line: 109, baseType: !1214, size: 128, offset: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2306, file: !2307, line: 110, baseType: !2316, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2307, line: 73, size: 448, elements: !2318)
!2318 = !{!2319, !2322, !2323, !2328, !2333}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2317, file: !2307, line: 74, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2307, line: 74, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2317, file: !2307, line: 75, baseType: !2305, size: 64, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !2307, line: 83, baseType: !2324, size: 128, offset: 128)
!2324 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !2307, line: 83, size: 128, elements: !2325)
!2325 = !{!2326, !2327}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2324, file: !2307, line: 84, baseType: !701, size: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2324, file: !2307, line: 85, baseType: !1404, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, scope: !2317, file: !2307, line: 87, baseType: !2329, size: 128, offset: 256)
!2329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2317, file: !2307, line: 87, size: 128, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2329, file: !2307, line: 88, baseType: !1114, size: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2329, file: !2307, line: 89, baseType: !855, size: 128, align: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2317, file: !2307, line: 92, baseType: !7, size: 32, offset: 384)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2306, file: !2307, line: 111, baseType: !1110, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2306, file: !2307, line: 113, baseType: !2336, size: 256, offset: 448)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2337, line: 102, size: 256, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !{!2339, !2340, !2341}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2336, file: !2337, line: 103, baseType: !1242, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2336, file: !2337, line: 104, baseType: !701, size: 128, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2336, file: !2337, line: 105, baseType: !2342, size: 64, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2337, line: 21, baseType: !2343)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1604, file: !1605, line: 1061, baseType: !2348, size: 64, offset: 10944)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1605, line: 43, flags: DIFlagFwdDecl)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1604, file: !1605, line: 1064, baseType: !648, size: 64, offset: 11008)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1604, file: !1605, line: 1065, baseType: !2352, size: 64, offset: 11072)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2143, line: 14, baseType: !2354)
!2354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2143, line: 12, size: 384, elements: !2355)
!2355 = !{!2356}
!2356 = !DIDerivedType(tag: DW_TAG_member, scope: !2354, file: !2143, line: 13, baseType: !2357, size: 384)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2354, file: !2143, line: 13, size: 384, elements: !2358)
!2358 = !{!2359, !2360, !2361, !2362}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2357, file: !2143, line: 13, baseType: !326, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2357, file: !2143, line: 13, baseType: !326, size: 32, offset: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2357, file: !2143, line: 13, baseType: !326, size: 32, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2357, file: !2143, line: 13, baseType: !2363, size: 256, offset: 128)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2364, line: 32, size: 256, elements: !2365)
!2364 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2365 = !{!2366, !2371, !2384, !2390, !2399, !2419, !2424}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2363, file: !2364, line: 37, baseType: !2367, size: 64)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 34, size: 64, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2367, file: !2364, line: 35, baseType: !1840, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2367, file: !2364, line: 36, baseType: !923, size: 32, offset: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2363, file: !2364, line: 45, baseType: !2372, size: 192)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 40, size: 192, elements: !2373)
!2373 = !{!2374, !2376, !2377, !2383}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2372, file: !2364, line: 41, baseType: !2375, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !800, line: 95, baseType: !326)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2372, file: !2364, line: 42, baseType: !326, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2372, file: !2364, line: 43, baseType: !2378, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2364, line: 11, baseType: !2379)
!2379 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2364, line: 8, size: 64, elements: !2380)
!2380 = !{!2381, !2382}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2379, file: !2364, line: 9, baseType: !326, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2379, file: !2364, line: 10, baseType: !300, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2372, file: !2364, line: 44, baseType: !326, size: 32, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2363, file: !2364, line: 52, baseType: !2385, size: 128)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 48, size: 128, elements: !2386)
!2386 = !{!2387, !2388, !2389}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2385, file: !2364, line: 49, baseType: !1840, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2385, file: !2364, line: 50, baseType: !923, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2385, file: !2364, line: 51, baseType: !2378, size: 64, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2363, file: !2364, line: 61, baseType: !2391, size: 256)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 55, size: 256, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2398}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2391, file: !2364, line: 56, baseType: !1840, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2391, file: !2364, line: 57, baseType: !923, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2391, file: !2364, line: 58, baseType: !326, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2391, file: !2364, line: 59, baseType: !2397, size: 64, offset: 128)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !800, line: 94, baseType: !801)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2391, file: !2364, line: 60, baseType: !2397, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2363, file: !2364, line: 95, baseType: !2400, size: 256)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 64, size: 256, elements: !2401)
!2401 = !{!2402, !2403}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2400, file: !2364, line: 65, baseType: !300, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, scope: !2400, file: !2364, line: 77, baseType: !2404, size: 192, offset: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2400, file: !2364, line: 77, size: 192, elements: !2405)
!2405 = !{!2406, !2407, !2414}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2404, file: !2364, line: 82, baseType: !1592, size: 16)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2404, file: !2364, line: 88, baseType: !2408, size: 192)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2404, file: !2364, line: 84, size: 192, elements: !2409)
!2409 = !{!2410, !2412, !2413}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2408, file: !2364, line: 85, baseType: !2411, size: 64)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 64, elements: !464)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2408, file: !2364, line: 86, baseType: !300, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2408, file: !2364, line: 87, baseType: !300, size: 64, offset: 128)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2404, file: !2364, line: 93, baseType: !2415, size: 96)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2404, file: !2364, line: 90, size: 96, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2415, file: !2364, line: 91, baseType: !2411, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2415, file: !2364, line: 92, baseType: !420, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2363, file: !2364, line: 101, baseType: !2420, size: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 98, size: 128, elements: !2421)
!2421 = !{!2422, !2423}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2420, file: !2364, line: 99, baseType: !643, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2420, file: !2364, line: 100, baseType: !326, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2363, file: !2364, line: 108, baseType: !2425, size: 128)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2363, file: !2364, line: 104, size: 128, elements: !2426)
!2426 = !{!2427, !2428, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2425, file: !2364, line: 105, baseType: !300, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2425, file: !2364, line: 106, baseType: !326, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2425, file: !2364, line: 107, baseType: !7, size: 32, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1604, file: !1605, line: 1067, baseType: !2215, offset: 11136)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1604, file: !1605, line: 1099, baseType: !2432, size: 64, offset: 11136)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1605, line: 56, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1604, file: !1605, line: 1103, baseType: !701, size: 128, offset: 11200)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1604, file: !1605, line: 1104, baseType: !2436, size: 64, offset: 11328)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1605, line: 46, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1604, file: !1605, line: 1105, baseType: !1560, size: 192, offset: 11392)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1604, file: !1605, line: 1106, baseType: !7, size: 32, offset: 11584)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1604, file: !1605, line: 1109, baseType: !2441, size: 128, offset: 11648)
!2441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2442, size: 128, elements: !1949)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1605, line: 51, flags: DIFlagFwdDecl)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1604, file: !1605, line: 1110, baseType: !1560, size: 192, offset: 11776)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1604, file: !1605, line: 1111, baseType: !701, size: 128, offset: 11968)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1604, file: !1605, line: 1173, baseType: !2447, size: 64, offset: 12096)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2449, line: 62, size: 256, align: 256, elements: !2450)
!2449 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2450 = !{!2451, !2452, !2453, !2458}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2448, file: !2449, line: 75, baseType: !420, size: 32)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2448, file: !2449, line: 90, baseType: !420, size: 32, offset: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2448, file: !2449, line: 124, baseType: !2454, size: 64, offset: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2448, file: !2449, line: 109, size: 64, elements: !2455)
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2454, file: !2449, line: 110, baseType: !573, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2454, file: !2449, line: 112, baseType: !573, size: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2448, file: !2449, line: 144, baseType: !420, size: 32, offset: 128)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1604, file: !1605, line: 1174, baseType: !419, size: 32, offset: 12160)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1604, file: !1605, line: 1179, baseType: !648, size: 64, offset: 12224)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1604, file: !1605, line: 1182, baseType: !2462, size: 128, offset: 12288)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1540, line: 76, size: 128, elements: !2463)
!2463 = !{!2464, !2469, !2470}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2462, file: !1540, line: 85, baseType: !2465, size: 64)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2466, line: 7, size: 64, elements: !2467)
!2466 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2465, file: !2466, line: 12, baseType: !1745, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2462, file: !1540, line: 88, baseType: !484, size: 8, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2462, file: !1540, line: 95, baseType: !484, size: 8, offset: 72)
!2471 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1605, line: 1184, baseType: !2472, size: 128, offset: 12416)
!2472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1605, line: 1184, size: 128, elements: !2473)
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2472, file: !1605, line: 1185, baseType: !438, size: 32)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2472, file: !1605, line: 1186, baseType: !855, size: 128, align: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1604, file: !1605, line: 1190, baseType: !2477, size: 64, offset: 12544)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1605, line: 53, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1604, file: !1605, line: 1192, baseType: !2480, size: 128, offset: 12608)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1540, line: 64, size: 128, elements: !2481)
!2481 = !{!2482, !2483, !2484}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2480, file: !1540, line: 65, baseType: !1196, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2480, file: !1540, line: 67, baseType: !420, size: 32, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2480, file: !1540, line: 68, baseType: !420, size: 32, offset: 96)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1604, file: !1605, line: 1206, baseType: !326, size: 32, offset: 12736)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1604, file: !1605, line: 1207, baseType: !326, size: 32, offset: 12768)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1604, file: !1605, line: 1209, baseType: !648, size: 64, offset: 12800)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1604, file: !1605, line: 1219, baseType: !678, size: 64, offset: 12864)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1604, file: !1605, line: 1220, baseType: !678, size: 64, offset: 12928)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1604, file: !1605, line: 1317, baseType: !326, size: 32, offset: 12992)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1604, file: !1605, line: 1319, baseType: !1603, size: 64, offset: 13056)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1604, file: !1605, line: 1322, baseType: !2493, size: 64, offset: 13120)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2495, line: 56, size: 512, elements: !2496)
!2495 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2505}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2494, file: !2495, line: 57, baseType: !2493, size: 64)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2494, file: !2495, line: 58, baseType: !300, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2494, file: !2495, line: 59, baseType: !648, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2494, file: !2495, line: 60, baseType: !648, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2494, file: !2495, line: 61, baseType: !1291, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2494, file: !2495, line: 62, baseType: !7, size: 32, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2494, file: !2495, line: 63, baseType: !2504, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !299, line: 153, baseType: !678)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2494, file: !2495, line: 64, baseType: !2506, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1604, file: !1605, line: 1326, baseType: !438, size: 32, offset: 13184)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1604, file: !1605, line: 1342, baseType: !300, size: 64, offset: 13248)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1604, file: !1605, line: 1343, baseType: !573, size: 64, offset: 13312)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1604, file: !1605, line: 1344, baseType: !678, size: 64, offset: 13376)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1604, file: !1605, line: 1345, baseType: !573, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1604, file: !1605, line: 1346, baseType: !573, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1604, file: !1605, line: 1347, baseType: !573, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1604, file: !1605, line: 1348, baseType: !855, size: 128, align: 64, offset: 13504)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1604, file: !1605, line: 1358, baseType: !2517, size: 34816, offset: 13824)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2518, line: 485, size: 34816, elements: !2519)
!2518 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2519 = !{!2520, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2549, !2550, !2551, !2552, !2553, !2554, !2557, !2558, !2559}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2517, file: !2518, line: 487, baseType: !2521, size: 192)
!2521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2522, size: 192, elements: !540)
!2522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2523, line: 16, size: 64, elements: !2524)
!2523 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2524 = !{!2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2522, file: !2523, line: 17, baseType: !339, size: 16)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2522, file: !2523, line: 18, baseType: !339, size: 16, offset: 16)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2522, file: !2523, line: 19, baseType: !339, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2522, file: !2523, line: 19, baseType: !339, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2522, file: !2523, line: 19, baseType: !339, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2522, file: !2523, line: 19, baseType: !339, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2522, file: !2523, line: 19, baseType: !339, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2522, file: !2523, line: 20, baseType: !339, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2522, file: !2523, line: 20, baseType: !339, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2522, file: !2523, line: 20, baseType: !339, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2522, file: !2523, line: 20, baseType: !339, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2522, file: !2523, line: 20, baseType: !339, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2522, file: !2523, line: 20, baseType: !339, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2517, file: !2518, line: 491, baseType: !648, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2517, file: !2518, line: 495, baseType: !343, size: 16, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2517, file: !2518, line: 496, baseType: !343, size: 16, offset: 272)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2517, file: !2518, line: 497, baseType: !343, size: 16, offset: 288)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2517, file: !2518, line: 498, baseType: !343, size: 16, offset: 304)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2517, file: !2518, line: 502, baseType: !648, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2517, file: !2518, line: 503, baseType: !648, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2517, file: !2518, line: 514, baseType: !2546, size: 256, offset: 448)
!2546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2547, size: 256, elements: !578)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2518, line: 483, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2517, file: !2518, line: 516, baseType: !648, size: 64, offset: 704)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2517, file: !2518, line: 518, baseType: !648, size: 64, offset: 768)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2517, file: !2518, line: 520, baseType: !648, size: 64, offset: 832)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2517, file: !2518, line: 521, baseType: !648, size: 64, offset: 896)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2517, file: !2518, line: 522, baseType: !648, size: 64, offset: 960)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2517, file: !2518, line: 528, baseType: !2555, size: 64, offset: 1024)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2518, line: 10, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2517, file: !2518, line: 535, baseType: !648, size: 64, offset: 1088)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2517, file: !2518, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2517, file: !2518, line: 540, baseType: !2560, size: 33280, offset: 1536)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2561, line: 317, size: 33280, elements: !2562)
!2561 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2562 = !{!2563, !2564, !2565}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2560, file: !2561, line: 330, baseType: !7, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2560, file: !2561, line: 337, baseType: !648, size: 64, offset: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2560, file: !2561, line: 348, baseType: !2566, size: 32768, offset: 512)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2561, line: 304, size: 32768, elements: !2567)
!2567 = !{!2568, !2583, !2622, !2672, !2685}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2566, file: !2561, line: 305, baseType: !2569, size: 896)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2561, line: 12, size: 896, elements: !2570)
!2570 = !{!2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2582}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2569, file: !2561, line: 13, baseType: !419, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2569, file: !2561, line: 14, baseType: !419, size: 32, offset: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2569, file: !2561, line: 15, baseType: !419, size: 32, offset: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2569, file: !2561, line: 16, baseType: !419, size: 32, offset: 96)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2569, file: !2561, line: 17, baseType: !419, size: 32, offset: 128)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2569, file: !2561, line: 18, baseType: !419, size: 32, offset: 160)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2569, file: !2561, line: 19, baseType: !419, size: 32, offset: 192)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2569, file: !2561, line: 22, baseType: !2579, size: 640, offset: 224)
!2579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 640, elements: !2580)
!2580 = !{!2581}
!2581 = !DISubrange(count: 20)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2569, file: !2561, line: 25, baseType: !419, size: 32, offset: 864)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2566, file: !2561, line: 306, baseType: !2584, size: 4096, align: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2561, line: 34, size: 4096, align: 128, elements: !2585)
!2585 = !{!2586, !2587, !2588, !2589, !2590, !2605, !2606, !2607, !2611, !2613, !2617}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2584, file: !2561, line: 35, baseType: !339, size: 16)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2584, file: !2561, line: 36, baseType: !339, size: 16, offset: 16)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2584, file: !2561, line: 37, baseType: !339, size: 16, offset: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2584, file: !2561, line: 38, baseType: !339, size: 16, offset: 48)
!2590 = !DIDerivedType(tag: DW_TAG_member, scope: !2584, file: !2561, line: 39, baseType: !2591, size: 128, offset: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2584, file: !2561, line: 39, size: 128, elements: !2592)
!2592 = !{!2593, !2598}
!2593 = !DIDerivedType(tag: DW_TAG_member, scope: !2591, file: !2561, line: 40, baseType: !2594, size: 128)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2591, file: !2561, line: 40, size: 128, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2594, file: !2561, line: 41, baseType: !678, size: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2594, file: !2561, line: 42, baseType: !678, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2591, file: !2561, line: 44, baseType: !2599, size: 128)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2591, file: !2561, line: 44, size: 128, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2604}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2599, file: !2561, line: 45, baseType: !419, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2599, file: !2561, line: 46, baseType: !419, size: 32, offset: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2599, file: !2561, line: 47, baseType: !419, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2599, file: !2561, line: 48, baseType: !419, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2584, file: !2561, line: 51, baseType: !419, size: 32, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2584, file: !2561, line: 52, baseType: !419, size: 32, offset: 224)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2584, file: !2561, line: 55, baseType: !2608, size: 1024, offset: 256)
!2608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1024, elements: !2609)
!2609 = !{!2610}
!2610 = !DISubrange(count: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2584, file: !2561, line: 58, baseType: !2612, size: 2048, offset: 1280)
!2612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !772)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2584, file: !2561, line: 60, baseType: !2614, size: 384, offset: 3328)
!2614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !2615)
!2615 = !{!2616}
!2616 = !DISubrange(count: 12)
!2617 = !DIDerivedType(tag: DW_TAG_member, scope: !2584, file: !2561, line: 62, baseType: !2618, size: 384, offset: 3712)
!2618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2584, file: !2561, line: 62, size: 384, elements: !2619)
!2619 = !{!2620, !2621}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2618, file: !2561, line: 63, baseType: !2614, size: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2618, file: !2561, line: 64, baseType: !2614, size: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2566, file: !2561, line: 307, baseType: !2623, size: 1088)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2561, line: 79, size: 1088, elements: !2624)
!2624 = !{!2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2671}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2623, file: !2561, line: 80, baseType: !419, size: 32)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2623, file: !2561, line: 81, baseType: !419, size: 32, offset: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2623, file: !2561, line: 82, baseType: !419, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2623, file: !2561, line: 83, baseType: !419, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2623, file: !2561, line: 84, baseType: !419, size: 32, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2623, file: !2561, line: 85, baseType: !419, size: 32, offset: 160)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2623, file: !2561, line: 86, baseType: !419, size: 32, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2623, file: !2561, line: 88, baseType: !2579, size: 640, offset: 224)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2623, file: !2561, line: 89, baseType: !349, size: 8, offset: 864)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2623, file: !2561, line: 90, baseType: !349, size: 8, offset: 872)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2623, file: !2561, line: 91, baseType: !349, size: 8, offset: 880)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2623, file: !2561, line: 92, baseType: !349, size: 8, offset: 888)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2623, file: !2561, line: 93, baseType: !349, size: 8, offset: 896)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2623, file: !2561, line: 94, baseType: !349, size: 8, offset: 904)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2623, file: !2561, line: 95, baseType: !2640, size: 64, offset: 960)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2642, line: 11, size: 128, elements: !2643)
!2642 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2645}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2641, file: !2642, line: 12, baseType: !643, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2641, file: !2642, line: 13, baseType: !2646, size: 64, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2648, line: 56, size: 1344, elements: !2649)
!2648 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2647, file: !2648, line: 61, baseType: !648, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2647, file: !2648, line: 62, baseType: !648, size: 64, offset: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2647, file: !2648, line: 63, baseType: !648, size: 64, offset: 128)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2647, file: !2648, line: 64, baseType: !648, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2647, file: !2648, line: 65, baseType: !648, size: 64, offset: 256)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2647, file: !2648, line: 66, baseType: !648, size: 64, offset: 320)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2647, file: !2648, line: 68, baseType: !648, size: 64, offset: 384)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2647, file: !2648, line: 69, baseType: !648, size: 64, offset: 448)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2647, file: !2648, line: 70, baseType: !648, size: 64, offset: 512)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2647, file: !2648, line: 71, baseType: !648, size: 64, offset: 576)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2647, file: !2648, line: 72, baseType: !648, size: 64, offset: 640)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2647, file: !2648, line: 73, baseType: !648, size: 64, offset: 704)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2647, file: !2648, line: 74, baseType: !648, size: 64, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2647, file: !2648, line: 75, baseType: !648, size: 64, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2647, file: !2648, line: 76, baseType: !648, size: 64, offset: 896)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2647, file: !2648, line: 81, baseType: !648, size: 64, offset: 960)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2647, file: !2648, line: 83, baseType: !648, size: 64, offset: 1024)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2647, file: !2648, line: 84, baseType: !648, size: 64, offset: 1088)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2647, file: !2648, line: 85, baseType: !648, size: 64, offset: 1152)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2647, file: !2648, line: 86, baseType: !648, size: 64, offset: 1216)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2647, file: !2648, line: 87, baseType: !648, size: 64, offset: 1280)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2623, file: !2561, line: 96, baseType: !419, size: 32, offset: 1024)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2566, file: !2561, line: 308, baseType: !2673, size: 4608, align: 512)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2561, line: 289, size: 4608, align: 512, elements: !2674)
!2674 = !{!2675, !2676, !2683}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2673, file: !2561, line: 290, baseType: !2584, size: 4096, align: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2673, file: !2561, line: 291, baseType: !2677, size: 512, offset: 4096)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2561, line: 268, size: 512, elements: !2678)
!2678 = !{!2679, !2680, !2681}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2677, file: !2561, line: 269, baseType: !678, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2677, file: !2561, line: 270, baseType: !678, size: 64, offset: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2677, file: !2561, line: 271, baseType: !2682, size: 384, offset: 128)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 384, elements: !613)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2673, file: !2561, line: 292, baseType: !2684, offset: 4608)
!2684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, elements: !2101)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2566, file: !2561, line: 309, baseType: !2686, size: 32768)
!2686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 32768, elements: !2687)
!2687 = !{!2688}
!2688 = !DISubrange(count: 4096)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1600, file: !1198, line: 378, baseType: !2690, size: 64, offset: 64)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1596, file: !1198, line: 384, baseType: !1882, size: 192, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1447, file: !1198, line: 500, baseType: !729, offset: 6656)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1447, file: !1198, line: 501, baseType: !2694, size: 64, offset: 6656)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1198, line: 387, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1447, file: !1198, line: 516, baseType: !2091, size: 64, offset: 6720)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1447, file: !1198, line: 519, baseType: !842, size: 64, offset: 6784)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1447, file: !1198, line: 521, baseType: !2699, size: 64, offset: 6848)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2700, size: 64)
!2700 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1198, line: 521, flags: DIFlagFwdDecl)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1447, file: !1198, line: 545, baseType: !443, size: 32, offset: 6912)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1447, file: !1198, line: 548, baseType: !484, size: 8, offset: 6944)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1447, file: !1198, line: 550, baseType: !2704, offset: 6952)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2705, line: 142, elements: !743)
!2705 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1447, file: !1198, line: 554, baseType: !2336, size: 256, offset: 6976)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1447, file: !1198, line: 557, baseType: !419, size: 32, offset: 7232)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1444, file: !1198, line: 565, baseType: !2709, offset: 7296)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, elements: !2710)
!2710 = !{!2711}
!2711 = !DISubrange(count: -1)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1440, file: !1198, line: 151, baseType: !443, size: 32)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1433, file: !1198, line: 156, baseType: !729, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1198, line: 159, baseType: !2715, size: 128)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1198, line: 159, size: 128, elements: !2716)
!2716 = !{!2717, !2720}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2715, file: !1198, line: 161, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1198, line: 161, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2715, file: !1198, line: 162, baseType: !300, size: 64, offset: 64)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1202, file: !1198, line: 176, baseType: !855, size: 128, align: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, scope: !1197, file: !1198, line: 179, baseType: !2723, size: 32, offset: 384)
!2723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1197, file: !1198, line: 179, size: 32, elements: !2724)
!2724 = !{!2725, !2726, !2727, !2728}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2723, file: !1198, line: 184, baseType: !443, size: 32)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2723, file: !1198, line: 192, baseType: !7, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2723, file: !1198, line: 194, baseType: !7, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2723, file: !1198, line: 195, baseType: !326, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1197, file: !1198, line: 199, baseType: !443, size: 32, offset: 416)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1132, file: !31, line: 1964, baseType: !2731, size: 64, offset: 1344)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!643, !1074, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2736, line: 12, size: 256, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2737 = !{!2738, !2739, !2740, !2741, !2742}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2735, file: !2736, line: 13, baseType: !298, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2735, file: !2736, line: 16, baseType: !326, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2735, file: !2736, line: 23, baseType: !648, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2735, file: !2736, line: 30, baseType: !648, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2735, file: !2736, line: 33, baseType: !2743, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1198, line: 27, flags: DIFlagFwdDecl)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1132, file: !31, line: 1966, baseType: !2731, size: 64, offset: 1408)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1075, file: !31, line: 1424, baseType: !2747, size: 64, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2749)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 322, size: 704, elements: !2750)
!2750 = !{!2751, !2797, !2801, !2805, !2806, !2807, !2808, !2809, !2814, !2819, !2823}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2749, file: !19, line: 323, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!326, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 294, size: 1600, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2782, !2783, !2784}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2756, file: !19, line: 295, baseType: !1114, size: 128)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2756, file: !19, line: 296, baseType: !701, size: 128, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2756, file: !19, line: 297, baseType: !701, size: 128, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2756, file: !19, line: 298, baseType: !701, size: 128, offset: 384)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2756, file: !19, line: 299, baseType: !1560, size: 192, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2756, file: !19, line: 300, baseType: !729, offset: 704)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2756, file: !19, line: 301, baseType: !443, size: 32, offset: 704)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2756, file: !19, line: 302, baseType: !1074, size: 64, offset: 768)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2756, file: !19, line: 303, baseType: !2767, size: 64, offset: 832)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !2768)
!2768 = !{!2769, !2781}
!2769 = !DIDerivedType(tag: DW_TAG_member, scope: !2767, file: !19, line: 69, baseType: !2770, size: 32)
!2770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2767, file: !19, line: 69, size: 32, elements: !2771)
!2771 = !{!2772, !2773, !2774}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2770, file: !19, line: 70, baseType: !917, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2770, file: !19, line: 71, baseType: !925, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2770, file: !19, line: 72, baseType: !2775, size: 32)
!2775 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2776, line: 24, baseType: !2777)
!2776 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2776, line: 22, size: 32, elements: !2778)
!2778 = !{!2779}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2777, file: !2776, line: 23, baseType: !2780, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2776, line: 20, baseType: !923)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2767, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2756, file: !19, line: 304, baseType: !1008, size: 64, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2756, file: !19, line: 305, baseType: !648, size: 64, offset: 960)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2756, file: !19, line: 306, baseType: !2785, size: 576, offset: 1024)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !2786)
!2786 = !{!2787, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2785, file: !19, line: 206, baseType: !2788, size: 64)
!2788 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !577)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2785, file: !19, line: 207, baseType: !2788, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2785, file: !19, line: 208, baseType: !2788, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2785, file: !19, line: 209, baseType: !2788, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2785, file: !19, line: 210, baseType: !2788, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2785, file: !19, line: 211, baseType: !2788, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2785, file: !19, line: 212, baseType: !2788, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2785, file: !19, line: 213, baseType: !1015, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2785, file: !19, line: 214, baseType: !1015, size: 64, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2749, file: !19, line: 324, baseType: !2798, size: 64, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!2755, !1074, !326}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2749, file: !19, line: 325, baseType: !2802, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{null, !2755}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2749, file: !19, line: 326, baseType: !2752, size: 64, offset: 192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2749, file: !19, line: 327, baseType: !2752, size: 64, offset: 256)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2749, file: !19, line: 328, baseType: !2752, size: 64, offset: 320)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2749, file: !19, line: 329, baseType: !1160, size: 64, offset: 384)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2749, file: !19, line: 332, baseType: !2810, size: 64, offset: 448)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!2813, !911}
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2749, file: !19, line: 333, baseType: !2815, size: 64, offset: 512)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!326, !911, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2749, file: !19, line: 335, baseType: !2820, size: 64, offset: 576)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DISubroutineType(types: !2822)
!2822 = !{!326, !911, !2813}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2749, file: !19, line: 337, baseType: !2824, size: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!326, !1074, !2827}
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1075, file: !31, line: 1425, baseType: !2829, size: 64, offset: 512)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2831)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 428, size: 704, elements: !2832)
!2832 = !{!2833, !2837, !2838, !2842, !2843, !2844, !2859, !2882, !2886, !2887, !2910}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2831, file: !19, line: 429, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!326, !1074, !326, !326, !1024}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2831, file: !19, line: 430, baseType: !1160, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2831, file: !19, line: 431, baseType: !2839, size: 64, offset: 128)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!326, !1074, !7}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2831, file: !19, line: 432, baseType: !2839, size: 64, offset: 192)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2831, file: !19, line: 433, baseType: !1160, size: 64, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2831, file: !19, line: 434, baseType: !2845, size: 64, offset: 320)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!326, !1074, !326, !2848}
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 415, size: 256, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2849, file: !19, line: 416, baseType: !326, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2849, file: !19, line: 417, baseType: !7, size: 32, offset: 32)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2849, file: !19, line: 418, baseType: !7, size: 32, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2849, file: !19, line: 420, baseType: !7, size: 32, offset: 96)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2849, file: !19, line: 421, baseType: !7, size: 32, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2849, file: !19, line: 422, baseType: !7, size: 32, offset: 160)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2849, file: !19, line: 423, baseType: !7, size: 32, offset: 192)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2849, file: !19, line: 424, baseType: !7, size: 32, offset: 224)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2831, file: !19, line: 435, baseType: !2860, size: 64, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!326, !1074, !2767, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 343, size: 960, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2864, file: !19, line: 344, baseType: !326, size: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2864, file: !19, line: 345, baseType: !678, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2864, file: !19, line: 346, baseType: !678, size: 64, offset: 128)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2864, file: !19, line: 347, baseType: !678, size: 64, offset: 192)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2864, file: !19, line: 348, baseType: !678, size: 64, offset: 256)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2864, file: !19, line: 349, baseType: !678, size: 64, offset: 320)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2864, file: !19, line: 350, baseType: !678, size: 64, offset: 384)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2864, file: !19, line: 351, baseType: !1248, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2864, file: !19, line: 353, baseType: !1248, size: 64, offset: 512)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2864, file: !19, line: 354, baseType: !326, size: 32, offset: 576)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2864, file: !19, line: 355, baseType: !326, size: 32, offset: 608)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2864, file: !19, line: 356, baseType: !678, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2864, file: !19, line: 357, baseType: !678, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2864, file: !19, line: 358, baseType: !678, size: 64, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2864, file: !19, line: 359, baseType: !1248, size: 64, offset: 832)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2864, file: !19, line: 360, baseType: !326, size: 32, offset: 896)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2831, file: !19, line: 436, baseType: !2883, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!326, !1074, !2827, !2863}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2831, file: !19, line: 438, baseType: !2860, size: 64, offset: 512)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2831, file: !19, line: 439, baseType: !2888, size: 64, offset: 576)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!326, !1074, !2891}
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 409, size: 1408, elements: !2893)
!2893 = !{!2894, !2895}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2892, file: !19, line: 410, baseType: !7, size: 32)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2892, file: !19, line: 411, baseType: !2896, size: 1344, offset: 64)
!2896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2897, size: 1344, elements: !540)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 395, size: 448, elements: !2898)
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2909}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2897, file: !19, line: 396, baseType: !7, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2897, file: !19, line: 397, baseType: !7, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2897, file: !19, line: 399, baseType: !7, size: 32, offset: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2897, file: !19, line: 400, baseType: !7, size: 32, offset: 96)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2897, file: !19, line: 401, baseType: !7, size: 32, offset: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2897, file: !19, line: 402, baseType: !7, size: 32, offset: 160)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2897, file: !19, line: 403, baseType: !7, size: 32, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2897, file: !19, line: 404, baseType: !574, size: 64, offset: 256)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2897, file: !19, line: 405, baseType: !2908, size: 64, offset: 320)
!2908 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !299, line: 126, baseType: !678)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2897, file: !19, line: 406, baseType: !2908, size: 64, offset: 384)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2831, file: !19, line: 440, baseType: !2839, size: 64, offset: 640)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1075, file: !31, line: 1426, baseType: !2912, size: 64, offset: 576)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2914)
!2914 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1075, file: !31, line: 1427, baseType: !648, size: 64, offset: 640)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1075, file: !31, line: 1428, baseType: !648, size: 64, offset: 704)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1075, file: !31, line: 1429, baseType: !648, size: 64, offset: 768)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1075, file: !31, line: 1430, baseType: !872, size: 64, offset: 832)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1075, file: !31, line: 1431, baseType: !1238, size: 256, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1075, file: !31, line: 1432, baseType: !326, size: 32, offset: 1152)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1075, file: !31, line: 1433, baseType: !443, size: 32, offset: 1184)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1075, file: !31, line: 1437, baseType: !2923, size: 64, offset: 1216)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2926)
!2926 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1075, file: !31, line: 1449, baseType: !2928, size: 64, offset: 1280)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !888, line: 34, size: 64, elements: !2929)
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2928, file: !888, line: 35, baseType: !891, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1075, file: !31, line: 1450, baseType: !701, size: 128, offset: 1344)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1075, file: !31, line: 1451, baseType: !2933, size: 64, offset: 1472)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1075, file: !31, line: 1452, baseType: !2302, size: 64, offset: 1536)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1075, file: !31, line: 1453, baseType: !2937, size: 64, offset: 1600)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1075, file: !31, line: 1454, baseType: !1114, size: 128, offset: 1664)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1075, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1075, file: !31, line: 1456, baseType: !2942, size: 2432, offset: 1856)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 518, size: 2432, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2948, !2980}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2942, file: !19, line: 519, baseType: !7, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2942, file: !19, line: 520, baseType: !1238, size: 256, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2942, file: !19, line: 521, baseType: !2947, size: 192, offset: 320)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !911, size: 192, elements: !540)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2942, file: !19, line: 522, baseType: !2949, size: 1728, offset: 512)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2950, size: 1728, elements: !540)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !2951)
!2951 = !{!2952, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2950, file: !19, line: 223, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 443, size: 256, elements: !2955)
!2955 = !{!2956, !2957, !2970, !2971}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2954, file: !19, line: 444, baseType: !326, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2954, file: !19, line: 445, baseType: !2958, size: 64, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2960)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 310, size: 512, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2960, file: !19, line: 311, baseType: !1160, size: 64)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2960, file: !19, line: 312, baseType: !1160, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2960, file: !19, line: 313, baseType: !1160, size: 64, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2960, file: !19, line: 314, baseType: !1160, size: 64, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2960, file: !19, line: 315, baseType: !2752, size: 64, offset: 256)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2960, file: !19, line: 316, baseType: !2752, size: 64, offset: 320)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2960, file: !19, line: 317, baseType: !2752, size: 64, offset: 384)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2960, file: !19, line: 318, baseType: !2824, size: 64, offset: 448)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2954, file: !19, line: 446, baseType: !313, size: 64, offset: 128)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2954, file: !19, line: 447, baseType: !2953, size: 64, offset: 192)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2950, file: !19, line: 224, baseType: !326, size: 32, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2950, file: !19, line: 226, baseType: !701, size: 128, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2950, file: !19, line: 227, baseType: !648, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2950, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2950, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2950, file: !19, line: 230, baseType: !2788, size: 64, offset: 384)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2950, file: !19, line: 231, baseType: !2788, size: 64, offset: 448)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2950, file: !19, line: 232, baseType: !300, size: 64, offset: 512)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2942, file: !19, line: 523, baseType: !2981, size: 192, offset: 2240)
!2981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2958, size: 192, elements: !540)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1075, file: !31, line: 1458, baseType: !2983, size: 2112, offset: 4288)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2984)
!2984 = !{!2985, !2986, !2987}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2983, file: !31, line: 1411, baseType: !326, size: 32)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2983, file: !31, line: 1412, baseType: !1861, size: 128, offset: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2983, file: !31, line: 1413, baseType: !2988, size: 1920, offset: 192)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2989, size: 1920, elements: !540)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2990, line: 12, size: 640, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2991 = !{!2992, !3000, !3001, !3006, !3007}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2989, file: !2990, line: 13, baseType: !2993, size: 320)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2994, line: 17, size: 320, elements: !2995)
!2994 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !{!2996, !2997, !2998, !2999}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2993, file: !2994, line: 18, baseType: !326, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2993, file: !2994, line: 19, baseType: !326, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2993, file: !2994, line: 20, baseType: !1861, size: 128, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2993, file: !2994, line: 22, baseType: !855, size: 128, align: 64, offset: 192)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2989, file: !2990, line: 14, baseType: !371, size: 64, offset: 320)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2989, file: !2990, line: 15, baseType: !3002, size: 64, offset: 384)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3003, line: 16, size: 64, elements: !3004)
!3003 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!3004 = !{!3005}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3002, file: !3003, line: 17, baseType: !1603, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2989, file: !2990, line: 16, baseType: !1861, size: 128, offset: 448)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2989, file: !2990, line: 17, baseType: !443, size: 32, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1075, file: !31, line: 1465, baseType: !300, size: 64, offset: 6400)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1075, file: !31, line: 1468, baseType: !419, size: 32, offset: 6464)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1075, file: !31, line: 1470, baseType: !1015, size: 64, offset: 6528)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1075, file: !31, line: 1471, baseType: !1015, size: 64, offset: 6592)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1075, file: !31, line: 1473, baseType: !420, size: 32, offset: 6656)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1075, file: !31, line: 1474, baseType: !3014, size: 64, offset: 6720)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1075, file: !31, line: 1477, baseType: !3017, size: 256, offset: 6784)
!3017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 256, elements: !2609)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1075, file: !31, line: 1478, baseType: !3019, size: 128, offset: 7040)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3020, line: 18, baseType: !3021)
!3020 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!3021 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3020, line: 16, size: 128, elements: !3022)
!3022 = !{!3023}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3021, file: !3020, line: 17, baseType: !3024, size: 128)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 128, elements: !2113)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1075, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !1075, file: !31, line: 1481, baseType: !3027, size: 32, offset: 7200)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !299, line: 150, baseType: !7)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1075, file: !31, line: 1487, baseType: !1560, size: 192, offset: 7232)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1075, file: !31, line: 1493, baseType: !309, size: 64, offset: 7424)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1075, file: !31, line: 1495, baseType: !3031, size: 64, offset: 7488)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3033)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !870, line: 135, size: 1024, align: 512, elements: !3034)
!3034 = !{!3035, !3039, !3040, !3047, !3053, !3057, !3061, !3065, !3066, !3070, !3074, !3079, !3083}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3033, file: !870, line: 136, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!326, !872, !7}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3033, file: !870, line: 137, baseType: !3036, size: 64, offset: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3033, file: !870, line: 138, baseType: !3041, size: 64, offset: 128)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!326, !3044, !3046}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3033, file: !870, line: 139, baseType: !3048, size: 64, offset: 192)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!326, !3044, !7, !309, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !896)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3033, file: !870, line: 141, baseType: !3054, size: 64, offset: 256)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!326, !3044}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3033, file: !870, line: 142, baseType: !3058, size: 64, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DISubroutineType(types: !3060)
!3060 = !{!326, !872}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3033, file: !870, line: 143, baseType: !3062, size: 64, offset: 384)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{null, !872}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3033, file: !870, line: 144, baseType: !3062, size: 64, offset: 448)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3033, file: !870, line: 145, baseType: !3067, size: 64, offset: 512)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{null, !872, !911}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3033, file: !870, line: 146, baseType: !3071, size: 64, offset: 576)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!332, !872, !332, !326}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3033, file: !870, line: 147, baseType: !3075, size: 64, offset: 640)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!868, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3033, file: !870, line: 148, baseType: !3080, size: 64, offset: 704)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!326, !1024, !484}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3033, file: !870, line: 149, baseType: !3084, size: 64, offset: 768)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!872, !872, !3087}
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !912)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !1075, file: !31, line: 1500, baseType: !326, size: 32, offset: 7552)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1075, file: !31, line: 1502, baseType: !3091, size: 448, offset: 7616)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2736, line: 60, size: 448, elements: !3092)
!3092 = !{!3093, !3098, !3099, !3100, !3101, !3102, !3103}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3091, file: !2736, line: 61, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!648, !3097, !2734}
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3091, file: !2736, line: 63, baseType: !3094, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3091, file: !2736, line: 66, baseType: !643, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3091, file: !2736, line: 67, baseType: !326, size: 32, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3091, file: !2736, line: 68, baseType: !7, size: 32, offset: 224)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3091, file: !2736, line: 71, baseType: !701, size: 128, offset: 256)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3091, file: !2736, line: 77, baseType: !3104, size: 64, offset: 384)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1075, file: !31, line: 1505, baseType: !1242, size: 64, offset: 8064)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !1075, file: !31, line: 1508, baseType: !1242, size: 64, offset: 8128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1075, file: !31, line: 1511, baseType: !326, size: 32, offset: 8192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1075, file: !31, line: 1514, baseType: !1378, size: 32, offset: 8224)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1075, file: !31, line: 1517, baseType: !3110, size: 64, offset: 8256)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2337, line: 18, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1075, file: !31, line: 1518, baseType: !1110, size: 64, offset: 8320)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1075, file: !31, line: 1525, baseType: !2091, size: 64, offset: 8384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1075, file: !31, line: 1532, baseType: !3115, size: 64, offset: 8448)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3116, line: 52, size: 64, elements: !3117)
!3116 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!3117 = !{!3118}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3115, file: !3116, line: 53, baseType: !3119, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3116, line: 40, size: 256, elements: !3121)
!3121 = !{!3122, !3123, !3128}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3120, file: !3116, line: 42, baseType: !729)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3120, file: !3116, line: 44, baseType: !3124, size: 192)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3116, line: 28, size: 192, elements: !3125)
!3125 = !{!3126, !3127}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3124, file: !3116, line: 29, baseType: !701, size: 128)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3124, file: !3116, line: 31, baseType: !643, size: 64, offset: 128)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3120, file: !3116, line: 49, baseType: !643, size: 64, offset: 192)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1075, file: !31, line: 1533, baseType: !3115, size: 64, offset: 8512)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1075, file: !31, line: 1534, baseType: !855, size: 128, align: 64, offset: 8576)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1075, file: !31, line: 1535, baseType: !2336, size: 256, offset: 8704)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1075, file: !31, line: 1537, baseType: !1560, size: 192, offset: 8960)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1075, file: !31, line: 1542, baseType: !326, size: 32, offset: 9152)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1075, file: !31, line: 1545, baseType: !729, offset: 9184)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1075, file: !31, line: 1546, baseType: !701, size: 128, offset: 9216)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1075, file: !31, line: 1548, baseType: !729, offset: 9344)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1075, file: !31, line: 1549, baseType: !701, size: 128, offset: 9344)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !912, file: !31, line: 624, baseType: !1209, size: 64, offset: 256)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !912, file: !31, line: 631, baseType: !648, size: 64, offset: 320)
!3140 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !31, line: 639, baseType: !3141, size: 32, offset: 384)
!3141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !31, line: 639, size: 32, elements: !3142)
!3142 = !{!3143, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3141, file: !31, line: 640, baseType: !3144, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3141, file: !31, line: 641, baseType: !7, size: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !912, file: !31, line: 643, baseType: !990, size: 32, offset: 416)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !912, file: !31, line: 644, baseType: !1008, size: 64, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !912, file: !31, line: 645, baseType: !1011, size: 128, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !912, file: !31, line: 646, baseType: !1011, size: 128, offset: 640)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !912, file: !31, line: 647, baseType: !1011, size: 128, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !912, file: !31, line: 648, baseType: !729, offset: 896)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !912, file: !31, line: 649, baseType: !343, size: 16, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !912, file: !31, line: 650, baseType: !349, size: 8, offset: 912)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !912, file: !31, line: 651, baseType: !349, size: 8, offset: 920)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !912, file: !31, line: 652, baseType: !2908, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !912, file: !31, line: 659, baseType: !648, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !912, file: !31, line: 660, baseType: !1238, size: 256, offset: 1088)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !912, file: !31, line: 662, baseType: !648, size: 64, offset: 1344)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !912, file: !31, line: 663, baseType: !648, size: 64, offset: 1408)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !912, file: !31, line: 665, baseType: !1114, size: 128, offset: 1472)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !912, file: !31, line: 666, baseType: !701, size: 128, offset: 1600)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !912, file: !31, line: 675, baseType: !701, size: 128, offset: 1728)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !912, file: !31, line: 676, baseType: !701, size: 128, offset: 1856)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !912, file: !31, line: 677, baseType: !701, size: 128, offset: 1984)
!3165 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !31, line: 678, baseType: !3166, size: 128, offset: 2112)
!3166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !31, line: 678, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3166, file: !31, line: 679, baseType: !1110, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3166, file: !31, line: 680, baseType: !855, size: 128, align: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !912, file: !31, line: 682, baseType: !1244, size: 64, offset: 2240)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !912, file: !31, line: 683, baseType: !1244, size: 64, offset: 2304)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !912, file: !31, line: 684, baseType: !443, size: 32, offset: 2368)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !912, file: !31, line: 685, baseType: !443, size: 32, offset: 2400)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !912, file: !31, line: 686, baseType: !443, size: 32, offset: 2432)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !912, file: !31, line: 688, baseType: !443, size: 32, offset: 2464)
!3176 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !31, line: 690, baseType: !3177, size: 64, offset: 2496)
!3177 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !31, line: 690, size: 64, elements: !3178)
!3178 = !{!3179, !3411}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3177, file: !31, line: 691, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !3183)
!3183 = !{!3184, !3185, !3189, !3194, !3198, !3199, !3200, !3204, !3217, !3218, !3235, !3239, !3240, !3244, !3245, !3249, !3254, !3255, !3259, !3263, !3371, !3375, !3376, !3380, !3381, !3385, !3389, !3394, !3398, !3402, !3406, !3410}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3182, file: !31, line: 1823, baseType: !313, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3182, file: !31, line: 1824, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!1008, !842, !1008, !326}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3182, file: !31, line: 1825, baseType: !3190, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!798, !842, !332, !812, !3193}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3182, file: !31, line: 1826, baseType: !3195, size: 64, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!798, !842, !309, !812, !3193}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3182, file: !31, line: 1827, baseType: !1315, size: 64, offset: 256)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3182, file: !31, line: 1828, baseType: !1315, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3182, file: !31, line: 1829, baseType: !3201, size: 64, offset: 384)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!326, !1318, !484}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !3182, file: !31, line: 1830, baseType: !3205, size: 64, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!326, !842, !3208}
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !3210)
!3210 = !{!3211, !3216}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3209, file: !31, line: 1777, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !3213)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!326, !3208, !309, !326, !1008, !678, !7}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3209, file: !31, line: 1778, baseType: !1008, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3182, file: !31, line: 1831, baseType: !3205, size: 64, offset: 512)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3182, file: !31, line: 1832, baseType: !3219, size: 64, offset: 576)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!3222, !842, !3224}
!3222 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3223, line: 52, baseType: !7)
!3223 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3226, line: 43, size: 128, elements: !3227)
!3226 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3227 = !{!3228, !3234}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3225, file: !3226, line: 44, baseType: !3229, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3226, line: 37, baseType: !3230)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !842, !3233, !3224}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3225, file: !3226, line: 45, baseType: !3222, size: 32, offset: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3182, file: !31, line: 1833, baseType: !3236, size: 64, offset: 640)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!643, !842, !7, !648}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3182, file: !31, line: 1834, baseType: !3236, size: 64, offset: 704)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3182, file: !31, line: 1835, baseType: !3241, size: 64, offset: 768)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!326, !842, !1450}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3182, file: !31, line: 1836, baseType: !648, size: 64, offset: 832)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3182, file: !31, line: 1837, baseType: !3246, size: 64, offset: 896)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!326, !911, !842}
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3182, file: !31, line: 1838, baseType: !3250, size: 64, offset: 960)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!326, !842, !3253}
!3253 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !300)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3182, file: !31, line: 1839, baseType: !3246, size: 64, offset: 1024)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3182, file: !31, line: 1840, baseType: !3256, size: 64, offset: 1088)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!326, !842, !1008, !1008, !326}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3182, file: !31, line: 1841, baseType: !3260, size: 64, offset: 1152)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!326, !326, !842, !326}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3182, file: !31, line: 1842, baseType: !3264, size: 64, offset: 1216)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!326, !842, !326, !3267}
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3301, !3302, !3303, !3316, !3347}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3268, file: !31, line: 1063, baseType: !3267, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3268, file: !31, line: 1064, baseType: !701, size: 128, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3268, file: !31, line: 1065, baseType: !1114, size: 128, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3268, file: !31, line: 1066, baseType: !701, size: 128, offset: 320)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3268, file: !31, line: 1069, baseType: !701, size: 128, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3268, file: !31, line: 1072, baseType: !3253, size: 64, offset: 576)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3268, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3268, file: !31, line: 1074, baseType: !351, size: 8, offset: 672)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3268, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3268, file: !31, line: 1076, baseType: !326, size: 32, offset: 736)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3268, file: !31, line: 1077, baseType: !1861, size: 128, offset: 768)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3268, file: !31, line: 1078, baseType: !842, size: 64, offset: 896)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3268, file: !31, line: 1079, baseType: !1008, size: 64, offset: 960)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3268, file: !31, line: 1080, baseType: !1008, size: 64, offset: 1024)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3268, file: !31, line: 1082, baseType: !3285, size: 64, offset: 1088)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !3287)
!3287 = !{!3288, !3296, !3297, !3298, !3299, !3300}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3286, file: !31, line: 1315, baseType: !3289)
!3289 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3290, line: 20, baseType: !3291)
!3290 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3290, line: 11, elements: !3292)
!3292 = !{!3293}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3291, file: !3290, line: 12, baseType: !3294)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !741, line: 33, baseType: !3295)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !741, line: 31, elements: !743)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3286, file: !31, line: 1316, baseType: !326, size: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3286, file: !31, line: 1317, baseType: !326, size: 32, offset: 32)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3286, file: !31, line: 1318, baseType: !3285, size: 64, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3286, file: !31, line: 1319, baseType: !842, size: 64, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3286, file: !31, line: 1320, baseType: !855, size: 128, align: 64, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3268, file: !31, line: 1084, baseType: !648, size: 64, offset: 1152)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3268, file: !31, line: 1085, baseType: !648, size: 64, offset: 1216)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3268, file: !31, line: 1087, baseType: !3304, size: 64, offset: 1280)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3306)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !3307)
!3307 = !{!3308, !3312}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3306, file: !31, line: 1012, baseType: !3309, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !3267, !3267}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3306, file: !31, line: 1013, baseType: !3313, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{null, !3267}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3268, file: !31, line: 1088, baseType: !3317, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3319)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !3320)
!3320 = !{!3321, !3325, !3329, !3330, !3334, !3338, !3342, !3346}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3319, file: !31, line: 1017, baseType: !3322, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DISubroutineType(types: !3324)
!3324 = !{!3253, !3253}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3319, file: !31, line: 1018, baseType: !3326, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{null, !3253}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3319, file: !31, line: 1019, baseType: !3313, size: 64, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3319, file: !31, line: 1020, baseType: !3331, size: 64, offset: 192)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!326, !3267, !326}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3319, file: !31, line: 1021, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!484, !3267}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3319, file: !31, line: 1022, baseType: !3339, size: 64, offset: 320)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!326, !3267, !326, !704}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3319, file: !31, line: 1023, baseType: !3343, size: 64, offset: 384)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{null, !3267, !1292}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3319, file: !31, line: 1024, baseType: !3335, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3268, file: !31, line: 1097, baseType: !3348, size: 256, offset: 1408)
!3348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3268, file: !31, line: 1089, size: 256, elements: !3349)
!3349 = !{!3350, !3359, !3365}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3348, file: !31, line: 1090, baseType: !3351, size: 256)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3352, line: 10, size: 256, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3358}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3351, file: !3352, line: 11, baseType: !419, size: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3351, file: !3352, line: 12, baseType: !3356, size: 64, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3352, line: 5, flags: DIFlagFwdDecl)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3351, file: !3352, line: 13, baseType: !701, size: 128, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3348, file: !31, line: 1091, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3352, line: 17, size: 64, elements: !3361)
!3361 = !{!3362}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3360, file: !3352, line: 18, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3364 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3352, line: 16, flags: DIFlagFwdDecl)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3348, file: !31, line: 1096, baseType: !3366, size: 192)
!3366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3348, file: !31, line: 1092, size: 192, elements: !3367)
!3367 = !{!3368, !3369, !3370}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3366, file: !31, line: 1093, baseType: !701, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3366, file: !31, line: 1094, baseType: !326, size: 32, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3366, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !3182, file: !31, line: 1843, baseType: !3372, size: 64, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!798, !842, !1196, !326, !812, !3193, !326}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3182, file: !31, line: 1844, baseType: !1490, size: 64, offset: 1344)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3182, file: !31, line: 1845, baseType: !3377, size: 64, offset: 1408)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DISubroutineType(types: !3379)
!3379 = !{!326, !326}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3182, file: !31, line: 1846, baseType: !3264, size: 64, offset: 1472)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3182, file: !31, line: 1847, baseType: !3382, size: 64, offset: 1536)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!798, !2477, !842, !3193, !812, !7}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3182, file: !31, line: 1848, baseType: !3386, size: 64, offset: 1600)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!798, !842, !3193, !2477, !812, !7}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3182, file: !31, line: 1849, baseType: !3390, size: 64, offset: 1664)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!326, !842, !643, !3393, !1292}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3182, file: !31, line: 1850, baseType: !3395, size: 64, offset: 1728)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!643, !842, !326, !1008, !1008}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3182, file: !31, line: 1852, baseType: !3399, size: 64, offset: 1792)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{null, !1186, !842}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3182, file: !31, line: 1856, baseType: !3403, size: 64, offset: 1856)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{!798, !842, !1008, !842, !1008, !812, !7}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3182, file: !31, line: 1858, baseType: !3407, size: 64, offset: 1920)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1008, !842, !1008, !842, !1008, !1008, !7}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3182, file: !31, line: 1861, baseType: !3256, size: 64, offset: 1984)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3177, file: !31, line: 692, baseType: !1139, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !912, file: !31, line: 694, baseType: !3413, size: 64, offset: 2560)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3414, file: !31, line: 1101, baseType: !729)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3414, file: !31, line: 1102, baseType: !701, size: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3414, file: !31, line: 1103, baseType: !701, size: 128, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3414, file: !31, line: 1104, baseType: !701, size: 128, offset: 256)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !912, file: !31, line: 695, baseType: !1210, size: 1216, align: 64, offset: 2624)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !912, file: !31, line: 696, baseType: !701, size: 128, offset: 3840)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !912, file: !31, line: 697, baseType: !3423, size: 64, offset: 3968)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !912, file: !31, line: 697, size: 64, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3438, !3439}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3423, file: !31, line: 698, baseType: !2477, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3423, file: !31, line: 699, baseType: !2933, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3423, file: !31, line: 700, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3430, line: 14, size: 832, elements: !3431)
!3430 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!3431 = !{!3432, !3433, !3434, !3435, !3436, !3437}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3429, file: !3430, line: 15, baseType: !716, size: 512)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3429, file: !3430, line: 16, baseType: !313, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3429, file: !3430, line: 17, baseType: !3180, size: 64, offset: 576)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3429, file: !3430, line: 18, baseType: !701, size: 128, offset: 640)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3429, file: !3430, line: 19, baseType: !990, size: 32, offset: 768)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3429, file: !3430, line: 20, baseType: !7, size: 32, offset: 800)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3423, file: !31, line: 701, baseType: !332, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3423, file: !31, line: 702, baseType: !7, size: 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !912, file: !31, line: 705, baseType: !420, size: 32, offset: 4032)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !912, file: !31, line: 708, baseType: !420, size: 32, offset: 4064)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !912, file: !31, line: 709, baseType: !3014, size: 64, offset: 4096)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !912, file: !31, line: 720, baseType: !300, size: 64, offset: 4160)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !873, file: !870, line: 98, baseType: !3445, size: 256, offset: 448)
!3445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 256, elements: !2609)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !873, file: !870, line: 101, baseType: !3447, size: 32, offset: 704)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3448, line: 25, size: 32, elements: !3449)
!3448 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3449 = !{!3450}
!3450 = !DIDerivedType(tag: DW_TAG_member, scope: !3447, file: !3448, line: 26, baseType: !3451, size: 32)
!3451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3447, file: !3448, line: 26, size: 32, elements: !3452)
!3452 = !{!3453}
!3453 = !DIDerivedType(tag: DW_TAG_member, scope: !3451, file: !3448, line: 30, baseType: !3454, size: 32)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3451, file: !3448, line: 30, size: 32, elements: !3455)
!3455 = !{!3456, !3457}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3454, file: !3448, line: 31, baseType: !729)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3454, file: !3448, line: 32, baseType: !326, size: 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !873, file: !870, line: 102, baseType: !3031, size: 64, offset: 768)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !873, file: !870, line: 103, baseType: !1074, size: 64, offset: 832)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !873, file: !870, line: 104, baseType: !648, size: 64, offset: 896)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !873, file: !870, line: 105, baseType: !300, size: 64, offset: 960)
!3462 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !870, line: 107, baseType: !3463, size: 128, offset: 1024)
!3463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !870, line: 107, size: 128, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3463, file: !870, line: 108, baseType: !701, size: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3463, file: !870, line: 109, baseType: !3233, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !873, file: !870, line: 111, baseType: !701, size: 128, offset: 1152)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !873, file: !870, line: 112, baseType: !701, size: 128, offset: 1280)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !873, file: !870, line: 120, baseType: !3470, size: 128, offset: 1408)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !870, line: 116, size: 128, elements: !3471)
!3471 = !{!3472, !3473, !3474}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3470, file: !870, line: 117, baseType: !1114, size: 128)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3470, file: !870, line: 118, baseType: !887, size: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3470, file: !870, line: 119, baseType: !855, size: 128, align: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !843, file: !31, line: 922, baseType: !911, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !843, file: !31, line: 923, baseType: !3180, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !843, file: !31, line: 929, baseType: !729, offset: 384)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !843, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !843, file: !31, line: 931, baseType: !1242, size: 64, offset: 448)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !843, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !843, file: !31, line: 933, baseType: !3027, size: 32, offset: 544)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !843, file: !31, line: 934, baseType: !1560, size: 192, offset: 576)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !843, file: !31, line: 935, baseType: !1008, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !843, file: !31, line: 936, baseType: !3485, size: 192, offset: 832)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !3486)
!3486 = !{!3487, !3488, !3489, !3490, !3491, !3492}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3485, file: !31, line: 886, baseType: !3289)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3485, file: !31, line: 887, baseType: !1851, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3485, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3485, file: !31, line: 889, baseType: !917, size: 32, offset: 96)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3485, file: !31, line: 889, baseType: !917, size: 32, offset: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3485, file: !31, line: 890, baseType: !326, size: 32, offset: 160)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !843, file: !31, line: 937, baseType: !1927, size: 64, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !843, file: !31, line: 938, baseType: !3495, size: 256, offset: 1088)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3495, file: !31, line: 897, baseType: !648, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3495, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3495, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3495, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3495, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3495, file: !31, line: 904, baseType: !1008, size: 64, offset: 192)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !843, file: !31, line: 940, baseType: !678, size: 64, offset: 1344)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !843, file: !31, line: 945, baseType: !300, size: 64, offset: 1408)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !843, file: !31, line: 949, baseType: !701, size: 128, offset: 1472)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !843, file: !31, line: 950, baseType: !701, size: 128, offset: 1600)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !843, file: !31, line: 952, baseType: !1209, size: 64, offset: 1728)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !843, file: !31, line: 953, baseType: !1378, size: 32, offset: 1792)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !843, file: !31, line: 954, baseType: !1378, size: 32, offset: 1824)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !833, file: !792, line: 174, baseType: !839, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !833, file: !792, line: 176, baseType: !3512, size: 64, offset: 384)
!3512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3513, size: 64)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{!326, !842, !722, !832, !1450}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !821, file: !792, line: 90, baseType: !816, size: 64, offset: 192)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !821, file: !792, line: 91, baseType: !3517, size: 64, offset: 256)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !782, file: !717, line: 143, baseType: !3519, size: 64, offset: 256)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = !DISubroutineType(types: !3521)
!3521 = !{!3522, !722}
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3524)
!3524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !25, line: 39, size: 384, elements: !3525)
!3525 = !{!3526, !3527, !3531, !3535, !3541, !3545}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3524, file: !25, line: 40, baseType: !24, size: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3524, file: !25, line: 41, baseType: !3528, size: 64, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!484}
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3524, file: !25, line: 42, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!300}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3524, file: !25, line: 43, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!2506, !3539}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !25, line: 19, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3524, file: !25, line: 44, baseType: !3542, size: 64, offset: 256)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!2506}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3524, file: !25, line: 45, baseType: !334, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !782, file: !717, line: 144, baseType: !3547, size: 64, offset: 320)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DISubroutineType(types: !3549)
!3549 = !{!2506, !722}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !782, file: !717, line: 145, baseType: !3551, size: 64, offset: 384)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !722, !3554, !3555}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !716, file: !717, line: 70, baseType: !3557, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1094, line: 123, size: 1024, elements: !3559)
!3559 = !{!3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3688, !3689, !3690, !3691, !3692}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3558, file: !1094, line: 124, baseType: !443, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3558, file: !1094, line: 125, baseType: !443, size: 32, offset: 32)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3558, file: !1094, line: 135, baseType: !3557, size: 64, offset: 64)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3558, file: !1094, line: 136, baseType: !309, size: 64, offset: 128)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3558, file: !1094, line: 138, baseType: !1231, size: 192, align: 64, offset: 192)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3558, file: !1094, line: 140, baseType: !2506, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3558, file: !1094, line: 141, baseType: !7, size: 32, offset: 448)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3558, file: !1094, line: 142, baseType: !3568, size: 256, offset: 512)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3558, file: !1094, line: 142, size: 256, elements: !3569)
!3569 = !{!3570, !3616, !3620}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3568, file: !1094, line: 143, baseType: !3571, size: 192)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1094, line: 91, size: 192, elements: !3572)
!3572 = !{!3573, !3574, !3575}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3571, file: !1094, line: 92, baseType: !648, size: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3571, file: !1094, line: 94, baseType: !1227, size: 64, offset: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3571, file: !1094, line: 100, baseType: !3576, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1094, line: 180, size: 704, elements: !3578)
!3578 = !{!3579, !3580, !3581, !3588, !3589, !3590, !3614, !3615}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3577, file: !1094, line: 182, baseType: !3557, size: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3577, file: !1094, line: 183, baseType: !7, size: 32, offset: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3577, file: !1094, line: 186, baseType: !3582, size: 192, offset: 128)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3583, line: 19, size: 192, elements: !3584)
!3583 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3584 = !{!3585, !3586, !3587}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3582, file: !3583, line: 20, baseType: !1214, size: 128)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3582, file: !3583, line: 21, baseType: !7, size: 32, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3582, file: !3583, line: 22, baseType: !7, size: 32, offset: 160)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3577, file: !1094, line: 187, baseType: !419, size: 32, offset: 320)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3577, file: !1094, line: 188, baseType: !419, size: 32, offset: 352)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3577, file: !1094, line: 189, baseType: !3591, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1094, line: 168, size: 320, elements: !3593)
!3593 = !{!3594, !3598, !3602, !3606, !3610}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3592, file: !1094, line: 169, baseType: !3595, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!326, !1186, !3576}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3592, file: !1094, line: 171, baseType: !3599, size: 64, offset: 64)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!326, !3557, !309, !807}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3592, file: !1094, line: 173, baseType: !3603, size: 64, offset: 128)
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!326, !3557}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3592, file: !1094, line: 174, baseType: !3607, size: 64, offset: 192)
!3607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3608, size: 64)
!3608 = !DISubroutineType(types: !3609)
!3609 = !{!326, !3557, !3557, !309}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3592, file: !1094, line: 176, baseType: !3611, size: 64, offset: 256)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!326, !1186, !3557, !3576}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3577, file: !1094, line: 192, baseType: !701, size: 128, offset: 448)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3577, file: !1094, line: 194, baseType: !1861, size: 128, offset: 576)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3568, file: !1094, line: 144, baseType: !3617, size: 64)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1094, line: 103, size: 64, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3617, file: !1094, line: 104, baseType: !3557, size: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3568, file: !1094, line: 145, baseType: !3621, size: 256)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1094, line: 107, size: 256, elements: !3622)
!3622 = !{!3623, !3683, !3686, !3687}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3621, file: !1094, line: 108, baseType: !3624, size: 64)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1094, line: 217, size: 768, elements: !3627)
!3627 = !{!3628, !3648, !3652, !3656, !3660, !3664, !3668, !3672, !3673, !3674, !3675, !3679}
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3626, file: !1094, line: 222, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!326, !3632}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1094, line: 197, size: 1088, elements: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3633, file: !1094, line: 199, baseType: !3557, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3633, file: !1094, line: 200, baseType: !842, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3633, file: !1094, line: 201, baseType: !1186, size: 64, offset: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3633, file: !1094, line: 202, baseType: !300, size: 64, offset: 192)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3633, file: !1094, line: 205, baseType: !1560, size: 192, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3633, file: !1094, line: 206, baseType: !1560, size: 192, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3633, file: !1094, line: 207, baseType: !326, size: 32, offset: 640)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3633, file: !1094, line: 208, baseType: !701, size: 128, offset: 704)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3633, file: !1094, line: 209, baseType: !332, size: 64, offset: 832)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3633, file: !1094, line: 211, baseType: !812, size: 64, offset: 896)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3633, file: !1094, line: 212, baseType: !484, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3633, file: !1094, line: 213, baseType: !484, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3633, file: !1094, line: 214, baseType: !1478, size: 64, offset: 1024)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3626, file: !1094, line: 223, baseType: !3649, size: 64, offset: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3650, size: 64)
!3650 = !DISubroutineType(types: !3651)
!3651 = !{null, !3632}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3626, file: !1094, line: 236, baseType: !3653, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!326, !1186, !300}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3626, file: !1094, line: 238, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!300, !1186, !3193}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3626, file: !1094, line: 239, baseType: !3661, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!300, !1186, !300, !3193}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3626, file: !1094, line: 240, baseType: !3665, size: 64, offset: 320)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{null, !1186, !300}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3626, file: !1094, line: 242, baseType: !3669, size: 64, offset: 384)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!798, !3632, !332, !812, !1008}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3626, file: !1094, line: 252, baseType: !812, size: 64, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3626, file: !1094, line: 259, baseType: !484, size: 8, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3626, file: !1094, line: 260, baseType: !3669, size: 64, offset: 576)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3626, file: !1094, line: 263, baseType: !3676, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!3222, !3632, !3224}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3626, file: !1094, line: 266, baseType: !3680, size: 64, offset: 704)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!326, !3632, !1450}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3621, file: !1094, line: 109, baseType: !3684, size: 64, offset: 64)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1094, line: 31, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3621, file: !1094, line: 110, baseType: !1008, size: 64, offset: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3621, file: !1094, line: 111, baseType: !3557, size: 64, offset: 192)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3558, file: !1094, line: 148, baseType: !300, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3558, file: !1094, line: 154, baseType: !678, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3558, file: !1094, line: 156, baseType: !343, size: 16, offset: 896)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3558, file: !1094, line: 157, baseType: !807, size: 16, offset: 912)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3558, file: !1094, line: 158, baseType: !3693, size: 64, offset: 960)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1094, line: 32, flags: DIFlagFwdDecl)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !716, file: !717, line: 71, baseType: !434, size: 32, offset: 448)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !716, file: !717, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !716, file: !717, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !716, file: !717, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !716, file: !717, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !716, file: !717, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !713, file: !60, line: 463, baseType: !712, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !713, file: !60, line: 465, baseType: !3703, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !713, file: !60, line: 467, baseType: !309, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !713, file: !60, line: 468, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3709)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3710)
!3710 = !{!3711, !3712, !3713, !3717, !3722, !3726}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3709, file: !60, line: 88, baseType: !309, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3709, file: !60, line: 89, baseType: !818, size: 64, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3709, file: !60, line: 90, baseType: !3714, size: 64, offset: 128)
!3714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3715, size: 64)
!3715 = !DISubroutineType(types: !3716)
!3716 = !{!326, !712, !765}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3709, file: !60, line: 91, baseType: !3718, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{!332, !712, !3721, !3554, !3555}
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3709, file: !60, line: 93, baseType: !3723, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{null, !712}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3709, file: !60, line: 95, baseType: !3727, size: 64, offset: 320)
!3727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3730)
!3730 = !{!3731, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3756}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3729, file: !67, line: 279, baseType: !3732, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!326, !712}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3729, file: !67, line: 280, baseType: !3723, size: 64, offset: 64)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3729, file: !67, line: 281, baseType: !3732, size: 64, offset: 128)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3729, file: !67, line: 282, baseType: !3732, size: 64, offset: 192)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3729, file: !67, line: 283, baseType: !3732, size: 64, offset: 256)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3729, file: !67, line: 284, baseType: !3732, size: 64, offset: 320)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3729, file: !67, line: 285, baseType: !3732, size: 64, offset: 384)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3729, file: !67, line: 286, baseType: !3732, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3729, file: !67, line: 287, baseType: !3732, size: 64, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3729, file: !67, line: 288, baseType: !3732, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3729, file: !67, line: 289, baseType: !3732, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3729, file: !67, line: 290, baseType: !3732, size: 64, offset: 704)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3729, file: !67, line: 291, baseType: !3732, size: 64, offset: 768)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3729, file: !67, line: 292, baseType: !3732, size: 64, offset: 832)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3729, file: !67, line: 293, baseType: !3732, size: 64, offset: 896)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3729, file: !67, line: 294, baseType: !3732, size: 64, offset: 960)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3729, file: !67, line: 295, baseType: !3732, size: 64, offset: 1024)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3729, file: !67, line: 296, baseType: !3732, size: 64, offset: 1088)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3729, file: !67, line: 297, baseType: !3732, size: 64, offset: 1152)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3729, file: !67, line: 298, baseType: !3732, size: 64, offset: 1216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3729, file: !67, line: 299, baseType: !3732, size: 64, offset: 1280)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3729, file: !67, line: 300, baseType: !3732, size: 64, offset: 1344)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3729, file: !67, line: 301, baseType: !3732, size: 64, offset: 1408)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !713, file: !60, line: 470, baseType: !3758, size: 64, offset: 768)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3760, line: 82, size: 1408, elements: !3761)
!3760 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3761 = !{!3762, !3763, !3764, !3765, !3766, !3767, !3768, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3833, !3834, !3835, !3836, !3840, !3843, !3844}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3759, file: !3760, line: 83, baseType: !309, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3759, file: !3760, line: 84, baseType: !309, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3759, file: !3760, line: 85, baseType: !712, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3759, file: !3760, line: 86, baseType: !818, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3759, file: !3760, line: 87, baseType: !818, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3759, file: !3760, line: 88, baseType: !818, size: 64, offset: 320)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3759, file: !3760, line: 90, baseType: !3769, size: 64, offset: 384)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!326, !712, !3772}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3774)
!3774 = !{!3775, !3776, !3777, !3778, !3779, !3780, !3781, !3791, !3804, !3805, !3806, !3807, !3808, !3816, !3817, !3818, !3819, !3820, !3821}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3773, file: !54, line: 96, baseType: !309, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3773, file: !54, line: 97, baseType: !3758, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3773, file: !54, line: 99, baseType: !313, size: 64, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3773, file: !54, line: 100, baseType: !309, size: 64, offset: 192)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3773, file: !54, line: 102, baseType: !484, size: 8, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3773, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3773, file: !54, line: 105, baseType: !3782, size: 64, offset: 320)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3784)
!3784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3785, line: 262, size: 1600, elements: !3786)
!3785 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3786 = !{!3787, !3788, !3789, !3790}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3784, file: !3785, line: 263, baseType: !3017, size: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3784, file: !3785, line: 264, baseType: !3017, size: 256, offset: 256)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3784, file: !3785, line: 265, baseType: !415, size: 1024, offset: 512)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3784, file: !3785, line: 266, baseType: !2506, size: 64, offset: 1536)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3773, file: !54, line: 106, baseType: !3792, size: 64, offset: 384)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3785, line: 210, size: 256, elements: !3795)
!3795 = !{!3796, !3800, !3802, !3803}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3794, file: !3785, line: 211, baseType: !3797, size: 72)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 72, elements: !3798)
!3798 = !{!3799}
!3799 = !DISubrange(count: 9)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3794, file: !3785, line: 212, baseType: !3801, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3785, line: 14, baseType: !648)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3794, file: !3785, line: 213, baseType: !420, size: 32, offset: 192)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3794, file: !3785, line: 214, baseType: !420, size: 32, offset: 224)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3773, file: !54, line: 108, baseType: !3732, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3773, file: !54, line: 109, baseType: !3723, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3773, file: !54, line: 110, baseType: !3732, size: 64, offset: 576)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3773, file: !54, line: 111, baseType: !3723, size: 64, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3773, file: !54, line: 112, baseType: !3809, size: 64, offset: 704)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!326, !712, !3812}
!3812 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3813)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3814)
!3814 = !{!3815}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3813, file: !67, line: 51, baseType: !326, size: 32)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3773, file: !54, line: 113, baseType: !3732, size: 64, offset: 768)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3773, file: !54, line: 114, baseType: !818, size: 64, offset: 832)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3773, file: !54, line: 115, baseType: !818, size: 64, offset: 896)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3773, file: !54, line: 117, baseType: !3727, size: 64, offset: 960)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3773, file: !54, line: 118, baseType: !3723, size: 64, offset: 1024)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3773, file: !54, line: 120, baseType: !3822, size: 64, offset: 1088)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3759, file: !3760, line: 91, baseType: !3714, size: 64, offset: 448)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3759, file: !3760, line: 92, baseType: !3732, size: 64, offset: 512)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3759, file: !3760, line: 93, baseType: !3723, size: 64, offset: 576)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3759, file: !3760, line: 94, baseType: !3732, size: 64, offset: 640)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3759, file: !3760, line: 95, baseType: !3723, size: 64, offset: 704)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3759, file: !3760, line: 97, baseType: !3732, size: 64, offset: 768)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3759, file: !3760, line: 98, baseType: !3732, size: 64, offset: 832)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3759, file: !3760, line: 100, baseType: !3809, size: 64, offset: 896)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3759, file: !3760, line: 101, baseType: !3732, size: 64, offset: 960)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3759, file: !3760, line: 103, baseType: !3732, size: 64, offset: 1024)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3759, file: !3760, line: 105, baseType: !3732, size: 64, offset: 1088)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3759, file: !3760, line: 107, baseType: !3727, size: 64, offset: 1152)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3759, file: !3760, line: 109, baseType: !3837, size: 64, offset: 1216)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3760, line: 109, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3759, file: !3760, line: 111, baseType: !3841, size: 64, offset: 1280)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3760, line: 111, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3759, file: !3760, line: 112, baseType: !1120, offset: 1344)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3759, file: !3760, line: 114, baseType: !484, size: 8, offset: 1344)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !713, file: !60, line: 471, baseType: !3772, size: 64, offset: 832)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !713, file: !60, line: 473, baseType: !300, size: 64, offset: 896)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !713, file: !60, line: 475, baseType: !300, size: 64, offset: 960)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !713, file: !60, line: 480, baseType: !1560, size: 192, offset: 1024)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !713, file: !60, line: 484, baseType: !3850, size: 576, offset: 1216)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3850, file: !60, line: 362, baseType: !701, size: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3850, file: !60, line: 363, baseType: !701, size: 128, offset: 128)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3850, file: !60, line: 364, baseType: !701, size: 128, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3850, file: !60, line: 365, baseType: !701, size: 128, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3850, file: !60, line: 366, baseType: !484, size: 8, offset: 512)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3850, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !713, file: !60, line: 485, baseType: !3859, size: 2304, offset: 1792)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3956, !3960}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3859, file: !67, line: 566, baseType: !3812, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3859, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3859, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3859, file: !67, line: 569, baseType: !484, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3859, file: !67, line: 570, baseType: !484, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3859, file: !67, line: 571, baseType: !484, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3859, file: !67, line: 572, baseType: !484, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3859, file: !67, line: 573, baseType: !484, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3859, file: !67, line: 574, baseType: !484, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3859, file: !67, line: 575, baseType: !484, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3859, file: !67, line: 576, baseType: !484, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3859, file: !67, line: 577, baseType: !419, size: 32, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3859, file: !67, line: 578, baseType: !729, offset: 96)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3859, file: !67, line: 580, baseType: !701, size: 128, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3859, file: !67, line: 581, baseType: !1882, size: 192, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3859, file: !67, line: 582, baseType: !3877, size: 64, offset: 448)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3879, line: 43, size: 1472, elements: !3880)
!3879 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3880 = !{!3881, !3882, !3883, !3884, !3885, !3888, !3900, !3901, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3912, !3913}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3878, file: !3879, line: 44, baseType: !309, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3878, file: !3879, line: 45, baseType: !326, size: 32, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3878, file: !3879, line: 46, baseType: !701, size: 128, offset: 128)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3878, file: !3879, line: 47, baseType: !729, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3878, file: !3879, line: 48, baseType: !3886, size: 64, offset: 256)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3878, file: !3879, line: 49, baseType: !3889, size: 320, offset: 320)
!3889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3890, line: 11, size: 320, elements: !3891)
!3890 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3891 = !{!3892, !3893, !3894, !3899}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3889, file: !3890, line: 16, baseType: !1114, size: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3889, file: !3890, line: 17, baseType: !648, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3889, file: !3890, line: 18, baseType: !3895, size: 64, offset: 192)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3898}
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3889, file: !3890, line: 19, baseType: !419, size: 32, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3878, file: !3879, line: 50, baseType: !648, size: 64, offset: 640)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3878, file: !3879, line: 51, baseType: !1682, size: 64, offset: 704)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3878, file: !3879, line: 52, baseType: !1682, size: 64, offset: 768)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3878, file: !3879, line: 53, baseType: !1682, size: 64, offset: 832)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3878, file: !3879, line: 54, baseType: !1682, size: 64, offset: 896)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3878, file: !3879, line: 55, baseType: !1682, size: 64, offset: 960)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3878, file: !3879, line: 56, baseType: !648, size: 64, offset: 1024)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3878, file: !3879, line: 57, baseType: !648, size: 64, offset: 1088)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3878, file: !3879, line: 58, baseType: !648, size: 64, offset: 1152)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3878, file: !3879, line: 59, baseType: !648, size: 64, offset: 1216)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3878, file: !3879, line: 60, baseType: !648, size: 64, offset: 1280)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3878, file: !3879, line: 61, baseType: !712, size: 64, offset: 1344)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3878, file: !3879, line: 62, baseType: !484, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3878, file: !3879, line: 63, baseType: !484, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3859, file: !67, line: 583, baseType: !484, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3859, file: !67, line: 584, baseType: !484, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3859, file: !67, line: 585, baseType: !484, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3859, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3859, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3859, file: !67, line: 592, baseType: !1674, size: 512, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3859, file: !67, line: 593, baseType: !678, size: 64, offset: 1088)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3859, file: !67, line: 594, baseType: !2336, size: 256, offset: 1152)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3859, file: !67, line: 595, baseType: !1861, size: 128, offset: 1408)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3859, file: !67, line: 596, baseType: !3886, size: 64, offset: 1536)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3859, file: !67, line: 597, baseType: !443, size: 32, offset: 1600)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3859, file: !67, line: 598, baseType: !443, size: 32, offset: 1632)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3859, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3859, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3859, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3859, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3859, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3859, file: !67, line: 604, baseType: !484, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3859, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3859, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3859, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3859, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3859, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3859, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3859, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3859, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3859, file: !67, line: 613, baseType: !326, size: 32, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3859, file: !67, line: 614, baseType: !326, size: 32, offset: 1824)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3859, file: !67, line: 615, baseType: !678, size: 64, offset: 1856)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3859, file: !67, line: 616, baseType: !678, size: 64, offset: 1920)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3859, file: !67, line: 617, baseType: !678, size: 64, offset: 1984)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3859, file: !67, line: 618, baseType: !678, size: 64, offset: 2048)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3859, file: !67, line: 620, baseType: !3947, size: 64, offset: 2112)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3949)
!3949 = !{!3950, !3951, !3952, !3953}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3948, file: !67, line: 537, baseType: !729)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3948, file: !67, line: 538, baseType: !7, size: 32)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3948, file: !67, line: 540, baseType: !701, size: 128, offset: 64)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3948, file: !67, line: 543, baseType: !3954, size: 64, offset: 192)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3859, file: !67, line: 621, baseType: !3957, size: 64, offset: 2176)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{null, !712, !685}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3859, file: !67, line: 622, baseType: !3961, size: 64, offset: 2240)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !713, file: !60, line: 486, baseType: !3964, size: 64, offset: 4096)
!3964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3965, size: 64)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3966)
!3966 = !{!3967, !3968, !3969, !3973, !3974, !3975}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3965, file: !67, line: 643, baseType: !3729, size: 1472)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3965, file: !67, line: 644, baseType: !3732, size: 64, offset: 1472)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3965, file: !67, line: 645, baseType: !3970, size: 64, offset: 1536)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{null, !712, !484}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3965, file: !67, line: 646, baseType: !3732, size: 64, offset: 1600)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3965, file: !67, line: 647, baseType: !3723, size: 64, offset: 1664)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3965, file: !67, line: 648, baseType: !3723, size: 64, offset: 1728)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !713, file: !60, line: 493, baseType: !3977, size: 64, offset: 4160)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3979)
!3979 = !{!3980, !3981, !3982, !4155, !4156, !4157, !4158, !4159, !4160, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3978, file: !81, line: 163, baseType: !701, size: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3978, file: !81, line: 164, baseType: !309, size: 64, offset: 128)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3978, file: !81, line: 165, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3985)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3986)
!3986 = !{!3987, !4105, !4116, !4121, !4125, !4132, !4136, !4140, !4147, !4151}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3985, file: !81, line: 106, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!326, !3977, !3991, !80}
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3993, line: 51, size: 1344, elements: !3994)
!3993 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3994 = !{!3995, !3996, !3998, !3999, !4089, !4098, !4099, !4100, !4101, !4102, !4103, !4104}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3992, file: !3993, line: 52, baseType: !309, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3992, file: !3993, line: 53, baseType: !3997, size: 32, offset: 64)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3993, line: 28, baseType: !419)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3992, file: !3993, line: 54, baseType: !309, size: 64, offset: 128)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3992, file: !3993, line: 55, baseType: !4000, size: 192, offset: 192)
!4000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4001, line: 17, size: 192, elements: !4002)
!4001 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!4002 = !{!4003, !4005, !4088}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4000, file: !4001, line: 18, baseType: !4004, size: 64)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4000, file: !4001, line: 19, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4008)
!4008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4001, line: 110, size: 1152, elements: !4009)
!4009 = !{!4010, !4014, !4018, !4024, !4030, !4034, !4038, !4043, !4047, !4048, !4052, !4056, !4060, !4071, !4072, !4073, !4074, !4084}
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4008, file: !4001, line: 111, baseType: !4011, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = !DISubroutineType(types: !4013)
!4013 = !{!4004, !4004}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4008, file: !4001, line: 112, baseType: !4015, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DISubroutineType(types: !4017)
!4017 = !{null, !4004}
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4008, file: !4001, line: 113, baseType: !4019, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!484, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4000)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4008, file: !4001, line: 114, baseType: !4025, size: 64, offset: 192)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!2506, !4022, !4028}
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4008, file: !4001, line: 116, baseType: !4031, size: 64, offset: 256)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = !DISubroutineType(types: !4033)
!4033 = !{!484, !4022, !309}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4008, file: !4001, line: 118, baseType: !4035, size: 64, offset: 320)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!326, !4022, !309, !7, !300, !812}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4008, file: !4001, line: 123, baseType: !4039, size: 64, offset: 384)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!326, !4022, !309, !4042, !812}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4008, file: !4001, line: 126, baseType: !4044, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!309, !4022}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4008, file: !4001, line: 127, baseType: !4044, size: 64, offset: 512)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4008, file: !4001, line: 128, baseType: !4049, size: 64, offset: 576)
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!4004, !4022}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4008, file: !4001, line: 130, baseType: !4053, size: 64, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!4004, !4022, !4004}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4008, file: !4001, line: 133, baseType: !4057, size: 64, offset: 704)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!4004, !4022, !309}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4008, file: !4001, line: 135, baseType: !4061, size: 64, offset: 768)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!326, !4022, !309, !309, !7, !7, !4064}
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4001, line: 43, size: 640, elements: !4066)
!4066 = !{!4067, !4068, !4069}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4065, file: !4001, line: 44, baseType: !4004, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4065, file: !4001, line: 45, baseType: !7, size: 32, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4065, file: !4001, line: 46, baseType: !4070, size: 512, offset: 128)
!4070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 512, elements: !464)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4008, file: !4001, line: 140, baseType: !4053, size: 64, offset: 832)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4008, file: !4001, line: 143, baseType: !4049, size: 64, offset: 896)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4008, file: !4001, line: 145, baseType: !4011, size: 64, offset: 960)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4008, file: !4001, line: 146, baseType: !4075, size: 64, offset: 1024)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!326, !4022, !4078}
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4001, line: 29, size: 128, elements: !4080)
!4080 = !{!4081, !4082, !4083}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4079, file: !4001, line: 30, baseType: !7, size: 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4079, file: !4001, line: 31, baseType: !7, size: 32, offset: 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4079, file: !4001, line: 32, baseType: !4022, size: 64, offset: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4008, file: !4001, line: 148, baseType: !4085, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DISubroutineType(types: !4087)
!4087 = !{!326, !4022, !712}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4000, file: !4001, line: 20, baseType: !712, size: 64, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3992, file: !3993, line: 57, baseType: !4090, size: 64, offset: 384)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3993, line: 31, size: 704, elements: !4092)
!4092 = !{!4093, !4094, !4095, !4096, !4097}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4091, file: !3993, line: 32, baseType: !332, size: 64)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4091, file: !3993, line: 33, baseType: !326, size: 32, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4091, file: !3993, line: 34, baseType: !300, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4091, file: !3993, line: 35, baseType: !4090, size: 64, offset: 192)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4091, file: !3993, line: 43, baseType: !833, size: 448, offset: 256)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3992, file: !3993, line: 58, baseType: !4090, size: 64, offset: 448)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3992, file: !3993, line: 59, baseType: !3991, size: 64, offset: 512)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3992, file: !3993, line: 60, baseType: !3991, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3992, file: !3993, line: 61, baseType: !3991, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3992, file: !3993, line: 63, baseType: !716, size: 512, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3992, file: !3993, line: 65, baseType: !648, size: 64, offset: 1216)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3992, file: !3993, line: 66, baseType: !300, size: 64, offset: 1280)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3985, file: !81, line: 108, baseType: !4106, size: 64, offset: 64)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DISubroutineType(types: !4108)
!4108 = !{!326, !3977, !4109, !80}
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !4111)
!4111 = !{!4112, !4113, !4114}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4110, file: !81, line: 64, baseType: !4004, size: 64)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !4110, file: !81, line: 65, baseType: !326, size: 32, offset: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4110, file: !81, line: 66, baseType: !4115, size: 512, offset: 96)
!4115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 512, elements: !2113)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3985, file: !81, line: 110, baseType: !4117, size: 64, offset: 128)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!326, !3977, !7, !4120}
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !299, line: 164, baseType: !648)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3985, file: !81, line: 111, baseType: !4122, size: 64, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4123, size: 64)
!4123 = !DISubroutineType(types: !4124)
!4124 = !{null, !3977, !7}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3985, file: !81, line: 112, baseType: !4126, size: 64, offset: 256)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!326, !3977, !3991, !4129, !7, !4131, !371}
!4129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4130, size: 64)
!4130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3985, file: !81, line: 117, baseType: !4133, size: 64, offset: 320)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!326, !3977, !7, !7, !300}
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3985, file: !81, line: 119, baseType: !4137, size: 64, offset: 384)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !3977, !7, !7}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3985, file: !81, line: 121, baseType: !4141, size: 64, offset: 448)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4142, size: 64)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!326, !3977, !4144, !484}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !4146, line: 11, flags: DIFlagFwdDecl)
!4146 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3985, file: !81, line: 122, baseType: !4148, size: 64, offset: 512)
!4148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4149, size: 64)
!4149 = !DISubroutineType(types: !4150)
!4150 = !{null, !3977, !4144}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3985, file: !81, line: 123, baseType: !4152, size: 64, offset: 576)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!326, !3977, !4109, !4131, !371}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3978, file: !81, line: 166, baseType: !300, size: 64, offset: 256)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3978, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3978, file: !81, line: 171, baseType: !4004, size: 64, offset: 384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3978, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3978, file: !81, line: 173, baseType: !4161, size: 64, offset: 512)
!4161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4162, size: 64)
!4162 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3978, file: !81, line: 175, baseType: !3977, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3978, file: !81, line: 182, baseType: !4120, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3978, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3978, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3978, file: !81, line: 185, baseType: !1214, size: 128, offset: 768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3978, file: !81, line: 186, baseType: !1560, size: 192, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3978, file: !81, line: 187, baseType: !4170, offset: 1088)
!4170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2710)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !713, file: !60, line: 499, baseType: !701, size: 128, offset: 4224)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !713, file: !60, line: 502, baseType: !4173, size: 64, offset: 4352)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4175)
!4175 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !713, file: !60, line: 504, baseType: !4177, size: 64, offset: 4416)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !713, file: !60, line: 505, baseType: !678, size: 64, offset: 4480)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !713, file: !60, line: 510, baseType: !678, size: 64, offset: 4544)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !713, file: !60, line: 511, baseType: !4181, size: 64, offset: 4608)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4183)
!4183 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !713, file: !60, line: 513, baseType: !4185, size: 64, offset: 4672)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !4187)
!4187 = !{!4188, !4189}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4186, file: !60, line: 293, baseType: !7, size: 32)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4186, file: !60, line: 294, baseType: !648, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !713, file: !60, line: 515, baseType: !701, size: 128, offset: 4736)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !713, file: !60, line: 526, baseType: !4192, offset: 4864)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4193, line: 5, elements: !743)
!4193 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !713, file: !60, line: 528, baseType: !3991, size: 64, offset: 4864)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !713, file: !60, line: 529, baseType: !4004, size: 64, offset: 4928)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !713, file: !60, line: 534, baseType: !990, size: 32, offset: 4992)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !713, file: !60, line: 535, baseType: !419, size: 32, offset: 5024)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !713, file: !60, line: 537, baseType: !729, offset: 5056)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !713, file: !60, line: 538, baseType: !701, size: 128, offset: 5056)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !713, file: !60, line: 540, baseType: !4201, size: 64, offset: 5184)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4203, line: 54, size: 960, elements: !4204)
!4203 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4204 = !{!4205, !4206, !4207, !4208, !4209, !4210, !4211, !4215, !4219, !4220, !4221, !4222, !4226, !4230, !4231}
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4202, file: !4203, line: 55, baseType: !309, size: 64)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4202, file: !4203, line: 56, baseType: !313, size: 64, offset: 64)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4202, file: !4203, line: 58, baseType: !818, size: 64, offset: 128)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4202, file: !4203, line: 59, baseType: !818, size: 64, offset: 192)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4202, file: !4203, line: 60, baseType: !722, size: 64, offset: 256)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4202, file: !4203, line: 62, baseType: !3714, size: 64, offset: 320)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4202, file: !4203, line: 63, baseType: !4212, size: 64, offset: 384)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!332, !712, !3721}
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4202, file: !4203, line: 65, baseType: !4216, size: 64, offset: 448)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{null, !4201}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4202, file: !4203, line: 66, baseType: !3723, size: 64, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4202, file: !4203, line: 68, baseType: !3732, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4202, file: !4203, line: 70, baseType: !3522, size: 64, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4202, file: !4203, line: 71, baseType: !4223, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DISubroutineType(types: !4225)
!4225 = !{!2506, !712}
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4202, file: !4203, line: 73, baseType: !4227, size: 64, offset: 768)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = !DISubroutineType(types: !4229)
!4229 = !{null, !712, !3554, !3555}
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4202, file: !4203, line: 75, baseType: !3727, size: 64, offset: 832)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4202, file: !4203, line: 77, baseType: !3841, size: 64, offset: 896)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !713, file: !60, line: 541, baseType: !818, size: 64, offset: 5248)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !713, file: !60, line: 543, baseType: !3723, size: 64, offset: 5312)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !713, file: !60, line: 544, baseType: !4235, size: 64, offset: 5376)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !713, file: !60, line: 545, baseType: !4238, size: 64, offset: 5440)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !713, file: !60, line: 547, baseType: !484, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !713, file: !60, line: 548, baseType: !484, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !713, file: !60, line: 549, baseType: !484, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !713, file: !60, line: 550, baseType: !484, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !697, file: !272, line: 111, baseType: !313, size: 64, offset: 576)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !697, file: !272, line: 113, baseType: !326, size: 32, offset: 640)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !697, file: !272, line: 114, baseType: !4247, size: 64, offset: 704)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !272, line: 157, size: 704, elements: !4249)
!4249 = !{!4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4264}
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !4248, file: !272, line: 158, baseType: !701, size: 128)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4248, file: !272, line: 159, baseType: !3180, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !4248, file: !272, line: 160, baseType: !696, size: 64, offset: 192)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4248, file: !272, line: 161, baseType: !271, size: 32, offset: 256)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4248, file: !272, line: 162, baseType: !326, size: 32, offset: 288)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4248, file: !272, line: 163, baseType: !419, size: 32, offset: 320)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !4248, file: !272, line: 167, baseType: !326, size: 32, offset: 352)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !4248, file: !272, line: 168, baseType: !326, size: 32, offset: 384)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4248, file: !272, line: 169, baseType: !326, size: 32, offset: 416)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4248, file: !272, line: 171, baseType: !1861, size: 128, offset: 448)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !4248, file: !272, line: 173, baseType: !4261, size: 64, offset: 576)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DISubroutineType(types: !4263)
!4263 = !{!326, !842, !7, !300}
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4248, file: !272, line: 187, baseType: !300, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !697, file: !272, line: 115, baseType: !1560, size: 192, offset: 768)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "demodulator_priv", scope: !431, file: !139, line: 690, baseType: !300, size: 64, offset: 6144)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "tuner_priv", scope: !431, file: !139, line: 691, baseType: !300, size: 64, offset: 6208)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "frontend_priv", scope: !431, file: !139, line: 692, baseType: !300, size: 64, offset: 6272)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "sec_priv", scope: !431, file: !139, line: 693, baseType: !300, size: 64, offset: 6336)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "analog_demod_priv", scope: !431, file: !139, line: 694, baseType: !300, size: 64, offset: 6400)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "dtv_property_cache", scope: !431, file: !139, line: 695, baseType: !507, size: 3648, offset: 6464)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !431, file: !139, line: 698, baseType: !4273, size: 64, offset: 10112)
!4273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4274, size: 64)
!4274 = !DISubroutineType(types: !4275)
!4275 = !{!326, !300, !326, !326, !326}
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !431, file: !139, line: 699, baseType: !326, size: 32, offset: 10176)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !431, file: !139, line: 700, baseType: !7, size: 32, offset: 10208)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !409, file: !139, line: 231, baseType: !470, size: 64, offset: 1280)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "sleep", scope: !409, file: !139, line: 232, baseType: !470, size: 64, offset: 1344)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !409, file: !139, line: 233, baseType: !470, size: 64, offset: 1408)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !409, file: !139, line: 234, baseType: !470, size: 64, offset: 1472)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "set_params", scope: !409, file: !139, line: 237, baseType: !470, size: 64, offset: 1536)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "set_analog_params", scope: !409, file: !139, line: 238, baseType: !4284, size: 64, offset: 1600)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DISubroutineType(types: !4286)
!4286 = !{!326, !430, !671}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !409, file: !139, line: 240, baseType: !692, size: 64, offset: 1664)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "get_frequency", scope: !409, file: !139, line: 242, baseType: !592, size: 64, offset: 1728)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "get_bandwidth", scope: !409, file: !139, line: 243, baseType: !592, size: 64, offset: 1792)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "get_if_frequency", scope: !409, file: !139, line: 244, baseType: !592, size: 64, offset: 1856)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "get_status", scope: !409, file: !139, line: 248, baseType: !592, size: 64, offset: 1920)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "get_rf_strength", scope: !409, file: !139, line: 249, baseType: !597, size: 64, offset: 1984)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "get_afc", scope: !409, file: !139, line: 250, baseType: !681, size: 64, offset: 2048)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "calc_regs", scope: !409, file: !139, line: 258, baseType: !4295, size: 64, offset: 2112)
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!326, !430, !4298, !326}
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "set_frequency", scope: !409, file: !139, line: 267, baseType: !4300, size: 64, offset: 2176)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!326, !430, !419}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "set_bandwidth", scope: !409, file: !139, line: 268, baseType: !4300, size: 64, offset: 2240)
!4304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 112, elements: !4305)
!4305 = !{!4306}
!4306 = !DISubrange(count: 14)
!4307 = !{i32 7, !"Dwarf Version", i32 4}
!4308 = !{i32 2, !"Debug Info Version", i32 3}
!4309 = !{i32 1, !"wchar_size", i32 2}
!4310 = !{i32 1, !"Code Model", i32 2}
!4311 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4312 = distinct !DISubprogram(name: "tea5767_autodetection", scope: !3, file: !3, line: 368, type: !4313, scopeLine: 369, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!326, !4315, !349}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !4317, line: 695, size: 7552, elements: !4318)
!4317 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4318 = !{!4319, !4320, !4321, !4358, !4359, !4373, !4380, !4381, !4382, !4383, !4384, !4385, !4386, !4390, !4391, !4392, !4393, !4425, !4436}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4316, file: !4317, line: 696, baseType: !313, size: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4316, file: !4317, line: 697, baseType: !7, size: 32, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !4316, file: !4317, line: 698, baseType: !4322, size: 64, offset: 128)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4324)
!4324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !4317, line: 519, size: 320, elements: !4325)
!4325 = !{!4326, !4339, !4340, !4353, !4354}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !4324, file: !4317, line: 529, baseType: !4327, size: 64)
!4327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4328, size: 64)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!326, !4315, !4330, !326}
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !4332, line: 69, size: 128, elements: !4333)
!4332 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!4333 = !{!4334, !4335, !4336, !4337}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4331, file: !4332, line: 70, baseType: !341, size: 16)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4331, file: !4332, line: 71, baseType: !341, size: 16, offset: 16)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4331, file: !4332, line: 84, baseType: !341, size: 16, offset: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !4331, file: !4332, line: 85, baseType: !4338, size: 64, offset: 64)
!4338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !4324, file: !4317, line: 531, baseType: !4327, size: 64, offset: 64)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !4324, file: !4317, line: 533, baseType: !4341, size: 64, offset: 128)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DISubroutineType(types: !4343)
!4343 = !{!326, !4315, !339, !343, !311, !349, !326, !4344}
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !4332, line: 135, size: 272, elements: !4346)
!4346 = !{!4347, !4348, !4349}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !4345, file: !4332, line: 136, baseType: !350, size: 8)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !4345, file: !4332, line: 137, baseType: !341, size: 16)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !4345, file: !4332, line: 138, baseType: !4350, size: 272)
!4350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 272, elements: !4351)
!4351 = !{!4352}
!4352 = !DISubrange(count: 34)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !4324, file: !4317, line: 536, baseType: !4341, size: 64, offset: 192)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !4324, file: !4317, line: 541, baseType: !4355, size: 64, offset: 256)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DISubroutineType(types: !4357)
!4357 = !{!419, !4315}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !4316, file: !4317, line: 699, baseType: !300, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !4316, file: !4317, line: 702, baseType: !4360, size: 64, offset: 256)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4362)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !4317, line: 557, size: 192, elements: !4363)
!4363 = !{!4364, !4368, !4372}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !4362, file: !4317, line: 558, baseType: !4365, size: 64)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !4315, !7}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !4362, file: !4317, line: 559, baseType: !4369, size: 64, offset: 64)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!326, !4315, !7}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !4362, file: !4317, line: 560, baseType: !4365, size: 64, offset: 128)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !4316, file: !4317, line: 703, baseType: !4374, size: 192, offset: 320)
!4374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !4375, line: 30, size: 192, elements: !4376)
!4375 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!4376 = !{!4377, !4378, !4379}
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !4374, file: !4375, line: 31, baseType: !1251)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !4374, file: !4375, line: 32, baseType: !1223, size: 128)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4374, file: !4375, line: 33, baseType: !1603, size: 64, offset: 128)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !4316, file: !4317, line: 704, baseType: !4374, size: 192, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4316, file: !4317, line: 706, baseType: !326, size: 32, offset: 704)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !4316, file: !4317, line: 707, baseType: !326, size: 32, offset: 736)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4316, file: !4317, line: 708, baseType: !713, size: 5568, offset: 768)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !4316, file: !4317, line: 709, baseType: !648, size: 64, offset: 6336)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4316, file: !4317, line: 713, baseType: !326, size: 32, offset: 6400)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4316, file: !4317, line: 714, baseType: !4387, size: 384, offset: 6432)
!4387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 384, elements: !4388)
!4388 = !{!4389}
!4389 = !DISubrange(count: 48)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !4316, file: !4317, line: 715, baseType: !1882, size: 192, offset: 6848)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !4316, file: !4317, line: 717, baseType: !1560, size: 192, offset: 7040)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !4316, file: !4317, line: 718, baseType: !701, size: 128, offset: 7232)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !4316, file: !4317, line: 720, baseType: !4394, size: 64, offset: 7360)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !4317, line: 618, size: 832, elements: !4396)
!4396 = !{!4397, !4401, !4402, !4406, !4407, !4408, !4409, !4413, !4414, !4417, !4418, !4421, !4424}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !4395, file: !4317, line: 619, baseType: !4398, size: 64)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{!326, !4315}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !4395, file: !4317, line: 621, baseType: !4398, size: 64, offset: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !4395, file: !4317, line: 622, baseType: !4403, size: 64, offset: 128)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{null, !4315, !326}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !4395, file: !4317, line: 623, baseType: !4398, size: 64, offset: 192)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !4395, file: !4317, line: 624, baseType: !4403, size: 64, offset: 256)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !4395, file: !4317, line: 625, baseType: !4398, size: 64, offset: 320)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !4395, file: !4317, line: 627, baseType: !4410, size: 64, offset: 384)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{null, !4315}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !4395, file: !4317, line: 628, baseType: !4410, size: 64, offset: 448)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !4395, file: !4317, line: 631, baseType: !4415, size: 64, offset: 512)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !4317, line: 631, flags: DIFlagFwdDecl)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !4395, file: !4317, line: 632, baseType: !4415, size: 64, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !4395, file: !4317, line: 633, baseType: !4419, size: 64, offset: 640)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !4317, line: 633, flags: DIFlagFwdDecl)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !4395, file: !4317, line: 634, baseType: !4422, size: 64, offset: 704)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !4317, line: 634, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !4395, file: !4317, line: 635, baseType: !4422, size: 64, offset: 768)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !4316, file: !4317, line: 721, baseType: !4426, size: 64, offset: 7424)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4428)
!4428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !4317, line: 664, size: 192, elements: !4429)
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4428, file: !4317, line: 665, baseType: !678, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !4428, file: !4317, line: 666, baseType: !326, size: 32, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4428, file: !4317, line: 667, baseType: !339, size: 16, offset: 96)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !4428, file: !4317, line: 668, baseType: !339, size: 16, offset: 112)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !4428, file: !4317, line: 669, baseType: !339, size: 16, offset: 128)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !4428, file: !4317, line: 670, baseType: !339, size: 16, offset: 144)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !4316, file: !4317, line: 723, baseType: !3977, size: 64, offset: 7488)
!4437 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !4312, file: !3, line: 368, type: !4315)
!4438 = !DILocation(line: 368, column: 47, scope: !4312)
!4439 = !DILocalVariable(name: "i2c_addr", arg: 2, scope: !4312, file: !3, line: 368, type: !349)
!4440 = !DILocation(line: 368, column: 60, scope: !4312)
!4441 = !DILocalVariable(name: "i2c", scope: !4312, file: !3, line: 370, type: !4442)
!4442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tuner_i2c_props", file: !4443, line: 15, size: 256, elements: !4444)
!4443 = !DIFile(filename: "drivers/media/tuners/tuner-i2c.h", directory: "/home/lizy2001/genbc/linux")
!4444 = !{!4445, !4446, !4447, !4448}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4442, file: !4443, line: 16, baseType: !349, size: 8)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "adap", scope: !4442, file: !4443, line: 17, baseType: !4315, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4442, file: !4443, line: 20, baseType: !326, size: 32, offset: 128)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4442, file: !4443, line: 21, baseType: !332, size: 64, offset: 192)
!4449 = !DILocation(line: 370, column: 25, scope: !4312)
!4450 = !DILocation(line: 370, column: 31, scope: !4312)
!4451 = !DILocation(line: 370, column: 59, scope: !4312)
!4452 = !DILocation(line: 370, column: 41, scope: !4312)
!4453 = !DILocalVariable(name: "buffer", scope: !4312, file: !3, line: 371, type: !4454)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 56, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 7)
!4457 = !DILocation(line: 371, column: 16, scope: !4312)
!4458 = !DILocalVariable(name: "rc", scope: !4312, file: !3, line: 373, type: !326)
!4459 = !DILocation(line: 373, column: 6, scope: !4312)
!4460 = !DILocation(line: 375, column: 38, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 375, column: 6)
!4462 = !DILocation(line: 375, column: 12, scope: !4461)
!4463 = !DILocation(line: 375, column: 10, scope: !4461)
!4464 = !DILocation(line: 375, column: 49, scope: !4461)
!4465 = !DILocation(line: 375, column: 6, scope: !4312)
!4466 = !DILocation(line: 376, column: 3, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4461, file: !3, line: 375, column: 54)
!4468 = !DILocation(line: 377, column: 3, scope: !4467)
!4469 = !DILocation(line: 381, column: 6, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 381, column: 6)
!4471 = !DILocation(line: 381, column: 19, scope: !4470)
!4472 = !DILocation(line: 381, column: 16, scope: !4470)
!4473 = !DILocation(line: 381, column: 29, scope: !4470)
!4474 = !DILocation(line: 381, column: 32, scope: !4470)
!4475 = !DILocation(line: 381, column: 45, scope: !4470)
!4476 = !DILocation(line: 381, column: 42, scope: !4470)
!4477 = !DILocation(line: 381, column: 55, scope: !4470)
!4478 = !DILocation(line: 382, column: 6, scope: !4470)
!4479 = !DILocation(line: 382, column: 19, scope: !4470)
!4480 = !DILocation(line: 382, column: 16, scope: !4470)
!4481 = !DILocation(line: 382, column: 29, scope: !4470)
!4482 = !DILocation(line: 382, column: 32, scope: !4470)
!4483 = !DILocation(line: 382, column: 45, scope: !4470)
!4484 = !DILocation(line: 382, column: 42, scope: !4470)
!4485 = !DILocation(line: 381, column: 6, scope: !4312)
!4486 = !DILocation(line: 383, column: 3, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4470, file: !3, line: 382, column: 56)
!4488 = !DILocation(line: 384, column: 3, scope: !4487)
!4489 = !DILocation(line: 392, column: 8, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 392, column: 6)
!4491 = !DILocation(line: 392, column: 18, scope: !4490)
!4492 = !DILocation(line: 392, column: 26, scope: !4490)
!4493 = !DILocation(line: 392, column: 35, scope: !4490)
!4494 = !DILocation(line: 392, column: 39, scope: !4490)
!4495 = !DILocation(line: 392, column: 49, scope: !4490)
!4496 = !DILocation(line: 392, column: 6, scope: !4312)
!4497 = !DILocation(line: 393, column: 3, scope: !4498)
!4498 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 392, column: 59)
!4499 = !DILocation(line: 394, column: 3, scope: !4498)
!4500 = !DILocation(line: 398, column: 2, scope: !4312)
!4501 = !DILocation(line: 399, column: 1, scope: !4312)
!4502 = distinct !DISubprogram(name: "tuner_i2c_xfer_recv", scope: !4443, file: !4443, line: 34, type: !4503, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!326, !4505, !4506, !326}
!4505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!4507 = !DILocalVariable(name: "props", arg: 1, scope: !4502, file: !4443, line: 34, type: !4505)
!4508 = !DILocation(line: 34, column: 63, scope: !4502)
!4509 = !DILocalVariable(name: "buf", arg: 2, scope: !4502, file: !4443, line: 35, type: !4506)
!4510 = !DILocation(line: 35, column: 26, scope: !4502)
!4511 = !DILocalVariable(name: "len", arg: 3, scope: !4502, file: !4443, line: 35, type: !326)
!4512 = !DILocation(line: 35, column: 35, scope: !4502)
!4513 = !DILocalVariable(name: "msg", scope: !4502, file: !4443, line: 37, type: !4331)
!4514 = !DILocation(line: 37, column: 17, scope: !4502)
!4515 = !DILocation(line: 37, column: 23, scope: !4502)
!4516 = !DILocation(line: 37, column: 33, scope: !4502)
!4517 = !DILocation(line: 37, column: 40, scope: !4502)
!4518 = !DILocation(line: 38, column: 30, scope: !4502)
!4519 = !DILocation(line: 38, column: 18, scope: !4502)
!4520 = !DILocalVariable(name: "ret", scope: !4502, file: !4443, line: 39, type: !326)
!4521 = !DILocation(line: 39, column: 6, scope: !4502)
!4522 = !DILocation(line: 39, column: 25, scope: !4502)
!4523 = !DILocation(line: 39, column: 32, scope: !4502)
!4524 = !DILocation(line: 39, column: 12, scope: !4502)
!4525 = !DILocation(line: 41, column: 10, scope: !4502)
!4526 = !DILocation(line: 41, column: 14, scope: !4502)
!4527 = !DILocation(line: 41, column: 9, scope: !4502)
!4528 = !DILocation(line: 41, column: 22, scope: !4502)
!4529 = !DILocation(line: 41, column: 28, scope: !4502)
!4530 = !DILocation(line: 41, column: 2, scope: !4502)
!4531 = distinct !DISubprogram(name: "tea5767_attach", scope: !3, file: !3, line: 438, type: !4532, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!430, !430, !4315, !349}
!4534 = !DILocalVariable(name: "fe", arg: 1, scope: !4531, file: !3, line: 438, type: !430)
!4535 = !DILocation(line: 438, column: 58, scope: !4531)
!4536 = !DILocalVariable(name: "i2c_adap", arg: 2, scope: !4531, file: !3, line: 439, type: !4315)
!4537 = !DILocation(line: 439, column: 29, scope: !4531)
!4538 = !DILocalVariable(name: "i2c_addr", arg: 3, scope: !4531, file: !3, line: 440, type: !349)
!4539 = !DILocation(line: 440, column: 12, scope: !4531)
!4540 = !DILocalVariable(name: "priv", scope: !4531, file: !3, line: 442, type: !4541)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4542, size: 64)
!4542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tea5767_priv", file: !3, line: 25, size: 384, elements: !4543)
!4543 = !{!4544, !4545, !4546}
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_props", scope: !4542, file: !3, line: 26, baseType: !4442, size: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !4542, file: !3, line: 27, baseType: !419, size: 32, offset: 256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4542, file: !3, line: 28, baseType: !4547, size: 64, offset: 288)
!4547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tea5767_ctrl", file: !284, line: 18, size: 64, elements: !4548)
!4548 = !{!4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "port1", scope: !4547, file: !284, line: 19, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "port2", scope: !4547, file: !284, line: 20, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "high_cut", scope: !4547, file: !284, line: 21, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "st_noise", scope: !4547, file: !284, line: 22, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "soft_mute", scope: !4547, file: !284, line: 23, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "japan_band", scope: !4547, file: !284, line: 24, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "deemph_75", scope: !4547, file: !284, line: 25, baseType: !7, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "pllref", scope: !4547, file: !284, line: 26, baseType: !7, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "xtal_freq", scope: !4547, file: !284, line: 27, baseType: !283, size: 32, offset: 32)
!4558 = !DILocation(line: 442, column: 23, scope: !4531)
!4559 = !DILocation(line: 444, column: 9, scope: !4531)
!4560 = !DILocation(line: 444, column: 7, scope: !4531)
!4561 = !DILocation(line: 445, column: 6, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 445, column: 6)
!4563 = !DILocation(line: 445, column: 11, scope: !4562)
!4564 = !DILocation(line: 445, column: 6, scope: !4531)
!4565 = !DILocation(line: 446, column: 3, scope: !4562)
!4566 = !DILocation(line: 447, column: 19, scope: !4531)
!4567 = !DILocation(line: 447, column: 2, scope: !4531)
!4568 = !DILocation(line: 447, column: 6, scope: !4531)
!4569 = !DILocation(line: 447, column: 17, scope: !4531)
!4570 = !DILocation(line: 449, column: 26, scope: !4531)
!4571 = !DILocation(line: 449, column: 2, scope: !4531)
!4572 = !DILocation(line: 449, column: 8, scope: !4531)
!4573 = !DILocation(line: 449, column: 18, scope: !4531)
!4574 = !DILocation(line: 449, column: 24, scope: !4531)
!4575 = !DILocation(line: 450, column: 26, scope: !4531)
!4576 = !DILocation(line: 450, column: 2, scope: !4531)
!4577 = !DILocation(line: 450, column: 8, scope: !4531)
!4578 = !DILocation(line: 450, column: 18, scope: !4531)
!4579 = !DILocation(line: 450, column: 24, scope: !4531)
!4580 = !DILocation(line: 451, column: 2, scope: !4531)
!4581 = !DILocation(line: 451, column: 8, scope: !4531)
!4582 = !DILocation(line: 451, column: 18, scope: !4531)
!4583 = !DILocation(line: 451, column: 24, scope: !4531)
!4584 = !DILocation(line: 453, column: 2, scope: !4531)
!4585 = !DILocation(line: 453, column: 8, scope: !4531)
!4586 = !DILocation(line: 453, column: 13, scope: !4531)
!4587 = !DILocation(line: 453, column: 24, scope: !4531)
!4588 = !DILocation(line: 454, column: 2, scope: !4531)
!4589 = !DILocation(line: 454, column: 8, scope: !4531)
!4590 = !DILocation(line: 454, column: 13, scope: !4531)
!4591 = !DILocation(line: 454, column: 24, scope: !4531)
!4592 = !DILocation(line: 455, column: 2, scope: !4531)
!4593 = !DILocation(line: 455, column: 8, scope: !4531)
!4594 = !DILocation(line: 455, column: 13, scope: !4531)
!4595 = !DILocation(line: 455, column: 24, scope: !4531)
!4596 = !DILocation(line: 456, column: 2, scope: !4531)
!4597 = !DILocation(line: 456, column: 8, scope: !4531)
!4598 = !DILocation(line: 456, column: 13, scope: !4531)
!4599 = !DILocation(line: 456, column: 24, scope: !4531)
!4600 = !DILocation(line: 457, column: 2, scope: !4531)
!4601 = !DILocation(line: 457, column: 8, scope: !4531)
!4602 = !DILocation(line: 457, column: 13, scope: !4531)
!4603 = !DILocation(line: 457, column: 24, scope: !4531)
!4604 = !DILocation(line: 458, column: 2, scope: !4531)
!4605 = !DILocation(line: 458, column: 8, scope: !4531)
!4606 = !DILocation(line: 458, column: 13, scope: !4531)
!4607 = !DILocation(line: 458, column: 24, scope: !4531)
!4608 = !DILocation(line: 460, column: 10, scope: !4531)
!4609 = !DILocation(line: 460, column: 14, scope: !4531)
!4610 = !DILocation(line: 460, column: 18, scope: !4531)
!4611 = !DILocation(line: 460, column: 2, scope: !4531)
!4612 = !DILocation(line: 463, column: 2, scope: !4531)
!4613 = !DILocation(line: 463, column: 2, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 463, column: 2)
!4615 = !DILocation(line: 463, column: 2, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 463, column: 2)
!4617 = !DILocation(line: 465, column: 9, scope: !4531)
!4618 = !DILocation(line: 465, column: 2, scope: !4531)
!4619 = !DILocation(line: 466, column: 1, scope: !4531)
!4620 = distinct !DISubprogram(name: "kzalloc", scope: !291, file: !291, line: 662, type: !4621, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!300, !812, !298}
!4623 = !DILocalVariable(name: "s", arg: 1, scope: !4624, file: !291, line: 445, type: !1404)
!4624 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !291, file: !291, line: 445, type: !4625, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!300, !1404, !298, !812}
!4627 = !DILocation(line: 445, column: 72, scope: !4624, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 552, column: 10, scope: !4629, inlinedAt: !4632)
!4629 = distinct !DILexicalBlock(scope: !4630, file: !291, line: 540, column: 34)
!4630 = distinct !DILexicalBlock(scope: !4631, file: !291, line: 540, column: 6)
!4631 = distinct !DISubprogram(name: "kmalloc", scope: !291, file: !291, line: 538, type: !4621, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4632 = distinct !DILocation(line: 664, column: 9, scope: !4620)
!4633 = !DILocalVariable(name: "flags", arg: 2, scope: !4624, file: !291, line: 446, type: !298)
!4634 = !DILocation(line: 446, column: 9, scope: !4624, inlinedAt: !4628)
!4635 = !DILocalVariable(name: "size", arg: 3, scope: !4624, file: !291, line: 446, type: !812)
!4636 = !DILocation(line: 446, column: 23, scope: !4624, inlinedAt: !4628)
!4637 = !DILocalVariable(name: "ret", scope: !4624, file: !291, line: 448, type: !300)
!4638 = !DILocation(line: 448, column: 8, scope: !4624, inlinedAt: !4628)
!4639 = !DILocalVariable(name: "flags", arg: 1, scope: !4640, file: !291, line: 318, type: !298)
!4640 = distinct !DISubprogram(name: "kmalloc_type", scope: !291, file: !291, line: 318, type: !4641, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!290, !298}
!4643 = !DILocation(line: 318, column: 67, scope: !4640, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 553, column: 20, scope: !4629, inlinedAt: !4632)
!4645 = !DILocalVariable(name: "size", arg: 1, scope: !4646, file: !291, line: 346, type: !812)
!4646 = distinct !DISubprogram(name: "kmalloc_index", scope: !291, file: !291, line: 346, type: !4647, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{!7, !812}
!4649 = !DILocation(line: 346, column: 58, scope: !4646, inlinedAt: !4650)
!4650 = distinct !DILocation(line: 547, column: 11, scope: !4629, inlinedAt: !4632)
!4651 = !DILocalVariable(name: "size", arg: 1, scope: !4652, file: !291, line: 472, type: !812)
!4652 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !291, file: !291, line: 472, type: !4653, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!300, !812, !298, !7}
!4655 = !DILocation(line: 472, column: 28, scope: !4652, inlinedAt: !4656)
!4656 = distinct !DILocation(line: 481, column: 9, scope: !4657, inlinedAt: !4658)
!4657 = distinct !DISubprogram(name: "kmalloc_large", scope: !291, file: !291, line: 478, type: !4621, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4658 = distinct !DILocation(line: 545, column: 11, scope: !4659, inlinedAt: !4632)
!4659 = distinct !DILexicalBlock(scope: !4629, file: !291, line: 544, column: 7)
!4660 = !DILocalVariable(name: "flags", arg: 2, scope: !4652, file: !291, line: 472, type: !298)
!4661 = !DILocation(line: 472, column: 40, scope: !4652, inlinedAt: !4656)
!4662 = !DILocalVariable(name: "order", arg: 3, scope: !4652, file: !291, line: 472, type: !7)
!4663 = !DILocation(line: 472, column: 60, scope: !4652, inlinedAt: !4656)
!4664 = !DILocalVariable(name: "size", arg: 1, scope: !4657, file: !291, line: 478, type: !812)
!4665 = !DILocation(line: 478, column: 51, scope: !4657, inlinedAt: !4658)
!4666 = !DILocalVariable(name: "flags", arg: 2, scope: !4657, file: !291, line: 478, type: !298)
!4667 = !DILocation(line: 478, column: 63, scope: !4657, inlinedAt: !4658)
!4668 = !DILocalVariable(name: "order", scope: !4657, file: !291, line: 480, type: !7)
!4669 = !DILocation(line: 480, column: 15, scope: !4657, inlinedAt: !4658)
!4670 = !DILocalVariable(name: "size", arg: 1, scope: !4631, file: !291, line: 538, type: !812)
!4671 = !DILocation(line: 538, column: 45, scope: !4631, inlinedAt: !4632)
!4672 = !DILocalVariable(name: "flags", arg: 2, scope: !4631, file: !291, line: 538, type: !298)
!4673 = !DILocation(line: 538, column: 57, scope: !4631, inlinedAt: !4632)
!4674 = !DILocalVariable(name: "index", scope: !4629, file: !291, line: 542, type: !7)
!4675 = !DILocation(line: 542, column: 16, scope: !4629, inlinedAt: !4632)
!4676 = !DILocalVariable(name: "size", arg: 1, scope: !4620, file: !291, line: 662, type: !812)
!4677 = !DILocation(line: 662, column: 36, scope: !4620)
!4678 = !DILocalVariable(name: "flags", arg: 2, scope: !4620, file: !291, line: 662, type: !298)
!4679 = !DILocation(line: 662, column: 48, scope: !4620)
!4680 = !DILocation(line: 664, column: 17, scope: !4620)
!4681 = !DILocation(line: 664, column: 23, scope: !4620)
!4682 = !DILocation(line: 664, column: 29, scope: !4620)
!4683 = !DILocation(line: 540, column: 27, scope: !4630, inlinedAt: !4632)
!4684 = !DILocation(line: 540, column: 6, scope: !4630, inlinedAt: !4632)
!4685 = !DILocation(line: 540, column: 6, scope: !4631, inlinedAt: !4632)
!4686 = !DILocation(line: 544, column: 7, scope: !4659, inlinedAt: !4632)
!4687 = !DILocation(line: 544, column: 12, scope: !4659, inlinedAt: !4632)
!4688 = !DILocation(line: 544, column: 7, scope: !4629, inlinedAt: !4632)
!4689 = !DILocation(line: 545, column: 25, scope: !4659, inlinedAt: !4632)
!4690 = !DILocation(line: 545, column: 31, scope: !4659, inlinedAt: !4632)
!4691 = !DILocation(line: 480, column: 33, scope: !4657, inlinedAt: !4658)
!4692 = !DILocation(line: 480, column: 23, scope: !4657, inlinedAt: !4658)
!4693 = !DILocation(line: 481, column: 29, scope: !4657, inlinedAt: !4658)
!4694 = !DILocation(line: 481, column: 35, scope: !4657, inlinedAt: !4658)
!4695 = !DILocation(line: 481, column: 42, scope: !4657, inlinedAt: !4658)
!4696 = !DILocation(line: 474, column: 23, scope: !4652, inlinedAt: !4656)
!4697 = !DILocation(line: 474, column: 29, scope: !4652, inlinedAt: !4656)
!4698 = !DILocation(line: 474, column: 36, scope: !4652, inlinedAt: !4656)
!4699 = !DILocation(line: 474, column: 9, scope: !4652, inlinedAt: !4656)
!4700 = !DILocation(line: 545, column: 4, scope: !4659, inlinedAt: !4632)
!4701 = !DILocation(line: 547, column: 25, scope: !4629, inlinedAt: !4632)
!4702 = !DILocation(line: 348, column: 7, scope: !4703, inlinedAt: !4650)
!4703 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 348, column: 6)
!4704 = !DILocation(line: 348, column: 6, scope: !4646, inlinedAt: !4650)
!4705 = !DILocation(line: 349, column: 3, scope: !4703, inlinedAt: !4650)
!4706 = !DILocation(line: 351, column: 6, scope: !4707, inlinedAt: !4650)
!4707 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 351, column: 6)
!4708 = !DILocation(line: 351, column: 11, scope: !4707, inlinedAt: !4650)
!4709 = !DILocation(line: 351, column: 6, scope: !4646, inlinedAt: !4650)
!4710 = !DILocation(line: 352, column: 3, scope: !4707, inlinedAt: !4650)
!4711 = !DILocation(line: 354, column: 32, scope: !4712, inlinedAt: !4650)
!4712 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 354, column: 6)
!4713 = !DILocation(line: 354, column: 37, scope: !4712, inlinedAt: !4650)
!4714 = !DILocation(line: 354, column: 42, scope: !4712, inlinedAt: !4650)
!4715 = !DILocation(line: 354, column: 45, scope: !4712, inlinedAt: !4650)
!4716 = !DILocation(line: 354, column: 50, scope: !4712, inlinedAt: !4650)
!4717 = !DILocation(line: 354, column: 6, scope: !4646, inlinedAt: !4650)
!4718 = !DILocation(line: 355, column: 3, scope: !4712, inlinedAt: !4650)
!4719 = !DILocation(line: 356, column: 32, scope: !4720, inlinedAt: !4650)
!4720 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 356, column: 6)
!4721 = !DILocation(line: 356, column: 37, scope: !4720, inlinedAt: !4650)
!4722 = !DILocation(line: 356, column: 43, scope: !4720, inlinedAt: !4650)
!4723 = !DILocation(line: 356, column: 46, scope: !4720, inlinedAt: !4650)
!4724 = !DILocation(line: 356, column: 51, scope: !4720, inlinedAt: !4650)
!4725 = !DILocation(line: 356, column: 6, scope: !4646, inlinedAt: !4650)
!4726 = !DILocation(line: 357, column: 3, scope: !4720, inlinedAt: !4650)
!4727 = !DILocation(line: 358, column: 6, scope: !4728, inlinedAt: !4650)
!4728 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 358, column: 6)
!4729 = !DILocation(line: 358, column: 11, scope: !4728, inlinedAt: !4650)
!4730 = !DILocation(line: 358, column: 6, scope: !4646, inlinedAt: !4650)
!4731 = !DILocation(line: 358, column: 26, scope: !4728, inlinedAt: !4650)
!4732 = !DILocation(line: 359, column: 6, scope: !4733, inlinedAt: !4650)
!4733 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 359, column: 6)
!4734 = !DILocation(line: 359, column: 11, scope: !4733, inlinedAt: !4650)
!4735 = !DILocation(line: 359, column: 6, scope: !4646, inlinedAt: !4650)
!4736 = !DILocation(line: 359, column: 26, scope: !4733, inlinedAt: !4650)
!4737 = !DILocation(line: 360, column: 6, scope: !4738, inlinedAt: !4650)
!4738 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 360, column: 6)
!4739 = !DILocation(line: 360, column: 11, scope: !4738, inlinedAt: !4650)
!4740 = !DILocation(line: 360, column: 6, scope: !4646, inlinedAt: !4650)
!4741 = !DILocation(line: 360, column: 26, scope: !4738, inlinedAt: !4650)
!4742 = !DILocation(line: 361, column: 6, scope: !4743, inlinedAt: !4650)
!4743 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 361, column: 6)
!4744 = !DILocation(line: 361, column: 11, scope: !4743, inlinedAt: !4650)
!4745 = !DILocation(line: 361, column: 6, scope: !4646, inlinedAt: !4650)
!4746 = !DILocation(line: 361, column: 26, scope: !4743, inlinedAt: !4650)
!4747 = !DILocation(line: 362, column: 6, scope: !4748, inlinedAt: !4650)
!4748 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 362, column: 6)
!4749 = !DILocation(line: 362, column: 11, scope: !4748, inlinedAt: !4650)
!4750 = !DILocation(line: 362, column: 6, scope: !4646, inlinedAt: !4650)
!4751 = !DILocation(line: 362, column: 26, scope: !4748, inlinedAt: !4650)
!4752 = !DILocation(line: 363, column: 6, scope: !4753, inlinedAt: !4650)
!4753 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 363, column: 6)
!4754 = !DILocation(line: 363, column: 11, scope: !4753, inlinedAt: !4650)
!4755 = !DILocation(line: 363, column: 6, scope: !4646, inlinedAt: !4650)
!4756 = !DILocation(line: 363, column: 26, scope: !4753, inlinedAt: !4650)
!4757 = !DILocation(line: 364, column: 6, scope: !4758, inlinedAt: !4650)
!4758 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 364, column: 6)
!4759 = !DILocation(line: 364, column: 11, scope: !4758, inlinedAt: !4650)
!4760 = !DILocation(line: 364, column: 6, scope: !4646, inlinedAt: !4650)
!4761 = !DILocation(line: 364, column: 26, scope: !4758, inlinedAt: !4650)
!4762 = !DILocation(line: 365, column: 6, scope: !4763, inlinedAt: !4650)
!4763 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 365, column: 6)
!4764 = !DILocation(line: 365, column: 11, scope: !4763, inlinedAt: !4650)
!4765 = !DILocation(line: 365, column: 6, scope: !4646, inlinedAt: !4650)
!4766 = !DILocation(line: 365, column: 26, scope: !4763, inlinedAt: !4650)
!4767 = !DILocation(line: 366, column: 6, scope: !4768, inlinedAt: !4650)
!4768 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 366, column: 6)
!4769 = !DILocation(line: 366, column: 11, scope: !4768, inlinedAt: !4650)
!4770 = !DILocation(line: 366, column: 6, scope: !4646, inlinedAt: !4650)
!4771 = !DILocation(line: 366, column: 26, scope: !4768, inlinedAt: !4650)
!4772 = !DILocation(line: 367, column: 6, scope: !4773, inlinedAt: !4650)
!4773 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 367, column: 6)
!4774 = !DILocation(line: 367, column: 11, scope: !4773, inlinedAt: !4650)
!4775 = !DILocation(line: 367, column: 6, scope: !4646, inlinedAt: !4650)
!4776 = !DILocation(line: 367, column: 26, scope: !4773, inlinedAt: !4650)
!4777 = !DILocation(line: 368, column: 6, scope: !4778, inlinedAt: !4650)
!4778 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 368, column: 6)
!4779 = !DILocation(line: 368, column: 11, scope: !4778, inlinedAt: !4650)
!4780 = !DILocation(line: 368, column: 6, scope: !4646, inlinedAt: !4650)
!4781 = !DILocation(line: 368, column: 26, scope: !4778, inlinedAt: !4650)
!4782 = !DILocation(line: 369, column: 6, scope: !4783, inlinedAt: !4650)
!4783 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 369, column: 6)
!4784 = !DILocation(line: 369, column: 11, scope: !4783, inlinedAt: !4650)
!4785 = !DILocation(line: 369, column: 6, scope: !4646, inlinedAt: !4650)
!4786 = !DILocation(line: 369, column: 26, scope: !4783, inlinedAt: !4650)
!4787 = !DILocation(line: 370, column: 6, scope: !4788, inlinedAt: !4650)
!4788 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 370, column: 6)
!4789 = !DILocation(line: 370, column: 11, scope: !4788, inlinedAt: !4650)
!4790 = !DILocation(line: 370, column: 6, scope: !4646, inlinedAt: !4650)
!4791 = !DILocation(line: 370, column: 26, scope: !4788, inlinedAt: !4650)
!4792 = !DILocation(line: 371, column: 6, scope: !4793, inlinedAt: !4650)
!4793 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 371, column: 6)
!4794 = !DILocation(line: 371, column: 11, scope: !4793, inlinedAt: !4650)
!4795 = !DILocation(line: 371, column: 6, scope: !4646, inlinedAt: !4650)
!4796 = !DILocation(line: 371, column: 26, scope: !4793, inlinedAt: !4650)
!4797 = !DILocation(line: 372, column: 6, scope: !4798, inlinedAt: !4650)
!4798 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 372, column: 6)
!4799 = !DILocation(line: 372, column: 11, scope: !4798, inlinedAt: !4650)
!4800 = !DILocation(line: 372, column: 6, scope: !4646, inlinedAt: !4650)
!4801 = !DILocation(line: 372, column: 26, scope: !4798, inlinedAt: !4650)
!4802 = !DILocation(line: 373, column: 6, scope: !4803, inlinedAt: !4650)
!4803 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 373, column: 6)
!4804 = !DILocation(line: 373, column: 11, scope: !4803, inlinedAt: !4650)
!4805 = !DILocation(line: 373, column: 6, scope: !4646, inlinedAt: !4650)
!4806 = !DILocation(line: 373, column: 26, scope: !4803, inlinedAt: !4650)
!4807 = !DILocation(line: 374, column: 6, scope: !4808, inlinedAt: !4650)
!4808 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 374, column: 6)
!4809 = !DILocation(line: 374, column: 11, scope: !4808, inlinedAt: !4650)
!4810 = !DILocation(line: 374, column: 6, scope: !4646, inlinedAt: !4650)
!4811 = !DILocation(line: 374, column: 26, scope: !4808, inlinedAt: !4650)
!4812 = !DILocation(line: 375, column: 6, scope: !4813, inlinedAt: !4650)
!4813 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 375, column: 6)
!4814 = !DILocation(line: 375, column: 11, scope: !4813, inlinedAt: !4650)
!4815 = !DILocation(line: 375, column: 6, scope: !4646, inlinedAt: !4650)
!4816 = !DILocation(line: 375, column: 27, scope: !4813, inlinedAt: !4650)
!4817 = !DILocation(line: 376, column: 6, scope: !4818, inlinedAt: !4650)
!4818 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 376, column: 6)
!4819 = !DILocation(line: 376, column: 11, scope: !4818, inlinedAt: !4650)
!4820 = !DILocation(line: 376, column: 6, scope: !4646, inlinedAt: !4650)
!4821 = !DILocation(line: 376, column: 32, scope: !4818, inlinedAt: !4650)
!4822 = !DILocation(line: 377, column: 6, scope: !4823, inlinedAt: !4650)
!4823 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 377, column: 6)
!4824 = !DILocation(line: 377, column: 11, scope: !4823, inlinedAt: !4650)
!4825 = !DILocation(line: 377, column: 6, scope: !4646, inlinedAt: !4650)
!4826 = !DILocation(line: 377, column: 32, scope: !4823, inlinedAt: !4650)
!4827 = !DILocation(line: 378, column: 6, scope: !4828, inlinedAt: !4650)
!4828 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 378, column: 6)
!4829 = !DILocation(line: 378, column: 11, scope: !4828, inlinedAt: !4650)
!4830 = !DILocation(line: 378, column: 6, scope: !4646, inlinedAt: !4650)
!4831 = !DILocation(line: 378, column: 32, scope: !4828, inlinedAt: !4650)
!4832 = !DILocation(line: 379, column: 6, scope: !4833, inlinedAt: !4650)
!4833 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 379, column: 6)
!4834 = !DILocation(line: 379, column: 11, scope: !4833, inlinedAt: !4650)
!4835 = !DILocation(line: 379, column: 6, scope: !4646, inlinedAt: !4650)
!4836 = !DILocation(line: 379, column: 33, scope: !4833, inlinedAt: !4650)
!4837 = !DILocation(line: 380, column: 6, scope: !4838, inlinedAt: !4650)
!4838 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 380, column: 6)
!4839 = !DILocation(line: 380, column: 11, scope: !4838, inlinedAt: !4650)
!4840 = !DILocation(line: 380, column: 6, scope: !4646, inlinedAt: !4650)
!4841 = !DILocation(line: 380, column: 33, scope: !4838, inlinedAt: !4650)
!4842 = !DILocation(line: 381, column: 6, scope: !4843, inlinedAt: !4650)
!4843 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 381, column: 6)
!4844 = !DILocation(line: 381, column: 11, scope: !4843, inlinedAt: !4650)
!4845 = !DILocation(line: 381, column: 6, scope: !4646, inlinedAt: !4650)
!4846 = !DILocation(line: 381, column: 33, scope: !4843, inlinedAt: !4650)
!4847 = !DILocation(line: 382, column: 2, scope: !4848, inlinedAt: !4650)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !291, line: 382, column: 2)
!4849 = distinct !DILexicalBlock(scope: !4646, file: !291, line: 382, column: 2)
!4850 = !{i32 -2144174089, i32 -2144174060, i32 -2144174014, i32 -2144173956, i32 -2144173902, i32 -2144173848, i32 -2144173793, i32 -2144173762}
!4851 = !DILocation(line: 382, column: 2, scope: !4852, inlinedAt: !4650)
!4852 = distinct !DILexicalBlock(scope: !4853, file: !291, line: 382, column: 2)
!4853 = distinct !DILexicalBlock(scope: !4849, file: !291, line: 382, column: 2)
!4854 = !{i32 -2144173319, i32 -2144173312, i32 -2144173258, i32 -2144173227, i32 -2144173197}
!4855 = !DILocation(line: 382, column: 2, scope: !4853, inlinedAt: !4650)
!4856 = !DILocation(line: 386, column: 1, scope: !4646, inlinedAt: !4650)
!4857 = !DILocation(line: 547, column: 9, scope: !4629, inlinedAt: !4632)
!4858 = !DILocation(line: 549, column: 8, scope: !4859, inlinedAt: !4632)
!4859 = distinct !DILexicalBlock(scope: !4629, file: !291, line: 549, column: 7)
!4860 = !DILocation(line: 549, column: 7, scope: !4629, inlinedAt: !4632)
!4861 = !DILocation(line: 550, column: 4, scope: !4859, inlinedAt: !4632)
!4862 = !DILocation(line: 553, column: 33, scope: !4629, inlinedAt: !4632)
!4863 = !DILocation(line: 325, column: 6, scope: !4864, inlinedAt: !4644)
!4864 = distinct !DILexicalBlock(scope: !4640, file: !291, line: 325, column: 6)
!4865 = !DILocation(line: 325, column: 6, scope: !4640, inlinedAt: !4644)
!4866 = !DILocation(line: 326, column: 3, scope: !4864, inlinedAt: !4644)
!4867 = !DILocation(line: 332, column: 9, scope: !4640, inlinedAt: !4644)
!4868 = !DILocation(line: 332, column: 15, scope: !4640, inlinedAt: !4644)
!4869 = !DILocation(line: 332, column: 2, scope: !4640, inlinedAt: !4644)
!4870 = !DILocation(line: 336, column: 1, scope: !4640, inlinedAt: !4644)
!4871 = !DILocation(line: 553, column: 5, scope: !4629, inlinedAt: !4632)
!4872 = !DILocation(line: 553, column: 41, scope: !4629, inlinedAt: !4632)
!4873 = !DILocation(line: 554, column: 5, scope: !4629, inlinedAt: !4632)
!4874 = !DILocation(line: 554, column: 12, scope: !4629, inlinedAt: !4632)
!4875 = !DILocation(line: 448, column: 31, scope: !4624, inlinedAt: !4628)
!4876 = !DILocation(line: 448, column: 34, scope: !4624, inlinedAt: !4628)
!4877 = !DILocation(line: 448, column: 14, scope: !4624, inlinedAt: !4628)
!4878 = !DILocation(line: 450, column: 22, scope: !4624, inlinedAt: !4628)
!4879 = !DILocation(line: 450, column: 25, scope: !4624, inlinedAt: !4628)
!4880 = !DILocation(line: 450, column: 30, scope: !4624, inlinedAt: !4628)
!4881 = !DILocation(line: 450, column: 36, scope: !4624, inlinedAt: !4628)
!4882 = !DILocation(line: 450, column: 8, scope: !4624, inlinedAt: !4628)
!4883 = !DILocation(line: 450, column: 6, scope: !4624, inlinedAt: !4628)
!4884 = !DILocation(line: 451, column: 9, scope: !4624, inlinedAt: !4628)
!4885 = !DILocation(line: 552, column: 3, scope: !4629, inlinedAt: !4632)
!4886 = !DILocation(line: 557, column: 19, scope: !4631, inlinedAt: !4632)
!4887 = !DILocation(line: 557, column: 25, scope: !4631, inlinedAt: !4632)
!4888 = !DILocation(line: 557, column: 9, scope: !4631, inlinedAt: !4632)
!4889 = !DILocation(line: 557, column: 2, scope: !4631, inlinedAt: !4632)
!4890 = !DILocation(line: 558, column: 1, scope: !4631, inlinedAt: !4632)
!4891 = !DILocation(line: 664, column: 2, scope: !4620)
!4892 = distinct !DISubprogram(name: "i2c_adapter_id", scope: !4317, file: !4317, line: 900, type: !4399, scopeLine: 901, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4893 = !DILocalVariable(name: "adap", arg: 1, scope: !4892, file: !4317, line: 900, type: !4315)
!4894 = !DILocation(line: 900, column: 54, scope: !4892)
!4895 = !DILocation(line: 902, column: 9, scope: !4892)
!4896 = !DILocation(line: 902, column: 15, scope: !4892)
!4897 = !DILocation(line: 902, column: 2, scope: !4892)
!4898 = distinct !DISubprogram(name: "get_order", scope: !4899, file: !4899, line: 29, type: !4900, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4899 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!326, !648}
!4902 = !DILocalVariable(name: "x", arg: 1, scope: !4903, file: !4904, line: 366, type: !573)
!4903 = distinct !DISubprogram(name: "fls64", scope: !4904, file: !4904, line: 366, type: !4905, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4904 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!326, !573}
!4907 = !DILocation(line: 366, column: 40, scope: !4903, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 46, column: 9, scope: !4898)
!4909 = !DILocalVariable(name: "bitpos", scope: !4903, file: !4904, line: 368, type: !326)
!4910 = !DILocation(line: 368, column: 6, scope: !4903, inlinedAt: !4908)
!4911 = !DILocalVariable(name: "size", arg: 1, scope: !4898, file: !4899, line: 29, type: !648)
!4912 = !DILocation(line: 29, column: 63, scope: !4898)
!4913 = !DILocation(line: 31, column: 27, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4898, file: !4899, line: 31, column: 6)
!4915 = !DILocation(line: 31, column: 6, scope: !4914)
!4916 = !DILocation(line: 31, column: 6, scope: !4898)
!4917 = !DILocation(line: 32, column: 8, scope: !4918)
!4918 = distinct !DILexicalBlock(scope: !4919, file: !4899, line: 32, column: 7)
!4919 = distinct !DILexicalBlock(scope: !4914, file: !4899, line: 31, column: 34)
!4920 = !DILocation(line: 32, column: 7, scope: !4919)
!4921 = !DILocation(line: 33, column: 4, scope: !4918)
!4922 = !DILocation(line: 35, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4919, file: !4899, line: 35, column: 7)
!4924 = !DILocation(line: 35, column: 12, scope: !4923)
!4925 = !DILocation(line: 35, column: 7, scope: !4919)
!4926 = !DILocation(line: 36, column: 4, scope: !4923)
!4927 = !DILocation(line: 38, column: 10, scope: !4919)
!4928 = !DILocation(line: 38, column: 28, scope: !4919)
!4929 = !DILocation(line: 38, column: 41, scope: !4919)
!4930 = !DILocation(line: 38, column: 3, scope: !4919)
!4931 = !DILocation(line: 41, column: 6, scope: !4898)
!4932 = !DILocation(line: 42, column: 7, scope: !4898)
!4933 = !DILocation(line: 46, column: 15, scope: !4898)
!4934 = !DILocation(line: 374, column: 2, scope: !4903, inlinedAt: !4908)
!4935 = !DILocation(line: 376, column: 14, scope: !4903, inlinedAt: !4908)
!4936 = !{i32 360993}
!4937 = !DILocation(line: 377, column: 9, scope: !4903, inlinedAt: !4908)
!4938 = !DILocation(line: 377, column: 16, scope: !4903, inlinedAt: !4908)
!4939 = !DILocation(line: 46, column: 2, scope: !4898)
!4940 = !DILocation(line: 48, column: 1, scope: !4898)
!4941 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4942, file: !4942, line: 30, type: !4943, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4942 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!326, !678}
!4945 = !DILocation(line: 366, column: 40, scope: !4903, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 32, column: 9, scope: !4941)
!4947 = !DILocation(line: 368, column: 6, scope: !4903, inlinedAt: !4946)
!4948 = !DILocalVariable(name: "n", arg: 1, scope: !4941, file: !4942, line: 30, type: !678)
!4949 = !DILocation(line: 30, column: 21, scope: !4941)
!4950 = !DILocation(line: 32, column: 15, scope: !4941)
!4951 = !DILocation(line: 374, column: 2, scope: !4903, inlinedAt: !4946)
!4952 = !DILocation(line: 376, column: 14, scope: !4903, inlinedAt: !4946)
!4953 = !DILocation(line: 377, column: 9, scope: !4903, inlinedAt: !4946)
!4954 = !DILocation(line: 377, column: 16, scope: !4903, inlinedAt: !4946)
!4955 = !DILocation(line: 32, column: 18, scope: !4941)
!4956 = !DILocation(line: 32, column: 2, scope: !4941)
!4957 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4958, file: !4958, line: 137, type: !4959, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4958 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4959 = !DISubroutineType(types: !4960)
!4960 = !{!300, !1404, !2506, !812, !298}
!4961 = !DILocalVariable(name: "s", arg: 1, scope: !4957, file: !4958, line: 137, type: !1404)
!4962 = !DILocation(line: 137, column: 54, scope: !4957)
!4963 = !DILocalVariable(name: "object", arg: 2, scope: !4957, file: !4958, line: 137, type: !2506)
!4964 = !DILocation(line: 137, column: 69, scope: !4957)
!4965 = !DILocalVariable(name: "size", arg: 3, scope: !4957, file: !4958, line: 138, type: !812)
!4966 = !DILocation(line: 138, column: 12, scope: !4957)
!4967 = !DILocalVariable(name: "flags", arg: 4, scope: !4957, file: !4958, line: 138, type: !298)
!4968 = !DILocation(line: 138, column: 24, scope: !4957)
!4969 = !DILocation(line: 140, column: 17, scope: !4957)
!4970 = !DILocation(line: 140, column: 2, scope: !4957)
!4971 = distinct !DISubprogram(name: "tea5767_release", scope: !3, file: !3, line: 401, type: !428, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4972 = !DILocalVariable(name: "fe", arg: 1, scope: !4971, file: !3, line: 401, type: !430)
!4973 = !DILocation(line: 401, column: 50, scope: !4971)
!4974 = !DILocation(line: 403, column: 8, scope: !4971)
!4975 = !DILocation(line: 403, column: 12, scope: !4971)
!4976 = !DILocation(line: 403, column: 2, scope: !4971)
!4977 = !DILocation(line: 404, column: 2, scope: !4971)
!4978 = !DILocation(line: 404, column: 6, scope: !4971)
!4979 = !DILocation(line: 404, column: 17, scope: !4971)
!4980 = !DILocation(line: 405, column: 1, scope: !4971)
!4981 = distinct !DISubprogram(name: "tea5767_standby", scope: !3, file: !3, line: 348, type: !471, scopeLine: 349, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!4982 = !DILocalVariable(name: "fe", arg: 1, scope: !4981, file: !3, line: 348, type: !430)
!4983 = !DILocation(line: 348, column: 49, scope: !4981)
!4984 = !DILocalVariable(name: "buffer", scope: !4981, file: !3, line: 350, type: !4985)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 40, elements: !4986)
!4986 = !{!4987}
!4987 = !DISubrange(count: 5)
!4988 = !DILocation(line: 350, column: 16, scope: !4981)
!4989 = !DILocalVariable(name: "priv", scope: !4981, file: !3, line: 351, type: !4541)
!4990 = !DILocation(line: 351, column: 23, scope: !4981)
!4991 = !DILocation(line: 351, column: 30, scope: !4981)
!4992 = !DILocation(line: 351, column: 34, scope: !4981)
!4993 = !DILocalVariable(name: "div", scope: !4981, file: !3, line: 352, type: !7)
!4994 = !DILocation(line: 352, column: 11, scope: !4981)
!4995 = !DILocalVariable(name: "rc", scope: !4981, file: !3, line: 352, type: !7)
!4996 = !DILocation(line: 352, column: 16, scope: !4981)
!4997 = !DILocation(line: 354, column: 6, scope: !4981)
!4998 = !DILocation(line: 355, column: 15, scope: !4981)
!4999 = !DILocation(line: 355, column: 19, scope: !4981)
!5000 = !DILocation(line: 355, column: 25, scope: !4981)
!5001 = !DILocation(line: 355, column: 14, scope: !4981)
!5002 = !DILocation(line: 355, column: 2, scope: !4981)
!5003 = !DILocation(line: 355, column: 12, scope: !4981)
!5004 = !DILocation(line: 356, column: 14, scope: !4981)
!5005 = !DILocation(line: 356, column: 18, scope: !4981)
!5006 = !DILocation(line: 356, column: 2, scope: !4981)
!5007 = !DILocation(line: 356, column: 12, scope: !4981)
!5008 = !DILocation(line: 357, column: 2, scope: !4981)
!5009 = !DILocation(line: 357, column: 12, scope: !4981)
!5010 = !DILocation(line: 358, column: 2, scope: !4981)
!5011 = !DILocation(line: 358, column: 12, scope: !4981)
!5012 = !DILocation(line: 360, column: 2, scope: !4981)
!5013 = !DILocation(line: 360, column: 12, scope: !4981)
!5014 = !DILocation(line: 362, column: 38, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 362, column: 6)
!5016 = !DILocation(line: 362, column: 44, scope: !5015)
!5017 = !DILocation(line: 362, column: 55, scope: !5015)
!5018 = !DILocation(line: 362, column: 17, scope: !5015)
!5019 = !DILocation(line: 362, column: 15, scope: !5015)
!5020 = !DILocation(line: 362, column: 8, scope: !5015)
!5021 = !DILocation(line: 362, column: 6, scope: !4981)
!5022 = !DILocation(line: 363, column: 3, scope: !5015)
!5023 = !DILocation(line: 363, column: 3, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5015, file: !3, line: 363, column: 3)
!5025 = !DILocation(line: 363, column: 3, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 363, column: 3)
!5027 = !DILocation(line: 365, column: 2, scope: !4981)
!5028 = distinct !DISubprogram(name: "set_radio_freq", scope: !3, file: !3, line: 187, type: !4285, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5029 = !DILocalVariable(name: "fe", arg: 1, scope: !5028, file: !3, line: 187, type: !430)
!5030 = !DILocation(line: 187, column: 48, scope: !5028)
!5031 = !DILocalVariable(name: "params", arg: 2, scope: !5028, file: !3, line: 188, type: !671)
!5032 = !DILocation(line: 188, column: 32, scope: !5028)
!5033 = !DILocalVariable(name: "priv", scope: !5028, file: !3, line: 190, type: !4541)
!5034 = !DILocation(line: 190, column: 23, scope: !5028)
!5035 = !DILocation(line: 190, column: 30, scope: !5028)
!5036 = !DILocation(line: 190, column: 34, scope: !5028)
!5037 = !DILocalVariable(name: "frq", scope: !5028, file: !3, line: 191, type: !7)
!5038 = !DILocation(line: 191, column: 15, scope: !5028)
!5039 = !DILocation(line: 191, column: 21, scope: !5028)
!5040 = !DILocation(line: 191, column: 29, scope: !5028)
!5041 = !DILocalVariable(name: "buffer", scope: !5028, file: !3, line: 192, type: !4985)
!5042 = !DILocation(line: 192, column: 16, scope: !5028)
!5043 = !DILocalVariable(name: "div", scope: !5028, file: !3, line: 193, type: !7)
!5044 = !DILocation(line: 193, column: 11, scope: !5028)
!5045 = !DILocalVariable(name: "rc", scope: !5028, file: !3, line: 194, type: !326)
!5046 = !DILocation(line: 194, column: 6, scope: !5028)
!5047 = !DILocation(line: 196, column: 2, scope: !5028)
!5048 = !DILocation(line: 196, column: 2, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 196, column: 2)
!5050 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 196, column: 2)
!5051 = !DILocation(line: 196, column: 2, scope: !5050)
!5052 = !DILocation(line: 196, column: 2, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5049, file: !3, line: 196, column: 2)
!5054 = !DILocation(line: 198, column: 2, scope: !5028)
!5055 = !DILocation(line: 198, column: 12, scope: !5028)
!5056 = !DILocation(line: 200, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 200, column: 6)
!5058 = !DILocation(line: 200, column: 12, scope: !5057)
!5059 = !DILocation(line: 200, column: 17, scope: !5057)
!5060 = !DILocation(line: 200, column: 6, scope: !5028)
!5061 = !DILocation(line: 201, column: 3, scope: !5057)
!5062 = !DILocation(line: 201, column: 13, scope: !5057)
!5063 = !DILocation(line: 203, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 203, column: 6)
!5065 = !DILocation(line: 203, column: 14, scope: !5064)
!5066 = !DILocation(line: 203, column: 22, scope: !5064)
!5067 = !DILocation(line: 203, column: 6, scope: !5028)
!5068 = !DILocation(line: 204, column: 3, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 203, column: 47)
!5070 = !DILocation(line: 204, column: 3, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !5072, file: !3, line: 204, column: 3)
!5072 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 204, column: 3)
!5073 = !DILocation(line: 204, column: 3, scope: !5072)
!5074 = !DILocation(line: 204, column: 3, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 204, column: 3)
!5076 = !DILocation(line: 205, column: 3, scope: !5069)
!5077 = !DILocation(line: 205, column: 13, scope: !5069)
!5078 = !DILocation(line: 206, column: 2, scope: !5069)
!5079 = !DILocation(line: 207, column: 3, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5064, file: !3, line: 206, column: 9)
!5081 = !DILocation(line: 207, column: 3, scope: !5082)
!5082 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 207, column: 3)
!5083 = distinct !DILexicalBlock(scope: !5080, file: !3, line: 207, column: 3)
!5084 = !DILocation(line: 207, column: 3, scope: !5083)
!5085 = !DILocation(line: 207, column: 3, scope: !5086)
!5086 = distinct !DILexicalBlock(scope: !5082, file: !3, line: 207, column: 3)
!5087 = !DILocation(line: 211, column: 2, scope: !5028)
!5088 = !DILocation(line: 211, column: 12, scope: !5028)
!5089 = !DILocation(line: 213, column: 6, scope: !5090)
!5090 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 213, column: 6)
!5091 = !DILocation(line: 213, column: 12, scope: !5090)
!5092 = !DILocation(line: 213, column: 17, scope: !5090)
!5093 = !DILocation(line: 213, column: 6, scope: !5028)
!5094 = !DILocation(line: 214, column: 3, scope: !5090)
!5095 = !DILocation(line: 214, column: 13, scope: !5090)
!5096 = !DILocation(line: 216, column: 6, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 216, column: 6)
!5098 = !DILocation(line: 216, column: 12, scope: !5097)
!5099 = !DILocation(line: 216, column: 17, scope: !5097)
!5100 = !DILocation(line: 216, column: 6, scope: !5028)
!5101 = !DILocation(line: 217, column: 3, scope: !5097)
!5102 = !DILocation(line: 217, column: 13, scope: !5097)
!5103 = !DILocation(line: 219, column: 6, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 219, column: 6)
!5105 = !DILocation(line: 219, column: 12, scope: !5104)
!5106 = !DILocation(line: 219, column: 17, scope: !5104)
!5107 = !DILocation(line: 219, column: 6, scope: !5028)
!5108 = !DILocation(line: 220, column: 3, scope: !5104)
!5109 = !DILocation(line: 220, column: 13, scope: !5104)
!5110 = !DILocation(line: 222, column: 6, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 222, column: 6)
!5112 = !DILocation(line: 222, column: 12, scope: !5111)
!5113 = !DILocation(line: 222, column: 17, scope: !5111)
!5114 = !DILocation(line: 222, column: 6, scope: !5028)
!5115 = !DILocation(line: 223, column: 3, scope: !5111)
!5116 = !DILocation(line: 223, column: 13, scope: !5111)
!5117 = !DILocation(line: 225, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 225, column: 6)
!5119 = !DILocation(line: 225, column: 12, scope: !5118)
!5120 = !DILocation(line: 225, column: 17, scope: !5118)
!5121 = !DILocation(line: 225, column: 6, scope: !5028)
!5122 = !DILocation(line: 226, column: 3, scope: !5118)
!5123 = !DILocation(line: 226, column: 13, scope: !5118)
!5124 = !DILocation(line: 228, column: 2, scope: !5028)
!5125 = !DILocation(line: 228, column: 12, scope: !5028)
!5126 = !DILocation(line: 230, column: 6, scope: !5127)
!5127 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 230, column: 6)
!5128 = !DILocation(line: 230, column: 12, scope: !5127)
!5129 = !DILocation(line: 230, column: 17, scope: !5127)
!5130 = !DILocation(line: 230, column: 6, scope: !5028)
!5131 = !DILocation(line: 231, column: 3, scope: !5127)
!5132 = !DILocation(line: 231, column: 13, scope: !5127)
!5133 = !DILocation(line: 233, column: 6, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 233, column: 6)
!5135 = !DILocation(line: 233, column: 12, scope: !5134)
!5136 = !DILocation(line: 233, column: 17, scope: !5134)
!5137 = !DILocation(line: 233, column: 6, scope: !5028)
!5138 = !DILocation(line: 234, column: 3, scope: !5134)
!5139 = !DILocation(line: 234, column: 13, scope: !5134)
!5140 = !DILocation(line: 240, column: 10, scope: !5028)
!5141 = !DILocation(line: 240, column: 16, scope: !5028)
!5142 = !DILocation(line: 240, column: 21, scope: !5028)
!5143 = !DILocation(line: 240, column: 2, scope: !5028)
!5144 = !DILocation(line: 242, column: 3, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 240, column: 32)
!5146 = !DILocation(line: 242, column: 3, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 242, column: 3)
!5148 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 242, column: 3)
!5149 = !DILocation(line: 242, column: 3, scope: !5148)
!5150 = !DILocation(line: 242, column: 3, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5147, file: !3, line: 242, column: 3)
!5152 = !DILocation(line: 243, column: 3, scope: !5145)
!5153 = !DILocation(line: 243, column: 13, scope: !5145)
!5154 = !DILocation(line: 244, column: 10, scope: !5145)
!5155 = !DILocation(line: 244, column: 14, scope: !5145)
!5156 = !DILocation(line: 244, column: 28, scope: !5145)
!5157 = !DILocation(line: 244, column: 37, scope: !5145)
!5158 = !DILocation(line: 244, column: 46, scope: !5145)
!5159 = !DILocation(line: 244, column: 55, scope: !5145)
!5160 = !DILocation(line: 244, column: 7, scope: !5145)
!5161 = !DILocation(line: 245, column: 3, scope: !5145)
!5162 = !DILocation(line: 247, column: 3, scope: !5145)
!5163 = !DILocation(line: 247, column: 3, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5165, file: !3, line: 247, column: 3)
!5165 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 247, column: 3)
!5166 = !DILocation(line: 247, column: 3, scope: !5165)
!5167 = !DILocation(line: 247, column: 3, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !3, line: 247, column: 3)
!5169 = !DILocation(line: 249, column: 10, scope: !5145)
!5170 = !DILocation(line: 249, column: 14, scope: !5145)
!5171 = !DILocation(line: 249, column: 28, scope: !5145)
!5172 = !DILocation(line: 249, column: 37, scope: !5145)
!5173 = !DILocation(line: 249, column: 46, scope: !5145)
!5174 = !DILocation(line: 249, column: 55, scope: !5145)
!5175 = !DILocation(line: 249, column: 7, scope: !5145)
!5176 = !DILocation(line: 250, column: 3, scope: !5145)
!5177 = !DILocation(line: 252, column: 3, scope: !5145)
!5178 = !DILocation(line: 252, column: 3, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5180, file: !3, line: 252, column: 3)
!5180 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 252, column: 3)
!5181 = !DILocation(line: 252, column: 3, scope: !5180)
!5182 = !DILocation(line: 252, column: 3, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 252, column: 3)
!5184 = !DILocation(line: 253, column: 3, scope: !5145)
!5185 = !DILocation(line: 253, column: 13, scope: !5145)
!5186 = !DILocation(line: 255, column: 11, scope: !5145)
!5187 = !DILocation(line: 255, column: 15, scope: !5145)
!5188 = !DILocation(line: 255, column: 29, scope: !5145)
!5189 = !DILocation(line: 255, column: 38, scope: !5145)
!5190 = !DILocation(line: 255, column: 48, scope: !5145)
!5191 = !DILocation(line: 255, column: 57, scope: !5145)
!5192 = !DILocation(line: 255, column: 7, scope: !5145)
!5193 = !DILocation(line: 256, column: 3, scope: !5145)
!5194 = !DILocation(line: 259, column: 3, scope: !5145)
!5195 = !DILocation(line: 259, column: 3, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5197, file: !3, line: 259, column: 3)
!5197 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 259, column: 3)
!5198 = !DILocation(line: 259, column: 3, scope: !5197)
!5199 = !DILocation(line: 259, column: 3, scope: !5200)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 259, column: 3)
!5201 = !DILocation(line: 261, column: 3, scope: !5145)
!5202 = !DILocation(line: 261, column: 13, scope: !5145)
!5203 = !DILocation(line: 262, column: 3, scope: !5145)
!5204 = !DILocation(line: 262, column: 13, scope: !5145)
!5205 = !DILocation(line: 263, column: 11, scope: !5145)
!5206 = !DILocation(line: 263, column: 15, scope: !5145)
!5207 = !DILocation(line: 263, column: 29, scope: !5145)
!5208 = !DILocation(line: 263, column: 38, scope: !5145)
!5209 = !DILocation(line: 263, column: 48, scope: !5145)
!5210 = !DILocation(line: 263, column: 57, scope: !5145)
!5211 = !DILocation(line: 263, column: 7, scope: !5145)
!5212 = !DILocation(line: 264, column: 3, scope: !5145)
!5213 = !DILocation(line: 266, column: 15, scope: !5028)
!5214 = !DILocation(line: 266, column: 19, scope: !5028)
!5215 = !DILocation(line: 266, column: 25, scope: !5028)
!5216 = !DILocation(line: 266, column: 14, scope: !5028)
!5217 = !DILocation(line: 266, column: 2, scope: !5028)
!5218 = !DILocation(line: 266, column: 12, scope: !5028)
!5219 = !DILocation(line: 267, column: 14, scope: !5028)
!5220 = !DILocation(line: 267, column: 18, scope: !5028)
!5221 = !DILocation(line: 267, column: 2, scope: !5028)
!5222 = !DILocation(line: 267, column: 12, scope: !5028)
!5223 = !DILocation(line: 269, column: 38, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 269, column: 6)
!5225 = !DILocation(line: 269, column: 44, scope: !5224)
!5226 = !DILocation(line: 269, column: 55, scope: !5224)
!5227 = !DILocation(line: 269, column: 17, scope: !5224)
!5228 = !DILocation(line: 269, column: 15, scope: !5224)
!5229 = !DILocation(line: 269, column: 8, scope: !5224)
!5230 = !DILocation(line: 269, column: 6, scope: !5028)
!5231 = !DILocation(line: 270, column: 3, scope: !5224)
!5232 = !DILocation(line: 270, column: 3, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 270, column: 3)
!5234 = !DILocation(line: 270, column: 3, scope: !5235)
!5235 = distinct !DILexicalBlock(scope: !5233, file: !3, line: 270, column: 3)
!5236 = !DILocation(line: 272, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 272, column: 6)
!5238 = !DILocation(line: 272, column: 6, scope: !5028)
!5239 = !DILocation(line: 273, column: 39, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 273, column: 7)
!5241 = distinct !DILexicalBlock(scope: !5237, file: !3, line: 272, column: 13)
!5242 = !DILocation(line: 273, column: 45, scope: !5240)
!5243 = !DILocation(line: 273, column: 56, scope: !5240)
!5244 = !DILocation(line: 273, column: 18, scope: !5240)
!5245 = !DILocation(line: 273, column: 16, scope: !5240)
!5246 = !DILocation(line: 273, column: 9, scope: !5240)
!5247 = !DILocation(line: 273, column: 7, scope: !5241)
!5248 = !DILocation(line: 274, column: 4, scope: !5240)
!5249 = !DILocation(line: 274, column: 4, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 274, column: 4)
!5251 = !DILocation(line: 274, column: 4, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5250, file: !3, line: 274, column: 4)
!5253 = !DILocation(line: 276, column: 24, scope: !5240)
!5254 = !DILocation(line: 276, column: 30, scope: !5240)
!5255 = !DILocation(line: 276, column: 4, scope: !5240)
!5256 = !DILocation(line: 277, column: 2, scope: !5241)
!5257 = !DILocation(line: 279, column: 20, scope: !5028)
!5258 = !DILocation(line: 279, column: 24, scope: !5028)
!5259 = !DILocation(line: 279, column: 30, scope: !5028)
!5260 = !DILocation(line: 279, column: 2, scope: !5028)
!5261 = !DILocation(line: 279, column: 8, scope: !5028)
!5262 = !DILocation(line: 279, column: 18, scope: !5028)
!5263 = !DILocation(line: 281, column: 2, scope: !5028)
!5264 = distinct !DISubprogram(name: "tea5767_set_config", scope: !3, file: !3, line: 415, type: !693, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5265 = !DILocalVariable(name: "fe", arg: 1, scope: !5264, file: !3, line: 415, type: !430)
!5266 = !DILocation(line: 415, column: 53, scope: !5264)
!5267 = !DILocalVariable(name: "priv_cfg", arg: 2, scope: !5264, file: !3, line: 415, type: !300)
!5268 = !DILocation(line: 415, column: 63, scope: !5264)
!5269 = !DILocalVariable(name: "priv", scope: !5264, file: !3, line: 417, type: !4541)
!5270 = !DILocation(line: 417, column: 23, scope: !5264)
!5271 = !DILocation(line: 417, column: 30, scope: !5264)
!5272 = !DILocation(line: 417, column: 34, scope: !5264)
!5273 = !DILocation(line: 419, column: 10, scope: !5264)
!5274 = !DILocation(line: 419, column: 16, scope: !5264)
!5275 = !DILocation(line: 419, column: 2, scope: !5264)
!5276 = !DILocation(line: 419, column: 22, scope: !5264)
!5277 = !DILocation(line: 421, column: 2, scope: !5264)
!5278 = distinct !DISubprogram(name: "tea5767_get_frequency", scope: !3, file: !3, line: 407, type: !593, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5279 = !DILocalVariable(name: "fe", arg: 1, scope: !5278, file: !3, line: 407, type: !430)
!5280 = !DILocation(line: 407, column: 55, scope: !5278)
!5281 = !DILocalVariable(name: "frequency", arg: 2, scope: !5278, file: !3, line: 407, type: !595)
!5282 = !DILocation(line: 407, column: 64, scope: !5278)
!5283 = !DILocalVariable(name: "priv", scope: !5278, file: !3, line: 409, type: !4541)
!5284 = !DILocation(line: 409, column: 23, scope: !5278)
!5285 = !DILocation(line: 409, column: 30, scope: !5278)
!5286 = !DILocation(line: 409, column: 34, scope: !5278)
!5287 = !DILocation(line: 410, column: 15, scope: !5278)
!5288 = !DILocation(line: 410, column: 21, scope: !5278)
!5289 = !DILocation(line: 410, column: 3, scope: !5278)
!5290 = !DILocation(line: 410, column: 13, scope: !5278)
!5291 = !DILocation(line: 412, column: 2, scope: !5278)
!5292 = distinct !DISubprogram(name: "tea5767_get_status", scope: !3, file: !3, line: 320, type: !593, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5293 = !DILocalVariable(name: "fe", arg: 1, scope: !5292, file: !3, line: 320, type: !430)
!5294 = !DILocation(line: 320, column: 52, scope: !5292)
!5295 = !DILocalVariable(name: "status", arg: 2, scope: !5292, file: !3, line: 320, type: !595)
!5296 = !DILocation(line: 320, column: 61, scope: !5292)
!5297 = !DILocalVariable(name: "buffer", scope: !5292, file: !3, line: 322, type: !4985)
!5298 = !DILocation(line: 322, column: 16, scope: !5292)
!5299 = !DILocation(line: 324, column: 3, scope: !5292)
!5300 = !DILocation(line: 324, column: 10, scope: !5292)
!5301 = !DILocation(line: 326, column: 31, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 326, column: 6)
!5303 = !DILocation(line: 326, column: 35, scope: !5302)
!5304 = !DILocation(line: 326, column: 11, scope: !5302)
!5305 = !DILocation(line: 326, column: 8, scope: !5302)
!5306 = !DILocation(line: 326, column: 6, scope: !5292)
!5307 = !DILocation(line: 327, column: 22, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 327, column: 7)
!5309 = distinct !DILexicalBlock(scope: !5302, file: !3, line: 326, column: 44)
!5310 = !DILocation(line: 327, column: 26, scope: !5308)
!5311 = !DILocation(line: 327, column: 7, scope: !5308)
!5312 = !DILocation(line: 327, column: 7, scope: !5309)
!5313 = !DILocation(line: 328, column: 5, scope: !5308)
!5314 = !DILocation(line: 328, column: 12, scope: !5308)
!5315 = !DILocation(line: 328, column: 4, scope: !5308)
!5316 = !DILocation(line: 329, column: 22, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 329, column: 7)
!5318 = !DILocation(line: 329, column: 26, scope: !5317)
!5319 = !DILocation(line: 329, column: 7, scope: !5317)
!5320 = !DILocation(line: 329, column: 7, scope: !5309)
!5321 = !DILocation(line: 330, column: 5, scope: !5317)
!5322 = !DILocation(line: 330, column: 12, scope: !5317)
!5323 = !DILocation(line: 330, column: 4, scope: !5317)
!5324 = !DILocation(line: 331, column: 2, scope: !5309)
!5325 = !DILocation(line: 333, column: 2, scope: !5292)
!5326 = distinct !DISubprogram(name: "tea5767_get_rf_strength", scope: !3, file: !3, line: 336, type: !598, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5327 = !DILocalVariable(name: "fe", arg: 1, scope: !5326, file: !3, line: 336, type: !430)
!5328 = !DILocation(line: 336, column: 57, scope: !5326)
!5329 = !DILocalVariable(name: "strength", arg: 2, scope: !5326, file: !3, line: 336, type: !600)
!5330 = !DILocation(line: 336, column: 66, scope: !5326)
!5331 = !DILocalVariable(name: "buffer", scope: !5326, file: !3, line: 338, type: !4985)
!5332 = !DILocation(line: 338, column: 16, scope: !5326)
!5333 = !DILocation(line: 340, column: 3, scope: !5326)
!5334 = !DILocation(line: 340, column: 12, scope: !5326)
!5335 = !DILocation(line: 342, column: 31, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 342, column: 6)
!5337 = !DILocation(line: 342, column: 35, scope: !5336)
!5338 = !DILocation(line: 342, column: 11, scope: !5336)
!5339 = !DILocation(line: 342, column: 8, scope: !5336)
!5340 = !DILocation(line: 342, column: 6, scope: !5326)
!5341 = !DILocation(line: 343, column: 30, scope: !5336)
!5342 = !DILocation(line: 343, column: 34, scope: !5336)
!5343 = !DILocation(line: 343, column: 15, scope: !5336)
!5344 = !DILocation(line: 343, column: 4, scope: !5336)
!5345 = !DILocation(line: 343, column: 13, scope: !5336)
!5346 = !DILocation(line: 343, column: 3, scope: !5336)
!5347 = !DILocation(line: 345, column: 2, scope: !5326)
!5348 = distinct !DISubprogram(name: "tuner_i2c_xfer_send", scope: !4443, file: !4443, line: 24, type: !4503, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5349 = !DILocalVariable(name: "props", arg: 1, scope: !5348, file: !4443, line: 24, type: !4505)
!5350 = !DILocation(line: 24, column: 63, scope: !5348)
!5351 = !DILocalVariable(name: "buf", arg: 2, scope: !5348, file: !4443, line: 25, type: !4506)
!5352 = !DILocation(line: 25, column: 26, scope: !5348)
!5353 = !DILocalVariable(name: "len", arg: 3, scope: !5348, file: !4443, line: 25, type: !326)
!5354 = !DILocation(line: 25, column: 35, scope: !5348)
!5355 = !DILocalVariable(name: "msg", scope: !5348, file: !4443, line: 27, type: !4331)
!5356 = !DILocation(line: 27, column: 17, scope: !5348)
!5357 = !DILocation(line: 27, column: 23, scope: !5348)
!5358 = !DILocation(line: 27, column: 33, scope: !5348)
!5359 = !DILocation(line: 27, column: 40, scope: !5348)
!5360 = !DILocation(line: 28, column: 30, scope: !5348)
!5361 = !DILocation(line: 28, column: 18, scope: !5348)
!5362 = !DILocalVariable(name: "ret", scope: !5348, file: !4443, line: 29, type: !326)
!5363 = !DILocation(line: 29, column: 6, scope: !5348)
!5364 = !DILocation(line: 29, column: 25, scope: !5348)
!5365 = !DILocation(line: 29, column: 32, scope: !5348)
!5366 = !DILocation(line: 29, column: 12, scope: !5348)
!5367 = !DILocation(line: 31, column: 10, scope: !5348)
!5368 = !DILocation(line: 31, column: 14, scope: !5348)
!5369 = !DILocation(line: 31, column: 9, scope: !5348)
!5370 = !DILocation(line: 31, column: 22, scope: !5348)
!5371 = !DILocation(line: 31, column: 28, scope: !5348)
!5372 = !DILocation(line: 31, column: 2, scope: !5348)
!5373 = distinct !DISubprogram(name: "tea5767_status_dump", scope: !3, file: !3, line: 132, type: !5374, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !4541, !4506}
!5376 = !DILocalVariable(name: "priv", arg: 1, scope: !5373, file: !3, line: 132, type: !4541)
!5377 = !DILocation(line: 132, column: 54, scope: !5373)
!5378 = !DILocalVariable(name: "buffer", arg: 2, scope: !5373, file: !3, line: 133, type: !4506)
!5379 = !DILocation(line: 133, column: 20, scope: !5373)
!5380 = !DILocalVariable(name: "div", scope: !5373, file: !3, line: 135, type: !7)
!5381 = !DILocation(line: 135, column: 15, scope: !5373)
!5382 = !DILocalVariable(name: "frq", scope: !5373, file: !3, line: 135, type: !7)
!5383 = !DILocation(line: 135, column: 20, scope: !5373)
!5384 = !DILocation(line: 137, column: 32, scope: !5385)
!5385 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 137, column: 6)
!5386 = !DILocation(line: 137, column: 30, scope: !5385)
!5387 = !DILocation(line: 137, column: 6, scope: !5373)
!5388 = !DILocation(line: 138, column: 3, scope: !5385)
!5389 = !DILocation(line: 138, column: 3, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 138, column: 3)
!5391 = !DILocation(line: 138, column: 3, scope: !5392)
!5392 = distinct !DILexicalBlock(scope: !5390, file: !3, line: 138, column: 3)
!5393 = !DILocation(line: 140, column: 3, scope: !5385)
!5394 = !DILocation(line: 140, column: 3, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 140, column: 3)
!5396 = !DILocation(line: 140, column: 3, scope: !5397)
!5397 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 140, column: 3)
!5398 = !DILocation(line: 142, column: 32, scope: !5399)
!5399 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 142, column: 6)
!5400 = !DILocation(line: 142, column: 30, scope: !5399)
!5401 = !DILocation(line: 142, column: 6, scope: !5373)
!5402 = !DILocation(line: 143, column: 3, scope: !5399)
!5403 = !DILocation(line: 143, column: 3, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 143, column: 3)
!5405 = !DILocation(line: 143, column: 3, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5404, file: !3, line: 143, column: 3)
!5407 = !DILocation(line: 145, column: 3, scope: !5399)
!5408 = !DILocation(line: 145, column: 3, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 145, column: 3)
!5410 = !DILocation(line: 145, column: 3, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 145, column: 3)
!5412 = !DILocation(line: 147, column: 10, scope: !5373)
!5413 = !DILocation(line: 147, column: 20, scope: !5373)
!5414 = !DILocation(line: 147, column: 28, scope: !5373)
!5415 = !DILocation(line: 147, column: 36, scope: !5373)
!5416 = !DILocation(line: 147, column: 34, scope: !5373)
!5417 = !DILocation(line: 147, column: 6, scope: !5373)
!5418 = !DILocation(line: 149, column: 10, scope: !5373)
!5419 = !DILocation(line: 149, column: 16, scope: !5373)
!5420 = !DILocation(line: 149, column: 21, scope: !5373)
!5421 = !DILocation(line: 149, column: 2, scope: !5373)
!5422 = !DILocation(line: 151, column: 10, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 149, column: 32)
!5424 = !DILocation(line: 151, column: 14, scope: !5423)
!5425 = !DILocation(line: 151, column: 22, scope: !5423)
!5426 = !DILocation(line: 151, column: 31, scope: !5423)
!5427 = !DILocation(line: 151, column: 41, scope: !5423)
!5428 = !DILocation(line: 151, column: 7, scope: !5423)
!5429 = !DILocation(line: 152, column: 3, scope: !5423)
!5430 = !DILocation(line: 154, column: 10, scope: !5423)
!5431 = !DILocation(line: 154, column: 14, scope: !5423)
!5432 = !DILocation(line: 154, column: 22, scope: !5423)
!5433 = !DILocation(line: 154, column: 31, scope: !5423)
!5434 = !DILocation(line: 154, column: 41, scope: !5423)
!5435 = !DILocation(line: 154, column: 7, scope: !5423)
!5436 = !DILocation(line: 155, column: 3, scope: !5423)
!5437 = !DILocation(line: 157, column: 10, scope: !5423)
!5438 = !DILocation(line: 157, column: 14, scope: !5423)
!5439 = !DILocation(line: 157, column: 22, scope: !5423)
!5440 = !DILocation(line: 157, column: 31, scope: !5423)
!5441 = !DILocation(line: 157, column: 41, scope: !5423)
!5442 = !DILocation(line: 157, column: 7, scope: !5423)
!5443 = !DILocation(line: 158, column: 3, scope: !5423)
!5444 = !DILocation(line: 161, column: 10, scope: !5423)
!5445 = !DILocation(line: 161, column: 14, scope: !5423)
!5446 = !DILocation(line: 161, column: 22, scope: !5423)
!5447 = !DILocation(line: 161, column: 31, scope: !5423)
!5448 = !DILocation(line: 161, column: 41, scope: !5423)
!5449 = !DILocation(line: 161, column: 7, scope: !5423)
!5450 = !DILocation(line: 162, column: 3, scope: !5423)
!5451 = !DILocation(line: 164, column: 15, scope: !5373)
!5452 = !DILocation(line: 164, column: 19, scope: !5373)
!5453 = !DILocation(line: 164, column: 25, scope: !5373)
!5454 = !DILocation(line: 164, column: 14, scope: !5373)
!5455 = !DILocation(line: 164, column: 2, scope: !5373)
!5456 = !DILocation(line: 164, column: 12, scope: !5373)
!5457 = !DILocation(line: 165, column: 14, scope: !5373)
!5458 = !DILocation(line: 165, column: 18, scope: !5373)
!5459 = !DILocation(line: 165, column: 2, scope: !5373)
!5460 = !DILocation(line: 165, column: 12, scope: !5373)
!5461 = !DILocation(line: 167, column: 2, scope: !5373)
!5462 = !DILocation(line: 167, column: 2, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 167, column: 2)
!5464 = !DILocation(line: 167, column: 2, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 167, column: 2)
!5466 = !DILocation(line: 170, column: 28, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 170, column: 6)
!5468 = !DILocation(line: 170, column: 26, scope: !5467)
!5469 = !DILocation(line: 170, column: 6, scope: !5373)
!5470 = !DILocation(line: 171, column: 3, scope: !5467)
!5471 = !DILocation(line: 171, column: 3, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 171, column: 3)
!5473 = !DILocation(line: 171, column: 3, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5472, file: !3, line: 171, column: 3)
!5475 = !DILocation(line: 173, column: 3, scope: !5467)
!5476 = !DILocation(line: 173, column: 3, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 173, column: 3)
!5478 = !DILocation(line: 173, column: 3, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5477, file: !3, line: 173, column: 3)
!5480 = !DILocation(line: 175, column: 2, scope: !5373)
!5481 = !DILocation(line: 175, column: 2, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 175, column: 2)
!5483 = !DILocation(line: 175, column: 2, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !5482, file: !3, line: 175, column: 2)
!5485 = !DILocation(line: 177, column: 2, scope: !5373)
!5486 = !DILocation(line: 177, column: 2, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 177, column: 2)
!5488 = !DILocation(line: 177, column: 2, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 177, column: 2)
!5490 = !DILocation(line: 180, column: 2, scope: !5373)
!5491 = !DILocation(line: 180, column: 2, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 180, column: 2)
!5493 = !DILocation(line: 180, column: 2, scope: !5494)
!5494 = distinct !DILexicalBlock(scope: !5492, file: !3, line: 180, column: 2)
!5495 = !DILocation(line: 182, column: 2, scope: !5373)
!5496 = !DILocation(line: 182, column: 2, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 182, column: 2)
!5498 = !DILocation(line: 182, column: 2, scope: !5499)
!5499 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 182, column: 2)
!5500 = !DILocation(line: 184, column: 1, scope: !5373)
!5501 = distinct !DISubprogram(name: "tea5767_read_status", scope: !3, file: !3, line: 284, type: !5502, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5502 = !DISubroutineType(types: !5503)
!5503 = !{!326, !430, !332}
!5504 = !DILocalVariable(name: "fe", arg: 1, scope: !5501, file: !3, line: 284, type: !430)
!5505 = !DILocation(line: 284, column: 53, scope: !5501)
!5506 = !DILocalVariable(name: "buffer", arg: 2, scope: !5501, file: !3, line: 284, type: !332)
!5507 = !DILocation(line: 284, column: 63, scope: !5501)
!5508 = !DILocalVariable(name: "priv", scope: !5501, file: !3, line: 286, type: !4541)
!5509 = !DILocation(line: 286, column: 23, scope: !5501)
!5510 = !DILocation(line: 286, column: 30, scope: !5501)
!5511 = !DILocation(line: 286, column: 34, scope: !5501)
!5512 = !DILocalVariable(name: "rc", scope: !5501, file: !3, line: 287, type: !326)
!5513 = !DILocation(line: 287, column: 6, scope: !5501)
!5514 = !DILocation(line: 289, column: 9, scope: !5501)
!5515 = !DILocation(line: 289, column: 2, scope: !5501)
!5516 = !DILocation(line: 290, column: 38, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 290, column: 6)
!5518 = !DILocation(line: 290, column: 44, scope: !5517)
!5519 = !DILocation(line: 290, column: 55, scope: !5517)
!5520 = !DILocation(line: 290, column: 17, scope: !5517)
!5521 = !DILocation(line: 290, column: 15, scope: !5517)
!5522 = !DILocation(line: 290, column: 8, scope: !5517)
!5523 = !DILocation(line: 290, column: 6, scope: !5501)
!5524 = !DILocation(line: 291, column: 3, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5517, file: !3, line: 290, column: 68)
!5526 = !DILocation(line: 291, column: 3, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 291, column: 3)
!5528 = !DILocation(line: 291, column: 3, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 291, column: 3)
!5530 = !DILocation(line: 292, column: 3, scope: !5525)
!5531 = !DILocation(line: 295, column: 2, scope: !5501)
!5532 = !DILocation(line: 296, column: 1, scope: !5501)
!5533 = distinct !DISubprogram(name: "tea5767_signal", scope: !3, file: !3, line: 298, type: !5534, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!326, !430, !309}
!5536 = !DILocalVariable(name: "fe", arg: 1, scope: !5533, file: !3, line: 298, type: !430)
!5537 = !DILocation(line: 298, column: 55, scope: !5533)
!5538 = !DILocalVariable(name: "buffer", arg: 2, scope: !5533, file: !3, line: 298, type: !309)
!5539 = !DILocation(line: 298, column: 71, scope: !5533)
!5540 = !DILocalVariable(name: "priv", scope: !5533, file: !3, line: 300, type: !4541)
!5541 = !DILocation(line: 300, column: 23, scope: !5533)
!5542 = !DILocation(line: 300, column: 30, scope: !5533)
!5543 = !DILocation(line: 300, column: 34, scope: !5533)
!5544 = !DILocalVariable(name: "signal", scope: !5533, file: !3, line: 302, type: !326)
!5545 = !DILocation(line: 302, column: 6, scope: !5533)
!5546 = !DILocation(line: 302, column: 17, scope: !5533)
!5547 = !DILocation(line: 302, column: 27, scope: !5533)
!5548 = !DILocation(line: 302, column: 53, scope: !5533)
!5549 = !DILocation(line: 304, column: 2, scope: !5533)
!5550 = !DILocation(line: 304, column: 2, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 304, column: 2)
!5552 = distinct !DILexicalBlock(scope: !5533, file: !3, line: 304, column: 2)
!5553 = !DILocation(line: 304, column: 2, scope: !5552)
!5554 = !DILocation(line: 304, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 304, column: 2)
!5556 = !DILocation(line: 306, column: 9, scope: !5533)
!5557 = !DILocation(line: 306, column: 2, scope: !5533)
!5558 = distinct !DISubprogram(name: "tea5767_stereo", scope: !3, file: !3, line: 309, type: !5534, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !743)
!5559 = !DILocalVariable(name: "fe", arg: 1, scope: !5558, file: !3, line: 309, type: !430)
!5560 = !DILocation(line: 309, column: 55, scope: !5558)
!5561 = !DILocalVariable(name: "buffer", arg: 2, scope: !5558, file: !3, line: 309, type: !309)
!5562 = !DILocation(line: 309, column: 71, scope: !5558)
!5563 = !DILocalVariable(name: "priv", scope: !5558, file: !3, line: 311, type: !4541)
!5564 = !DILocation(line: 311, column: 23, scope: !5558)
!5565 = !DILocation(line: 311, column: 30, scope: !5558)
!5566 = !DILocation(line: 311, column: 34, scope: !5558)
!5567 = !DILocalVariable(name: "stereo", scope: !5558, file: !3, line: 313, type: !326)
!5568 = !DILocation(line: 313, column: 6, scope: !5558)
!5569 = !DILocation(line: 313, column: 15, scope: !5558)
!5570 = !DILocation(line: 313, column: 25, scope: !5558)
!5571 = !DILocation(line: 315, column: 2, scope: !5558)
!5572 = !DILocation(line: 315, column: 2, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 315, column: 2)
!5574 = distinct !DILexicalBlock(scope: !5558, file: !3, line: 315, column: 2)
!5575 = !DILocation(line: 315, column: 2, scope: !5574)
!5576 = !DILocation(line: 315, column: 2, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5573, file: !3, line: 315, column: 2)
!5578 = !DILocation(line: 317, column: 10, scope: !5558)
!5579 = !DILocation(line: 317, column: 2, scope: !5558)
